Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E2517F060
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 07:13:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9OVPvK78+msKWzSexikbjaQjjkJgw3zoJ4tRL5gw94=; b=fOfVOmhIzxo+Lh
	8p0YwwxQYfUq8tJp1uQ1z4m0Whw9/vEdMgMmAjzVsSjI7FFPptzUt3R3EQrpkWTZekjlT7kdNwYSt
	vpWbuTZ2OTiAXTmIeXWsf/nhQOCpgltF6uZmPGEsDHKD8/q81cA/eocSdy5BfX2VB9J5d8mHbjghq
	WWPaN8fjdGVey9z7xpw+px/JLLNJwLix+5NweTuODErFx5B3T5myE6aDCSNQLwLOp2MbLubGMoWZm
	dSixJbVkpvbSZTICTSWdkNqmHCJQV25ca6UJWLyuw371AWYzbiLwjrmxd2SUn4hy0C7lcv+rpP1jM
	Dsd5VLZ5sf5FiLVMquaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBY9B-0002CK-7O; Tue, 10 Mar 2020 06:13:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBY91-0002By-TE
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 06:13:37 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B9DD24673;
 Tue, 10 Mar 2020 06:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583820815;
 bh=fSXsWsBt9Dpiq6m0xApVOrGE8qP/RuICGKsCO6DuD3w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PDJj3pyXtIEFr8bnNJC3SWe3F/LHSL8v7gsYOtJ5hrBXpCcBCxrKJ3DgKsUfRKIuh
 jRxG4g6jM8fJMIIMEv+sPmCDCNdjBA00KnxirI5cMx94av0V94B5ghGV3pNGXCLXJb
 JrcbgmWH+ZXCpVdHvJ7L2epmR6pOXr7T1QT4PCrc=
Date: Tue, 10 Mar 2020 14:13:29 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH v2 09/14] ARM: imx: cpuidle-imx7ulp: Stop mode disallowed
 when HSRUN
Message-ID: <20200310061328.GK15729@dragon>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <1582099197-20327-10-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582099197-20327-10-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_231335_963645_91A1A178 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: abel.vesa@nxp.com, Anson.Huang@nxp.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, s.hauer@pengutronix.de, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 03:59:52PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> When cpu runs in HSRUN mode, cpuidle is not allowed to run into
> Stop mode. So add imx7ulp_get_mode to get thr cpu run mode,
> and use WAIT mode instead, when cpu in HSRUN mode.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Why do you have cpuidle patches in a series titled as adding cpufreq
support?

Shawn

> ---
>  arch/arm/mach-imx/common.h          |  1 +
>  arch/arm/mach-imx/cpuidle-imx7ulp.c | 14 +++++++++++---
>  arch/arm/mach-imx/pm-imx7ulp.c      | 10 ++++++++++
>  3 files changed, 22 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/common.h b/arch/arm/mach-imx/common.h
> index 5aa5796cff0e..db542da4fe67 100644
> --- a/arch/arm/mach-imx/common.h
> +++ b/arch/arm/mach-imx/common.h
> @@ -104,6 +104,7 @@ void imx6_set_int_mem_clk_lpm(bool enable);
>  void imx6sl_set_wait_clk(bool enter);
>  int imx_mmdc_get_ddr_type(void);
>  int imx7ulp_set_lpm(enum ulp_cpu_pwr_mode mode);
> +u32 imx7ulp_get_mode(void);
>  
>  void imx_cpu_die(unsigned int cpu);
>  int imx_cpu_kill(unsigned int cpu);
> diff --git a/arch/arm/mach-imx/cpuidle-imx7ulp.c b/arch/arm/mach-imx/cpuidle-imx7ulp.c
> index ca86c967d19e..e7009d10b331 100644
> --- a/arch/arm/mach-imx/cpuidle-imx7ulp.c
> +++ b/arch/arm/mach-imx/cpuidle-imx7ulp.c
> @@ -15,10 +15,18 @@
>  static int imx7ulp_enter_wait(struct cpuidle_device *dev,
>  			    struct cpuidle_driver *drv, int index)
>  {
> -	if (index == 1)
> +	u32 mode;
> +
> +	if (index == 1) {
>  		imx7ulp_set_lpm(ULP_PM_WAIT);
> -	else
> -		imx7ulp_set_lpm(ULP_PM_STOP);
> +	} else {
> +		mode = imx7ulp_get_mode();
> +
> +		if (mode == 3)
> +			imx7ulp_set_lpm(ULP_PM_WAIT);
> +		else
> +			imx7ulp_set_lpm(ULP_PM_STOP);
> +	}
>  
>  	cpu_do_idle();
>  
> diff --git a/arch/arm/mach-imx/pm-imx7ulp.c b/arch/arm/mach-imx/pm-imx7ulp.c
> index 393faf1e8382..1410ccfc71bd 100644
> --- a/arch/arm/mach-imx/pm-imx7ulp.c
> +++ b/arch/arm/mach-imx/pm-imx7ulp.c
> @@ -63,6 +63,16 @@ int imx7ulp_set_lpm(enum ulp_cpu_pwr_mode mode)
>  	return 0;
>  }
>  
> +u32 imx7ulp_get_mode(void)
> +{
> +	u32 mode;
> +
> +	mode = readl_relaxed(smc1_base + SMC_PMCTRL) & BM_PMCTRL_RUNM;
> +	mode >>= BP_PMCTRL_RUNM;
> +
> +	return mode;
> +}
> +
>  void __init imx7ulp_pm_init(void)
>  {
>  	struct device_node *np;
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
