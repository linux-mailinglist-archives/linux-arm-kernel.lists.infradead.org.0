Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE1A1F9ACC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXzzGHgYSCD+QGthoqq+fPIZQtYWxGVgYm8d8qG0yvE=; b=gdfLR3EP3ECtq4
	LmlBjq5E6UeLpVY3VfND+f63Mxv+2PubgsnXFPzOqeScXwq1leP1TPdRSlVMk5rq4rsyFGpOlYFI0
	mUVsuLdydRISlthri0sw8/zpzFWZM1ZTv3Suonz6Gw732xtuEYbD2eGQUid6lJWGhYf54HCapO3m/
	fyBMivslKKeW1TYYrrC+ferHFKDYOk+opnpJCOYqsP0KELbL07k/Be4xC8x2J9GN5TlgT5lKh4k6D
	0+lmewM4g3aavCo/co6XR3bUy6F0jSeyLafKfIvdaMC9GffYsUNMwSL0mxZfHl7xCF81dHbM985+L
	tXO/S0R2Kt2UaQFkrcQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqPv-0005EA-Eb; Mon, 15 Jun 2020 14:48:55 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqPh-00056g-Pf
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:48:43 +0000
Received: by mail-io1-xd41.google.com with SMTP id r77so18126178ior.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 07:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CFYHq9QU1VF3rchooKVX3EvDkFFGgQYVgoX+nSdXTuc=;
 b=PRxkgdzs6hj4NpKjLdU4+mZo+kiLgpl3v8qO3FUtkLItVntqN/v1UtTbvyh1fAkJDQ
 /r/QUNFX0i3kNhar6p3HMQRIc0/hnPpxSyfCSOk/7QGhSriP8dugDYCbD3NVmr3r39T+
 L0RU8h1FEoVzRUIqiHPXWetm4KkkvOZ8sZuPa8pJIZPJbfJz9/qmImf4Haoxykq/U+Wm
 z0McY86vBdXb73lWVCJytm+tusWr8I6JfrKJ++433fcbFQ7IdZZfKn+gl9mRtO93JHfb
 KS+ugwQDy31DiZDXPTjkRurzgAFvHZ4Gbe2s6FFN7LQGjbdA1Klosmt+SwHoidzFhQqC
 XkJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CFYHq9QU1VF3rchooKVX3EvDkFFGgQYVgoX+nSdXTuc=;
 b=QGR2oeNMC8J8KH7iZ4WCz6/20AUBijdga6ROXaUYpPViFhzvOdXWJhPcEgBNeCzaD0
 ArOxCazU96W5FiLAkIj2tWGnQqZuGcYVfDMJHL7MIZr81hZNcBJ9Ko++KHjfqSQWvKRU
 J2bV2NNRfttYk6BfqLEpw775BOMMUokLHluaXBtuvC1cXu21pHLS5pqXEWNXH3nvK/31
 s1sIElWST+lcZaqUBI+SaBMQntUZrnZN5g/BFN0xYZUl7mWPwWsyvAk3tuljMTDWKDmD
 PwY+QV23LdoOm0YH9dk8dly87KLPNlu6azuCQ751uiaTZ9BNQEHHczQCwKq1PBr5/1mF
 afvg==
X-Gm-Message-State: AOAM532yzLUsv7Nq6miCQ2feUM6hrMZeZ2vPf2Mq5Ybnv6jn2bkt9AKo
 BQTpmr0HtiB3huSlwh6zoO5ib/2a/IZh7EHTvw==
X-Google-Smtp-Source: ABdhPJyd6RZmdZpxGVu6c3gRb+Y3l0bsTdnHuSOZYnX1P537cI9jfkNEPZLpydEoTLgL6kUKfHIZe+3b9Hy/JybhE4I=
X-Received: by 2002:a02:3501:: with SMTP id k1mr6072971jaa.133.1592232518583; 
 Mon, 15 Jun 2020 07:48:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200615130032.931285-1-hch@lst.de>
 <20200615130032.931285-3-hch@lst.de>
 <CAK8P3a0bRD3RzE_X6Tjzu9Tj+OhHhP+S=k6+VYODBGko8oQhew@mail.gmail.com>
 <20200615141239.GA12951@lst.de>
In-Reply-To: <20200615141239.GA12951@lst.de>
From: Brian Gerst <brgerst@gmail.com>
Date: Mon, 15 Jun 2020 10:48:26 -0400
Message-ID: <CAMzpN2heSzZzg16ws3yQkd7YZwmPPx_4RFCpb9JYfFWJ9gfPhA@mail.gmail.com>
Subject: Re: [PATCH 2/6] exec: simplify the compat syscall handling
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_074841_862350_D3535886 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [brgerst[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Parisc List <linux-parisc@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 sparclinux <sparclinux@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 10:13 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Mon, Jun 15, 2020 at 03:31:35PM +0200, Arnd Bergmann wrote:
> > >  #ifdef CONFIG_COMPAT
> > > -       if (unlikely(argv.is_compat)) {
> > > +       if (in_compat_syscall()) {
> > > +               const compat_uptr_t __user *compat_argv =
> > > +                       compat_ptr((unsigned long)argv);
> > >                 compat_uptr_t compat;
> > >
> > > -               if (get_user(compat, argv.ptr.compat + nr))
> > > +               if (get_user(compat, compat_argv + nr))
> > >                         return ERR_PTR(-EFAULT);
> > >
> > >                 return compat_ptr(compat);
> > >         }
> > >  #endif
> >
> > I would expect that the "#ifdef CONFIG_COMPAT" can be removed
> > now, since compat_ptr() and in_compat_syscall() are now defined
> > unconditionally. I have not tried that though.
>
> True, I'll give it a spin.
>
> > > +/*
> > > + * x32 syscalls are listed in the same table as x86_64 ones, so we need to
> > > + * define compat syscalls that are exactly the same as the native version for
> > > + * the syscall table machinery to work.  Sigh..
> > > + */
> > > +#ifdef CONFIG_X86_X32
> > >  COMPAT_SYSCALL_DEFINE3(execve, const char __user *, filename,
> > > -       const compat_uptr_t __user *, argv,
> > > -       const compat_uptr_t __user *, envp)
> > > +                      const char __user *const __user *, argv,
> > > +                      const char __user *const __user *, envp)
> > >  {
> > > -       return do_compat_execve(AT_FDCWD, getname(filename), argv, envp, 0);
> > > +       return do_execveat(AT_FDCWD, getname(filename), argv, envp, 0, NULL);
> > >  }
> >
> > Maybe move it to arch/x86/kernel/process_64.c or arch/x86/entry/syscall_x32.c
> > to keep it out of the common code if this is needed.
>
> I'd rather keep it in common code as that allows all the low-level
> exec stuff to be marked static, and avoid us growing new pointless
> compat variants through copy and paste.
> smart compiler to d
>
> > I don't really understand
> > the comment, why can't this just use this?
>
> That errors out with:
>
> ld: arch/x86/entry/syscall_x32.o:(.rodata+0x1040): undefined reference to
> `__x32_sys_execve'
> ld: arch/x86/entry/syscall_x32.o:(.rodata+0x1108): undefined reference to
> `__x32_sys_execveat'
> make: *** [Makefile:1139: vmlinux] Error 1

I think I have a fix for this, by modifying the syscall wrappers to
add an alias for the __x32 variant to the native __x64_sys_foo().
I'll get back to you with a patch.

--
Brian Gerst

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
