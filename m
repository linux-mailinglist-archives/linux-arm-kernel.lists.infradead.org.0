Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2414F65738
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 14:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRWaG5WM6Z/qU95PCnm3hfKIaLC/F+WNe6oiBmiISGg=; b=lLOJnc/a8KwVqu
	ozrjelmv3jd8s1kyTUZahxtOX/gFaOq++dOZUTSgXIC84CJlKmfzHoS0V0j1ZFr8IMZYEGDZdljWD
	FRd5s2dkPSt2xuhRsOvC6rAgnw8Xc+pmxerNJICMIVuHPq4dMsVRqJ+HzU0PRwgClmfIaODgjPwtb
	IDcyAkPCLLqyfy+1eELiOBJxCVF0MvLWPZc77TC9YGJsxFSyrd05ilEtrsWgxVCORYrqOzPFcQhKY
	sqnhg+qaUbyMxRvYg5teLydwEaRgquiVTSUwARrQlafz8bqRlpCPi0YxRa2Y/mBLAqaZYe0uH0pIq
	eHs7W6NPhfmAiD8EegOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlYOt-0003yE-Fk; Thu, 11 Jul 2019 12:42:15 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlYOl-0003xg-AZ
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 12:42:08 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d272ea30001>; Thu, 11 Jul 2019 05:42:11 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 11 Jul 2019 05:42:05 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 11 Jul 2019 05:42:05 -0700
Received: from [10.21.132.148] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 11 Jul
 2019 12:42:03 +0000
Subject: Re: [PATCH v2 2/6] ARM: tegra: Expose functions required for cpuidle
 driver
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Daniel Lezcano
 <daniel.lezcano@linaro.org>
References: <20190711031312.10038-1-digetx@gmail.com>
 <20190711031312.10038-3-digetx@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <bc6e96be-91ee-5d94-cbc2-46d2e2f25bce@nvidia.com>
Date: Thu, 11 Jul 2019 13:42:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190711031312.10038-3-digetx@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1562848931; bh=VdhCBNmemBgHmjm4dmPOJmSaWdEMknvdN8yIjXMESN4=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=giqSPTD3Ogjc7tHMOQCXN1+orV23Qt8jAt+J19on1UPuLuUgenj8tm12AiTrbaWVM
 3l27UJp5swrJPEHCnCFlw1oIW1VpSoo3Tv1y7rueEegtIQJYdZCJHpUQriB9OAfS9y
 hL4mr5Q6nbiy/i45wGRz+ERgQCI9byKj3mC9Q4JqiOwk4Oc+VC40S5SYtcVsp0l+ZY
 x3OHfZhma4GcYV/XmHBtKFR3mTudncr+abEEolHwhm8Yt1IRyMWLxHFoBoWgTa2gva
 zlklyGP1Ax0g/u5h35/MQleSYibeBHgnQcDV3H0aG3M5kQiQQ7DuFGdP1rXF9veO+F
 uTp+Aqtv3o0pQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_054207_377892_0931889C 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 11/07/2019 04:13, Dmitry Osipenko wrote:
> The upcoming unified CPUIDLE driver will be added to the drivers/cpuidle/
> directory and it will require all these Tegra PM-core functions.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  arch/arm/mach-tegra/Makefile  |  2 +-
>  arch/arm/mach-tegra/platsmp.c |  2 --
>  arch/arm/mach-tegra/pm.c      | 16 +++++++---------
>  arch/arm/mach-tegra/pm.h      |  3 ---
>  arch/arm/mach-tegra/sleep.h   |  1 -
>  include/linux/clk/tegra.h     | 13 +++++++++++++
>  include/soc/tegra/pm.h        | 28 ++++++++++++++++++++++++++++
>  7 files changed, 49 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
> index 5d93a0b36866..27bd5d9865e3 100644
> --- a/arch/arm/mach-tegra/Makefile
> +++ b/arch/arm/mach-tegra/Makefile
> @@ -13,7 +13,7 @@ obj-$(CONFIG_ARCH_TEGRA_2x_SOC)		+= pm-tegra20.o
>  obj-$(CONFIG_ARCH_TEGRA_3x_SOC)		+= sleep-tegra30.o
>  obj-$(CONFIG_ARCH_TEGRA_3x_SOC)		+= pm-tegra30.o
>  obj-$(CONFIG_SMP)			+= platsmp.o
> -obj-$(CONFIG_HOTPLUG_CPU)               += hotplug.o
> +obj-y					+= hotplug.o
>  
>  obj-$(CONFIG_ARCH_TEGRA_114_SOC)	+= sleep-tegra30.o
>  obj-$(CONFIG_ARCH_TEGRA_114_SOC)	+= pm-tegra30.o
> diff --git a/arch/arm/mach-tegra/platsmp.c b/arch/arm/mach-tegra/platsmp.c
> index e6911a14c096..c8a63719a143 100644
> --- a/arch/arm/mach-tegra/platsmp.c
> +++ b/arch/arm/mach-tegra/platsmp.c
> @@ -183,8 +183,6 @@ const struct smp_operations tegra_smp_ops __initconst = {
>  	.smp_prepare_cpus	= tegra_smp_prepare_cpus,
>  	.smp_secondary_init	= tegra_secondary_init,
>  	.smp_boot_secondary	= tegra_boot_secondary,
> -#ifdef CONFIG_HOTPLUG_CPU
>  	.cpu_kill		= tegra_cpu_kill,
>  	.cpu_die		= tegra_cpu_die,
> -#endif
>  };
> diff --git a/arch/arm/mach-tegra/pm.c b/arch/arm/mach-tegra/pm.c
> index 6aaacb5757e1..f9c9bce9e15d 100644
> --- a/arch/arm/mach-tegra/pm.c
> +++ b/arch/arm/mach-tegra/pm.c
> @@ -123,11 +123,9 @@ void tegra_clear_cpu_in_lp2(void)
>  	spin_unlock(&tegra_lp2_lock);
>  }
>  
> -bool tegra_set_cpu_in_lp2(void)
> +void tegra_set_cpu_in_lp2(void)
>  {
>  	int phy_cpu_id = cpu_logical_map(smp_processor_id());
> -	bool last_cpu = false;
> -	cpumask_t *cpu_lp2_mask = tegra_cpu_lp2_mask;
>  	u32 *cpu_in_lp2 = tegra_cpu_lp2_mask;
>  
>  	spin_lock(&tegra_lp2_lock);
> @@ -135,11 +133,7 @@ bool tegra_set_cpu_in_lp2(void)
>  	BUG_ON((*cpu_in_lp2 & BIT(phy_cpu_id)));
>  	*cpu_in_lp2 |= BIT(phy_cpu_id);
>  
> -	if ((phy_cpu_id == 0) && cpumask_equal(cpu_lp2_mask, cpu_online_mask))
> -		last_cpu = true;
> -
>  	spin_unlock(&tegra_lp2_lock);
> -	return last_cpu;
>  }

I think that the commit message should describe what is going on here or
this should be a separate change.

>  
>  static int tegra_sleep_cpu(unsigned long v2p)
> @@ -195,14 +189,16 @@ static void tegra_pm_set(enum tegra_suspend_mode mode)
>  	tegra_pmc_enter_suspend_mode(mode);
>  }
>  
> -void tegra_idle_lp2_last(void)
> +int tegra_idle_lp2_last(void)
>  {
> +	int err;
> +
>  	tegra_pm_set(TEGRA_SUSPEND_LP2);
>  
>  	cpu_cluster_pm_enter();
>  	suspend_cpu_complex();
>  
> -	cpu_suspend(PHYS_OFFSET - PAGE_OFFSET, &tegra_sleep_cpu);
> +	err = cpu_suspend(PHYS_OFFSET - PAGE_OFFSET, &tegra_sleep_cpu);
>  
>  	/*
>  	 * Resume L2 cache if it wasn't re-enabled early during resume,
> @@ -214,6 +210,8 @@ void tegra_idle_lp2_last(void)
>  
>  	restore_cpu_complex();
>  	cpu_cluster_pm_exit();
> +
> +	return err;
>  }
>  
>  enum tegra_suspend_mode tegra_pm_validate_suspend_mode(
> diff --git a/arch/arm/mach-tegra/pm.h b/arch/arm/mach-tegra/pm.h
> index 1e51a9b636eb..81525f5f4a44 100644
> --- a/arch/arm/mach-tegra/pm.h
> +++ b/arch/arm/mach-tegra/pm.h
> @@ -23,9 +23,6 @@ void tegra20_sleep_core_init(void);
>  void tegra30_lp1_iram_hook(void);
>  void tegra30_sleep_core_init(void);
>  
> -void tegra_clear_cpu_in_lp2(void);
> -bool tegra_set_cpu_in_lp2(void);
> -void tegra_idle_lp2_last(void);
>  extern void (*tegra_tear_down_cpu)(void);
>  
>  #ifdef CONFIG_PM_SLEEP
> diff --git a/arch/arm/mach-tegra/sleep.h b/arch/arm/mach-tegra/sleep.h
> index d219872b7546..0d9956e9a8ea 100644
> --- a/arch/arm/mach-tegra/sleep.h
> +++ b/arch/arm/mach-tegra/sleep.h
> @@ -124,7 +124,6 @@ void tegra30_hotplug_shutdown(void);
>  #endif
>  
>  void tegra20_tear_down_cpu(void);
> -int tegra30_sleep_cpu_secondary_finish(unsigned long);
>  void tegra30_tear_down_cpu(void);
>  
>  #endif
> diff --git a/include/linux/clk/tegra.h b/include/linux/clk/tegra.h
> index b8aef62cc3f5..cf0f2cb5e109 100644
> --- a/include/linux/clk/tegra.h
> +++ b/include/linux/clk/tegra.h
> @@ -108,6 +108,19 @@ static inline void tegra_cpu_clock_resume(void)
>  
>  	tegra_cpu_car_ops->resume();
>  }
> +#else
> +static inline bool tegra_cpu_rail_off_ready(void)
> +{
> +	return false;
> +}
> +
> +static inline void tegra_cpu_clock_suspend(void)
> +{
> +}
> +
> +static inline void tegra_cpu_clock_resume(void)
> +{
> +}
>  #endif
>  
>  extern void tegra210_xusb_pll_hw_control_enable(void);
> diff --git a/include/soc/tegra/pm.h b/include/soc/tegra/pm.h
> index 951fcd738d55..fa18c2df5028 100644
> --- a/include/soc/tegra/pm.h
> +++ b/include/soc/tegra/pm.h
> @@ -20,6 +20,12 @@ tegra_pm_validate_suspend_mode(enum tegra_suspend_mode mode);
>  
>  /* low-level resume entry point */
>  void tegra_resume(void);
> +
> +int tegra30_sleep_cpu_secondary_finish(unsigned long arg);
> +void tegra_clear_cpu_in_lp2(void);
> +void tegra_set_cpu_in_lp2(void);
> +int tegra_idle_lp2_last(void);
> +void tegra_cpu_die(unsigned int cpu);
>  #else
>  static inline enum tegra_suspend_mode
>  tegra_pm_validate_suspend_mode(enum tegra_suspend_mode mode)
> @@ -30,6 +36,28 @@ tegra_pm_validate_suspend_mode(enum tegra_suspend_mode mode)
>  static inline void tegra_resume(void)
>  {
>  }
> +
> +static inline int tegra30_sleep_cpu_secondary_finish(unsigned long arg)
> +{
> +	return -1;
> +}

-ENOTSUPP?

Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
