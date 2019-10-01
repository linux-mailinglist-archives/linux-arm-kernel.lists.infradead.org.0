Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8CDC2ED2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vw8fIOXULr9hzMPhSSnOFD5cXGvvrrhNdEIX6YJQhGw=; b=Zvt++V7IWHF5ee
	fQpLg1IMm4hPt3cgwl8bvVRP/k4zaQtZ1YofVQPVSzCz+rGVF/rlUjuaw0Of9u+oUq9790DexBF+/
	lWu99Pwtl996hh0BgcFu7LfWrgyRFHeeee5GW7ck8Tr2iBbY9sVP3Umod/lfC4U7XM+J0kQaJniEp
	m9SmRw3ygWN6RIyK4dyMvzBCi5/+bp2ksWoakI1sgafaJmbLyjmq0uztSWHPrqZ+nz0FWKcyYhoUY
	jbb4TzprBzU9Sa3DMlDIXBe1KaADX1mq5HV/axEuwTqOSa5DXk+owkJf5QXYLQTED7WIn+Ef+gHBh
	7lfZ3lcnYjhWfJVpTOFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDVT-0006ag-IZ; Tue, 01 Oct 2019 08:27:39 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDVL-0006aA-JT
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:27:33 +0000
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com
 [209.85.221.169]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x918REBm001485
 for <linux-arm-kernel@lists.infradead.org>; Tue, 1 Oct 2019 17:27:15 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x918REBm001485
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1569918435;
 bh=NTKx0xB9QLkRSTJJgxF9CkFFxM/Hw6/XWymFcoefPgo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xHIO6PToKh8HStqdGTKKiwVU5/yWuKLzrG5Vjt7XN4dEueUCPLVedcPtxhjqBD0Wa
 0afoxJyKitPb06woYCQugANA6BTIt4VU2yZOEaZKy5wjOgGfu3oaEGJQIU9ESnWGV8
 Wa3QqWCzPDb0qe/CRPIacggdClsRXponVJD7HNsveec65KSk5uTHdlHyjeUDqCfILI
 eiJwsME65DxsyVboxd1/w94iMYr2h1QyDQhz/AGfYxWWr1aDjBFstCAJ2JU9/IKWB0
 h1BFXLOO6uTq3riXaqrXo33tlwDK+7+KvJZH1YO2/wYwTQXfcd3JMpue5PMIHuM3Cj
 gxycpTjXDEV5g==
X-Nifty-SrcIP: [209.85.221.169]
Received: by mail-vk1-f169.google.com with SMTP id f1so183295vkh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 01:27:15 -0700 (PDT)
X-Gm-Message-State: APjAAAWJBMYPgwFJdKyhapS+Hm8qXguCUplPTLSfNimLm+t1iucQrJNp
 ZGbSUyYKMpprU+IvqvCB8+qSMFXxiuj0Q6ZoO78=
X-Google-Smtp-Source: APXvYqyiSCioWKRLdsi5vTtLFl0O+IRnkrPUciETyrvHuFQkqEcvD1cMecSdku0rISUlgI0fA7A1/xDzTMxf83f1/j0=
X-Received: by 2002:a1f:2343:: with SMTP id j64mr6852228vkj.84.1569918433967; 
 Tue, 01 Oct 2019 01:27:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190930055925.25842-1-yamada.masahiro@socionext.com>
 <20190930175009.GH25745@shell.armlinux.org.uk>
In-Reply-To: <20190930175009.GH25745@shell.armlinux.org.uk>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 1 Oct 2019 17:26:37 +0900
X-Gmail-Original-Message-ID: <CAK7LNATYXUrzNFLZpzAN2U1Ep+RvYccEsqSXUhhF2k9ONwJN1g@mail.gmail.com>
Message-ID: <CAK7LNATYXUrzNFLZpzAN2U1Ep+RvYccEsqSXUhhF2k9ONwJN1g@mail.gmail.com>
Subject: Re: [PATCH] ARM: fix __get_user_check() in case uaccess_* calls are
 not inlined
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_012731_862794_E451D692 
X-CRM114-Status: GOOD (  26.57  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Tue, Oct 1, 2019 at 2:50 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Mon, Sep 30, 2019 at 02:59:25PM +0900, Masahiro Yamada wrote:
> > KernelCI reports that bcm2835_defconfig is no longer booting since
> > commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
> > forcibly"):
> >
> >   https://lkml.org/lkml/2019/9/26/825
> >
> > I also received a regression report from Nicolas Saenz Julienne:
> >
> >   https://lkml.org/lkml/2019/9/27/263
> >
> > This problem has cropped up on arch/arm/config/bcm2835_defconfig
> > because it enables CONFIG_CC_OPTIMIZE_FOR_SIZE. The compiler tends
> > to prefer not inlining functions with -Os. I was able to reproduce
> > it with other boards and defconfig files by manually enabling
> > CONFIG_CC_OPTIMIZE_FOR_SIZE.
> >
> > The __get_user_check() specifically uses r0, r1, r2 registers.
> > So, uaccess_save_and_enable() and uaccess_restore() must be inlined
> > in order to avoid those registers being overwritten in the callees.
> >
> > Prior to commit 9012d011660e ("compiler: allow all arches to enable
> > CONFIG_OPTIMIZE_INLINING"), the 'inline' marker was always enough for
> > inlining functions, except on x86.
> >
> > Since that commit, all architectures can enable CONFIG_OPTIMIZE_INLINING.
> > So, __always_inline is now the only guaranteed way of forcible inlining.
> >
> > I want to keep as much compiler's freedom as possible about the inlining
> > decision. So, I changed the function call order instead of adding
> > __always_inline around.
> >
> > Call uaccess_save_and_enable() before assigning the __p ("r0"), and
> > uaccess_restore() after evacuating the __e ("r0").
> >
> > Fixes: 9012d011660e ("compiler: allow all arches to enable CONFIG_OPTIMIZE_INLINING")
> > Reported-by: "kernelci.org bot" <bot@kernelci.org>
> > Reported-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > ---
> >
> >  arch/arm/include/asm/uaccess.h | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
> > index 303248e5b990..559f252d7e3c 100644
> > --- a/arch/arm/include/asm/uaccess.h
> > +++ b/arch/arm/include/asm/uaccess.h
> > @@ -191,11 +191,12 @@ extern int __get_user_64t_4(void *);
> >  #define __get_user_check(x, p)                                               \
> >       ({                                                              \
> >               unsigned long __limit = current_thread_info()->addr_limit - 1; \
> > +             unsigned int __ua_flags = uaccess_save_and_enable();    \
>
> If the compiler is moving uaccess_save_and_enable(), that's something
> we really don't want

Hmm, based on my poor knowledge about compilers,
I do not know if this re-arrangement happens...

> - the idea is to _minimise_ the number of kernel
> memory accesses between enabling userspace access and performing the
> actual access.
>
> Fixing it in this way widens the window for the kernel to be doing
> something it shoulding in userspace.
>
> So, the right solution is to ensure that the compiler always inlines
> the uaccess_*() helpers - which should be nothing more than four
> instructions for uaccess_save_and_enable() and two for the
> restore.
>

OK, I will use __always_inline to avoid
any potential behavior change.

Thanks.


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
