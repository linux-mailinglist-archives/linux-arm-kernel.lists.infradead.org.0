Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7AE1F99BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:12:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYstkGnRpHCAz82PxBvpK+WaNa/GJs79vdzyee5snss=; b=dU50jpvE1YkYUb
	MJN19Es/ICg/8CN06QtFp6+y9mMz0cWREdJarjTKAmjfeysroj4ktJIcy4uFTyoUBVd2B99HqjwS9
	Y0QkXchglWnNbSFocObo/S9U3GV2t82uGxu840k9HCT8kZeIt7BuAvfuRzVvGC387DVn9vsEeJB8S
	O/TLmYoSltx7V8Z9GoDf6PB8SCSq6K6ywup4lCpGVNxgIOngU0iY6/MOKXgQ5mDO5gDujjLEcklRd
	hFxXG+CA+ebh4ID2bio0pHl55i4FGsXIrrysfD0y4aaa3EmHsrhKo3bVH1WERAk9F/DBnGLy4YY31
	zqn6dJc/Vw2FkHM1k8kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpr2-00043S-W9; Mon, 15 Jun 2020 14:12:52 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpqu-00042V-2V
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:12:45 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 1873468AFE; Mon, 15 Jun 2020 16:12:40 +0200 (CEST)
Date: Mon, 15 Jun 2020 16:12:39 +0200
From: Christoph Hellwig <hch@lst.de>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/6] exec: simplify the compat syscall handling
Message-ID: <20200615141239.GA12951@lst.de>
References: <20200615130032.931285-1-hch@lst.de>
 <20200615130032.931285-3-hch@lst.de>
 <CAK8P3a0bRD3RzE_X6Tjzu9Tj+OhHhP+S=k6+VYODBGko8oQhew@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0bRD3RzE_X6Tjzu9Tj+OhHhP+S=k6+VYODBGko8oQhew@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_071244_263099_7FD25ABF 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Parisc List <linux-parisc@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 sparclinux <sparclinux@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 03:31:35PM +0200, Arnd Bergmann wrote:
> >  #ifdef CONFIG_COMPAT
> > -       if (unlikely(argv.is_compat)) {
> > +       if (in_compat_syscall()) {
> > +               const compat_uptr_t __user *compat_argv =
> > +                       compat_ptr((unsigned long)argv);
> >                 compat_uptr_t compat;
> >
> > -               if (get_user(compat, argv.ptr.compat + nr))
> > +               if (get_user(compat, compat_argv + nr))
> >                         return ERR_PTR(-EFAULT);
> >
> >                 return compat_ptr(compat);
> >         }
> >  #endif
> 
> I would expect that the "#ifdef CONFIG_COMPAT" can be removed
> now, since compat_ptr() and in_compat_syscall() are now defined
> unconditionally. I have not tried that though.

True, I'll give it a spin.

> > +/*
> > + * x32 syscalls are listed in the same table as x86_64 ones, so we need to
> > + * define compat syscalls that are exactly the same as the native version for
> > + * the syscall table machinery to work.  Sigh..
> > + */
> > +#ifdef CONFIG_X86_X32
> >  COMPAT_SYSCALL_DEFINE3(execve, const char __user *, filename,
> > -       const compat_uptr_t __user *, argv,
> > -       const compat_uptr_t __user *, envp)
> > +                      const char __user *const __user *, argv,
> > +                      const char __user *const __user *, envp)
> >  {
> > -       return do_compat_execve(AT_FDCWD, getname(filename), argv, envp, 0);
> > +       return do_execveat(AT_FDCWD, getname(filename), argv, envp, 0, NULL);
> >  }
> 
> Maybe move it to arch/x86/kernel/process_64.c or arch/x86/entry/syscall_x32.c
> to keep it out of the common code if this is needed.

I'd rather keep it in common code as that allows all the low-level
exec stuff to be marked static, and avoid us growing new pointless
compat variants through copy and paste.
smart compiler to d

> I don't really understand
> the comment, why can't this just use this?

That errors out with:

ld: arch/x86/entry/syscall_x32.o:(.rodata+0x1040): undefined reference to
`__x32_sys_execve'
ld: arch/x86/entry/syscall_x32.o:(.rodata+0x1108): undefined reference to
`__x32_sys_execveat'
make: *** [Makefile:1139: vmlinux] Error 1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
