Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0F3115C60
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 14:38:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjiCX/U9xWGpJHYpErnsozbc60DnCF/20qJblKTUxTs=; b=SyhPnfcTiDZBFk
	xfFa1LRd6e7KPhAmfIbdgU834V5ZHW94OFpsCTFcUwD4GhZjwl7XCJncSjQiJRUY/BGUDVTE4gvLr
	5X6fChx00Mdg7Jlkue6/PId4zpEs6po3Ebn0CKOdGQ8Dv/jvRYkhEDA8NuqFFJm4tRjUYbS/Iq9U9
	p5OYver1G5qDHFcWlAFPHgpDtMjd22UuRlFJxShVe7hQI2mB9T55bsVDQBM2OuNeBmhwnLpjj+JC/
	fwtt2D4MDuEcZkYyz5ntAmtP8L99kwjiaLLaLusGaXRcUVEFpZOcnvuhv6ZwrtTGCZD8bEnyy0g1x
	S9LSFk0Wwa1YGRJP9RDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idaHZ-0005CJ-4e; Sat, 07 Dec 2019 13:38:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idaHP-0005Bx-Jd
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Dec 2019 13:37:53 +0000
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1722F24673
 for <linux-arm-kernel@lists.infradead.org>;
 Sat,  7 Dec 2019 13:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575725870;
 bh=9IaAWLB4YM37hZ4K6+hLzc+2+j5HMFfWFGUX46FSuRc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XOetANLa2aHZVuclnuWNqTAIG3Xje4nos+YX3L8udJ4F9MleOkR8UnlSKNvQ5ONSd
 cM+FZ7DhhM6S/8YDPeATg0M771CyyRMSemIj7Gp3jru5HSdGR54TgMU/KRgs+5ZmA8
 JG5E3T8mG1fvv8UDiflqzXjVp70hAHH7w4IbB9ik=
Received: by mail-lf1-f48.google.com with SMTP id f15so6553691lfl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Dec 2019 05:37:50 -0800 (PST)
X-Gm-Message-State: APjAAAU/UKXxHx53DmD/UUPT6nyZ7zcVyyoJCSRTfFLDdJuGpp8PbQhz
 YUWnkWLgNoAef0S/apULQm8zmQCqPUiyVXLz3m8=
X-Google-Smtp-Source: APXvYqyOF9srqVRZQzGGYzVp/uW2kHgzDvPmYy8GKUsxbHw54dS4knoGV2DrOYoYaX2xML7sWWsLllv4ZTFD6QAEMu0=
X-Received: by 2002:ac2:5dc7:: with SMTP id x7mr10801121lfq.24.1575725868267; 
 Sat, 07 Dec 2019 05:37:48 -0800 (PST)
MIME-Version: 1.0
References: <20191207130049.27533-1-hyunki00.koo@gmail.com>
 <20191207130049.27533-2-hyunki00.koo@gmail.com>
 <20191207132855.GA4384@kozik-lap>
In-Reply-To: <20191207132855.GA4384@kozik-lap>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Sat, 7 Dec 2019 14:37:36 +0100
X-Gmail-Original-Message-ID: <CAJKOXPcUXRGa7+ZgSYomo5v_eh=GjqyWYBkzsXUJi0zAPHcOjg@mail.gmail.com>
Message-ID: <CAJKOXPcUXRGa7+ZgSYomo5v_eh=GjqyWYBkzsXUJi0zAPHcOjg@mail.gmail.com>
Subject: Re: [PATCH 1/2] irqchip: define EXYNOS_IRQ_COMBINER
To: Hyunki Koo <hyunki00.koo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_053751_686290_F5053BC1 
X-CRM114-Status: GOOD (  23.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 jason@lakedaemon.net, maz@kernel.org, linux@armlinux.org.uk,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 kgene@kernel.org, Hyunki Koo <hyunki00.koo@samsung.com>, tglx@linutronix.de,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 7 Dec 2019 at 14:28, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Sat, Dec 07, 2019 at 10:00:48PM +0900, Hyunki Koo wrote:
> > From: Hyunki Koo <hyunki00.koo@samsung.com>
> >
> > Not all exynos device have IRQ_COMBINER.
> > Thus add the config for EXYNOS_IRQ_COMBINER.
> >
> > Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> > ---
> >  drivers/irqchip/Kconfig  | 7 +++++++
> >  drivers/irqchip/Makefile | 2 +-
> >  2 files changed, 8 insertions(+), 1 deletion(-)
> >
>
> Hi,
>
> There is no changelog and versioning of this patch so I do not
> understand how it differs with previous. It's a resend? v2? It brings
> the confusion and looks like you're ignoring previous comments.
>
> Looks the same and looks like breaking Exynos platforms in the same way.
>
> If you not want to skip combiner on ARMv8, it makes sense, then please
> follow the approach we did for Pinctrl drivers (PINCTRL_EXYNOS_ARM and
> PINCTRL_EXYNOS_ARM64).
>
> Best regards,
> Krzysztof

Ah, now I see the second patch. Still you break bisect which requires
specific ordering of patches or squashing them into one. Optionally
this could be default=y if ARCH_EXYNOS && ARM. I prefer just squashing
both into one patch in this case.

>
> > diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
> > index ba152954324b..3ed7b7f2ae26 100644
> > --- a/drivers/irqchip/Kconfig
> > +++ b/drivers/irqchip/Kconfig
> > @@ -499,4 +499,11 @@ config SIFIVE_PLIC
> >
> >          If you don't know what to do here, say Y.
> >
> > +config EXYNOS_IRQ_COMBINER
> > +     bool "Samsung Exynos IRQ combiner support"

Now point it to be visible. Only for COMPILE_TEST

> > +     depends on ARCH_EXYNOS

Since you make it a separate option, make it COMPILE_TEST.

Best regards,
Krzysztof

> > +     help
> > +       Say yes here to add support for the IRQ combiner devices embedded
> > +       in Samsung Exynos chips.
> > +
> >  endmenu
> > diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
> > index e806dda690ea..60d7c7260fc3 100644
> > --- a/drivers/irqchip/Makefile
> > +++ b/drivers/irqchip/Makefile
> > @@ -9,7 +9,7 @@ obj-$(CONFIG_ARCH_BCM2835)            += irq-bcm2835.o
> >  obj-$(CONFIG_ARCH_BCM2835)           += irq-bcm2836.o
> >  obj-$(CONFIG_DAVINCI_AINTC)          += irq-davinci-aintc.o
> >  obj-$(CONFIG_DAVINCI_CP_INTC)                += irq-davinci-cp-intc.o
> > -obj-$(CONFIG_ARCH_EXYNOS)            += exynos-combiner.o
> > +obj-$(CONFIG_EXYNOS_IRQ_COMBINER)    += exynos-combiner.o
> >  obj-$(CONFIG_FARADAY_FTINTC010)              += irq-ftintc010.o
> >  obj-$(CONFIG_ARCH_HIP04)             += irq-hip04.o
> >  obj-$(CONFIG_ARCH_LPC32XX)           += irq-lpc32xx.o
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
