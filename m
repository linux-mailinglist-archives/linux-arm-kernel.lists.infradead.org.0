Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B0812D741
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 10:02:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ts5C3O08kBIccML0J65wZXiKTGQrdD/+QYOWe1vBEy0=; b=hwRB9q+CVQwucG
	aQgRENkU915qSVriCgdpZGv1wtIsHAd06N9fE1yj6kuyCuIJiRe3AzNG7PrPlsk4RBho7+oDsoWjm
	AIXQ2BNkAw0+UaYTm5ktBR9VvcYB0P4q69Ac3eykneg/Rgdi2wdl6X0i/9zn5iR0qrCFz+b1FihNg
	zTVmKRmu4Crvcb4xj2/czOtE7QOodM9J6jOCyIMp00qHN1wIwaEFAp2saX1/RFOmN2KFOdP1uUx/s
	2fpN3ZCuPQyvQNdcdzql089huwtBZ0yzo5DNK9gA9UZsp/fn9OywytwVj9gh4cNi4uguEVW3Fvo4E
	95jlCaiihuwaiMM0/zCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imDPc-0005oD-1w; Tue, 31 Dec 2019 09:02:00 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imDPT-0005nu-91
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 09:01:52 +0000
Received: by mail-ed1-f68.google.com with SMTP id t17so34800947eds.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 01:01:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fsG2Rvysfchuljlzy9Ww24f+1cIyMb/bwqWGWqBPxTA=;
 b=Wv7WiETv1Yhi10VJRyw6WB/7x4yAIMAZ+q3lrZNGUzammeQ3v/dDM9dsDjIX1pC8Si
 pySJIzYHdv5pO2EnfdSEJJhuKhKwOyqCuN3VVT7lFiytG8e8kjv/pm7z2hMcSS8WDKoB
 rbqmRX4KGbCfUuRC+tKheqCM+hOiRvehU2KHPFM1HgmUWbwg/fXGnfV8U/wAP4qGFm9G
 8QMbcuedor0f8s3aq+Yw+0AGPr64T7PONRhQBhFpN9gIh5tYzSMVa1Aok5EjWfsRKMgu
 E1bTgE1SwIb1v2x1TEq7jYZbDzHsW/YrdIWa4Kq3gFNZBa/FEVhatYEmebzbdMhJzJ/l
 5yIA==
X-Gm-Message-State: APjAAAXfZSO8tQ6/HGmkAdY87K3a44NDOpNuH+ddP2khFwjlhGmMv17X
 4bXPnvdq1jGyKhMvtc24ec8=
X-Google-Smtp-Source: APXvYqz82hNmJu4of9b2ODZh3tiQxLGmLoxEe04E5J/Dd76pnUZV2tjhsjz623nry1WIbNOSJIhtLQ==
X-Received: by 2002:aa7:d956:: with SMTP id l22mr63653779eds.66.1577782909712; 
 Tue, 31 Dec 2019 01:01:49 -0800 (PST)
Received: from pi3 ([194.230.155.138])
 by smtp.googlemail.com with ESMTPSA id f10sm5758675eds.31.2019.12.31.01.01.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 01:01:49 -0800 (PST)
Date: Tue, 31 Dec 2019 10:01:46 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 5/5] i2c: Enable compile testing for some of drivers
Message-ID: <20191231090146.GA6872@pi3>
References: <20191230172751.17985-1-krzk@kernel.org>
 <20191230172751.17985-5-krzk@kernel.org>
 <CAMuHMdUXJo3=x32xbfSUXs3O3JHaFpfxt0mHupEb+vzi=5+S4g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUXJo3=x32xbfSUXs3O3JHaFpfxt0mHupEb+vzi=5+S4g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_010151_317078_245A6214 
X-CRM114-Status: GOOD (  21.50  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wolfram Sang <wsa@the-dreams.de>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>, Max Staudt <max@enpas.org>,
 Elie Morisse <syniurge@gmail.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Juergen Fitschen <jfi@ssv-embedded.de>, Jean Delvare <jdelvare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 08:11:03PM +0100, Geert Uytterhoeven wrote:
> Hi Krzysztof,
> 
> On Mon, Dec 30, 2019 at 6:28 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > Some of the I2C bus drivers can be compile tested to increase build
> > coverage.  This requires also:
> > 1. Adding dependencies on COMMON_CLK for BCM2835 and Meson I2C
> >    controllers,
> > 2. Adding 'if' conditional to 'default y' so they will not get enabled
> >    by default on all other architectures,
> > 3. Limiting few compile test options to supported architectures (which
> >    provide the readsX()/writesX() primitives).
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> Thanks for your patch!
> 
> > --- a/drivers/i2c/busses/Kconfig
> > +++ b/drivers/i2c/busses/Kconfig
> > @@ -367,7 +367,7 @@ comment "I2C system bus drivers (mostly embedded / system-on-chip)"
> >
> >  config I2C_ALTERA
> >         tristate "Altera Soft IP I2C"
> > -       depends on (ARCH_SOCFPGA || NIOS2) && OF
> > +       depends on (ARCH_SOCFPGA || NIOS2 || COMPILE_TEST) && OF
> 
> Might be easier to read and maintain by splitting in "hard" and "useful"
> dependencies:
> 
>     depends on OF
>     depends on ARCH_SOCFPGA || NIOS2 || COMPILE_TEST

Sure

> 
> > @@ -611,8 +612,8 @@ config I2C_EMEV2
> >
> >  config I2C_EXYNOS5
> >         tristate "Exynos5 high-speed I2C driver"
> > -       depends on ARCH_EXYNOS && OF
> > -       default y
> > +       depends on (ARCH_EXYNOS && OF) || COMPILE_TEST
> 
> This means it is only useful on DT-based Exynos platforms, but compiles
> everywhere?

Yes. The driver will proble only from DT.

> 
> Do you still have support for non-DT Exynos platforms?
> ARCH_EXYNOS depends on ARCH_MULTI_V7?

No, only DT. I think dependency here is a left over from board times and
optional OF. Actually many drivers depend on OF and some OF-like ARCH so
it could be removed.

Since driver uses OF, it's rather the choice whether to explicitly
mention OF.

> (and its help text mentions Exynos 4/5 only, no 3?)

That's correct although it supports also Exynos7 (ARMv8) which is not
mentioned. I'll correct it.

> 
> > @@ -1055,15 +1057,15 @@ config I2C_SYNQUACER
> >
> >  config I2C_TEGRA
> >         tristate "NVIDIA Tegra internal I2C controller"
> > -       depends on ARCH_TEGRA
> > +       depends on ARCH_TEGRA || (COMPILE_TEST && (ARC || ARM || ARM64 || M68K || RISCV || SUPERH || SPARC))
> 
> Perhaps
> 
>     depends on ARCH_TEGRA || COMPILE_TEST
>     depends on ARC || ARM || ARM64 || M68K || RISCV || SUPERH || SPARC
> # needs <foo>
> 
> to remember which <foo> feature is needed?

I can comment on <foo> but such split of archs would be confusing. One
would think that driver can work on these platforms, while it is purely
for compile testing.  Keeping it together is self-documenting: these
weird platform selection was added only for compile testing.

Best regards,
Krzysztof

> 
> > @@ -1403,8 +1405,8 @@ config I2C_OPAL
> >
> >  config I2C_ZX2967
> >         tristate "ZTE ZX2967 I2C support"
> > -       depends on ARCH_ZX
> > -       default y
> > +       depends on ARCH_ZX || (COMPILE_TEST && (ARC || ARM || ARM64 || M68K || RISCV || SUPERH || SPARC))
> 
> Same here/
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
