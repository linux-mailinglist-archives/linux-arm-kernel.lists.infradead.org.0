Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3A583040
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 13:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i25S49nTzB3zIID6D5ebbygHYramI19YF11miDOiveI=; b=PmvKfQTb2nfJKz/R/u3IBjWVo
	6ap+17cU5kNNvz+froMDbuJIhkIwmm1diTxORIpa7JO0bdVWoV1xl0RjNq6oDncA1W1Xl/n2G0YGO
	hAX+zXUlo9mzc7qp9I46IKEWBS3NF1q/5z2LnfoKHRVopc7p9+ZMpoVT1AXM518VXDvqVWEOkeqHy
	sqagziwbCsjqRkJgoBj/NBZadHYG6Ia1aWdyJ6qVjI06pfIL13dgn5gZoUbDPcd6NRsy5FfOOJY9e
	s7xVuR1e14QfaxlPmy18WwlS/wRi8COlPRn22iqOShCBhqHZlLc0jetdMbXHIIVjDhEeBef8cWPT0
	FRUvYsjsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxJh-0004Gh-CR; Tue, 06 Aug 2019 11:07:45 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huxJT-0004Fl-Ey
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 11:07:33 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5EE1996E0A4ABC13A6C9;
 Tue,  6 Aug 2019 19:07:16 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 6 Aug 2019 19:07:06 +0800
Subject: Re: [PATCH v2 12/12] irqchip/gic-v3: Add quirks for HIP06/07 invalid
 GICD_TYPER erratum 161010803
To: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 "Jason Cooper" <jason@lakedaemon.net>, Julien Thierry
 <julien.thierry.kdev@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20190806100121.240767-1-maz@kernel.org>
 <20190806100121.240767-13-maz@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <5f8808f9-ca91-db68-042f-97dfcbe75508@huawei.com>
Date: Tue, 6 Aug 2019 12:07:00 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190806100121.240767-13-maz@kernel.org>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_040731_665350_8201F483 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, linux-kernel@vger.kernel.org,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/08/2019 11:01, Marc Zyngier wrote:
> It looks like the HIP06/07 SoCs have extra bits in their GICD_TYPER
> registers, which confuse the GICv3.1 code (these systems appear to
> expose ESPIs while they actually don't).
>
> Detect these systems as early as possible and wipe the fields that
> should be RES0 in the register.
>

thanks,

Tested-by: John Garry <john.garry@huawei.com>

> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  Documentation/arm64/silicon-errata.rst |  2 +
>  drivers/irqchip/irq-gic-v3.c           | 54 +++++++++++++++++++++-----
>  2 files changed, 46 insertions(+), 10 deletions(-)
>
> diff --git a/Documentation/arm64/silicon-errata.rst b/Documentation/arm64/silicon-errata.rst
> index 3e57d09246e6..17ea3fecddaa 100644
> --- a/Documentation/arm64/silicon-errata.rst
> +++ b/Documentation/arm64/silicon-errata.rst
> @@ -115,6 +115,8 @@ stable kernels.
>  +----------------+-----------------+-----------------+-----------------------------+
>  | Hisilicon      | Hip0{6,7}       | #161010701      | N/A                         |
>  +----------------+-----------------+-----------------+-----------------------------+
> +| Hisilicon      | Hip0{6,7}       | #161010803      | N/A                         |
> ++----------------+-----------------+-----------------+-----------------------------+
>  | Hisilicon      | Hip07           | #161600802      | HISILICON_ERRATUM_161600802 |
>  +----------------+-----------------+-----------------+-----------------------------+
>  | Hisilicon      | Hip08 SMMU PMCG | #162001800      | N/A                         |
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index 334a10d9dbfb..bee141613b67 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -1441,6 +1441,46 @@ static bool gic_enable_quirk_msm8996(void *data)
>  	return true;
>  }
>
> +static bool gic_enable_quirk_hip06_07(void *data)
> +{
> +	struct gic_chip_data *d = data;
> +
> +	/*
> +	 * HIP06 GICD_IIDR clashes with GIC-600 product number (despite
> +	 * not being an actual ARM implementation). The saving grace is
> +	 * that GIC-600 doesn't have ESPI, so nothing to do in that case.
> +	 * HIP07 doesn't even have a proper IIDR, and still pretends to
> +	 * have ESPI. In both cases, put them right.
> +	 */
> +	if (d->rdists.gicd_typer & GICD_TYPER_ESPI) {
> +		/* Zero both ESPI and the RES0 field next to it... */
> +		d->rdists.gicd_typer &= ~GENMASK(9, 8);
> +		return true;
> +	}
> +
> +	return false;
> +}
> +
> +static const struct gic_quirk gic_quirks[] = {
> +	{
> +		.desc	= "GICv3: Qualcomm MSM8996 broken firmware",
> +		.compatible = "qcom,msm8996-gic-v3",
> +		.init	= gic_enable_quirk_msm8996,
> +	},
> +	{
> +		.desc	= "GICv3: HIP06 erratum 161010803",
> +		.iidr	= 0x0204043b,
> +		.init	= gic_enable_quirk_hip06_07,
> +	},
> +	{
> +		.desc	= "GICv3: HIP07 erratum 161010803",
> +		.iidr	= 0x00000000,
> +		.init	= gic_enable_quirk_hip06_07,
> +	},
> +	{
> +	}
> +};
> +
>  static void gic_enable_nmi_support(void)
>  {
>  	int i;
> @@ -1494,6 +1534,10 @@ static int __init gic_init_bases(void __iomem *dist_base,
>  	 */
>  	typer = readl_relaxed(gic_data.dist_base + GICD_TYPER);
>  	gic_data.rdists.gicd_typer = typer;
> +
> +	gic_enable_quirks(readl_relaxed(gic_data.dist_base + GICD_IIDR),
> +			  gic_quirks, &gic_data);
> +
>  	pr_info("%d SPIs implemented\n", GIC_LINE_NR - 32);
>  	pr_info("%d Extended SPIs implemented\n", GIC_ESPI_NR);
>  	gic_data.domain = irq_domain_create_tree(handle, &gic_irq_domain_ops,
> @@ -1676,16 +1720,6 @@ static void __init gic_of_setup_kvm_info(struct device_node *node)
>  	gic_set_kvm_info(&gic_v3_kvm_info);
>  }
>
> -static const struct gic_quirk gic_quirks[] = {
> -	{
> -		.desc	= "GICv3: Qualcomm MSM8996 broken firmware",
> -		.compatible = "qcom,msm8996-gic-v3",
> -		.init	= gic_enable_quirk_msm8996,
> -	},
> -	{
> -	}
> -};
> -
>  static int __init gic_of_init(struct device_node *node, struct device_node *parent)
>  {
>  	void __iomem *dist_base;
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
