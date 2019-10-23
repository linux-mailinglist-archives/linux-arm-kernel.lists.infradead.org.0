Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE48E1BF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUUtWPeYMkAQtF+ksnWgcnmspcbeGWX+AtnU7TWrCT4=; b=TvpyLhelfhlxPy
	Llu66SUJ0gk3daw1Zv7okyLSAcpMlH9NprHFsV9/TK5ELxehEADhn4yJAIJJDcWEWwWVSPgbJJIei
	c3EfvXR1282mvUSQcU1g5tEW/ejVhtCwHqcs+Pg0dMbXjj/5CmdxYfhWRCdNW9A/xhUwkC4JjZ3+m
	4lLpaqjVzOZlMbFvv4YNY/yJRaxuB/yDzEdNFj46tlndSmMLHKI5HAgO/KcGL/gVWRuvyBcRjGeop
	LgVJdL7njdfbFGBzA6Oh5lI1c44BOXYcT50G3aizNTBNfNHUQFamTa7txJY/muL0kkpvp7E4P71Fi
	HaBtXTt/izzDReJ3wQZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGSB-0004eP-Cz; Wed, 23 Oct 2019 13:13:31 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGS0-0004dU-4T
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:13:21 +0000
Received: from mail-qt1-f180.google.com ([209.85.160.180]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N7Qt9-1hw8bx2KmT-017n7n for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 15:13:16 +0200
Received: by mail-qt1-f180.google.com with SMTP id u22so32112976qtq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:13:16 -0700 (PDT)
X-Gm-Message-State: APjAAAV/ZCNuf/QXjYmodfDK7U5j8abWnBbPMRai/BgV5Qe5BTthWLdn
 vRxIg8hnFYLG8zY2B5/ryA69G9L7TNPMM0V9dtQ=
X-Google-Smtp-Source: APXvYqwyklGa+hU94PEjBetixWY4koQXLl44bdA7QqFGHctKg3vHkVWCQgnQFCjrA3OSGO0d2Jdn/TI29o9nax1bT50=
X-Received: by 2002:ac8:33d4:: with SMTP id d20mr8948137qtb.204.1571836395377; 
 Wed, 23 Oct 2019 06:13:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-10-arnd@arndb.de> <20191023115544.GA11048@pi3>
In-Reply-To: <20191023115544.GA11048@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 15:12:59 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0s6VCujZRbFN3NkoX=LDw0jwYJg01xOnSdn=DM3TKm1Q@mail.gmail.com>
Message-ID: <CAK8P3a0s6VCujZRbFN3NkoX=LDw0jwYJg01xOnSdn=DM3TKm1Q@mail.gmail.com>
Subject: Re: [PATCH 10/36] ARM: s5pv210: use private pm save/restore
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:7jpCH4wbZ3mom998TeRfucGftc65nlPkeOxmGc5FmysffDs+zcj
 1e2z16YLWskrUyBT5ZJlAClIFiJr/RZQgJLKOGOasoP7rrXY2vvWtNgUrwEJK80Rt3rr6Tj
 OR5C3QKYTKyvageEtF6kDAlW0gRzZ9K9AiTv2ak09fglRY62PEdfJL2UAzi0kTcn6tkakUN
 iF1eIquMN5oCTPANOkt/w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8FB4l+smsy4=:q4Ccs+/cJ6mxY/afYvwf0D
 oC3UeGTOhe4TPM/aWe4bS33llZlovEI3iiTGBebvOl+sDJ4CMrkqbd8CSlgP3k4hXgjrAXzbG
 bypJtuz7jq2yIlIBGuxt8liMwb2amZEAALbXPVPBqYwwAMLQmvac3dNX1AlzAANwHizWIWPWQ
 9rMqu51O/2rHLe18w9NtSR5NFN4FtDU16Chj1WA8qVkHTqKzl0KHwU3OnaWDL3qbSLF7OtVPZ
 XzWkze/0AJHd+xpO7vtcal9LPvYf/pmeFywTS7kMZnXIuQig9Gcin7uHpD+IPwT5gdRaTqfFv
 4TEcMMFwT7XBoUgfnPDtdNQ87WDORzjEeajxVnAnzb6Z55775HdPUrSfyHlKzGHhqM2jWMNyS
 XUvr1o0JNLbPgdwJZV4fBTNaBI2dL0nHF/hFxo45/eD+g3vRe/QVJibOBEEKlV8T8E3OVylW9
 PpTrhD1CXhrvB6Ngky6p7J/vPblnf08ew4JvaKc7wVGuI38azFb3q9Rwmb2u6DLekwjFrCzsU
 OUjXKN4bh+YzoXk+HVAgdJTB6NRu5lzC+Up4BU0wlDMgVHfAslBf6HgPFDIgCPr9BgGxFfEVm
 j2zbieY+IqjhALHeX3XZHz8FBygMt78/djzfDhjvDdRqxQwUL870xj5PApwp0HlGl0fq4i+Gv
 sHrajlEZnCFQ7SpX0kb2zGDkndY3Gztd1BooyPVfNvSTaQks+Maxr1Tp/s9SA0Ig+XJ3huUOd
 KK0kTBINHPiBF/DXsKT/Xo1NMjBPikyvIisepAFiPGsT7K+F4PJgZKMSYtuMPNNDXFaLXhTY/
 RMmsJkX94GwT5sdFBekrS2r8obbc08xjMGHQG3mP3kDfYG+8IuXOU0nwD6J6ey88TZlbmsWwI
 P8kI+vJsbOipZd7fLOaw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_061320_477919_AEC3BED8 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Tomasz Figa <tomasz.figa@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > diff --git a/arch/arm/mach-s5pv210/regs-clock.h b/arch/arm/mach-s5pv210/regs-clock.h
> > index 2a35c831a9b0..8c7530614e37 100644
> > --- a/arch/arm/mach-s5pv210/regs-clock.h
> > +++ b/arch/arm/mach-s5pv210/regs-clock.h
> > @@ -9,7 +9,7 @@
> >  #ifndef __ASM_ARCH_REGS_CLOCK_H
> >  #define __ASM_ARCH_REGS_CLOCK_H __FILE__
> >
> > -#include <plat/map-base.h>
> > +#define S3C_VA_SYS           ((void __iomem __force *)0xF6100000)
>
> The same as for one of earlier patches - I prefer to keep the S3C_ADDR()
> macro for consistency.

Ok, done.

As the constant is only used in arch/arm/mach-s5pv210/pm.c and the
s5pv210_dt_restart() function, I think it would be best to use ioremap()
here and remove the constant as well as s5pv210_fdt_map_sys() and
s5pv210_dt_map_io().

That can clearly be a follow-up patch.

> > diff --git a/arch/arm/plat-samsung/Makefile b/arch/arm/plat-samsung/Makefile
> > index d88b9b84f3a9..025ce22876c1 100644
> > --- a/arch/arm/plat-samsung/Makefile
> > +++ b/arch/arm/plat-samsung/Makefile
> > @@ -24,9 +24,7 @@ obj-$(CONFIG_GPIO_SAMSUNG)     += gpio-samsung.o
> >
> >  # PM support
> >
> > -obj-$(CONFIG_PM_SLEEP)               += pm-common.o
> > -obj-$(CONFIG_EXYNOS_CPU_SUSPEND) += pm-common.o
>
> CONFIG_EXYNOS_CPU_SUSPEND looks unrelated and seems to be not needed at
> all. Can you remove it in separate patch?

Done.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
