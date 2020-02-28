Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E578E173716
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 13:17:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BcYBDqzTjZOfAYiJt3qL5VeOoq5zyAS2kyaNt296ouU=; b=VHPCz/8cAjR2VF
	OoN+yBFHuH2ulmhkV8DarEZeBVp1ljJ9cz7KpFKqK2bGsSHREd1xsPzo8S5ToIv0IDMH5Kui8JLa5
	TGcyXX+J6VZqhIqZWCnCvfo2SM28sfHG4wLLnapKu2PVVs0/qsDAMgEX2d6Ycp+m0axqOeKzkVivO
	NzsrfWkhburilGBqUxptkEclKoeMR0u+1ZIzCAtm5JTW2yTv67r8zjqpI1Xze6w7N/B25tKvV6uVH
	fTbvkl8nhiaC9JUBpFGAioRaoV+MnKifPBJ4W/wbAmsCd43ZKUd+ZrSCG3qH63/YPXMIKQ8uomB9v
	L4Mo2gwFAQSFxtJTITWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7eaC-0004jf-5S; Fri, 28 Feb 2020 12:17:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7eZx-0004jK-8f
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 12:17:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF4334B2;
 Fri, 28 Feb 2020 04:17:15 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 31D733F7B4;
 Fri, 28 Feb 2020 04:17:15 -0800 (PST)
Date: Fri, 28 Feb 2020 12:17:13 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Robin Murphy <robin.murphy@arm.com>, will@kernel.org
Subject: Re: [PATCH v2 5/5] arm64: perf: Support new DT compatibles
Message-ID: <20200228121712.GF36089@lakrids.cambridge.arm.com>
References: <cover.1582312530.git.robin.murphy@arm.com>
 <6e5087621bd8112a35733054689d7c785b4bdde5.1582312530.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e5087621bd8112a35733054689d7c785b4bdde5.1582312530.git.robin.murphy@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_041717_390651_D1D00C89 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 07:35:32PM +0000, Robin Murphy wrote:
> Add support for matching the new PMUs. For now, this just wires them up
> as generic PMUv3 such that people writing DTs for new SoCs can do the
> right thing, and at least have architectural and raw events be usable.
> We can come back and fill in event maps for sysfs and/or perf tools at
> a later date.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Thanks for putting this together!

Acked-by: Mark Rutland <mark.rutland@arm.com>

Will, are you happy to queue this and the previous patch?

Thanks,
Mark.

> ---
> 
> v2: define separate init functions to preserve the user ABI for naming
>     (and perhaps more crucially, to simply avoid sysfs collisions on
>      the inevitable A7[567] + A55 big.LITTLE systems)
> 
>  arch/arm64/kernel/perf_event.c | 56 ++++++++++++++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index 1e0b04da2f3a..726cd8bda025 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -991,6 +991,12 @@ static int armv8_pmuv3_init(struct arm_pmu *cpu_pmu)
>  			      armv8_pmuv3_map_event, NULL, NULL);
>  }
>  
> +static int armv8_a34_pmu_init(struct arm_pmu *cpu_pmu)
> +{
> +	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a34",
> +			      armv8_pmuv3_map_event, NULL, NULL);
> +}
> +
>  static int armv8_a35_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a35",
> @@ -1003,12 +1009,24 @@ static int armv8_a53_pmu_init(struct arm_pmu *cpu_pmu)
>  			      armv8_a53_map_event, NULL, NULL);
>  }
>  
> +static int armv8_a55_pmu_init(struct arm_pmu *cpu_pmu)
> +{
> +	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a55",
> +			      armv8_pmuv3_map_event, NULL, NULL);
> +}
> +
>  static int armv8_a57_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a57",
>  			      armv8_a57_map_event, NULL, NULL);
>  }
>  
> +static int armv8_a65_pmu_init(struct arm_pmu *cpu_pmu)
> +{
> +	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a65",
> +			      armv8_pmuv3_map_event, NULL, NULL);
> +}
> +
>  static int armv8_a72_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a72",
> @@ -1021,6 +1039,36 @@ static int armv8_a73_pmu_init(struct arm_pmu *cpu_pmu)
>  			      armv8_a73_map_event, NULL, NULL);
>  }
>  
> +static int armv8_a75_pmu_init(struct arm_pmu *cpu_pmu)
> +{
> +	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a75",
> +			      armv8_pmuv3_map_event, NULL, NULL);
> +}
> +
> +static int armv8_a76_pmu_init(struct arm_pmu *cpu_pmu)
> +{
> +	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a76",
> +			      armv8_pmuv3_map_event, NULL, NULL);
> +}
> +
> +static int armv8_a77_pmu_init(struct arm_pmu *cpu_pmu)
> +{
> +	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a77",
> +			      armv8_pmuv3_map_event, NULL, NULL);
> +}
> +
> +static int armv8_e1_pmu_init(struct arm_pmu *cpu_pmu)
> +{
> +	return armv8_pmu_init(cpu_pmu, "armv8_neoverse_e1",
> +			      armv8_pmuv3_map_event, NULL, NULL);
> +}
> +
> +static int armv8_n1_pmu_init(struct arm_pmu *cpu_pmu)
> +{
> +	return armv8_pmu_init(cpu_pmu, "armv8_neoverse_n1",
> +			      armv8_pmuv3_map_event, NULL, NULL);
> +}
> +
>  static int armv8_thunder_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cavium_thunder",
> @@ -1035,11 +1083,19 @@ static int armv8_vulcan_pmu_init(struct arm_pmu *cpu_pmu)
>  
>  static const struct of_device_id armv8_pmu_of_device_ids[] = {
>  	{.compatible = "arm,armv8-pmuv3",	.data = armv8_pmuv3_init},
> +	{.compatible = "arm,cortex-a34-pmu",	.data = armv8_a34_pmu_init},
>  	{.compatible = "arm,cortex-a35-pmu",	.data = armv8_a35_pmu_init},
>  	{.compatible = "arm,cortex-a53-pmu",	.data = armv8_a53_pmu_init},
> +	{.compatible = "arm,cortex-a55-pmu",	.data = armv8_a55_pmu_init},
>  	{.compatible = "arm,cortex-a57-pmu",	.data = armv8_a57_pmu_init},
> +	{.compatible = "arm,cortex-a65-pmu",	.data = armv8_a65_pmu_init},
>  	{.compatible = "arm,cortex-a72-pmu",	.data = armv8_a72_pmu_init},
>  	{.compatible = "arm,cortex-a73-pmu",	.data = armv8_a73_pmu_init},
> +	{.compatible = "arm,cortex-a75-pmu",	.data = armv8_a75_pmu_init},
> +	{.compatible = "arm,cortex-a76-pmu",	.data = armv8_a76_pmu_init},
> +	{.compatible = "arm,cortex-a77-pmu",	.data = armv8_a77_pmu_init},
> +	{.compatible = "arm,neoverse-e1-pmu",	.data = armv8_e1_pmu_init},
> +	{.compatible = "arm,neoverse-n1-pmu",	.data = armv8_n1_pmu_init},
>  	{.compatible = "cavium,thunder-pmu",	.data = armv8_thunder_pmu_init},
>  	{.compatible = "brcm,vulcan-pmu",	.data = armv8_vulcan_pmu_init},
>  	{},
> -- 
> 2.23.0.dirty
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
