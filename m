Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E548125359
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tqcn+7fJHqv/H8mXhpK1AG03yXrqILF1ItSzWNa2+N0=; b=r5XVFS2wNR2oyo
	HjcaeNcGryayZM8lsUCc60YNMWIJNIP62349HyYX0y7RVuYj3F+yMjiaXL5Yhn3jXuQaJ6kBXQr9+
	u7SRkWXgE/SOBQrECX4y+/uRSD0n88XB0KVGV7giL5wQNYDpAv1rjCSVYmI2bHW5F1kptAUH8biYT
	28W9KI6iYAH0LmPI/0fK6jHp2qj66FLCja3owqyP2mVOaH1HZQBKaxBTWJLfgTy2ATCgq3yyB1bQN
	EDtvnMxhXWNC67dK9c/9uAu1FssC0rt+GHYwXt3/bGak1gNzvXBx6whVBgtrfZWNFW9Cf5kfkizxp
	9DzcpdkLRSt3VVBsAFeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6I0-0008Kw-5H; Tue, 21 May 2019 15:02:52 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6Hf-0006tz-FU
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:02:40 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hT6FK-0007FT-IR; Tue, 21 May 2019 15:00:06 +0000
Date: Tue, 21 May 2019 16:00:06 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Christian Brauner <christian@brauner.io>
Subject: Re: [PATCH 1/2] open: add close_range()
Message-ID: <20190521150006.GJ17978@ZenIV.linux.org.uk>
References: <20190521113448.20654-1-christian@brauner.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521113448.20654-1-christian@brauner.io>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_080232_041226_024B2C10 
X-CRM114-Status: GOOD (  31.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org, oleg@redhat.com,
 dhowells@redhat.com, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, shuah@kernel.org, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, miklos@szeredi.hu, x86@kernel.org,
 torvalds@linux-foundation.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, tkjos@android.com, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, tglx@linutronix.de,
 ldv@altlinux.org, linux-arm-kernel@lists.infradead.org, fweimer@redhat.com,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 01:34:47PM +0200, Christian Brauner wrote:

> This adds the close_range() syscall. It allows to efficiently close a range
> of file descriptors up to all file descriptors of a calling task.
> 
> The syscall came up in a recent discussion around the new mount API and
> making new file descriptor types cloexec by default. During this
> discussion, Al suggested the close_range() syscall (cf. [1]). Note, a
> syscall in this manner has been requested by various people over time.
> 
> First, it helps to close all file descriptors of an exec()ing task. This
> can be done safely via (quoting Al's example from [1] verbatim):
> 
>         /* that exec is sensitive */
>         unshare(CLONE_FILES);
>         /* we don't want anything past stderr here */
>         close_range(3, ~0U);
>         execve(....);
> 
> The code snippet above is one way of working around the problem that file
> descriptors are not cloexec by default. This is aggravated by the fact that
> we can't just switch them over without massively regressing userspace. For
> a whole class of programs having an in-kernel method of closing all file
> descriptors is very helpful (e.g. demons, service managers, programming
> language standard libraries, container managers etc.).
> (Please note, unshare(CLONE_FILES) should only be needed if the calling
>  task is multi-threaded and shares the file descriptor table with another
>  thread in which case two threads could race with one thread allocating
>  file descriptors and the other one closing them via close_range(). For the
>  general case close_range() before the execve() is sufficient.)
> 
> Second, it allows userspace to avoid implementing closing all file
> descriptors by parsing through /proc/<pid>/fd/* and calling close() on each
> file descriptor. From looking at various large(ish) userspace code bases
> this or similar patterns are very common in:
> - service managers (cf. [4])
> - libcs (cf. [6])
> - container runtimes (cf. [5])
> - programming language runtimes/standard libraries
>   - Python (cf. [2])
>   - Rust (cf. [7], [8])
> As Dmitry pointed out there's even a long-standing glibc bug about missing
> kernel support for this task (cf. [3]).
> In addition, the syscall will also work for tasks that do not have procfs
> mounted and on kernels that do not have procfs support compiled in. In such
> situations the only way to make sure that all file descriptors are closed
> is to call close() on each file descriptor up to UINT_MAX or RLIMIT_NOFILE,
> OPEN_MAX trickery (cf. comment [8] on Rust).
> 
> The performance is striking. For good measure, comparing the following
> simple close_all_fds() userspace implementation that is essentially just
> glibc's version in [6]:
> 
> static int close_all_fds(void)
> {
>         DIR *dir;
>         struct dirent *direntp;
> 
>         dir = opendir("/proc/self/fd");
>         if (!dir)
>                 return -1;
> 
>         while ((direntp = readdir(dir))) {
>                 int fd;
>                 if (strcmp(direntp->d_name, ".") == 0)
>                         continue;
>                 if (strcmp(direntp->d_name, "..") == 0)
>                         continue;
>                 fd = atoi(direntp->d_name);
>                 if (fd == 0 || fd == 1 || fd == 2)
>                         continue;
>                 close(fd);
>         }
> 
>         closedir(dir); /* cannot fail */
>         return 0;
> }
> 
> to close_range() yields:
> 1. closing 4 open files:
>    - close_all_fds(): ~280 us
>    - close_range():    ~24 us
> 
> 2. closing 1000 open files:
>    - close_all_fds(): ~5000 us
>    - close_range():   ~800 us
> 
> close_range() is designed to allow for some flexibility. Specifically, it
> does not simply always close all open file descriptors of a task. Instead,
> callers can specify an upper bound.
> This is e.g. useful for scenarios where specific file descriptors are
> created with well-known numbers that are supposed to be excluded from
> getting closed.
> For extra paranoia close_range() comes with a flags argument. This can e.g.
> be used to implement extension. Once can imagine userspace wanting to stop
> at the first error instead of ignoring errors under certain circumstances.
> There might be other valid ideas in the future. In any case, a flag
> argument doesn't hurt and keeps us on the safe side.
> 
> >From an implementation side this is kept rather dumb. It saw some input
> from David and Jann but all nonsense is obviously my own!
> - Errors to close file descriptors are currently ignored. (Could be changed
>   by setting a flag in the future if needed.)
> - __close_range() is a rather simplistic wrapper around __close_fd().
>   My reasoning behind this is based on the nature of how __close_fd() needs
>   to release an fd. But maybe I misunderstood specifics:
>   We take the files_lock and rcu-dereference the fdtable of the calling
>   task, we find the entry in the fdtable, get the file and need to release
>   files_lock before calling filp_close().
>   In the meantime the fdtable might have been altered so we can't just
>   retake the spinlock and keep the old rcu-reference of the fdtable
>   around. Instead we need to grab a fresh reference to the fdtable.
>   If my reasoning is correct then there's really no point in fancyfying
>   __close_range(): We just need to rcu-dereference the fdtable of the
>   calling task once to cap the max_fd value correctly and then go on
>   calling __close_fd() in a loop.

> +/**
> + * __close_range() - Close all file descriptors in a given range.
> + *
> + * @fd:     starting file descriptor to close
> + * @max_fd: last file descriptor to close
> + *
> + * This closes a range of file descriptors. All file descriptors
> + * from @fd up to and including @max_fd are closed.
> + */
> +int __close_range(struct files_struct *files, unsigned fd, unsigned max_fd)
> +{
> +	unsigned int cur_max;
> +
> +	if (fd > max_fd)
> +		return -EINVAL;
> +
> +	rcu_read_lock();
> +	cur_max = files_fdtable(files)->max_fds;
> +	rcu_read_unlock();
> +
> +	/* cap to last valid index into fdtable */
> +	if (max_fd >= cur_max)
> +		max_fd = cur_max - 1;
> +
> +	while (fd <= max_fd)
> +		__close_fd(files, fd++);
> +
> +	return 0;
> +}

Umm...  That's going to be very painful if you dup2() something to MAX_INT and
then run that; roughly 2G iterations of bouncing ->file_lock up and down,
without anything that would yield CPU in process.

If anything, I would suggest something like

	fd = *start_fd;
	grab the lock
        fdt = files_fdtable(files);
more:
	look for the next eviction candidate in ->open_fds, starting at fd
	if there's none up to max_fd
		drop the lock
		return NULL
	*start_fd = fd + 1;
	if the fscker is really opened and not just reserved
		rcu_assign_pointer(fdt->fd[fd], NULL);
		__put_unused_fd(files, fd);
		drop the lock
		return the file we'd got
	if (unlikely(need_resched()))
		drop lock
		cond_resched();
		grab lock
		fdt = files_fdtable(files);
	goto more;

with the main loop being basically
	while ((file = pick_next(files, &start_fd, max_fd)) != NULL)
		filp_close(file, files);



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
