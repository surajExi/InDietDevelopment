using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InDiet.Logging
{
    public interface ILogger
    {
        /// <summary>
        /// Error method for logging exceptions accepting the message param of type dynamic object
        /// </summary>
        /// <param name="msg"></param>
        void Error(object msg);

        /// <summary>
        /// Error method for logging exceptions accepting params as object message and also the exception object
        /// </summary>
        /// <param name="msg"></param>
        /// <param name="ex"></param>
        void Error(object msg, Exception ex);

        /// <summary>
        /// Error method for logging exceptions accepting the exception object
        /// </summary>
        /// <param name="ex"></param>
        void Error(Exception ex);

        /// <summary>
        /// Info method of the logger to add the info about the exception
        /// </summary>
        /// <param name="msg"></param>
        void Info(object msg);

    }
}
