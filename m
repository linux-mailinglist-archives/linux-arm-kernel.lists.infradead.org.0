Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A442A718A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9phhs4qxCm0tsv3tVZnq+rbm8iW+LfzFnf7aw6vUDwA=; b=H5pfY5k1Qz8STE
	EGCAFLyZky6pBpNeiO+vnh9fqzfLQv9wUf5uDTgdIRjldJ1moIXaZB/lJlIIbSJ0NA6djkQYiZ7Co
	FCuKrMXUiTXDp6BXT2cKPThcwQRHk9ZOFGt+lNYY//jBW5Nx9m3jdTktfxJ5s2DcH6bbI4VIg1Vub
	G8PBEjTTBmaDcUXZoEnPkaWCb+x6u9Z8DuT8OHBO1e1Vo6Tety+5Rx+d7ROoMdNgdFBqKjYcE93+H
	WZ2ep8QRuYSdwOKUGY6MZEuRiguxobUt+bSI16gAVJLdymzn+odQzDxUoXdBOM4lDlR+/ZhjYiZxO
	7WpNpKW2i0WaeP3Hwv5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuGH-0001O4-1b; Tue, 23 Jul 2019 12:51:21 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuG4-0001Mw-K3
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:51:10 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NCon3h006938;
 Tue, 23 Jul 2019 07:50:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563886249;
 bh=52qhupjxn+B9564HmbrwKDqCkUUSaUEP+bThbTNl/c0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=UZjZjBDCXQuig05ZYJEjPWaewnRPvtT3Brk3gwsAVHFCFV3inMgDhXKM2d9g537G1
 DFvHo603gc3fRcBRH9iEEaJ2AeGyV18Ss+VKwkp0ADfjDUR0BA7zi3o/ephrxrU7tP
 9vlavdAdchooy/tIjKH0d5GiVg6XkbuOYgPD1unU=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NConV4066007
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Jul 2019 07:50:49 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 07:50:49 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 07:50:49 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NCokSH027318;
 Tue, 23 Jul 2019 07:50:47 -0500
Subject: Re: [PATCH 4/9] irqchip/gic-v3: Add ESPI range support
To: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Jason
 Cooper <jason@lakedaemon.net>, Julien Thierry
 <julien.thierry.kdev@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20190723104437.154403-1-maz@kernel.org>
 <20190723104437.154403-5-maz@kernel.org>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <a54dfa07-2f3b-def7-fec4-b6dab2bcd84c@ti.com>
Date: Tue, 23 Jul 2019 18:20:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190723104437.154403-5-maz@kernel.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_055108_784567_B3CCEB27 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 23/07/19 4:14 PM, Marc Zyngier wrote:
> Add the required support for the ESPI range, which behave exactly like
> the SPIs of old, only with new funky INTIDs.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/irqchip/irq-gic-v3.c       | 85 ++++++++++++++++++++++++------
>  include/linux/irqchip/arm-gic-v3.h | 17 +++++-
>  2 files changed, 85 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index 2371e0a70215..d328a8de533f 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -51,13 +51,16 @@ struct gic_chip_data {
>  	u32			nr_redist_regions;
>  	u64			flags;
>  	bool			has_rss;
> -	unsigned int		irq_nr;
>  	struct partition_desc	*ppi_descs[16];
>  };
>  
>  static struct gic_chip_data gic_data __read_mostly;
>  static DEFINE_STATIC_KEY_TRUE(supports_deactivate_key);
>  
> +#define GIC_ID_NR	(1U << GICD_TYPER_ID_BITS(gic_data.rdists.gicd_typer))
> +#define GIC_LINE_NR	GICD_TYPER_SPIS(gic_data.rdists.gicd_typer)
> +#define GIC_ESPI_NR	GICD_TYPER_ESPIS(gic_data.rdists.gicd_typer)
> +
>  /*
>   * The behaviours of RPR and PMR registers differ depending on the value of
>   * SCR_EL3.FIQ, and the behaviour of non-secure priority registers of the
> @@ -100,6 +103,7 @@ static DEFINE_PER_CPU(bool, has_rss);
>  enum gic_intid_range {
>  	PPI_RANGE,
>  	SPI_RANGE,
> +	ESPI_RANGE,
>  	LPI_RANGE,
>  	__INVALID_RANGE__
>  };
> @@ -111,6 +115,8 @@ static enum gic_intid_range __get_intid_range(irq_hw_number_t hwirq)
>  		return PPI_RANGE;
>  	case 32 ... 1019:
>  		return SPI_RANGE;
> +	case ESPI_BASE_INTID ... 8191:

as per dt documentation, shouldn't the range be
	case ESPI_BASE_INTID ... 5119:

> +		return ESPI_RANGE;
>  	case 8192 ... GENMASK(23, 0):
>  		return LPI_RANGE;
>  	default:
> @@ -141,6 +147,7 @@ static inline void __iomem *gic_dist_base(struct irq_data *d)
>  		return gic_data_rdist_sgi_base();
>  
>  	case SPI_RANGE:
> +	case ESPI_RANGE:
>  		/* SPI -> dist_base */
>  		return gic_data.dist_base;
>  
> @@ -234,6 +241,31 @@ static u32 convert_offset_index(struct irq_data *d, u32 offset, u32 *index)
>  	case SPI_RANGE:
>  		*index = d->hwirq;
>  		return offset;
> +	case ESPI_RANGE:
> +		*index = d->hwirq - ESPI_BASE_INTID;
> +		switch (offset) {
> +		case GICD_ISENABLER:
> +			return GICD_ISENABLERnE;
> +		case GICD_ICENABLER:
> +			return GICD_ICENABLERnE;
> +		case GICD_ISPENDR:
> +			return GICD_ISPENDRnE;
> +		case GICD_ICPENDR:
> +			return GICD_ICPENDRnE;
> +		case GICD_ISACTIVER:
> +			return GICD_ISACTIVERnE;
> +		case GICD_ICACTIVER:
> +			return GICD_ICACTIVERnE;
> +		case GICD_IPRIORITYR:
> +			return GICD_IPRIORITYRnE;
> +		case GICD_ICFGR:
> +			return GICD_ICFGRnE;
> +		case GICD_IROUTER:
> +			return GICD_IROUTERnE;
> +		default:
> +			break;
> +		}
> +		break;
>  	default:
>  		break;
>  	}
> @@ -316,7 +348,7 @@ static int gic_irq_set_irqchip_state(struct irq_data *d,
>  {
>  	u32 reg;
>  
> -	if (d->hwirq >= gic_data.irq_nr) /* PPI/SPI only */
> +	if (d->hwirq >= 8192) /* PPI/SPI only */
>  		return -EINVAL;
>  
>  	switch (which) {
> @@ -343,7 +375,7 @@ static int gic_irq_set_irqchip_state(struct irq_data *d,
>  static int gic_irq_get_irqchip_state(struct irq_data *d,
>  				     enum irqchip_irq_state which, bool *val)
>  {
> -	if (d->hwirq >= gic_data.irq_nr) /* PPI/SPI only */
> +	if (d->hwirq >= 8192) /* PPI/SPI only */
>  		return -EINVAL;
>  
>  	switch (which) {
> @@ -567,7 +599,12 @@ static asmlinkage void __exception_irq_entry gic_handle_irq(struct pt_regs *regs
>  		gic_arch_enable_irqs();
>  	}
>  
> -	if (likely(irqnr > 15 && irqnr < 1020) || irqnr >= 8192) {
> +	/* Check for special IDs first */
> +	if ((irqnr >= 1020 && irqnr <= 1023))
> +		return;

May be I am missing something here, what is special about these 4 interrupts? or
you meant to check for reserved range here?

Thanks and regards,
Lokesh



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
