Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF9A1B4ECD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 23:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFV4CVyCB6cme9F17QDy01s3bdxf3JsbjGi1XH1tGNs=; b=WOvRrPGVj1NMJC
	6TIz9UApFcaNUcP9R5tgJ/Qe7IXXDGi8AqK0sLx+Ar8T2hiZ06rGPj/1rIoq+dEO2ttaoyctI635q
	8/KORnAcSu20Kx1xpUfqJv5WUKOq3YH1YAM3JgK+1yfneCewYpDbyZ21rIqgmLmbh7f3a4nimiWg5
	kZLvFch1ykFH5i+ECEPVP0Twnd+YopbeeIkj4qf8o3yind/wDTnxEqghTE2LcYEbzwSLOA1z7ms6J
	/H5X7mTYIt7OaQKNCCAoH6aeeUiDMcY09dZTEsy0Owh2TB/bCl4mJHsGiRluK5MQscoXJEmBBbEF6
	iTX/X0aMBD3Xlz7ytr/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRMbS-0001TZ-7u; Wed, 22 Apr 2020 21:08:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRMbL-0001Sc-8O
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 21:08:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA8FC31B;
 Wed, 22 Apr 2020 14:08:09 -0700 (PDT)
Received: from bogus (unknown [10.37.12.118])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 009BD3F68F;
 Wed, 22 Apr 2020 14:08:05 -0700 (PDT)
Date: Wed, 22 Apr 2020 22:08:02 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 08/17] clk: vexpress-osc: Support building as a module
Message-ID: <20200422210802.GH25585@bogus>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-9-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-9-robh@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_140811_388807_D2FF7347 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sebastian Reichel <sre@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 12:08:01PM -0500, Rob Herring wrote:
> Enable building the vexpress-osc clock driver as a module.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/clk/versatile/Kconfig            |  4 ++--
>  drivers/clk/versatile/clk-vexpress-osc.c | 10 ++++------
>  2 files changed, 6 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
> index 5bdd5c98990b..9de2396dcf9b 100644
> --- a/drivers/clk/versatile/Kconfig
> +++ b/drivers/clk/versatile/Kconfig
> @@ -15,8 +15,8 @@ config CLK_SP810
>  	  of the ARM SP810 System Controller cell.
>
>  config CLK_VEXPRESS_OSC
> -	bool "Clock driver for Versatile Express OSC clock generators"
> -	depends on VEXPRESS_CONFIG || COMPILE_TEST
> +	tristate "Clock driver for Versatile Express OSC clock generators"
> +	depends on VEXPRESS_CONFIG
>  	default y if ARCH_VEXPRESS
>  	---help---
>  	  Simple regmap-based driver driving clock generators on Versatile
> diff --git a/drivers/clk/versatile/clk-vexpress-osc.c b/drivers/clk/versatile/clk-vexpress-osc.c
> index 5bb1d5a714d0..b2b32fa2d7c3 100644
> --- a/drivers/clk/versatile/clk-vexpress-osc.c
> +++ b/drivers/clk/versatile/clk-vexpress-osc.c
> @@ -7,6 +7,7 @@
>  #include <linux/clkdev.h>
>  #include <linux/clk-provider.h>
>  #include <linux/err.h>
> +#include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
> @@ -108,6 +109,7 @@ static const struct of_device_id vexpress_osc_of_match[] = {
>  	{ .compatible = "arm,vexpress-osc", },
>  	{}
>  };
> +MODULE_DEVICE_TABLE(of, vexpress_osc_of_match);
>
>  static struct platform_driver vexpress_osc_driver = {
>  	.driver	= {
> @@ -116,9 +118,5 @@ static struct platform_driver vexpress_osc_driver = {
>  	},
>  	.probe = vexpress_osc_probe,
>  };
> -
> -static int __init vexpress_osc_init(void)
> -{
> -	return platform_driver_register(&vexpress_osc_driver);
> -}
> -core_initcall(vexpress_osc_init);
> +module_platform_driver(vexpress_osc_driver);

I am not 100% sure of this. This might break the boot on CA9 and TC2
at-least. There are loads of MB peripherals that need this. This will
break the boot. We need to check if all the dependent modules are also
at module_initcall level and if they deal with deferred probe correctly.
Lot of them are legacy and may happen to be working by carefully initcall
level adjustments.

I will take a look at it again. I must be able to run and check on TC2
though I seem to have removed the network cable on my TC2 or office n/w
is acting crazy. I will check tomorrow again or run w/o network.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
