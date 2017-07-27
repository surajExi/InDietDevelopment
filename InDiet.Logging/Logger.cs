using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InDiet.Logging
{
    public class Logger : ILogger
    {
        private log4net.ILog Log { get; set; }

        public Logger()
        {
            Log = log4net.LogManager.GetLogger(typeof(Logger));
        }

        /// <summary>
        /// Error method for logging exceptions accepting the message param of type dynamic object
        /// </summary>
        /// <param name="msg"></param>
        public void Error(object msg)
        {
            Log.Error(msg);
        }

        /// <summary>
        /// Error method for logging exceptions accepting params as object message and also the exception object
        /// </summary>
        /// <param name="msg"></param>
        /// <param name="ex"></param>
        public void Error(object msg, Exception ex)
        {
            Log.Error(msg, ex);
        }

        /// <summary>
        /// Error method for logging exceptions accepting the exception object
        /// </summary>
        /// <param name="ex"></param>
        public void Error(Exception ex)
        {
            Log.Error(ex.Message, ex);
        }

        /// <summary>
        /// Info method of the logger to add the info about the exception
        /// </summary>
        /// <param name="msg"></param>
        public void Info(object msg)
        {
            Log.Info(msg);
        }
    }
}
