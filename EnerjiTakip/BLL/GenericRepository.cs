using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class GenericRepository<TEntity> where TEntity : class 
    {
        DbContext context;
        DbSet<TEntity> dbset;
        
        public GenericRepository()
        {
            context = new ENERJITAKIPEntities();
            dbset = context.Set<TEntity>();
        }

        public virtual void insert(TEntity model)
        {
            dbset.Add(model);
            Save();
        }

        public virtual void Update(TEntity model)
        {
            if (context.Entry(model).State == EntityState.Detached)
            {
                context.Set<TEntity>().Attach(model);
            }
            context.Entry(model).State = EntityState.Modified;
            Save(); 
        }

        public virtual void Delete(int Id)
        {
            var model = GetByID(Id);
            dbset.Remove(model);
            Save();
        }

        public virtual List<TEntity> Get()
        {
            return dbset.ToList();
        }

        public virtual TEntity GetByID(object Id)
        {
           return dbset.Find(Id);
        }

        private void Save()
        {
            context.SaveChanges();
        }
    }
}
