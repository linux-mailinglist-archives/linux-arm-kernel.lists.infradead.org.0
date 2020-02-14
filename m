Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906C915F50E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 19:35:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ogxwp8hV7kDmk5wIRL4hV8CiagVh+VIKEvHEq+bfYQ=; b=cafY6ZL7X4CXZo
	OoRu+krhPyHH5aM8LdRWfiHQlonK1TXZSU+pBeayyWzWcDn1sDKvGym5FBeMbOHd3MfNS7sQRx7RM
	Ye7C4HXYrZvyRUAwVFxMRWw8PkPNsBNLWsEiHs8xcliOdqkgxQv/XVO4DnqWMSasCldbgeZ9WPDSj
	rSCu/fx0SCibGl0/7WMTZ7rpuuFKFPN8As6utfdVxwybEsLArg8UhCEvOcmX4ADZBgYPJeoW8d5cO
	G+qPON2y7D3g5l0TP8MxAst4k2Uhb/QxglDpjv/2HH3GhSekzx7NenQsY7wTZBQaKYrGVVq1mLpmv
	r0+0lufDylPJ4Sp0AMmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2fo1-0004At-Da; Fri, 14 Feb 2020 18:35:13 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2fnq-0003mC-BW
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 18:35:03 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01EIYxAd050602;
 Fri, 14 Feb 2020 12:34:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581705299;
 bh=CeEgcWk/HfuO2IaagRe9CBxKSg/Ss88sECNw6qTEp88=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=fpuZIbD7Z39pu8R+qc8QSylmd/BDw5dT4jjy4LE4TAsP3JTtB2D1tOyEjdNuJfAYZ
 fI4NP5MFGJl3Knr/UaoxR/8nVW+ZfZ733FCQJdH/uVb4aL9Kosc627Jix+13KBJXqC
 WHysqa/PTfKG8XCNZQlUYC9DCGOI+bMMjPwYf41w=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01EIYxeZ005541;
 Fri, 14 Feb 2020 12:34:59 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 14
 Feb 2020 12:34:58 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 14 Feb 2020 12:34:59 -0600
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01EIYwXI128015;
 Fri, 14 Feb 2020 12:34:58 -0600
Subject: Re: [PATCH AUTOSEL 5.5 219/542] ARM: OMAP2+: use separate IOMMU pdata
 to fix DRA7 IPU1 boot
To: Sasha Levin <sashal@kernel.org>, <linux-kernel@vger.kernel.org>,
 <stable@vger.kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
 <20200214154854.6746-219-sashal@kernel.org>
From: Suman Anna <s-anna@ti.com>
Message-ID: <a7666322-f931-63f1-a4c5-d44c2ba4ed0c@ti.com>
Date: Fri, 14 Feb 2020 12:34:58 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200214154854.6746-219-sashal@kernel.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_103502_495576_9AFD5095 
X-CRM114-Status: GOOD (  27.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sasha,

On 2/14/20 9:43 AM, Sasha Levin wrote:
> From: Suman Anna <s-anna@ti.com>
> 
> [ Upstream commit 4601832f40501efc3c2fd264a5a69bd1ac17d520 ]
> 
> The IPU1 MMU has been using common IOMMU pdata quirks defined and
> used by all IPU IOMMU devices on OMAP4 and beyond. Separate out the
> pdata for IPU1 MMU with the additional .set_pwrdm_constraint ops
> plugged in, so that the IPU1 power domain can be restricted to ON
> state during the boot and active period of the IPU1 remote processor.
> This eliminates the pre-conditions for the IPU1 boot issue as
> described in commit afe518400bdb ("iommu/omap: fix boot issue on
> remoteprocs with AMMU/Unicache").
> 
> NOTE:
> 1. RET is not a valid target power domain state on DRA7 platforms,
>    and IPU power domain is normally programmed for OFF. The IPU1
>    still fails to boot though, and an unclearable l3_noc error is
>    thrown currently on 4.14 kernel without this fix. This behavior
>    is slightly different from previous 4.9 LTS kernel.
> 2. The fix is currently applied only to IPU1 on DRA7xx SoC, as the
>    other affected processors on OMAP4/OMAP5/DRA7 are in domains
>    that are not entering RET. IPU2 on DRA7 is in CORE power domain
>    which is only programmed for ON power state. The fix can be easily
>    scaled if these domains do hit RET in the future.
> 3. The issue was not seen on current DRA7 platforms if any of the
>    DSP remote processors were booted and using one of the GPTimers
>    5, 6, 7 or 8 on previous 4.9 LTS kernel. This was due to the
>    errata fix for i874 implemented in commit 1cbabcb9807e ("ARM:
>    DRA7: clockdomain: Implement timer workaround for errata i874")
>    which keeps the IPU1 power domain from entering RET when the
>    timers are active. But the timer workaround did not make any
>    difference on 4.14 kernel, and an l3_noc error was seen still
>    without this fix.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> Signed-off-by: Sasha Levin <sashal@kernel.org>

And drop this one as well, since mainline doesn't yet boot
the processors, so this is not needed for stable queue.

regards
Suman

> ---
>  arch/arm/mach-omap2/pdata-quirks.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/arch/arm/mach-omap2/pdata-quirks.c b/arch/arm/mach-omap2/pdata-quirks.c
> index 7a79bcc02a11b..c3be1db9685cd 100644
> --- a/arch/arm/mach-omap2/pdata-quirks.c
> +++ b/arch/arm/mach-omap2/pdata-quirks.c
> @@ -43,6 +43,17 @@ struct pdata_init {
>  static struct of_dev_auxdata omap_auxdata_lookup[];
>  static struct twl4030_gpio_platform_data twl_gpio_auxdata;
>  
> +#if IS_ENABLED(CONFIG_OMAP_IOMMU)
> +int omap_iommu_set_pwrdm_constraint(struct platform_device *pdev, bool request,
> +				    u8 *pwrst);
> +#else
> +static inline int omap_iommu_set_pwrdm_constraint(struct platform_device *pdev,
> +						  bool request, u8 *pwrst)
> +{
> +	return 0;
> +}
> +#endif
> +
>  #ifdef CONFIG_MACH_NOKIA_N8X0
>  static void __init omap2420_n8x0_legacy_init(void)
>  {
> @@ -286,6 +297,10 @@ static void __init omap5_uevm_legacy_init(void)
>  #endif
>  
>  #ifdef CONFIG_SOC_DRA7XX
> +static struct iommu_platform_data dra7_ipu1_dsp_iommu_pdata = {
> +	.set_pwrdm_constraint = omap_iommu_set_pwrdm_constraint,
> +};
> +
>  static struct omap_hsmmc_platform_data dra7_hsmmc_data_mmc1;
>  static struct omap_hsmmc_platform_data dra7_hsmmc_data_mmc2;
>  static struct omap_hsmmc_platform_data dra7_hsmmc_data_mmc3;
> @@ -517,6 +532,12 @@ static struct of_dev_auxdata omap_auxdata_lookup[] = {
>  		       &dra7_hsmmc_data_mmc2),
>  	OF_DEV_AUXDATA("ti,dra7-hsmmc", 0x480ad000, "480ad000.mmc",
>  		       &dra7_hsmmc_data_mmc3),
> +	OF_DEV_AUXDATA("ti,dra7-dsp-iommu", 0x40d01000, "40d01000.mmu",
> +		       &dra7_ipu1_dsp_iommu_pdata),
> +	OF_DEV_AUXDATA("ti,dra7-dsp-iommu", 0x41501000, "41501000.mmu",
> +		       &dra7_ipu1_dsp_iommu_pdata),
> +	OF_DEV_AUXDATA("ti,dra7-iommu", 0x58882000, "58882000.mmu",
> +		       &dra7_ipu1_dsp_iommu_pdata),
>  #endif
>  	/* Common auxdata */
>  	OF_DEV_AUXDATA("ti,sysc", 0, NULL, &ti_sysc_pdata),
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
