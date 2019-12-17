Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBF7122976
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 12:04:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ohSWUwXqJJ/l4gUeNPtjurdyCd9bYTgAVmKF0In8Ysk=; b=O706bJRy3AR8zy3psz34ULE/c
	EJ8RnjwouUx4/hklR0qle4VcYEdr/ka7JzCbhjyulhJmk3sWigoDj9ffzZinE+FmD4+JGx3sa1A6C
	HwOLLtPBG/QziBwBRmDuYPQqZjmcgqIYoPnKsRW1SwQRf3KUGsWbKEm9N5aIkP91lPZp/JgnmSPT+
	1tm6V5HTLHEjxsQQLCcAowECHPUVwhVrAkICz7iDS9Mhvvdbptm9pjml4XOITHFHNANuoGG9Uc2MH
	r+2IVJr1oKl8Goohsqwgpc40+ERX/N05DKUJSlQIopcwwqimvggjHNuGR+upHydNwnBG4C8gyUW+h
	wHrixF1nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihAeI-00076A-LC; Tue, 17 Dec 2019 11:04:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihAe5-00075g-Vr; Tue, 17 Dec 2019 11:04:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0095031B;
 Tue, 17 Dec 2019 03:04:04 -0800 (PST)
Received: from [10.37.12.145] (unknown [10.37.12.145])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F8933F6CF;
 Tue, 17 Dec 2019 03:04:00 -0800 (PST)
Subject: Re: [PATCH 7/9] memory: samsung: exynos5422-dmc: Replace deprecated
 'devfreq-events' property
To: Chanwoo Choi <cw00.choi@samsung.com>, krzk@kernel.org,
 robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de,
 leonard.crestez@nxp.com
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p2c43a45e34983c1b3e60cc6fd842dd33e@epcas1p2.samsung.com>
 <20191217055738.28445-8-cw00.choi@samsung.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <500aaeb0-85ca-c1f5-2f30-a7b1e95810b6@arm.com>
Date: Tue, 17 Dec 2019 11:03:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191217055738.28445-8-cw00.choi@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_030406_114212_760DC199 
X-CRM114-Status: GOOD (  26.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, a.swigon@samsung.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com,
 myungjoo.ham@samsung.com, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chanwoo,

On 12/17/19 5:57 AM, Chanwoo Choi wrote:
> In order to remove the deprecated 'devfreq-events' property, replace with
> new 'exynos,ppmu-device' property in order to get the devfreq-event device
> in devicetree file instead of 'devfreq-events' property. But, to guarantee
> the backward-compatibility, keep the support 'devfreq-events' property.
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>   .../memory-controllers/exynos5422-dmc.txt     |  6 ++--
>   drivers/memory/samsung/exynos5422-dmc.c       | 29 +++++++++++++++----
>   2 files changed, 26 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> index 02e4a1f862f1..1e1b3702f045 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> +++ b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> @@ -17,14 +17,14 @@ Required properties for DMC device for Exynos5422:
>   - clock-names : should include "fout_spll", "mout_sclk_spll", "ff_dout_spll2",
>     "fout_bpll", "mout_bpll", "sclk_bpll", "mout_mx_mspll_ccore",
>     "mout_mclk_cdrex"  entries
> -- devfreq-events : phandles for PPMU devices connected to this DMC.
> +- exynos,ppmu-device : phandles for PPMU devices connected to this DMC.
>   - vdd-supply : phandle for voltage regulator which is connected.
>   - reg : registers of two CDREX controllers.
>   - operating-points-v2 : phandle for OPPs described in v2 definition.
>   - device-handle : phandle of the connected DRAM memory device. For more
>   	information please refer to documentation file:
>   	Documentation/devicetree/bindings/ddr/lpddr3.txt
> -- devfreq-events : phandles of the PPMU events used by the controller.
> +- exynos,ppmu-device : phandles of the PPMU events used by the controller.
>   - samsung,syscon-clk : phandle of the clock register set used by the controller,
>   	these registers are used for enabling a 'pause' feature and are not
>   	exposed by clock framework but they must be used in a safe way.
> @@ -73,7 +73,7 @@ Example:
>   			      "mout_mx_mspll_ccore",
>   			      "mout_mclk_cdrex";
>   		operating-points-v2 = <&dmc_opp_table>;
> -		devfreq-events = <&ppmu_event3_dmc0_0>,	<&ppmu_event3_dmc0_1>,
> +		exynos,ppmu-device = <&ppmu_event3_dmc0_0>, <&ppmu_event3_dmc0_1>,
>   				 <&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;
>   		device-handle = <&samsung_K3QF2F20DB>;
>   		vdd-supply = <&buck1_reg>;
> diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
> index c3195111d646..96593f37a478 100644
> --- a/drivers/memory/samsung/exynos5422-dmc.c
> +++ b/drivers/memory/samsung/exynos5422-dmc.c
> @@ -1270,10 +1270,17 @@ static int exynos5_dmc_init_clks(struct exynos5_dmc *dmc)
>   static struct devfreq_event_dev *get_edev_by_node(struct device_node *np,
>   							int index)
>   {
> -	struct device_node *node = of_parse_phandle(np, "devfreq-events",
> +	struct device_node *node = of_parse_phandle(np, "exynos,ppmu-device",
>   							index);
> -	if (!node)
> -		return ERR_PTR(-ENODEV);
> +	if (!node) {
> +		 /*
> +		  * Check the deprecated 'devfreq-events' property
> +		  * to support backward-compatibility.
> +		 */
> +		node = of_parse_phandle(np, "devfreq-events", index);
> +		if (!node)
> +			return ERR_PTR(-ENODEV);
> +	}
>   	return devfreq_event_get_edev_by_node(node);
>   }
>   
> @@ -1292,10 +1299,20 @@ static int exynos5_performance_counters_init(struct exynos5_dmc *dmc)
>   	int ret, i;
>   
>   	dmc->num_counters = of_property_count_elems_of_size(dmc->dev->of_node,
> -					"devfreq-events", sizeof(u32));
> +					"exynos,ppmu-device", sizeof(u32));
>   	if (dmc->num_counters < 0) {
> -		dev_err(dmc->dev, "could not get devfreq-event counters\n");
> -		return dmc->num_counters;
> +		 /*
> +		  * Check the deprecated 'devfreq-events' property
> +		  * to support backward-compatibility.
> +		 */
> +		dmc->num_counters = of_property_count_elems_of_size(
> +					dmc->dev->of_node,
> +					"devfreq-events", sizeof(u32));
> +		if (dmc->num_counters < 0) {
> +			dev_err(dmc->dev,
> +				"could not get devfreq-event counters\n");
> +			return dmc->num_counters;
> +		}
>   	}
>   
>   	counters_size = sizeof(struct devfreq_event_dev) * dmc->num_counters;
> 

Looks good to me. The fallback with backward-compatibility is a good
idea in my opinion. Thank you for the change and feel free to and my:

Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>


Regarding the whole patch set, for the first glance it looks reasonable
and good. AIRC some developers were arguing for the "devfreq-events"
entry in DT. Now it should be fine. I will spend more time today for
reviewing the whole patch set.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
