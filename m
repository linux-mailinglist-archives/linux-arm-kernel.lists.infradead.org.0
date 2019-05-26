Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE2A2AC1E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 22:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CC+LVBNaZu3xspByFl3+ddMnNbpRlECHhocqney149k=; b=D5XgULuavAZMDh
	o1HzBjwtwiYb82erHqO3mLU3294YXhoK13vfam1IbsmCkxDUgh1oAr+xYkNm3EPeujW/Pllgr9+qO
	6b6qXl0rkM086Gc0OtEpYn2qFyJhUlTiwBQuwzc7tzfRGSh9+THUUnYMtULHKBoROJ2nLkkd+i2MO
	B4AscAcos3TL7ZHe5uZThRoIvk6Ezps9vDSGigVrFgkHF7zHl57rfnkyLYUsBJB8uVZ4HMWQAfqTo
	yDZVirjn1N8T3Zy5x2itycyOpc9kNRKA9pd/U1BxcfYLBYB75z4CzjL2D+IcV17ZaPpFHzxPaiZxb
	pOP4xKdxWnAqelC22I4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUzkG-0000OZ-LY; Sun, 26 May 2019 20:27:52 +0000
Received: from port70.net ([81.7.13.123])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUzk9-0000Ny-R8
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 20:27:47 +0000
Received: by port70.net (Postfix, from userid 1002)
 id 64F7EABEC0BA; Sun, 26 May 2019 22:20:42 +0200 (CEST)
Date: Sun, 26 May 2019 22:20:42 +0200
From: Szabolcs Nagy <nsz@port70.net>
To: Christian Brauner <christian@brauner.io>
Subject: Re: [PATCH v2 1/2] open: add close_range()
Message-ID: <20190526202041.GO16415@port70.net>
References: <20190523154747.15162-1-christian@brauner.io>
 <20190523154747.15162-2-christian@brauner.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523154747.15162-2-christian@brauner.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_132746_030223_87154F87 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

* Christian Brauner <christian@brauner.io> [2019-05-23 17:47:46 +0200]:
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

this does not work in a hosted c implementation unless the libc
guarantees not to use libc internal fds (e.g. in execve).
(the libc cannot easily abstract fds, so the syscall abi layer
fd semantics is necessarily visible to user code.)

i think this is a new constraint for userspace runtimes.
(not entirely unreasonable though)

> The code snippet above is one way of working around the problem that file
> descriptors are not cloexec by default. This is aggravated by the fact that
> we can't just switch them over without massively regressing userspace. For
> a whole class of programs having an in-kernel method of closing all file
> descriptors is very helpful (e.g. demons, service managers, programming
> language standard libraries, container managers etc.).

was cloexec_range(a,b) considered?

> (Please note, unshare(CLONE_FILES) should only be needed if the calling
>  task is multi-threaded and shares the file descriptor table with another
>  thread in which case two threads could race with one thread allocating
>  file descriptors and the other one closing them via close_range(). For the
>  general case close_range() before the execve() is sufficient.)

assuming there is no unblocked signal handler that may open fds.

a syscall that tramples on fds not owned by the caller is ugly
(not generally safe to use and may break things if it gets used),
i don't have a better solution for fd leaks or missing cloexec,
but i think it needs more analysis how it can be used.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
