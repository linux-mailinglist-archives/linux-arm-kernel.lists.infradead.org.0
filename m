Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EEBC1D25
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o4ZpL8U21I+Aqj4kb39R0JrvUlLqpQ0NTTZ7h4ApaiM=; b=tCD1nbJzgJLCHf
	sTWQvDoQS6u8DDq0qOOcVCB/T5wDYoDgxu2y8ZB8HBPUIrKkfpUOKZpt9VAzhkbn0Bi0yVnxhEtVj
	IORceHbWOx/YFMKIHAsbu82sl5JvbKaJhYyU3JIG7X/2He4HwT4h1R6GI7HNZj0VS7RfFrV+/YVSi
	Cc2mg5FgXGwobKtWuvjfhVQJQaozWhQLQ5JD3CPJnwFY7DCmra12Gb7Jun2EL1w242kLExCHddqLZ
	L8qQrIzgg9SWLFYdm1j911PpuixzmfYUlqpYcOC7UGEZpNjRJEFto6cIQeBTiQEEnitivbf4IJ2rF
	8b8bvDt8j9XafDZeJ8dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEr1n-0004GQ-H2; Mon, 30 Sep 2019 08:27:31 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEr1c-0004Fi-9O
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:27:22 +0000
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com
 [209.85.217.51]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x8U8R4II012807
 for <linux-arm-kernel@lists.infradead.org>; Mon, 30 Sep 2019 17:27:04 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x8U8R4II012807
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1569832025;
 bh=S3XJDoeipww5RQbEvSMupd7ozkKy8JwBydWHSl7iEd8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UMLkZkxecf6GdVqFNZtK3I5UzfFgRPItb95ROKa80T/3sa/9Eiehes5+KNghNotEA
 EbgDc04gztLox5jrIiJb0xhh3XcQuNj2v2wueRxKc0vYzuEgwRO1fVwianL73Yc8mG
 mx17qPyFl4wPz8U0ssJUkboAE/+Z000MpXUOwO3yzN48jY3V/1UcmaxUoJZ9GCOSPV
 gocNk+Rs8IU5bi9t0clQ0Ac8DCi0W0UdN6kIaI+nci9GIbK+S2fsYZvaWzwABsnX6F
 fgWOaKo41QeSGMN9AdX2jaGBcZd9QCqmVEQNzDr/x1EJv+j7F4q7jZzN0OMiw5tawy
 wFP1flpOBSYxA==
X-Nifty-SrcIP: [209.85.217.51]
Received: by mail-vs1-f51.google.com with SMTP id b123so6178259vsb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 01:27:04 -0700 (PDT)
X-Gm-Message-State: APjAAAU2p5hxk5tNlw2VtKpxw0JEKMOErYWwHUetNk5GnYPnKigwVv6x
 9v8jJJkGsi4p5dot9zDqD14Ra1seKJP3D5o0wa8=
X-Google-Smtp-Source: APXvYqyu9o2T0h0WNByn2XriMLNL31isIe26D8AZTWUv/uJaOHyQY1+TN/o45LxvFGamYDgXuIeEO1go3fL594zyVNk=
X-Received: by 2002:a67:1e87:: with SMTP id e129mr9358134vse.179.1569832023746; 
 Mon, 30 Sep 2019 01:27:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190930055925.25842-1-yamada.masahiro@socionext.com>
 <CAK8P3a24P7v41TZszjKzoJmhcss5WK-e9fHwUqEqre6FBPJWvw@mail.gmail.com>
In-Reply-To: <CAK8P3a24P7v41TZszjKzoJmhcss5WK-e9fHwUqEqre6FBPJWvw@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 30 Sep 2019 17:26:27 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS_gbz2Qc8MgXiKRRSSgKse3J-dJ98c4qViuvnyxdAD+Q@mail.gmail.com>
Message-ID: <CAK7LNAS_gbz2Qc8MgXiKRRSSgKse3J-dJ98c4qViuvnyxdAD+Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: fix __get_user_check() in case uaccess_* calls are
 not inlined
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_012720_653786_CFC901C5 
X-CRM114-Status: GOOD (  22.06  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Mon, Sep 30, 2019 at 4:57 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Mon, Sep 30, 2019 at 8:01 AM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> >
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
>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
>
> The patch looks reasonable to me, but I think we should also revert
> commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
> forcibly") in mainline for now, as it caused this to happen all the time rather
> than only for users that expliticly select CONFIG_OPTIMIZE_INLINING.
>
> We have had other bug reports starting with that commit that run into
> similar issues, and I'm sure there are more of them. I don't mind having it
> in linux-next for a while long, but I think it was premature to have it merged
> into mainline.
>
>         Arnd


Hmm, I know you are testing randconfig build tests,
but how many people are testing the kernel boot in linux-next?

People and kernelci started to report the issue immediately
after it landed in the mainline...


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
