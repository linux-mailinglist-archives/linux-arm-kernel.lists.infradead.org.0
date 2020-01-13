Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EDC13906B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 12:51:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HWdKXlc/Q8SsCyOYx+DzdH6eFFApKUagUasUJOKIjs=; b=lE/GFoNmtAJWEi
	rsXXYQ8yCHRgbX3f0I6/b2G+nTvGkV5t//79KYAOVojVJw6W0evBQ05AEfTQqvXVoCPhNUUgor5TN
	u4j7Cnw2rSuUJKqUU2qtG667qlIfiItX9IWHhnAmnbD4E4hrVCQtPbHLZixeKkQ4nzUBydR5ocPNx
	qDTf9UyL5TYpTimjnfqPra5yH9BTVRxDUdSKmuOn5XQ7ilOVjbdxmjUoLzxPZChZDyNHrGLufgynN
	6eMe9SLOBGjU0wT1oZIaLRecAnjExmgS9p0JORcDxHbfVhOI7OHAfwiqgeolB8kshu9hZBlOTK+Kk
	ylQlbvVaqtfnKoP0PIMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqyFi-0003GO-5l; Mon, 13 Jan 2020 11:51:26 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqyFZ-0003FG-V7
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 11:51:19 +0000
Received: from 79.184.255.90.ipv4.supernova.orange.pl (79.184.255.90) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.320)
 id e837cbaf30ffdffb; Mon, 13 Jan 2020 12:51:12 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH] cpuidle: arm: Enable compile testing for some of drivers
Date: Mon, 13 Jan 2020 12:51:12 +0100
Message-ID: <112783298.KOQPr5xTch@kreacher>
In-Reply-To: <20191229180912.17100-2-krzk@kernel.org>
References: <20191229180912.17100-1-krzk@kernel.org>
 <20191229180912.17100-2-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_035118_163765_551EEFA1 
X-CRM114-Status: GOOD (  12.58  )
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sunday, December 29, 2019 7:09:12 PM CET Krzysztof Kozlowski wrote:
> Some of cpuidle drivers for ARMv7 can be compile tested on this
> architecture because they do not depend on mach-specific bits.  Enable
> compile testing for big.LITTLE, Kirkwood, Zynq, AT91, Exynos and mvebu
> cpuidle drivers.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  drivers/cpuidle/Kconfig.arm | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/cpuidle/Kconfig.arm b/drivers/cpuidle/Kconfig.arm
> index a224d33dda7f..62272ecfa771 100644
> --- a/drivers/cpuidle/Kconfig.arm
> +++ b/drivers/cpuidle/Kconfig.arm
> @@ -25,7 +25,7 @@ config ARM_PSCI_CPUIDLE
>  
>  config ARM_BIG_LITTLE_CPUIDLE
>  	bool "Support for ARM big.LITTLE processors"
> -	depends on ARCH_VEXPRESS_TC2_PM || ARCH_EXYNOS
> +	depends on ARCH_VEXPRESS_TC2_PM || ARCH_EXYNOS || COMPILE_TEST
>  	depends on MCPM && !ARM64
>  	select ARM_CPU_SUSPEND
>  	select CPU_IDLE_MULTIPLE_DRIVERS
> @@ -51,13 +51,13 @@ config ARM_HIGHBANK_CPUIDLE
>  
>  config ARM_KIRKWOOD_CPUIDLE
>  	bool "CPU Idle Driver for Marvell Kirkwood SoCs"
> -	depends on MACH_KIRKWOOD && !ARM64
> +	depends on (MACH_KIRKWOOD || COMPILE_TEST) && !ARM64
>  	help
>  	  This adds the CPU Idle driver for Marvell Kirkwood SoCs.
>  
>  config ARM_ZYNQ_CPUIDLE
>  	bool "CPU Idle Driver for Xilinx Zynq processors"
> -	depends on ARCH_ZYNQ && !ARM64
> +	depends on (ARCH_ZYNQ || COMPILE_TEST) && !ARM64
>  	help
>  	  Select this to enable cpuidle on Xilinx Zynq processors.
>  
> @@ -70,19 +70,19 @@ config ARM_U8500_CPUIDLE
>  config ARM_AT91_CPUIDLE
>  	bool "Cpu Idle Driver for the AT91 processors"
>  	default y
> -	depends on ARCH_AT91 && !ARM64
> +	depends on (ARCH_AT91 || COMPILE_TEST) && !ARM64
>  	help
>  	  Select this to enable cpuidle for AT91 processors.
>  
>  config ARM_EXYNOS_CPUIDLE
>  	bool "Cpu Idle Driver for the Exynos processors"
> -	depends on ARCH_EXYNOS && !ARM64
> +	depends on (ARCH_EXYNOS || COMPILE_TEST) && !ARM64
>  	select ARCH_NEEDS_CPU_IDLE_COUPLED if SMP
>  	help
>  	  Select this to enable cpuidle for Exynos processors.
>  
>  config ARM_MVEBU_V7_CPUIDLE
>  	bool "CPU Idle Driver for mvebu v7 family processors"
> -	depends on ARCH_MVEBU && !ARM64
> +	depends on (ARCH_MVEBU || COMPILE_TEST) && !ARM64
>  	help
>  	  Select this to enable cpuidle on Armada 370, 38x and XP processors.
> 

Daniel, any concerns regarding this one?




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
