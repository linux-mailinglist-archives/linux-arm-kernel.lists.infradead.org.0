Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFFA295D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzuGWPeBXUDhOkyd3Gach9G5r9xN0mwyk4WFvrWRafY=; b=OYueuZFvGzzYjG
	P+dyG9FfPOh6GD/MZaUGE14LgZklpHYuPCwO5Yk30gs5CKm6HD9qwse9aNdmYbX/JIrvMQVdNqoZg
	o6wEy+gSRRZUH1TPeGqoU+6HmbWXPPxcc1lnK5KvNBh8452/kzBiB6i9R+d82B+1DGL87mGiDjkyP
	1cibBffDgsnmXwIoy+UzyqdmLDwAEXlEZZHUfu+lH0Si0Uh0c+QUsnq24HHFdTMyfms6grfcUS3o2
	10LZ/ixfkomAI8rN4lFCynGdwaxC/A76o744HBJyVPBoJNxOmVHrGr69grRBO22yoJ3cRq1MjYnqp
	7BskgWOd7sd4R+P0rUlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7UT-0004eL-DL; Fri, 24 May 2019 10:31:57 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7UL-0004dy-Cp
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:31:50 +0000
Received: by mail-it1-x142.google.com with SMTP id m3so14945465itl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 03:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=t6QPS5lwd7cr471Dg03A0AXuNJ/CrzRoO1xYODuKhbA=;
 b=Vxe1OcgbXiqgWJS2x6TaYm+Cn6jhah0Qj5bXPrvsCh/P7F74y/HXVPKJgfba1esHAh
 pwR5mq5lwAljwztFYdwuQRV8yQdOUdArsoOfy733CwBcrJjtFBZmm+2psNdK9a0f6LRt
 rLVXaIubfp97S/kaUSegG/zw06TKZWV2uGoYdfz/HBZMYvpqO26ETRVlzOvec4BsvfMF
 b/tEWUN6EkieS8aeK40Tf6C3HdOU3ue/E/Pe+SN7+Bn/JSvbY38QUqiXMJBvf9Eosi4J
 jqg/ZTc6HhZAgAgv8MD/8YVQKF6dun5zVxcWHFX4FzRjCjDe6ZiDbFDHVp+8BPV1oxjx
 me4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=t6QPS5lwd7cr471Dg03A0AXuNJ/CrzRoO1xYODuKhbA=;
 b=lROxwE/rc35/tRQh12Qz3Cq2n8G7XVuyZe5BII4J65o8bZP05JuIboXcx93ms2OckI
 /2RrDMD0x0KA5ba3ACFw4xR9tcWOiPx/QxXou2rR9xAUZhGxSUay1Ndl81At0GE8jBoa
 EJu7gWFSIN8CQoKQ/JbUEDbWu65G6DJ2nQTgrnBy5yumaQyXByr8fxjzuXn0LUjBIdMQ
 BHKWBD4RNHsvW3gWmKAEwA+eSQ5n+E2JgwcSZwiEsz01dcykcUuOdPzVoh24HWzWGZ8S
 E3QsEXcESS4nq/Y/ejnrjPbeKAWrL92/FXYokUovjmtroqdhhlWW8nyVretae4bhfJzU
 aaNA==
X-Gm-Message-State: APjAAAU7z7zL8xWwk83Vw4A5LzXibVhdaQfd5u2A9vMGak5zU0i/iOco
 Ch5biTmLyaRu+Ejypqd1/wWAfA==
X-Google-Smtp-Source: APXvYqzsmLzfolt9XPm7istwtQ8OTvFuPcrdmMMZuaT+6LV9wiCluPiGeCgPdZY3zO0tzizi0DzZng==
X-Received: by 2002:a24:28c1:: with SMTP id
 h184mr18752225ith.105.1558693908188; 
 Fri, 24 May 2019 03:31:48 -0700 (PDT)
Received: from brauner.io ([172.56.12.37])
 by smtp.gmail.com with ESMTPSA id p2sm1028528itb.29.2019.05.24.03.31.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 24 May 2019 03:31:47 -0700 (PDT)
Date: Fri, 24 May 2019 12:31:39 +0200
From: Christian Brauner <christian@brauner.io>
To: Konstantin Khlebnikov <khlebnikov@yandex-team.ru>
Subject: Re: [PATCH v1 1/2] open: add close_range()
Message-ID: <20190524103137.otw7tbmagiqnf6u6@brauner.io>
References: <20190522155259.11174-1-christian@brauner.io>
 <67e4458a-9cc4-d1aa-608c-73ebe9e2f7a3@yandex-team.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67e4458a-9cc4-d1aa-608c-73ebe9e2f7a3@yandex-team.ru>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_033149_440517_F28F8078 
X-CRM114-Status: GOOD (  27.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 tglx@linutronix.de, ldv@altlinux.org, linux-arm-kernel@lists.infradead.org,
 fweimer@redhat.com, linux-parisc@vger.kernel.org, linux-api@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 07:22:17PM +0300, Konstantin Khlebnikov wrote:
> On 22.05.2019 18:52, Christian Brauner wrote:> This adds the close_range() syscall. It allows to efficiently close a range
> > of file descriptors up to all file descriptors of a calling task.
> >
> > The syscall came up in a recent discussion around the new mount API and
> > making new file descriptor types cloexec by default. During this
> > discussion, Al suggested the close_range() syscall (cf. [1]). Note, a
> > syscall in this manner has been requested by various people over time.
> >
> > First, it helps to close all file descriptors of an exec()ing task. This
> > can be done safely via (quoting Al's example from [1] verbatim):
> >
> >          /* that exec is sensitive */
> >          unshare(CLONE_FILES);
> >          /* we don't want anything past stderr here */
> >          close_range(3, ~0U);
> >          execve(....);
> >
> > The code snippet above is one way of working around the problem that file
> > descriptors are not cloexec by default. This is aggravated by the fact that
> > we can't just switch them over without massively regressing userspace. For
> > a whole class of programs having an in-kernel method of closing all file
> > descriptors is very helpful (e.g. demons, service managers, programming
> > language standard libraries, container managers etc.).
> > (Please note, unshare(CLONE_FILES) should only be needed if the calling
> >   task is multi-threaded and shares the file descriptor table with another
> >   thread in which case two threads could race with one thread allocating
> >   file descriptors and the other one closing them via close_range(). For the
> >   general case close_range() before the execve() is sufficient.)
> >
> > Second, it allows userspace to avoid implementing closing all file
> > descriptors by parsing through /proc/<pid>/fd/* and calling close() on each
> > file descriptor. From looking at various large(ish) userspace code bases
> > this or similar patterns are very common in:
> > - service managers (cf. [4])
> > - libcs (cf. [6])
> > - container runtimes (cf. [5])
> > - programming language runtimes/standard libraries
> >    - Python (cf. [2])
> >    - Rust (cf. [7], [8])
> > As Dmitry pointed out there's even a long-standing glibc bug about missing
> > kernel support for this task (cf. [3]).
> > In addition, the syscall will also work for tasks that do not have procfs
> > mounted and on kernels that do not have procfs support compiled in. In such
> > situations the only way to make sure that all file descriptors are closed
> > is to call close() on each file descriptor up to UINT_MAX or RLIMIT_NOFILE,
> > OPEN_MAX trickery (cf. comment [8] on Rust).
> >
> > The performance is striking. For good measure, comparing the following
> > simple close_all_fds() userspace implementation that is essentially just
> > glibc's version in [6]:
> >
> > static int close_all_fds(void)
> > {
> >          int dir_fd;
> >          DIR *dir;
> >          struct dirent *direntp;
> >
> >          dir = opendir("/proc/self/fd");
> >          if (!dir)
> >                  return -1;
> >          dir_fd = dirfd(dir);
> >          while ((direntp = readdir(dir))) {
> >                  int fd;
> >                  if (strcmp(direntp->d_name, ".") == 0)
> >                          continue;
> >                  if (strcmp(direntp->d_name, "..") == 0)
> >                          continue;
> >                  fd = atoi(direntp->d_name);
> >                  if (fd == dir_fd || fd == 0 || fd == 1 || fd == 2)
> >                          continue;
> >                  close(fd);
> >          }
> >          closedir(dir);
> >          return 0;
> > }
> >
> > to close_range() yields:
> > 1. closing 4 open files:
> >     - close_all_fds(): ~280 us
> >     - close_range():    ~24 us
> >
> > 2. closing 1000 open files:
> >     - close_all_fds(): ~5000 us
> >     - close_range():   ~800 us
> >
> > close_range() is designed to allow for some flexibility. Specifically, it
> > does not simply always close all open file descriptors of a task. Instead,
> > callers can specify an upper bound.
> > This is e.g. useful for scenarios where specific file descriptors are
> > created with well-known numbers that are supposed to be excluded from
> > getting closed.
> > For extra paranoia close_range() comes with a flags argument. This can e.g.
> > be used to implement extension. Once can imagine userspace wanting to stop
> > at the first error instead of ignoring errors under certain circumstances.
> 
> > There might be other valid ideas in the future. In any case, a flag
> > argument doesn't hurt and keeps us on the safe side.
> 
> Here is another strange but real-live scenario: crash handler for dumping core.
> 
> If applications has network connections it would be better to close them all,
> otherwise clients will wait until end of dumping process or timeout.
> Also closing normal files might be a good idea for releasing locks.
> 
> But simple closing might race with other threads - closed fd will be reused
> while some code still thinks it refers to original file.
> 
> Our solution closes files without freeing fd: it opens /dev/null and
> replaces all opened descriptors using dup2.
> 
> So, special flag for close_range() could close files without clearing bitmap.
> Effect should be the same - fd wouldn't be reused.
> 
> Actually two flags for two phases: closing files and releasing fd.

Konstantin, I'm sorry, I totally missed that part of your mail
yesterday.
Without speaking to the feasibility of this it's at least a good
illustration that people really do have the possible need for a flag
argument.

Thanks!
Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
