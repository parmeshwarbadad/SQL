using System;
using System.Collections.Generic;
using System.Collections;
using System.Text;



namespace CollectionPrograms
{
    class Class1
    {

        static void Main(string[] args)
        {
            ArrayList a1 = new ArrayList();
            a1.Add(12);
            a1.Add("omkar");
            a1.Add("true");
            a1.Add(new StringBuilder("beba"));
            foreach (object ob in a1)
                Console.WriteLine(ob);

            /*for(int i=0;i<a1.Count;i++)
                Console.WriteLine(a1[i]);*/

        }
    }
    class SortedListD
    {
        static void Main(string[] args)
        {
            SortedList s1 = new SortedList();
            s1.Add("onn", "sdbdg");
            s1.Add("vg", 8990);
            s1.Add("cf", 7.8f);
            s1.Add(90, "hgh");

            foreach (object ob in s1)
                Console.WriteLine(ob);
        }
    }

    class Dictionary_Demo
    {
        static void Main(string[] args)
        {

            /*string s = "pratiksha";
            char[] carr = s.ToCharArray();*/
            List<string> ll = new List<string>()
              { "red","pink","blue","red","pink","yellow","red"};
            //ke-color
            //value-count
            Dictionary<string, int> dd = new Dictionary<string, int>();
            //["red=1","pink=1","blue=1"]
            foreach (string color in ll)
            {
                if (dd.ContainsKey(color))
                {
                    int oldvalue = dd[color];
                    dd[color] = oldvalue + 1;
                }
                else
                {
                    dd.Add(color, 1);
                }
            }
        }
    }

    class HashSetDemo
    {
        static void Main(string[] args)
        {
            //union,intersection,SubsetOf,SupersetOf
            HashSet<String> hs1 = new HashSet<string>() { "om", "raj", "ram", "siya" };
            HashSet<string> hs2 = new HashSet<string>() { "omkar", "raj", "ram", "siya" };

            // HashSet<String> h3 = hs1.IntersectWith(hs2).ToHashSet();
            hs1.IntersectWith(hs2);
            hs1.UnionWith(hs2);
            bool b1 = hs1.IsSubsetOf(hs2);
            bool b2 = hs2.IsSubsetOf(hs1);
            foreach (string d in hs1)
                Console.Write(d + "");
            Console.WriteLine();
            foreach (string d in hs2)
                Console.Write(d + "");
            Console.WriteLine();
        }
    }

    /* array -fixed size,homogenous element .primitive and non primitive 
collection -growable,homogenus /hetrogenus ,objects
Autoboxing convert primitive to object*/


    class LinkedListDemo
    {
        static void Main(string[] args)
        {
            /* //autoboxing 
             int a = 10;
             object ob = a;*/

            LinkedList<int> ll = new LinkedList<int>();
            ll.AddLast(100);
            ll.AddLast(200);
            ll.AddLast(300);
            ll.AddLast(200);

            LinkedListNode<int> nn = ll.Find(200);
            ll.AddBefore(nn, 1000);
            ll.AddAfter(nn, 2000);

            ll.Clear();

            Console.WriteLine(ll.Count);
            Console.WriteLine(ll.Contains(34));
        }
    }
    //add remove replace
    class Class01
    {
        static void Main(string[] args)
        {
            List<int> lst = new List<int>();
            lst.Add(100);
            lst.Add(200);
            lst.Add(300);
            lst.Add(400);
            lst.Add(500);
            lst.Add(300);
            lst.Add(300);
            lst.Add(300);
            lst.Remove(300);
            lst[0] = 1000;//
            Console.WriteLine(lst.Count);
            Console.WriteLine(lst.Capacity);
            for (int i = 0; i < lst.Count; i++)
                Console.WriteLine(lst[i]);
            foreach (int data in lst)
                Console.WriteLine(data);
            //lst.Clear();
            Console.WriteLine(lst.Contains(90));
        }
        class QueueDemo
        {
            //FIFO First in frist out 
            static void Main(string[] args)
            {
                Queue<int> q = new Queue<int>();
                q.Enqueue(100);
                q.Enqueue(200);
                q.Enqueue(300);
                q.Enqueue(400);
                foreach (int d in q)
                    Console.WriteLine(d);
                Console.WriteLine("------");
                int remove = q.Dequeue();

                foreach (int d in q)
                    Console.WriteLine(d);
                Console.WriteLine("-----------");
                /*q.Clear();
                q.CopyTo()*/


            }
        }
        class SortedListd
        {
            //stores data in sorted order according the keys
            //tree
            //Binary search tree--->binary
            static void Main(string[] args)
            {
                SortedList<String, int> ss = new SortedList<string, int>();
                ss.Add("Devesh", 90);
                ss.Add("Amey", 90);
                ss.Add("chirag", 90);
                ss.Add("siya", 90);
                ss.Add("saif", 90);
                ss.Add("tanish", 90);
                ss.Add("harsh", 90);

                foreach (KeyValuePair<string, int> kv in ss)
                {
                    Console.WriteLine(kv.Key + "===>" + kv.Value);
                }
            }
        }
        class Sorted
        {
            static void Main(string[] args)
            {
                SortedSet<String> hs = new SortedSet<string>();
                hs.Add("raman");
                hs.Add("leena");
                hs.Add("heena");
                hs.Add("beema");
                hs.Add("rama");
                foreach (string d in hs)
                {
                    Console.WriteLine(d);
                }
            }
        }



        class StackDemo
        {
            //stack follow LIFO method
            static void Main(string[] args)
            {
                Stack<string> st = new Stack<string>();
                st.Push("a");
                st.Push("b");
                st.Push("c");
                string[] arr = new string[st.Count];
                st.CopyTo(arr, 0);
                foreach (string d in arr)
                    Console.WriteLine(d);
                // st.Clear();

                /*foreach(string d in st)

                Console.WriteLine(d);
                Console.WriteLine("----------");
                string dataremove1 = st.Pop();
                foreach (string d in st)
                    Console.WriteLine(d);*/




            }
        }
    }
}





                        



                    

                
