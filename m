Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F36B2F7F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 12:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rcWJlnygEtbZga6+jeeZfpFfRPt9zWnU7+rIOqS/7u0=; b=Ys8iKojWDZyurE
	8lZbgmoJF73eEiK2ZTV3Xq7s4drWDUQxSlz6qfudWf88QDCUmvvVWULyF9GRIXwLUhYAxuBctjCbR
	7iTwB9ztvkp8m7RMlPAuxP7L0qfS2Wr1zE+h7R0lKHYKzNvM5o6jHVjKmw0PdYmUvgR6FdW2XdwTW
	3ygLZjVNEEXiWPAUlpyaOm99nlG4zDy4WKgMJfjLt1CxJGR9P0LzWe4RoVfKHpBw6nD4CXmBt4SWk
	p7Pyq8Dtczs/7+9whkCt27MiDTaMieHaS3fcqu+uU0LEfoLGefS2HnGKMHcmidfPqMETXHxRVu87/
	EWfONABZX1Qu1EqshjOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9RPt-0001Fk-JP; Sun, 15 Sep 2019 10:06:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9RPT-0001F3-BA
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 10:05:37 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2BEF52067D;
 Sun, 15 Sep 2019 10:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568541930;
 bh=tcQS+DJt43YanJ9IL8V61k/DXfH3Hbn4V1+MXKVko28=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qDIrsBprErMaqBKrEaOdS18lynoo/a3OUwgEWWwP5xSMfCv65+o0sTiaid2k4JNbL
 zueXKPjtu1Cqsp9eJTSObkQDrfC3tENbJOIykPKP1SIkSTJfkLB5YsUoZQDODjfVjA
 0dMqsAuC9xUbnLyvDg1kg3/E7Nzg7J8RIqzweodE=
Date: Sun, 15 Sep 2019 11:05:24 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] iio: adc: stm32-adc: fix a race when using several adcs
 with dma and irq
Message-ID: <20190915110524.2ec1b41d@archlinux>
In-Reply-To: <1568380890-313-1-git-send-email-fabrice.gasnier@st.com>
References: <1568380890-313-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_030535_426970_DD51FCC7 
X-CRM114-Status: GOOD (  24.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Sep 2019 15:21:30 +0200
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> End of conversion may be handled by using IRQ or DMA. There may be a
> race when two conversions complete at the same time on several ADCs.
> EOC can be read as 'set' for several ADCs, with:
> - an ADC configured to use IRQs. EOCIE bit is set. The handler is normally
>   called in this case.
> - an ADC configured to use DMA. EOCIE bit isn't set. EOC triggers the DMA
>   request instead. It's then automatically cleared by DMA read. But the
>   handler gets called due to status bit is temporarily set (IRQ triggered
>   by the other ADC).
> So both EOC status bit in CSR and EOCIE control bit must be checked
> before invoking the interrupt handler (e.g. call ISR only for
> IRQ-enabled ADCs).
> 
> Fixes: 2763ea0585c9 ("iio: adc: stm32: add optional dma support")
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Fix looks fine to me, but I'm not keen on splitting out individual bits from
register defines.  That's a long term readability nightmare.

See below,

Jonathan

> ---
>  drivers/iio/adc/stm32-adc-core.c | 43 +++++++++++++++++++++++++++++++++++++---
>  drivers/iio/adc/stm32-adc-core.h | 13 ++++++++++++
>  drivers/iio/adc/stm32-adc.c      |  6 ------
>  3 files changed, 53 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
> index 9b85fef..7297396 100644
> --- a/drivers/iio/adc/stm32-adc-core.c
> +++ b/drivers/iio/adc/stm32-adc-core.c
> @@ -71,6 +71,8 @@
>   * @eoc1:	adc1 end of conversion flag in @csr
>   * @eoc2:	adc2 end of conversion flag in @csr
>   * @eoc3:	adc3 end of conversion flag in @csr
> + * @ier:	interrupt enable register offset for each adc
> + * @eocie_msk:	end of conversion interrupt enable mask in @ier
>   */
>  struct stm32_adc_common_regs {
>  	u32 csr;
> @@ -78,6 +80,8 @@ struct stm32_adc_common_regs {
>  	u32 eoc1_msk;
>  	u32 eoc2_msk;
>  	u32 eoc3_msk;
> +	u32 ier;
> +	u32 eocie_msk;
>  };
>  
>  struct stm32_adc_priv;
> @@ -303,6 +307,8 @@ static const struct stm32_adc_common_regs stm32f4_adc_common_regs = {
>  	.eoc1_msk = STM32F4_EOC1,
>  	.eoc2_msk = STM32F4_EOC2,
>  	.eoc3_msk = STM32F4_EOC3,
> +	.ier = STM32F4_ADC_CR1,
> +	.eocie_msk = STM32F4_EOCIE,
>  };
>  
>  /* STM32H7 common registers definitions */
> @@ -311,8 +317,24 @@ static const struct stm32_adc_common_regs stm32h7_adc_common_regs = {
>  	.ccr = STM32H7_ADC_CCR,
>  	.eoc1_msk = STM32H7_EOC_MST,
>  	.eoc2_msk = STM32H7_EOC_SLV,
> +	.ier = STM32H7_ADC_IER,
> +	.eocie_msk = STM32H7_EOCIE,
>  };
>  
> +static const unsigned int stm32_adc_offset[STM32_ADC_MAX_ADCS] = {
> +	0, STM32_ADC_OFFSET, STM32_ADC_OFFSET * 2,
> +};
> +
> +static unsigned int stm32_adc_eoc_enabled(struct stm32_adc_priv *priv,
> +					  unsigned int adc)
> +{
> +	u32 ier, offset = stm32_adc_offset[adc];
> +
> +	ier = readl_relaxed(priv->common.base + offset + priv->cfg->regs->ier);
> +
> +	return ier & priv->cfg->regs->eocie_msk;
> +}
> +
>  /* ADC common interrupt for all instances */
>  static void stm32_adc_irq_handler(struct irq_desc *desc)
>  {
> @@ -323,13 +345,28 @@ static void stm32_adc_irq_handler(struct irq_desc *desc)
>  	chained_irq_enter(chip, desc);
>  	status = readl_relaxed(priv->common.base + priv->cfg->regs->csr);
>  
> -	if (status & priv->cfg->regs->eoc1_msk)
> +	/*
> +	 * End of conversion may be handled by using IRQ or DMA. There may be a
> +	 * race here when two conversions complete at the same time on several
> +	 * ADCs. EOC may be read 'set' for several ADCs, with:
> +	 * - an ADC configured to use DMA (EOC triggers the DMA request, and
> +	 *   is then automatically cleared by DR read in hardware)
> +	 * - an ADC configured to use IRQs (EOCIE bit is set. The handler must
> +	 *   be called in this case)
> +	 * So both EOC status bit in CSR and EOCIE control bit must be checked
> +	 * before invoking the interrupt handler (e.g. call ISR only for
> +	 * IRQ-enabled ADCs).
> +	 */
> +	if (status & priv->cfg->regs->eoc1_msk &&
> +	    stm32_adc_eoc_enabled(priv, 0))
>  		generic_handle_irq(irq_find_mapping(priv->domain, 0));
>  
> -	if (status & priv->cfg->regs->eoc2_msk)
> +	if (status & priv->cfg->regs->eoc2_msk &&
> +	    stm32_adc_eoc_enabled(priv, 1))
>  		generic_handle_irq(irq_find_mapping(priv->domain, 1));
>  
> -	if (status & priv->cfg->regs->eoc3_msk)
> +	if (status & priv->cfg->regs->eoc3_msk &&
> +	    stm32_adc_eoc_enabled(priv, 2))
>  		generic_handle_irq(irq_find_mapping(priv->domain, 2));
>  
>  	chained_irq_exit(chip, desc);
> diff --git a/drivers/iio/adc/stm32-adc-core.h b/drivers/iio/adc/stm32-adc-core.h
> index 8af507b..8dc936b 100644
> --- a/drivers/iio/adc/stm32-adc-core.h
> +++ b/drivers/iio/adc/stm32-adc-core.h
> @@ -25,8 +25,21 @@
>   * --------------------------------------------------------
>   */
>  #define STM32_ADC_MAX_ADCS		3
> +#define STM32_ADC_OFFSET		0x100
>  #define STM32_ADCX_COMN_OFFSET		0x300
>  
> +/* STM32F4 - registers for each ADC instance */
> +#define STM32F4_ADC_CR1			0x04
> +
> +/* STM32F4_ADC_CR1 - bit fields */
> +#define STM32F4_EOCIE			BIT(5)
> +
> +/* STM32H7 - registers for each instance */
> +#define STM32H7_ADC_IER			0x04
> +
> +/* STM32H7_ADC_IER - bit fields */
> +#define STM32H7_EOCIE			BIT(2)
> +
>  /**
>   * struct stm32_adc_common - stm32 ADC driver common data (for all instances)
>   * @base:		control registers base cpu addr
> diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
> index 6a7dd08..3c9f456 100644
> --- a/drivers/iio/adc/stm32-adc.c
> +++ b/drivers/iio/adc/stm32-adc.c
> @@ -30,7 +30,6 @@
>  
>  /* STM32F4 - Registers for each ADC instance */
>  #define STM32F4_ADC_SR			0x00
> -#define STM32F4_ADC_CR1			0x04
>  #define STM32F4_ADC_CR2			0x08
>  #define STM32F4_ADC_SMPR1		0x0C
>  #define STM32F4_ADC_SMPR2		0x10
> @@ -54,7 +53,6 @@
>  #define STM32F4_RES_SHIFT		24
>  #define STM32F4_RES_MASK		GENMASK(25, 24)
>  #define STM32F4_SCAN			BIT(8)
> -#define STM32F4_EOCIE			BIT(5)
Hmm. This is breaking up the definitions of bits in a single register.
That is rather nasty from a code readability point of view.  

I am as keen as the next person on only exposing definitions where
we need to, but in this case we either need to provide an access path
to it here, or we need to move the whole block to the header.

>  
>  /* STM32F4_ADC_CR2 - bit fields */
>  #define STM32F4_SWSTART			BIT(30)
> @@ -69,7 +67,6 @@
>  
>  /* STM32H7 - Registers for each ADC instance */
>  #define STM32H7_ADC_ISR			0x00
> -#define STM32H7_ADC_IER			0x04
>  #define STM32H7_ADC_CR			0x08
>  #define STM32H7_ADC_CFGR		0x0C
>  #define STM32H7_ADC_SMPR1		0x14
> @@ -89,9 +86,6 @@
>  #define STM32H7_EOC			BIT(2)
>  #define STM32H7_ADRDY			BIT(0)
>  
> -/* STM32H7_ADC_IER - bit fields */
> -#define STM32H7_EOCIE			STM32H7_EOC
> -
>  /* STM32H7_ADC_CR - bit fields */
>  #define STM32H7_ADCAL			BIT(31)
>  #define STM32H7_ADCALDIF		BIT(30)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
