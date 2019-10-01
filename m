Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6018AC2ED9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrdyx8+74N7GAQu3WEs0mafllbOqLY4cCJZ6cACl3fE=; b=lLyR1RPlP0y9yT
	kEjAvuOObEdTJAWzM3v9t3NSLjPVplGDNkGqlS5ZhV8M/21awJy9IovRZrmJn2CmINfzOzCD8+l3p
	yh9mUZxLL4bw3twvM4GP61xTK+Xr7HfXWrFgrKbZbxVE5N0yHjdtwDpHrHDlXCM085loNkrSxaFrm
	8w5JknRJLU24ta1wEVkVLQtPBo3+y2TYcCBOneV8O7LytqtZusIEmR6hUGbyP3DXgbNYOpUQO6Pnc
	cWyUOW+7IaryV1n4w1HWW+DKSmmkEVkA0RILOtViDV5T8ux1hj5PzMxJXgGo28LSPE+yur6LLZHta
	QG1fpYSCnXldKKnlhg4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDXo-0006vg-Ew; Tue, 01 Oct 2019 08:30:04 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDXf-0006v1-Uu
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:29:57 +0000
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com
 [209.85.217.53]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x918TUmi026660
 for <linux-arm-kernel@lists.infradead.org>; Tue, 1 Oct 2019 17:29:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x918TUmi026660
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1569918571;
 bh=js7jLpstY+bD7D39QxN+sPmHytiad2GlmiLmccMGu30=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cK0920T8vARsG3qEuhifZYpBjDGp97raapPMW4j1gzTD77IUFm3Nijw5ZuSSW62JJ
 ahY4//UPyASJwbwHn4x1XsBLuJQYQPdysT9NWOvG8sJJkrb31ag6jbkUw0394M69pG
 0JASsJCBrxjTED9uj/5OPj8gBpdURJp4qubIw7MSJuv2WGkJP8BtmtqfiVgnQj4/XJ
 Ormfsj/u7Uc82nTGhNxpgRHc6Ygkzd/G4IGVndjD06N52Ato2tTorinlMkbl2aWash
 D1XTGl+IokGWWtb52FJjaPWm+Upl27/Zz/39YdPD5iwjVNCOyjCVhnXKSj7Tp9+6Iw
 V5iBUy7B5IgXQ==
X-Nifty-SrcIP: [209.85.217.53]
Received: by mail-vs1-f53.google.com with SMTP id l2so8737293vsr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 01:29:31 -0700 (PDT)
X-Gm-Message-State: APjAAAUpSZqDCZL4F6ysSi7v+0FHJYVq8xninq1ABVnZzOKg78JK78Bv
 J2hlqqwJg8jyLX9/m2py1stsKNleXvhRbecSDlY=
X-Google-Smtp-Source: APXvYqwe3DWk1KyGZe1vQgAdH5a4ChbwR1N6Zj2tLFju2cB5Fx7mHwXpeq18GiAtG3kLmP/cZFU5+5nHhcFG6ellfPM=
X-Received: by 2002:a67:88c9:: with SMTP id
 k192mr12215131vsd.181.1569918569917; 
 Tue, 01 Oct 2019 01:29:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190930055925.25842-1-yamada.masahiro@socionext.com>
 <CAKwvOdk4VKK-Z0ZRKb0aV9yH=jtqVp0aYaqMaL7dOq7-jaGX4A@mail.gmail.com>
In-Reply-To: <CAKwvOdk4VKK-Z0ZRKb0aV9yH=jtqVp0aYaqMaL7dOq7-jaGX4A@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 1 Oct 2019 17:28:53 +0900
X-Gmail-Original-Message-ID: <CAK7LNARzNNUcHOTrcp7ni4AdQK+qqDsG3fzQO4AkmDrAsFQA9g@mail.gmail.com>
Message-ID: <CAK7LNARzNNUcHOTrcp7ni4AdQK+qqDsG3fzQO4AkmDrAsFQA9g@mail.gmail.com>
Subject: Re: [PATCH] ARM: fix __get_user_check() in case uaccess_* calls are
 not inlined
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_012956_222099_A554B9A1 
X-CRM114-Status: GOOD (  26.90  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.91 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nick,

On Tue, Oct 1, 2019 at 7:19 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Sun, Sep 29, 2019 at 11:00 PM Masahiro Yamada
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
>
> Yep, that part is obvious, but...
>
> > So, uaccess_save_and_enable() and uaccess_restore() must be inlined
> > in order to avoid those registers being overwritten in the callees.
>
> Right, r0, r1, r2 are caller saved, meaning that __get_user_check must
> save/restore them when making function calls. So
> uaccess_save_and_enable() and uaccess_restore() should either be made
> into macros (macros and typecheck (see include/linux/typecheck.h) are
> peanut butter and chocolate), or occur at different points in the
> function when those register variables are no longer in use.
>
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
> >  #define __get_user_check(x, p)                                         \
> >         ({                                                              \
> >                 unsigned long __limit = current_thread_info()->addr_limit - 1; \
> > +               unsigned int __ua_flags = uaccess_save_and_enable();    \
> >                 register typeof(*(p)) __user *__p asm("r0") = (p);      \
> >                 register __inttype(x) __r2 asm("r2");                   \
> >                 register unsigned long __l asm("r1") = __limit;         \
> >                 register int __e asm("r0");                             \
>
> What does it mean for there to be two different local variables pinned
> to the same register? Ie. it looks like __e and __p are defined to
> exist in r0.  Would having one variable and an explicit cast result in
> differing storage?

In my understanding,
__p is input (a pointer to the user-space)
__e is output (return value)

Maybe, does it use two variables for clarification?


>
> > -               unsigned int __ua_flags = uaccess_save_and_enable();    \
> > +               unsigned int __err;                                     \
> >                 switch (sizeof(*(__p))) {                               \
> >                 case 1:                                                 \
> >                         if (sizeof((x)) >= 8)                           \
> > @@ -223,9 +224,10 @@ extern int __get_user_64t_4(void *);
> >                         break;                                          \
> >                 default: __e = __get_user_bad(); break;                 \
>
> ^ I think this assignment to __e should be replaced with an assignment
> to __err?  We no longer need the register at this point and could skip
> the assignment of x.

Right, but '__err = __e' is necessary for non-default cases.




-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
