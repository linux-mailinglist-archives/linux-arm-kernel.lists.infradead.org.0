Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFC3207A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 15:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R90P1QR0mvsc0YDGS+SuvJ85ENcd7Z0fMp4KNV68a7U=; b=GjouJbUY9WqW9f
	BFKtme10v6A8+bqWqUHf3IM7c5iTT5Q4XLgXZvF9tYev2EgoJopGZQn7Y3xRRZtIMNsyVshnyVgpJ
	5v9eeWJ/60gPTpcEXMCk/kRF4fpB7rAglRWUuIeLDVL4vPjubI5CES/BVPhtKIwWyWzO3YtFEYa0c
	JuvGGCm7+vCap+NaRsAip7II+z5pjBccTvhyGpHfDR1fRn+9S8UJbw6zmql5v4pEcFOQrxeo4grcw
	V/242XMbDgphxC0006XcPCYOR7vIaqzHTLzmjgA9VSrBuoYJCEamaZIpWm+qiIebY7meUvCTARgW4
	CHqHzQ1x4hVB5kVVSntA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRG7Y-0000Nt-OV; Thu, 16 May 2019 13:08:28 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRG7R-0000NS-7L
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 13:08:23 +0000
Received: by mail-ed1-x544.google.com with SMTP id g57so5132387edc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 06:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jBAUBEgS9CTwipSrc6xzDmW1RVItxpv28CPVuXdSXxE=;
 b=GRxeUQMCXOVh37t5Sw740ly8qtZPRUCCCuv9QrOvbPCErQEesLGEm7EKrXAe0Q9KJ8
 Z2g505Ms1qmYsjpb12060y9byTSC8XMgPPOX3qoYUm7Wuo3GhPqSLBaepdYgRwIARNNw
 f1qSmJlbONGpkHQJTh3piORC/JZieb0S9j9mqhLIuQMSaQYY9Fp7KshgDzX51htGan8m
 Sxk2kN6la3ME1D8bVbdzuQqjT/ou0n6uk27GXJB7sFHnw9j78I+U5Nev2p4rx/U1wEC7
 4Ntaz4NKM/S52nOQZW29Gzd4zoFa1reEayvlgt/ir0RYr/yiXPYA0rELPDQMlq2mdu1F
 tVNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jBAUBEgS9CTwipSrc6xzDmW1RVItxpv28CPVuXdSXxE=;
 b=gMAdiT7kDp+ZIfAxJflJoIqh8jxoA9ByAX/XXNn6sagzZYUTES+B450UTrbhZx8wrr
 dyTa/JyY+Id0H2SbT6CdZobrt/DTxwaGhYLMlgIzUsVLkmf3yvCMEe1KxGPP0lWod2wN
 4JPLzTALTCRSKFsy3+w6h44AGCchoveRPeMArtmSJSn4TEYO68F0hWIIarDEABTKYiMF
 5BFcFG/SsQmB8IWtPonbPmMFWKPntSDhgfk8IC4+lojtaK2HDoNG0x/TbX7saVoqUjsL
 K5j4LfRWl7QlMgfde+CiIzkeKG0TCAkF6Q49sDryQ4O/O3dP+kOY/U9dL1NgdBqyagdE
 FLww==
X-Gm-Message-State: APjAAAXyQcwynves6qcLSOUW3JGpmJtXQSxQlfsM0h9hlMv4BERW1SqI
 dBEKcf11HX8f1sEU+LvE0/t1YQ==
X-Google-Smtp-Source: APXvYqw6MgzOGs4eZ9bDhdi4eCkaorExR9i5a/NKq40xlcfMO66JmZJGeYkhHm/1LjUeLbq94zzeIA==
X-Received: by 2002:a50:89bb:: with SMTP id g56mr49862849edg.124.1558012098308; 
 Thu, 16 May 2019 06:08:18 -0700 (PDT)
Received: from brauner.io ([193.96.224.243])
 by smtp.gmail.com with ESMTPSA id p17sm1815197edr.94.2019.05.16.06.08.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 16 May 2019 06:08:17 -0700 (PDT)
Date: Thu, 16 May 2019 15:08:15 +0200
From: Christian Brauner <christian@brauner.io>
To: Daniel Colascione <dancol@google.com>
Subject: Re: [PATCH 1/2] pid: add pidfd_open()
Message-ID: <20190516130813.i66ujfzftbgpqhnh@brauner.io>
References: <20190515100400.3450-1-christian@brauner.io>
 <CAKOZuesPF+ftwqsNDMBy1LpwJgWTNuQm9-E=C90sSTBYEEsDww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKOZuesPF+ftwqsNDMBy1LpwJgWTNuQm9-E=C90sSTBYEEsDww@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_060821_269787_AB305F1A 
X-CRM114-Status: GOOD (  31.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Linux API <linux-api@vger.kernel.org>,
 elena.reshetova@intel.com, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, linux-m68k@lists.linux-m68k.org,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 Aleksa Sarai <cyphar@cyphar.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-mips@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>,
 "Eric W. Biederman" <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 10:45:06AM -0700, Daniel Colascione wrote:
> On Wed, May 15, 2019 at 3:04 AM Christian Brauner <christian@brauner.io> wrote:
> >
> > This adds the pidfd_open() syscall. It allows a caller to retrieve pollable
> > pidfds for a process which did not get created via CLONE_PIDFD, i.e. for a
> > process that is created via traditional fork()/clone() calls that is only
> > referenced by a PID:
> 
> Thanks for doing this work. I'm really looking forward to this new
> approach to process management.

Thanks! Glad to hear!

> 
> > int pidfd = pidfd_open(1234, 0);
> > ret = pidfd_send_signal(pidfd, SIGSTOP, NULL, 0);
> >
> > With the introduction of pidfds through CLONE_PIDFD it is possible to
> > created pidfds at process creation time.
> > However, a lot of processes get created with traditional PID-based calls
> > such as fork() or clone() (without CLONE_PIDFD). For these processes a
> > caller can currently not create a pollable pidfd. This is a huge problem
> > for Android's low memory killer (LMK) and service managers such as systemd.
> > Both are examples of tools that want to make use of pidfds to get reliable
> > notification of process exit for non-parents (pidfd polling) and race-free
> > signal sending (pidfd_send_signal()). They intend to switch to this API for
> > process supervision/management as soon as possible. Having no way to get
> > pollable pidfds from PID-only processes is one of the biggest blockers for
> > them in adopting this api. With pidfd_open() making it possible to retrieve
> > pidfd for PID-based processes we enable them to adopt this api.
> >
> > In line with Arnd's recent changes to consolidate syscall numbers across
> > architectures, I have added the pidfd_open() syscall to all architectures
> > at the same time.
> 
> I'm glad it's easier now.
> 
> >  arch/alpha/kernel/syscalls/syscall.tbl      |  1 +
> >  arch/arm64/include/asm/unistd32.h           |  2 +
> >  arch/ia64/kernel/syscalls/syscall.tbl       |  1 +
> >  arch/m68k/kernel/syscalls/syscall.tbl       |  1 +
> >  arch/microblaze/kernel/syscalls/syscall.tbl |  1 +
> >  arch/mips/kernel/syscalls/syscall_n32.tbl   |  1 +
> >  arch/parisc/kernel/syscalls/syscall.tbl     |  1 +
> >  arch/powerpc/kernel/syscalls/syscall.tbl    |  1 +
> >  arch/s390/kernel/syscalls/syscall.tbl       |  1 +
> >  arch/sh/kernel/syscalls/syscall.tbl         |  1 +
> >  arch/sparc/kernel/syscalls/syscall.tbl      |  1 +
> >  arch/x86/entry/syscalls/syscall_32.tbl      |  1 +
> >  arch/x86/entry/syscalls/syscall_64.tbl      |  1 +
> >  arch/xtensa/kernel/syscalls/syscall.tbl     |  1 +
> 
> It'd be nice to arrange the system call tables so that we need to
> change only one file when adding a new system call.
> 
> [Snip system call wiring]
> 
> > --- a/include/linux/pid.h
> > +++ b/include/linux/pid.h
> > @@ -67,6 +67,7 @@ struct pid
> >  extern struct pid init_struct_pid;
> >
> >  extern const struct file_operations pidfd_fops;
> > +extern int pidfd_create(struct pid *pid);
> >
> >  static inline struct pid *get_pid(struct pid *pid)
> >  {
> > diff --git a/include/linux/syscalls.h b/include/linux/syscalls.h
> > index e2870fe1be5b..989055e0b501 100644
> > --- a/include/linux/syscalls.h
> > +++ b/include/linux/syscalls.h
> > @@ -929,6 +929,7 @@ asmlinkage long sys_clock_adjtime32(clockid_t which_clock,
> >                                 struct old_timex32 __user *tx);
> >  asmlinkage long sys_syncfs(int fd);
> >  asmlinkage long sys_setns(int fd, int nstype);
> > +asmlinkage long sys_pidfd_open(pid_t pid, unsigned int flags);
> >  asmlinkage long sys_sendmmsg(int fd, struct mmsghdr __user *msg,
> >                              unsigned int vlen, unsigned flags);
> >  asmlinkage long sys_process_vm_readv(pid_t pid,
> > diff --git a/include/uapi/asm-generic/unistd.h b/include/uapi/asm-generic/unistd.h
> > index dee7292e1df6..94a257a93d20 100644
> > --- a/include/uapi/asm-generic/unistd.h
> > +++ b/include/uapi/asm-generic/unistd.h
> > @@ -832,9 +832,11 @@ __SYSCALL(__NR_io_uring_setup, sys_io_uring_setup)
> >  __SYSCALL(__NR_io_uring_enter, sys_io_uring_enter)
> >  #define __NR_io_uring_register 427
> >  __SYSCALL(__NR_io_uring_register, sys_io_uring_register)
> > +#define __NR_pidfd_open 428
> > +__SYSCALL(__NR_pidfd_open, sys_pidfd_open)
> >
> >  #undef __NR_syscalls
> > -#define __NR_syscalls 428
> > +#define __NR_syscalls 429
> >
> >  /*
> >   * 32 bit systems traditionally used different
> > diff --git a/kernel/fork.c b/kernel/fork.c
> > index 737db1828437..980cc1d2b8d4 100644
> > --- a/kernel/fork.c
> > +++ b/kernel/fork.c
> > @@ -1714,7 +1714,7 @@ const struct file_operations pidfd_fops = {
> >   * Return: On success, a cloexec pidfd is returned.
> >   *         On error, a negative errno number will be returned.
> >   */
> > -static int pidfd_create(struct pid *pid)
> > +int pidfd_create(struct pid *pid)
> >  {
> >         int fd;
> >
> > diff --git a/kernel/pid.c b/kernel/pid.c
> > index 20881598bdfa..237d18d6ecb8 100644
> > --- a/kernel/pid.c
> > +++ b/kernel/pid.c
> > @@ -38,6 +38,7 @@
> >  #include <linux/syscalls.h>
> >  #include <linux/proc_ns.h>
> >  #include <linux/proc_fs.h>
> > +#include <linux/sched/signal.h>
> >  #include <linux/sched/task.h>
> >  #include <linux/idr.h>
> >
> > @@ -451,6 +452,53 @@ struct pid *find_ge_pid(int nr, struct pid_namespace *ns)
> >         return idr_get_next(&ns->idr, &nr);
> >  }
> >
> > +/**
> > + * pidfd_open() - Open new pid file descriptor.
> > + *
> > + * @pid:   pid for which to retrieve a pidfd
> > + * @flags: flags to pass
> > + *
> > + * This creates a new pid file descriptor with the O_CLOEXEC flag set for
> > + * the process identified by @pid. Currently, the process identified by
> > + * @pid must be a thread-group leader. This restriction currently exists
> > + * for all aspects of pidfds including pidfd creation (CLONE_PIDFD cannot
> > + * be used with CLONE_THREAD) and pidfd polling (only supports thread group
> > + * leaders).
> > + *
> > + * Return: On success, a cloexec pidfd is returned.
> > + *         On error, a negative errno number will be returned.
> > + */
> > +SYSCALL_DEFINE2(pidfd_open, pid_t, pid, unsigned int, flags)
> > +{
> > +       int fd, ret;
> > +       struct pid *p;
> > +       struct task_struct *tsk;
> > +
> > +       if (flags)
> > +               return -EINVAL;
> 
> If we support blocking operations on pidfds, we'll want to be able to
> put them in non-blocking mode. Does it make sense to accept and ignore
> O_NONBLOCK here now?

Hm, is there a race condition you see that would prevent you from using
fcntl()? If you're ok with using fcntl() I would argue we should hold on
tight to every bit we have for flags.

> 
> > +       if (pid <= 0)
> > +               return -EINVAL;
> 
> WDYT of defining pid == 0 to mean "open myself"?

I'm torn. It be a nice shortcut of course but pid being 0 is usually an
indicator for child processes. So unless the getpid() before
pidfd_open() is an issue I'd say let's leave it as is. If you really
want the shortcut might -1 be better?

> 
> > +       p = find_get_pid(pid);
> > +       if (!p)
> > +               return -ESRCH;
> > +
> > +       rcu_read_lock();
> > +       tsk = pid_task(p, PIDTYPE_PID);
> > +       if (!tsk)
> > +               ret = -ESRCH;
> > +       else if (unlikely(!thread_group_leader(tsk)))
> > +               ret = -EINVAL;
> > +       else
> > +               ret = 0;
> > +       rcu_read_unlock();
> > +
> > +       fd = ret ?: pidfd_create(p);
> > +       put_pid(p);
> > +       return fd;
> > +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
