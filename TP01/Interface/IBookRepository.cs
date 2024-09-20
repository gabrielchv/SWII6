using TP01.Models;

// Gabriel Chaves - Caroline Ribeiro

namespace TP01.Interface
{
    public interface IBookRepository
    {
        ICollection<Book> getAll();
        void add(Book book);
    }
}
