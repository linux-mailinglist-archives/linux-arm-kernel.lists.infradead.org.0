Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3878CB4BA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 12:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXZ4/QUpyjxfad+CpVaiZk8klo3yhDQX7xO9AaW0BQM=; b=Hl46NrlEEIaR+6
	RKoVcSLNFzRk15+TMxZonofDJfOrSh9eClTiGynOAKugvkE9TReVqnHD51KFFzCGThpd9IerE0c6S
	ThF7ufL0U7Q5a3YnPBrrE0GL+AIRV3LeccpGsZrYE14+3QvwUxZP3Eg01pLPqvslvf5Vfk9YtBBqA
	tgJ01fq2HlxeAu8T9qi6oHC6M4bbAY1RXXI6IIgqHVqtx+xT8nFYMKeSF0w34pwDCvxnVJwOYycqL
	Mu0FkiG19gu3viYnT7XQFGbBKKwpCbqy/DT6yuCAkaHFjjGJRkQ1YBoe9l3Ryq9+hk69AoefWDpIQ
	SfGEorKufY8+X6Cm+q8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAATS-0004Em-1e; Tue, 17 Sep 2019 10:12:42 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAATC-0004E3-3E
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 10:12:28 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4281380F730F3DD69CC1;
 Tue, 17 Sep 2019 18:12:18 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Tue, 17 Sep 2019
 18:12:14 +0800
Date: Tue, 17 Sep 2019 11:11:59 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] iio: adc: stm32-adc: fix a race when using several adcs
 with dma and irq
Message-ID: <20190917111159.00001e9f@huawei.com>
In-Reply-To: <6c330b1f-ef95-d9bd-3c8b-ccda03148561@st.com>
References: <1568380890-313-1-git-send-email-fabrice.gasnier@st.com>
 <20190915110524.2ec1b41d@archlinux>
 <6c330b1f-ef95-d9bd-3c8b-ccda03148561@st.com>
Organization: Huawei
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_031226_511019_757EB951 
X-CRM114-Status: GOOD (  32.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: mcoquelin.stm32@gmail.com, lars@metafoo.de, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 linux-stm32@st-md-mailman.stormreply.com, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Sep 2019 13:47:34 +0200
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> On 9/15/19 12:05 PM, Jonathan Cameron wrote:
> > On Fri, 13 Sep 2019 15:21:30 +0200
> > Fabrice Gasnier <fabrice.gasnier@st.com> wrote:
> >   
> >> End of conversion may be handled by using IRQ or DMA. There may be a
> >> race when two conversions complete at the same time on several ADCs.
> >> EOC can be read as 'set' for several ADCs, with:
> >> - an ADC configured to use IRQs. EOCIE bit is set. The handler is normally
> >>   called in this case.
> >> - an ADC configured to use DMA. EOCIE bit isn't set. EOC triggers the DMA
> >>   request instead. It's then automatically cleared by DMA read. But the
> >>   handler gets called due to status bit is temporarily set (IRQ triggered
> >>   by the other ADC).
> >> So both EOC status bit in CSR and EOCIE control bit must be checked
> >> before invoking the interrupt handler (e.g. call ISR only for
> >> IRQ-enabled ADCs).
> >>
> >> Fixes: 2763ea0585c9 ("iio: adc: stm32: add optional dma support")
> >>
> >> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>  
> > Fix looks fine to me, but I'm not keen on splitting out individual bits from
> > register defines.  That's a long term readability nightmare.
> > 
> > See below,
> > 
> > Jonathan
> >   
> >> ---
> >>  drivers/iio/adc/stm32-adc-core.c | 43 +++++++++++++++++++++++++++++++++++++---
> >>  drivers/iio/adc/stm32-adc-core.h | 13 ++++++++++++
> >>  drivers/iio/adc/stm32-adc.c      |  6 ------
> >>  3 files changed, 53 insertions(+), 9 deletions(-)
> >>
> >> diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
> >> index 9b85fef..7297396 100644
> >> --- a/drivers/iio/adc/stm32-adc-core.c
> >> +++ b/drivers/iio/adc/stm32-adc-core.c
> >> @@ -71,6 +71,8 @@
> >>   * @eoc1:	adc1 end of conversion flag in @csr
> >>   * @eoc2:	adc2 end of conversion flag in @csr
> >>   * @eoc3:	adc3 end of conversion flag in @csr
> >> + * @ier:	interrupt enable register offset for each adc
> >> + * @eocie_msk:	end of conversion interrupt enable mask in @ier
> >>   */
> >>  struct stm32_adc_common_regs {
> >>  	u32 csr;
> >> @@ -78,6 +80,8 @@ struct stm32_adc_common_regs {
> >>  	u32 eoc1_msk;
> >>  	u32 eoc2_msk;
> >>  	u32 eoc3_msk;
> >> +	u32 ier;
> >> +	u32 eocie_msk;
> >>  };
> >>  
> >>  struct stm32_adc_priv;
> >> @@ -303,6 +307,8 @@ static const struct stm32_adc_common_regs stm32f4_adc_common_regs = {
> >>  	.eoc1_msk = STM32F4_EOC1,
> >>  	.eoc2_msk = STM32F4_EOC2,
> >>  	.eoc3_msk = STM32F4_EOC3,
> >> +	.ier = STM32F4_ADC_CR1,
> >> +	.eocie_msk = STM32F4_EOCIE,
> >>  };
> >>  
> >>  /* STM32H7 common registers definitions */
> >> @@ -311,8 +317,24 @@ static const struct stm32_adc_common_regs stm32h7_adc_common_regs = {
> >>  	.ccr = STM32H7_ADC_CCR,
> >>  	.eoc1_msk = STM32H7_EOC_MST,
> >>  	.eoc2_msk = STM32H7_EOC_SLV,
> >> +	.ier = STM32H7_ADC_IER,
> >> +	.eocie_msk = STM32H7_EOCIE,
> >>  };
> >>  
> >> +static const unsigned int stm32_adc_offset[STM32_ADC_MAX_ADCS] = {
> >> +	0, STM32_ADC_OFFSET, STM32_ADC_OFFSET * 2,
> >> +};
> >> +
> >> +static unsigned int stm32_adc_eoc_enabled(struct stm32_adc_priv *priv,
> >> +					  unsigned int adc)
> >> +{
> >> +	u32 ier, offset = stm32_adc_offset[adc];
> >> +
> >> +	ier = readl_relaxed(priv->common.base + offset + priv->cfg->regs->ier);
> >> +
> >> +	return ier & priv->cfg->regs->eocie_msk;
> >> +}
> >> +
> >>  /* ADC common interrupt for all instances */
> >>  static void stm32_adc_irq_handler(struct irq_desc *desc)
> >>  {
> >> @@ -323,13 +345,28 @@ static void stm32_adc_irq_handler(struct irq_desc *desc)
> >>  	chained_irq_enter(chip, desc);
> >>  	status = readl_relaxed(priv->common.base + priv->cfg->regs->csr);
> >>  
> >> -	if (status & priv->cfg->regs->eoc1_msk)
> >> +	/*
> >> +	 * End of conversion may be handled by using IRQ or DMA. There may be a
> >> +	 * race here when two conversions complete at the same time on several
> >> +	 * ADCs. EOC may be read 'set' for several ADCs, with:
> >> +	 * - an ADC configured to use DMA (EOC triggers the DMA request, and
> >> +	 *   is then automatically cleared by DR read in hardware)
> >> +	 * - an ADC configured to use IRQs (EOCIE bit is set. The handler must
> >> +	 *   be called in this case)
> >> +	 * So both EOC status bit in CSR and EOCIE control bit must be checked
> >> +	 * before invoking the interrupt handler (e.g. call ISR only for
> >> +	 * IRQ-enabled ADCs).
> >> +	 */
> >> +	if (status & priv->cfg->regs->eoc1_msk &&
> >> +	    stm32_adc_eoc_enabled(priv, 0))
> >>  		generic_handle_irq(irq_find_mapping(priv->domain, 0));
> >>  
> >> -	if (status & priv->cfg->regs->eoc2_msk)
> >> +	if (status & priv->cfg->regs->eoc2_msk &&
> >> +	    stm32_adc_eoc_enabled(priv, 1))
> >>  		generic_handle_irq(irq_find_mapping(priv->domain, 1));
> >>  
> >> -	if (status & priv->cfg->regs->eoc3_msk)
> >> +	if (status & priv->cfg->regs->eoc3_msk &&
> >> +	    stm32_adc_eoc_enabled(priv, 2))
> >>  		generic_handle_irq(irq_find_mapping(priv->domain, 2));
> >>  
> >>  	chained_irq_exit(chip, desc);
> >> diff --git a/drivers/iio/adc/stm32-adc-core.h b/drivers/iio/adc/stm32-adc-core.h
> >> index 8af507b..8dc936b 100644
> >> --- a/drivers/iio/adc/stm32-adc-core.h
> >> +++ b/drivers/iio/adc/stm32-adc-core.h
> >> @@ -25,8 +25,21 @@
> >>   * --------------------------------------------------------
> >>   */
> >>  #define STM32_ADC_MAX_ADCS		3
> >> +#define STM32_ADC_OFFSET		0x100
> >>  #define STM32_ADCX_COMN_OFFSET		0x300
> >>  
> >> +/* STM32F4 - registers for each ADC instance */
> >> +#define STM32F4_ADC_CR1			0x04
> >> +
> >> +/* STM32F4_ADC_CR1 - bit fields */
> >> +#define STM32F4_EOCIE			BIT(5)
> >> +
> >> +/* STM32H7 - registers for each instance */
> >> +#define STM32H7_ADC_IER			0x04
> >> +
> >> +/* STM32H7_ADC_IER - bit fields */
> >> +#define STM32H7_EOCIE			BIT(2)
> >> +
> >>  /**
> >>   * struct stm32_adc_common - stm32 ADC driver common data (for all instances)
> >>   * @base:		control registers base cpu addr
> >> diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
> >> index 6a7dd08..3c9f456 100644
> >> --- a/drivers/iio/adc/stm32-adc.c
> >> +++ b/drivers/iio/adc/stm32-adc.c
> >> @@ -30,7 +30,6 @@
> >>  
> >>  /* STM32F4 - Registers for each ADC instance */
> >>  #define STM32F4_ADC_SR			0x00
> >> -#define STM32F4_ADC_CR1			0x04
> >>  #define STM32F4_ADC_CR2			0x08
> >>  #define STM32F4_ADC_SMPR1		0x0C
> >>  #define STM32F4_ADC_SMPR2		0x10
> >> @@ -54,7 +53,6 @@
> >>  #define STM32F4_RES_SHIFT		24
> >>  #define STM32F4_RES_MASK		GENMASK(25, 24)
> >>  #define STM32F4_SCAN			BIT(8)
> >> -#define STM32F4_EOCIE			BIT(5)  
> > Hmm. This is breaking up the definitions of bits in a single register.
> > That is rather nasty from a code readability point of view.  
> > 
> > I am as keen as the next person on only exposing definitions where
> > we need to, but in this case we either need to provide an access path
> > to it here, or we need to move the whole block to the header.  
> 
> Hi Jonathan,
> 
> I think I'll add a precursor patch in v2 to move the whole block to the
> header file. This way, the access path is easy (e.g. readl).
> I'm only wondering about the Fixes tag... this will probably not be
> straight forward to apply the fix on the maintenance releases ?
> Or do I need to add it to the precursor patch as well ?
The precursor is a simple move of definitions. Even if it's large, I don't
think it will be a problem applying it to stable.
Just make it clear in the patch description why it is needed for the fix.

Thanks,

Jonathan

> 
> Thanks for reviewing,
> Best regards,
> Fabrice
> 
> >   
> >>  
> >>  /* STM32F4_ADC_CR2 - bit fields */
> >>  #define STM32F4_SWSTART			BIT(30)
> >> @@ -69,7 +67,6 @@
> >>  
> >>  /* STM32H7 - Registers for each ADC instance */
> >>  #define STM32H7_ADC_ISR			0x00
> >> -#define STM32H7_ADC_IER			0x04
> >>  #define STM32H7_ADC_CR			0x08
> >>  #define STM32H7_ADC_CFGR		0x0C
> >>  #define STM32H7_ADC_SMPR1		0x14
> >> @@ -89,9 +86,6 @@
> >>  #define STM32H7_EOC			BIT(2)
> >>  #define STM32H7_ADRDY			BIT(0)
> >>  
> >> -/* STM32H7_ADC_IER - bit fields */
> >> -#define STM32H7_EOCIE			STM32H7_EOC
> >> -
> >>  /* STM32H7_ADC_CR - bit fields */
> >>  #define STM32H7_ADCAL			BIT(31)
> >>  #define STM32H7_ADCALDIF		BIT(30)  
> >   
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
