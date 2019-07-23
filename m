Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2B6718E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=czJJzrFt9wQKDwJuF0DeH9XaK3OLUOIIkoXXeVMTjPs=; b=mlrEAIXZ5GlBbB
	Kef79+mxOLhJC8O1zvXKI5v+iZCC5Bqj70n/vx1plQu0ca48JmWRnByHLjcyjB0W0qFv/uLTobUi1
	4XKlNGOchctEhwEIKQs+GvFI2GhSNA4JcBDpxAS331on1IqnxQuikRKDCUKcoNNwRuoHuLXBPpLDX
	QPN/b/de652xnoGS5v/axP8WT09RWnaT8+lYmmIMGFhfgQi50wZUgSUoLzWFP4+VH4PBv2EIy8YLg
	dwo9DGSJwI4P4244rqTNuT98rYmggGouloRNzkWo2DB8lTIVp2J+0Dnld/6+uZqTr/+ZHX8k7wfUa
	gQcsSZEq31zfzK+W3PEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuSr-0006Bp-CP; Tue, 23 Jul 2019 13:04:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuSf-0006BP-Op
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:04:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E14B5337;
 Tue, 23 Jul 2019 06:04:08 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D2D013F71F; Tue, 23 Jul 2019 06:04:07 -0700 (PDT)
Subject: Re: [PATCH 4/9] irqchip/gic-v3: Add ESPI range support
To: Lokesh Vutla <lokeshvutla@ti.com>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
References: <20190723104437.154403-1-maz@kernel.org>
 <20190723104437.154403-5-maz@kernel.org>
 <a54dfa07-2f3b-def7-fec4-b6dab2bcd84c@ti.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <de12cbf0-22ec-83d0-a034-9872f302101b@kernel.org>
Date: Tue, 23 Jul 2019 14:04:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <a54dfa07-2f3b-def7-fec4-b6dab2bcd84c@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_060409_898327_E67FF96F 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/07/2019 13:50, Lokesh Vutla wrote:
> 
> 
> On 23/07/19 4:14 PM, Marc Zyngier wrote:
>> Add the required support for the ESPI range, which behave exactly like
>> the SPIs of old, only with new funky INTIDs.
>>
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  drivers/irqchip/irq-gic-v3.c       | 85 ++++++++++++++++++++++++------
>>  include/linux/irqchip/arm-gic-v3.h | 17 +++++-
>>  2 files changed, 85 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
>> index 2371e0a70215..d328a8de533f 100644
>> --- a/drivers/irqchip/irq-gic-v3.c
>> +++ b/drivers/irqchip/irq-gic-v3.c
>> @@ -51,13 +51,16 @@ struct gic_chip_data {
>>  	u32			nr_redist_regions;
>>  	u64			flags;
>>  	bool			has_rss;
>> -	unsigned int		irq_nr;
>>  	struct partition_desc	*ppi_descs[16];
>>  };
>>  
>>  static struct gic_chip_data gic_data __read_mostly;
>>  static DEFINE_STATIC_KEY_TRUE(supports_deactivate_key);
>>  
>> +#define GIC_ID_NR	(1U << GICD_TYPER_ID_BITS(gic_data.rdists.gicd_typer))
>> +#define GIC_LINE_NR	GICD_TYPER_SPIS(gic_data.rdists.gicd_typer)
>> +#define GIC_ESPI_NR	GICD_TYPER_ESPIS(gic_data.rdists.gicd_typer)
>> +
>>  /*
>>   * The behaviours of RPR and PMR registers differ depending on the value of
>>   * SCR_EL3.FIQ, and the behaviour of non-secure priority registers of the
>> @@ -100,6 +103,7 @@ static DEFINE_PER_CPU(bool, has_rss);
>>  enum gic_intid_range {
>>  	PPI_RANGE,
>>  	SPI_RANGE,
>> +	ESPI_RANGE,
>>  	LPI_RANGE,
>>  	__INVALID_RANGE__
>>  };
>> @@ -111,6 +115,8 @@ static enum gic_intid_range __get_intid_range(irq_hw_number_t hwirq)
>>  		return PPI_RANGE;
>>  	case 32 ... 1019:
>>  		return SPI_RANGE;
>> +	case ESPI_BASE_INTID ... 8191:
> 
> as per dt documentation, shouldn't the range be
> 	case ESPI_BASE_INTID ... 5119:

Yes, you're right. Although I strongly suspect that someone will bump
this limit up again at some point (there is enough space in the new
register space for 4k interrupts -- madness).

> 
>> +		return ESPI_RANGE;
>>  	case 8192 ... GENMASK(23, 0):
>>  		return LPI_RANGE;
>>  	default:
>> @@ -141,6 +147,7 @@ static inline void __iomem *gic_dist_base(struct irq_data *d)
>>  		return gic_data_rdist_sgi_base();
>>  
>>  	case SPI_RANGE:
>> +	case ESPI_RANGE:
>>  		/* SPI -> dist_base */
>>  		return gic_data.dist_base;
>>  
>> @@ -234,6 +241,31 @@ static u32 convert_offset_index(struct irq_data *d, u32 offset, u32 *index)
>>  	case SPI_RANGE:
>>  		*index = d->hwirq;
>>  		return offset;
>> +	case ESPI_RANGE:
>> +		*index = d->hwirq - ESPI_BASE_INTID;
>> +		switch (offset) {
>> +		case GICD_ISENABLER:
>> +			return GICD_ISENABLERnE;
>> +		case GICD_ICENABLER:
>> +			return GICD_ICENABLERnE;
>> +		case GICD_ISPENDR:
>> +			return GICD_ISPENDRnE;
>> +		case GICD_ICPENDR:
>> +			return GICD_ICPENDRnE;
>> +		case GICD_ISACTIVER:
>> +			return GICD_ISACTIVERnE;
>> +		case GICD_ICACTIVER:
>> +			return GICD_ICACTIVERnE;
>> +		case GICD_IPRIORITYR:
>> +			return GICD_IPRIORITYRnE;
>> +		case GICD_ICFGR:
>> +			return GICD_ICFGRnE;
>> +		case GICD_IROUTER:
>> +			return GICD_IROUTERnE;
>> +		default:
>> +			break;
>> +		}
>> +		break;
>>  	default:
>>  		break;
>>  	}
>> @@ -316,7 +348,7 @@ static int gic_irq_set_irqchip_state(struct irq_data *d,
>>  {
>>  	u32 reg;
>>  
>> -	if (d->hwirq >= gic_data.irq_nr) /* PPI/SPI only */
>> +	if (d->hwirq >= 8192) /* PPI/SPI only */
>>  		return -EINVAL;
>>  
>>  	switch (which) {
>> @@ -343,7 +375,7 @@ static int gic_irq_set_irqchip_state(struct irq_data *d,
>>  static int gic_irq_get_irqchip_state(struct irq_data *d,
>>  				     enum irqchip_irq_state which, bool *val)
>>  {
>> -	if (d->hwirq >= gic_data.irq_nr) /* PPI/SPI only */
>> +	if (d->hwirq >= 8192) /* PPI/SPI only */
>>  		return -EINVAL;
>>  
>>  	switch (which) {
>> @@ -567,7 +599,12 @@ static asmlinkage void __exception_irq_entry gic_handle_irq(struct pt_regs *regs
>>  		gic_arch_enable_irqs();
>>  	}
>>  
>> -	if (likely(irqnr > 15 && irqnr < 1020) || irqnr >= 8192) {
>> +	/* Check for special IDs first */
>> +	if ((irqnr >= 1020 && irqnr <= 1023))
>> +		return;
> 
> May be I am missing something here, what is special about these 4 interrupts? or
> you meant to check for reserved range here?

What's so special about the special INTID range is that these are not
interrupts at all. That's how the GIC signals that *something else* is
happening (see 2.2.1 "Special INTIDs" in the architecture spec). In
practice, and as long as you run Linux in non-secure mode, only 1023 can
happen.

Thanks,

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
