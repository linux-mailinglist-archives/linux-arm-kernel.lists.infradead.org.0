Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F825B0B4A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2E4bteYlYDN9QZM9OGnyImKwmg5eHGXpjKmJJ2yoQpQ=; b=FT2Btqfd80yAgA
	aNI6XnC74XOQmqvjBIy02ubjBSUlOmbzeptbeAS5MKK9QLTFafO69G2NgYUiHgL8k3ar8R/hB3Ghz
	PiEl76PVDAnpF3a8IZqedT6FAfI6BAy9kClq/hx5ikri1I8br9LczbVpj0zYipMophncfALE1N2jh
	sSqWBV4l3e4KBHOyFH/HmSUreRXFYP49qBiya6Qbb2Ql90bi6IANv13aRq2R3kl/0HRuqRHp+wVfB
	c7FQfZaz2RqvEopQjrYqZLFlbw9lpFb6yuB7uVewfkTzGMYUzFbNSCmV7TpJHUh4HAAdIdHMws5bc
	dtPI6VgsUr95Qmh4QCvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8LKk-0003CD-OH; Thu, 12 Sep 2019 09:24:10 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8LKM-0003BL-7H
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:23:47 +0000
Received: by mail-qt1-f193.google.com with SMTP id r15so28735051qtn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 02:23:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QXQcfTndnrpIGvk9sB9a9gWQqmEHMhawitV9TbB2g8E=;
 b=tzPyfMkHvkhG6O8Yl0vlIoHf2Oj7CneAYxyfyJlOegZhpJAmELheNM2ZniGFBkvck2
 s+L8PU02nkgopSaJ/Djsk/EBXpcCqNfbI5fMncmmSyswczT/g4s7aIW4zlddz5zMrLjN
 JbpvtKFY4VM40lhRnzb5KAqMJLCqlny8EtP6ee07T37kgrxaFoyLaUEco++YiGLXqaw/
 Gtd7cn92u8YHUAtFDvYWWS4wtTVObtq8nTc3iqKiLaF5k9BT2+Uaho1rJIf9rSEgD6jr
 MI/AE3E3o+p9sj8jqITRexxxg5FKs9mnXfwyBPOP+7WAJI5NKIi98o16KwvzM+oogrpy
 GgBw==
X-Gm-Message-State: APjAAAULPdVt4ZWiAuq8Rs9iPabYRdvZqi+m3E7AWfnr8VKVS2f7JfsF
 tnzcJXOK64wfS0/YSBKdQ3q+il2OnOGZY4lOjd4=
X-Google-Smtp-Source: APXvYqziwk60aLJSQdoVYvx52qn+2u/NADJ4HuF3YjYBj52OuDv7Y0SaYvYRwH+Wen8XN74tjClsdCK2jrcZk15F5go=
X-Received: by 2002:ad4:4529:: with SMTP id l9mr21307225qvu.45.1568280224996; 
 Thu, 12 Sep 2019 02:23:44 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1568239378.git.amit.kucheria@linaro.org>
 <f6cefef2bf6b34ec6eb82d3614054734fa5e8dd1.1568239378.git.amit.kucheria@linaro.org>
In-Reply-To: <f6cefef2bf6b34ec6eb82d3614054734fa5e8dd1.1568239378.git.amit.kucheria@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 12 Sep 2019 11:23:29 +0200
Message-ID: <CAK8P3a0uxZWF85+v73KtvQECErA64yPE7BT3VRZMa=oq3rFtRA@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: Kconfig: Fix XGENE driver dependencies
To: Amit Kucheria <amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_022346_396317_EE72720C 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-pci <linux-pci@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, arm-soc <arm@kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Will Deacon <will@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 12:19 AM Amit Kucheria <amit.kucheria@linaro.org> wrote:
>
> Push various XGENE drivers behind ARCH_XGENE dependency so that it
> doesn't get enabled by default on other platforms.
>
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  arch/arm64/Kconfig.platforms   | 3 +++
>  drivers/clk/Kconfig            | 2 +-
>  drivers/gpio/Kconfig           | 1 +
>  drivers/pci/controller/Kconfig | 1 +
>  drivers/phy/Kconfig            | 1 +
>  drivers/power/reset/Kconfig    | 2 +-
>  6 files changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 4778c775de1b..cdf4e452e34c 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -281,6 +281,9 @@ config ARCH_VULCAN
>
>  config ARCH_XGENE
>         bool "AppliedMicro X-Gene SOC Family"
> +       select COMMON_CLK_XGENE
> +       select PCI_XGENE
> +       select GPIO_XGENE
>         help
>           This enables support for AppliedMicro X-Gene SOC Family

I'd rather not 'select' drivers that might be optional, the 'default y'
should be sufficient as long as it's in theory possible to have
them disabled or as loadable modules.

> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index 801fa1cd0321..9b2790d3f18a 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -225,7 +225,7 @@ config CLK_QORIQ
>
>  config COMMON_CLK_XGENE
>         bool "Clock driver for APM XGene SoC"
> -       default ARCH_XGENE
> +       depends on ARCH_XGENE
>         depends on ARM64 || COMPILE_TEST
>         ---help---
>           Sypport for the APM X-Gene SoC reference, PLL, and device clocks.

This breaks compile-testing, and existing defconfigs
that don't list the driver.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
