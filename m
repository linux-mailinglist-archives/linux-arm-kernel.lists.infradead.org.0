Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3761BA42B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:To:From:References:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mENEeWwxXt2NpBiNbpZONYR4nNPe+8+7SALKEDP4s1w=; b=Hy0QkJpSPd8STg
	z6IpyHKl1OiakbHlbs7y0Q14/qoKkd+g6eBXklAGN8qGhvTeBaYFQ4gVPghRqZeoF7yp/AShV7Pt9
	sxbx7mL8Zlme1NQ+nf1hqOzif/+G4d+bXzekPm9UIdKSas5RIgujXr8R808DXvRW4qbnq0vm+tdF8
	XYsVY4yIzASTF1Uq8atvYDX0kIPTWpPj/MFV8Gxeei2LJ4vfbl6Tin7AAO5Rq85vG24l2ZjvQYZBb
	shl1tBFNLaGiLWcYpou4kqMsc+tHfjckWdx6h1ZpTumTyZKpwE/WYBuKvPj/NdEcsLJXcoHSS0b/2
	2ZaWsuCTchPXHezgWK1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT3NY-0001B5-01; Mon, 27 Apr 2020 13:00:56 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT3NP-00019b-T9
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:00:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 574452A09F8
Subject: Re: next/master bisection: baseline.dmesg.alert on imx8mn-ddr4-evk
References: <5ea44ff8.1c69fb81.f246c.d02d@mx.google.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Peng Fan <peng.fan@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>
Message-ID: <8af4842d-d576-fd6f-ac6b-2ef3482742b7@collabora.com>
Date: Mon, 27 Apr 2020 14:00:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <5ea44ff8.1c69fb81.f246c.d02d@mx.google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_060048_205423_B1E9BA4D 
X-CRM114-Status: GOOD (  20.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-pm@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, kernelci@groups.io,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Please see the bisection report below about a boot failure.

Reports aren't automatically sent to the public while we're
trialing new bisection features on kernelci.org but this one
looks valid.

The log shows a kernel NULL pointer derefence:

    https://storage.kernelci.org/next/master/next-20200424/arm64/defconfig/gcc-8/lab-baylibre/baseline-imx8mn-ddr4-evk.html#L750

Guillaume

On 25/04/2020 15:58, kernelci.org bot wrote:
> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> * This automated bisection report was sent to you on the basis  *
> * that you may be involved with the breaking commit it has      *
> * found.  No manual investigation has been done to verify it,   *
> * and the root cause of the problem may be somewhere else.      *
> *                                                               *
> * If you do send a fix, please include this trailer:            *
> *   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
> *                                                               *
> * Hope this helps!                                              *
> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> 
> next/master bisection: baseline.dmesg.alert on imx8mn-ddr4-evk
> 
> Summary:
>   Start:      8bdabd09ec86a Add linux-next specific files for 20200424
>   Plain log:  https://storage.kernelci.org/next/master/next-20200424/arm64/defconfig/gcc-8/lab-baylibre/baseline-imx8mn-ddr4-evk.txt
>   HTML log:   https://storage.kernelci.org/next/master/next-20200424/arm64/defconfig/gcc-8/lab-baylibre/baseline-imx8mn-ddr4-evk.html
>   Result:     2fbd0de2a20fb cpufreq: imx-cpufreq-dt: support i.MX7ULP
> 
> Checks:
>   revert:     PASS
>   verify:     PASS
> 
> Parameters:
>   Tree:       next
>   URL:        https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>   Branch:     master
>   Target:     imx8mn-ddr4-evk
>   CPU arch:   arm64
>   Lab:        lab-baylibre
>   Compiler:   gcc-8
>   Config:     defconfig
>   Test case:  baseline.dmesg.alert
> 
> Breaking commit found:
> 
> -------------------------------------------------------------------------------
> commit 2fbd0de2a20fbea8b1f5250935e9f1f0e4441b0f
> Author: Peng Fan <peng.fan@nxp.com>
> Date:   Mon Apr 20 15:55:14 2020 +0800
> 
>     cpufreq: imx-cpufreq-dt: support i.MX7ULP
>     
>     i.MX7ULP's ARM core clock design is totally different compared
>     with i.MX7D/8M SoCs which supported by imx-cpufreq-dt. It needs
>     get_intermediate and target_intermedate to configure clk MUX ready,
>     before let OPP configure ARM core clk.
>                                               |---FIRC
>          |------RUN---...---SCS(MUX2) --------|
>     ARM --(MUX1)                              |---SPLL_PFD0(CLK_SET_RATE_GATE)
>          |------HSRUN--...--HSRUN_SCS(MUX3)---|
>                                               |---SRIC
>     
>     FIRC is step clk, SPLL_PFD0 is the normal clk driving ARM core.
>     MUX2 and MUX3 share same inputs. So if MUX2/MUX3 both sources from
>     SPLL_PFD0, both MUXes will lose input when configure SPLL_PFD0.
>     So the target_intermediate will configure MUX2/MUX3 to FIRC, to avoid
>     ARM core lose clk when configure SPLL_PFD0.
>     
>     Signed-off-by: Peng Fan <peng.fan@nxp.com>
>     Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> 
> diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
> index de206d2745feb..b019b05940e83 100644
> --- a/drivers/cpufreq/imx-cpufreq-dt.c
> +++ b/drivers/cpufreq/imx-cpufreq-dt.c
> @@ -3,7 +3,9 @@
>   * Copyright 2019 NXP
>   */
>  
> +#include <linux/clk.h>
>  #include <linux/cpu.h>
> +#include <linux/cpufreq.h>
>  #include <linux/err.h>
>  #include <linux/init.h>
>  #include <linux/kernel.h>
> @@ -12,8 +14,11 @@
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_opp.h>
> +#include <linux/regulator/consumer.h>
>  #include <linux/slab.h>
>  
> +#include "cpufreq-dt.h"
> +
>  #define OCOTP_CFG3_SPEED_GRADE_SHIFT	8
>  #define OCOTP_CFG3_SPEED_GRADE_MASK	(0x3 << 8)
>  #define IMX8MN_OCOTP_CFG3_SPEED_GRADE_MASK	(0xf << 8)
> @@ -22,13 +27,62 @@
>  #define IMX8MP_OCOTP_CFG3_MKT_SEGMENT_SHIFT    5
>  #define IMX8MP_OCOTP_CFG3_MKT_SEGMENT_MASK     (0x3 << 5)
>  
> +#define IMX7ULP_MAX_RUN_FREQ	528000
> +
>  /* cpufreq-dt device registered by imx-cpufreq-dt */
>  static struct platform_device *cpufreq_dt_pdev;
>  static struct opp_table *cpufreq_opp_table;
> +static struct device *cpu_dev;
> +
> +enum IMX7ULP_CPUFREQ_CLKS {
> +	ARM,
> +	CORE,
> +	SCS_SEL,
> +	HSRUN_CORE,
> +	HSRUN_SCS_SEL,
> +	FIRC,
> +};
> +
> +static struct clk_bulk_data imx7ulp_clks[] = {
> +	{ .id = "arm" },
> +	{ .id = "core" },
> +	{ .id = "scs_sel" },
> +	{ .id = "hsrun_core" },
> +	{ .id = "hsrun_scs_sel" },
> +	{ .id = "firc" },
> +};
> +
> +static unsigned int imx7ulp_get_intermediate(struct cpufreq_policy *policy,
> +					     unsigned int index)
> +{
> +	return clk_get_rate(imx7ulp_clks[FIRC].clk);
> +}
> +
> +static int imx7ulp_target_intermediate(struct cpufreq_policy *policy,
> +					unsigned int index)
> +{
> +	unsigned int newfreq = policy->freq_table[index].frequency;
> +
> +	clk_set_parent(imx7ulp_clks[SCS_SEL].clk, imx7ulp_clks[FIRC].clk);
> +	clk_set_parent(imx7ulp_clks[HSRUN_SCS_SEL].clk, imx7ulp_clks[FIRC].clk);
> +
> +	if (newfreq > IMX7ULP_MAX_RUN_FREQ)
> +		clk_set_parent(imx7ulp_clks[ARM].clk,
> +			       imx7ulp_clks[HSRUN_CORE].clk);
> +	else
> +		clk_set_parent(imx7ulp_clks[ARM].clk, imx7ulp_clks[CORE].clk);
> +
> +	return 0;
> +}
> +
> +static struct cpufreq_dt_platform_data imx7ulp_data = {
> +	.target_intermediate = imx7ulp_target_intermediate,
> +	.get_intermediate = imx7ulp_get_intermediate,
> +};
>  
>  static int imx_cpufreq_dt_probe(struct platform_device *pdev)
>  {
> -	struct device *cpu_dev = get_cpu_device(0);
> +	struct platform_device *dt_pdev;
>  	u32 cell_value, supported_hw[2];
>  	int speed_grade, mkt_segment;
>  	int ret;
> @@ -36,6 +90,29 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
>  	if (!of_find_property(cpu_dev->of_node, "cpu-supply", NULL))
>  		return -ENODEV;
>  
> +	cpu_dev = get_cpu_device(0);
> +
> +	if (of_machine_is_compatible("fsl,imx7ulp")) {
> +		ret = clk_bulk_get(cpu_dev, ARRAY_SIZE(imx7ulp_clks),
> +				   imx7ulp_clks);
> +		if (ret)
> +			return ret;
> +
> +		dt_pdev = platform_device_register_data(NULL, "cpufreq-dt",
> +							-1, &imx7ulp_data,
> +							sizeof(imx7ulp_data));
> +		if (IS_ERR(dt_pdev)) {
> +			clk_bulk_put(ARRAY_SIZE(imx7ulp_clks), imx7ulp_clks);
> +			ret = PTR_ERR(dt_pdev);
> +			dev_err(&pdev->dev, "Failed to register cpufreq-dt: %d\n", ret);
> +			return ret;
> +		}
> +
> +		cpufreq_dt_pdev = dt_pdev;
> +
> +		return 0;
> +	}
> +
>  	ret = nvmem_cell_read_u32(cpu_dev, "speed_grade", &cell_value);
>  	if (ret)
>  		return ret;
> @@ -98,7 +175,10 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
>  static int imx_cpufreq_dt_remove(struct platform_device *pdev)
>  {
>  	platform_device_unregister(cpufreq_dt_pdev);
> -	dev_pm_opp_put_supported_hw(cpufreq_opp_table);
> +	if (!of_machine_is_compatible("fsl,imx7ulp"))
> +		dev_pm_opp_put_supported_hw(cpufreq_opp_table);
> +	else
> +		clk_bulk_put(ARRAY_SIZE(imx7ulp_clks), imx7ulp_clks);
>  
>  	return 0;
>  }
> -------------------------------------------------------------------------------
> 
> 
> Git bisection log:
> 
> -------------------------------------------------------------------------------
> git bisect start
> # good: [a6d0b83f25073bdf08b8547aeff961a62c6ab229] net: bcmgenet: correct per TX/RX ring statistics
> git bisect good a6d0b83f25073bdf08b8547aeff961a62c6ab229
> # bad: [8bdabd09ec86a993419c8c98a4f34c12bc902c6c] Add linux-next specific files for 20200424
> git bisect bad 8bdabd09ec86a993419c8c98a4f34c12bc902c6c
> # bad: [556a775f0602376f6d4bf6ec24f817314d7e5cac] Merge remote-tracking branch 'crypto/master'
> git bisect bad 556a775f0602376f6d4bf6ec24f817314d7e5cac
> # good: [fa5fcf1b786dcda5965372f84baf252cf50fc849] Merge remote-tracking branch 'btrfs/for-next'
> git bisect good fa5fcf1b786dcda5965372f84baf252cf50fc849
> # good: [16aedbb33c21617b2dcdcc50d57f3a17557cc825] Merge remote-tracking branch 'jc_docs/docs-next'
> git bisect good 16aedbb33c21617b2dcdcc50d57f3a17557cc825
> # bad: [920b40f1dfe3adc7d9640e95bb7c08464d0ae7ba] Merge remote-tracking branch 'rdma/for-next'
> git bisect bad 920b40f1dfe3adc7d9640e95bb7c08464d0ae7ba
> # good: [a735e6b80d911fc1f452cea328c61779445e1054] media: cec/usb: depends on USB_SUPPORT and TTY
> git bisect good a735e6b80d911fc1f452cea328c61779445e1054
> # good: [17ce5e6d72d5acc838e8e6218c3fadc2a7abe7da] media: admin-guide: improve cardlist.rst documentation
> git bisect good 17ce5e6d72d5acc838e8e6218c3fadc2a7abe7da
> # bad: [a82dbfaeede6ea5c12013c8034f9501dd112a482] Merge remote-tracking branch 'cpufreq-arm/cpufreq/arm/linux-next'
> git bisect bad a82dbfaeede6ea5c12013c8034f9501dd112a482
> # good: [4bdbff4da40584ec2225bb429b7c66ad54d19cda] media: tuners: Kconfig: add some missing VIDEO_V4L2 dependencies
> git bisect good 4bdbff4da40584ec2225bb429b7c66ad54d19cda
> # good: [01186efb19343e798e90318671e534c272a03723] Documentation: PM: sleep: Update driver flags documentation
> git bisect good 01186efb19343e798e90318671e534c272a03723
> # good: [366562a463dd2a93dea0e2743b1b0070f14339a9] Merge branches 'acpi-pci', 'acpi-button' and 'pm-tools' into linux-next
> git bisect good 366562a463dd2a93dea0e2743b1b0070f14339a9
> # good: [574f732cdc1c3e7bb1389eb8515b3d87a476d591] Merge remote-tracking branch 'pm/linux-next'
> git bisect good 574f732cdc1c3e7bb1389eb8515b3d87a476d591
> # good: [11d89b0a820f8d1edb7780b971597c357864dec7] cpufreq: Add i.MX7ULP to cpufreq-dt-platdev blacklist
> git bisect good 11d89b0a820f8d1edb7780b971597c357864dec7
> # bad: [2fbd0de2a20fbea8b1f5250935e9f1f0e4441b0f] cpufreq: imx-cpufreq-dt: support i.MX7ULP
> git bisect bad 2fbd0de2a20fbea8b1f5250935e9f1f0e4441b0f
> # first bad commit: [2fbd0de2a20fbea8b1f5250935e9f1f0e4441b0f] cpufreq: imx-cpufreq-dt: support i.MX7ULP
> -------------------------------------------------------------------------------
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
