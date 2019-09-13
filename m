Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7FBB1B69
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 12:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CR1sRXBigZzU3uuzsF6JSYe9Mjup/nH42HhnPd1W7sw=; b=s5K6toOqTJIu/h
	RjCkB3SIE1CfrfXpZ912QHl6h2wZMj4HslL7lbq31o64DRkI3liVjTObJa82I16tyxEu5xUN/1A/4
	LyA3+PW+2+Op1RyNIcAoblAEiSl5ewVDb3omnwLaNUbZe7GRBhBITSXdt8tWz0wTHzYeZtRXgFqpz
	mYzlpoFoic/Ty5nZHxlcf57s4hBIuxzyVDTQz3el4v5XiQkFxOcCCy9mh1E++Nl9GLniX99Y4LirH
	2X+Sdp2op3Tk6yW/HR7e0F8P8MCX0HI68jIfzYAx1jfDSnFMv7aF+3Iyf9RmGHSvPn8cfGgKOS3qf
	mu6blNJStzHS8WernoSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8iZe-0001Tu-S6; Fri, 13 Sep 2019 10:13:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8iZK-0001TF-Pp
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 10:12:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC85A28;
 Fri, 13 Sep 2019 03:12:43 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AE5D83F59C;
 Fri, 13 Sep 2019 03:12:41 -0700 (PDT)
Date: Fri, 13 Sep 2019 11:12:39 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCH 3/4] arm64: Kconfig: Fix VEXPRESS driver dependencies
Message-ID: <20190913101239.GB2559@bogus>
References: <cover.1568239378.git.amit.kucheria@linaro.org>
 <8f539b28c25d22b8f515c131cd6b24c309f7ca90.1568239378.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8f539b28c25d22b8f515c131cd6b24c309f7ca90.1568239378.git.amit.kucheria@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_031246_883614_AA8DB5DB 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, arm@kernel.org,
 Mark Brown <broonie@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 03:48:47AM +0530, Amit Kucheria wrote:
> Push various VEXPRESS drivers behind ARCH_VEXPRESS dependency so that it
> doesn't get enabled by default on other platforms.
>

I couldn't understand the motivation for these changes from the cover letter.

> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  drivers/bus/Kconfig           | 2 +-
>  drivers/clk/versatile/Kconfig | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
> index d80e8d70bf10..b2b1beee9953 100644
> --- a/drivers/bus/Kconfig
> +++ b/drivers/bus/Kconfig
> @@ -166,7 +166,7 @@ config UNIPHIER_SYSTEM_BUS
>  
>  config VEXPRESS_CONFIG
>  	bool "Versatile Express configuration bus"
> -	default y if ARCH_VEXPRESS
> +	depends on ARCH_VEXPRESS
>  	depends on ARM || ARM64
>  	depends on OF
>  	select REGMAP
> diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
> index ac766855ba16..826750292c1e 100644
> --- a/drivers/clk/versatile/Kconfig
> +++ b/drivers/clk/versatile/Kconfig
> @@ -5,8 +5,8 @@ config ICST
>  config COMMON_CLK_VERSATILE
>  	bool "Clock driver for ARM Reference designs"
>  	depends on ARCH_INTEGRATOR || ARCH_REALVIEW || \
> -		ARCH_VERSATILE || ARCH_VEXPRESS || ARM64 || \
> -		COMPILE_TEST
> +		ARCH_VERSATILE || ARCH_VEXPRESS || COMPILE_TEST
> +	depends on ARM64

This will break 32-bit platforms.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
