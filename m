Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B84BB83726
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HfoQRdv674+O6NeWDaE7N0DtS+s+8ZTAZSz0+vVzYY=; b=RSQ0V9DWB6noj5
	LpKIvbj4M0TqJ5Uf81qESSez/q1rzPxvnJ3Wv20eyY8mzKQ6Il4hcmYzhN1yAlrCLINoM+Vqfim6B
	+Q3+tFv4rbhGshdp/f7CLVIZOwVoVFaTElrae2zJoado6d+F5hqqP88e7oQuBIY4mx9OGz12oRiCE
	9sQVo8dnpcoMt1NeBQ44CPQDicXRVPusRhKaaOlAObSnb10qP5ShQmTCRurnXFj4qSc8WbHGSjwyF
	skNXdke1whn57YaPx0XYy22fB758F5d1OVYK2K8o4Q8A2lZqUxPI8KnfDEybeqa4yRnvj7a/aplQA
	is/gZ8lRpr49I3BwJ3rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2Vk-0000WY-Ij; Tue, 06 Aug 2019 16:40:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2Vc-0000W2-D8
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 16:40:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9AD5344;
 Tue,  6 Aug 2019 09:40:23 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8522B3F575;
 Tue,  6 Aug 2019 09:40:22 -0700 (PDT)
Date: Tue, 6 Aug 2019 17:40:20 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 5/6] ARM: psci: cpuidle: Enable PSCI CPUidle driver
Message-ID: <20190806164020.GD15498@e121166-lin.cambridge.arm.com>
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <20190722153745.32446-6-lorenzo.pieralisi@arm.com>
 <20190806161624.GE16546@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806161624.GE16546@e107155-lin>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_094024_536156_73D26568 
X-CRM114-Status: GOOD (  25.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-pm@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>, LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 05:16:24PM +0100, Sudeep Holla wrote:
> On Mon, Jul 22, 2019 at 04:37:44PM +0100, Lorenzo Pieralisi wrote:
> > Allow selection of the PSCI CPUidle in the kernel by adding
> > the required Kconfig options.
> > 
> > Remove PSCI callbacks from ARM/ARM64 generic CPU ops
> > to prevent the PSCI idle driver from clashing with the generic
> > ARM CPUidle driver initialization, that relies on CPU ops
> > to initialize and enter idle states.
> > 
> > Update the affected defconfig files to guarantee seamingless
> > transition from the generic ARM CPUidle to the PSCI CPUidle
> > driver on arch/platforms using it.
> > 
> > Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Ulf Hansson <ulf.hansson@linaro.org>
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> > ---
> >  arch/arm/configs/imx_v6_v7_defconfig | 1 +
> >  arch/arm64/configs/defconfig         | 1 +
> 
> Better to keep above you as separate patch, though it may cause
> minor issues from bisectibility. It may be needed anyway for merging.

That's a good point, I will split these bits in a separate patch.

> >  arch/arm64/kernel/cpuidle.c          | 7 ++++---
> >  arch/arm64/kernel/psci.c             | 4 ----
> >  drivers/cpuidle/Kconfig.arm          | 8 ++++++--
> >  drivers/firmware/psci/psci.c         | 9 ---------
> >  6 files changed, 12 insertions(+), 18 deletions(-)
> > 
> > diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
> > index a53b29251ed4..4174fd1b79e7 100644
> > --- a/arch/arm/configs/imx_v6_v7_defconfig
> > +++ b/arch/arm/configs/imx_v6_v7_defconfig
> > @@ -60,6 +60,7 @@ CONFIG_ARM_IMX6Q_CPUFREQ=y
> >  CONFIG_ARM_IMX_CPUFREQ_DT=y
> >  CONFIG_CPU_IDLE=y
> >  CONFIG_ARM_CPUIDLE=y
> > +CONFIG_ARM_PSCI_CPUIDLE=y
> >  CONFIG_VFP=y
> >  CONFIG_NEON=y
> >  CONFIG_PM_DEBUG=y
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index 0e58ef02880c..c0a7cfe3aebd 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -72,6 +72,7 @@ CONFIG_RANDOMIZE_BASE=y
> >  CONFIG_HIBERNATION=y
> >  CONFIG_WQ_POWER_EFFICIENT_DEFAULT=y
> >  CONFIG_ARM_CPUIDLE=y
> > +CONFIG_ARM_PSCI_CPUIDLE=y
> >  CONFIG_CPU_FREQ=y
> >  CONFIG_CPU_FREQ_STAT=y
> >  CONFIG_CPU_FREQ_GOV_POWERSAVE=m
> > diff --git a/arch/arm64/kernel/cpuidle.c b/arch/arm64/kernel/cpuidle.c
> > index d1048173fd8a..4bcd1bca0dfc 100644
> > --- a/arch/arm64/kernel/cpuidle.c
> > +++ b/arch/arm64/kernel/cpuidle.c
> > @@ -11,6 +11,7 @@
> >  #include <linux/cpu_pm.h>
> >  #include <linux/of.h>
> >  #include <linux/of_device.h>
> > +#include <linux/psci.h>
> >  
> >  #include <asm/cpuidle.h>
> >  #include <asm/cpu_ops.h>
> > @@ -48,15 +49,15 @@ int arm_cpuidle_suspend(int index)
> >  
> >  int acpi_processor_ffh_lpi_probe(unsigned int cpu)
> >  {
> > -	return arm_cpuidle_init(cpu);
> > +	return psci_acpi_cpu_init_idle(cpu);
> 
> This will break build as psci_acpi_cpu_init_idle is introduced in next patch.
> You can simply move it to next patch I assume.

Yes, it is a bisectability issue, I fixed it already but thanks
for spotting it anyway.

> >  }
> >  
> >  int acpi_processor_ffh_lpi_enter(struct acpi_lpi_state *lpi)
> >  {
> >  	if (ARM64_LPI_IS_RETENTION_STATE(lpi->arch_flags))
> > -		return CPU_PM_CPU_IDLE_ENTER_RETENTION(arm_cpuidle_suspend,
> > +		return CPU_PM_CPU_IDLE_ENTER_RETENTION(psci_cpu_suspend_enter,
> >  						lpi->index);
> >  	else
> > -		return CPU_PM_CPU_IDLE_ENTER(arm_cpuidle_suspend, lpi->index);
> > +		return CPU_PM_CPU_IDLE_ENTER(psci_cpu_suspend_enter, lpi->index);
> >  }
> >  #endif
> > diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
> > index 85ee7d07889e..a543ab7e007c 100644
> > --- a/arch/arm64/kernel/psci.c
> > +++ b/arch/arm64/kernel/psci.c
> > @@ -105,10 +105,6 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
> >  
> >  const struct cpu_operations cpu_psci_ops = {
> >  	.name		= "psci",
> > -#ifdef CONFIG_CPU_IDLE
> > -	.cpu_init_idle	= psci_cpu_init_idle,
> > -	.cpu_suspend	= psci_cpu_suspend_enter,
> > -#endif
> >  	.cpu_init	= cpu_psci_cpu_init,
> >  	.cpu_prepare	= cpu_psci_cpu_prepare,
> >  	.cpu_boot	= cpu_psci_cpu_boot,
> > diff --git a/drivers/cpuidle/Kconfig.arm b/drivers/cpuidle/Kconfig.arm
> > index 929b57424ea4..b9c56c60ab98 100644
> > --- a/drivers/cpuidle/Kconfig.arm
> > +++ b/drivers/cpuidle/Kconfig.arm
> > @@ -14,8 +14,12 @@ config ARM_CPUIDLE
> >            provided by architecture code.
> >  
> >  config ARM_PSCI_CPUIDLE
> > -	bool
> > -
> > +	bool "PSCI CPU idle Driver"
> 
> As mentioned in previous patch, do you see issues having just above
> change in this patch and the below ones moved to the previous.

No you are right, I will make this change.

> > +	depends on ARM_PSCI_FW
> > +	select DT_IDLE_STATES
> > +	select CPU_IDLE_MULTIPLE_DRIVERS
> > +	help
> > +	  Select this to enable PSCI firmware based CPUidle driver for ARM.
> 
> You need extra blank line here.

OK.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
