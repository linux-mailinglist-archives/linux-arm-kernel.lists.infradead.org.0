Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD84F107E37
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 12:36:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3e3gANvJD8AfhEYNFXawo7vmTPI9kaHiTHZ3lQNLmQ=; b=o2DoT3PU6QDs+S
	vKkBMY99uuScEuMgMGggXC+Y22IPsTFOqUL+SQdZF3e/N2fwkEPuVRhLCYrRzx0x3+j0DdsO9vWMX
	Etvbn+d3qMQVXEI9r3UIuU8sXnBDuydp3V7Ek+At/lJRlrwrkM4prKXYhSiFQTzSw67xuzfwwwGFF
	XhKmD4gTa+RJNwQfkv+HVLaJMlzoTwOwRaUUxRLgYO2csTq2Ixa4ggEO9E4ytVKA3jEvge8bSpJ3R
	Wsd6MxAZd+4rvi0i3xi6TdrMN+t3ygtn8h2ykn3mo0a8yJyf/9xLSQjDTOZ00WvItQ94ovQRcHyTP
	jPuHcwjI3R2nxIMomNSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYTiV-0004k7-07; Sat, 23 Nov 2019 11:36:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYTiL-0004jf-3x
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 11:36:35 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E4D020714;
 Sat, 23 Nov 2019 11:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574508989;
 bh=w5hRKl3lev3WlHSYRkRgSl5GJDTQTvjT7oNTHcFl+FQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LMCVXVRpBEuJD3ikBz8XGPjj8jKvAWeTK1IIrKUkNJo4kM0L8XFLa3mLVw2hc0r5/
 tJPeDJLPtFEK7TUjPkY9toET/kbFMPXpypqnUEJfmElzbYBH26d4bPW163phpDtu7n
 wmqmqbmZUP1WALPFpAj8Bmmu9QoIvSy/9d8uSmsM=
Date: Sat, 23 Nov 2019 11:36:23 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] iio: adc: stm32-adc: Add check on overrun interrupt
Message-ID: <20191123113623.3e58b2d1@archlinux>
In-Reply-To: <1574435294-19510-1-git-send-email-fabrice.gasnier@st.com>
References: <1574435294-19510-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_033633_206599_77E00407 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, 22 Nov 2019 16:08:14 +0100
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> Enable overrun interrupt on STM32 ADC. In case data register hasn't been
> read (by CPU or DMA), overrun condition is detected when there's new
> conversion data available. Stop grabbing data and log an error message.
> Use a threaded irq to avoid printing the error message from hard irq
> context.
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Absolutely makes sense to notify the user this occurred and to stop
the current process.  It may be useful to give a hint on how
to restart capture?

Is this a condition that can occur under 'normal conditions' such
as something else grabbing the CPU for too long?

I'd just like to understand if we are dealing with a 'fault'
case of just one where things go wrong under weird conditions.

Patch itself looks fine.

Thanks,

Jonathan


> ---
>  drivers/iio/adc/stm32-adc-core.c | 14 +++++------
>  drivers/iio/adc/stm32-adc-core.h |  9 +++++++
>  drivers/iio/adc/stm32-adc.c      | 53 ++++++++++++++++++++++++++++++++++++++--
>  3 files changed, 67 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
> index 6537f4f..97655d7 100644
> --- a/drivers/iio/adc/stm32-adc-core.c
> +++ b/drivers/iio/adc/stm32-adc-core.c
> @@ -280,21 +280,21 @@ static int stm32h7_adc_clk_sel(struct platform_device *pdev,
>  static const struct stm32_adc_common_regs stm32f4_adc_common_regs = {
>  	.csr = STM32F4_ADC_CSR,
>  	.ccr = STM32F4_ADC_CCR,
> -	.eoc1_msk = STM32F4_EOC1,
> -	.eoc2_msk = STM32F4_EOC2,
> -	.eoc3_msk = STM32F4_EOC3,
> +	.eoc1_msk = STM32F4_EOC1 | STM32F4_OVR1,
> +	.eoc2_msk = STM32F4_EOC2 | STM32F4_OVR2,
> +	.eoc3_msk = STM32F4_EOC3 | STM32F4_OVR3,
>  	.ier = STM32F4_ADC_CR1,
> -	.eocie_msk = STM32F4_EOCIE,
> +	.eocie_msk = STM32F4_EOCIE | STM32F4_OVRIE,
>  };
>  
>  /* STM32H7 common registers definitions */
>  static const struct stm32_adc_common_regs stm32h7_adc_common_regs = {
>  	.csr = STM32H7_ADC_CSR,
>  	.ccr = STM32H7_ADC_CCR,
> -	.eoc1_msk = STM32H7_EOC_MST,
> -	.eoc2_msk = STM32H7_EOC_SLV,
> +	.eoc1_msk = STM32H7_EOC_MST | STM32H7_OVR_MST,
> +	.eoc2_msk = STM32H7_EOC_SLV | STM32H7_OVR_SLV,
>  	.ier = STM32H7_ADC_IER,
> -	.eocie_msk = STM32H7_EOCIE,
> +	.eocie_msk = STM32H7_EOCIE | STM32H7_OVRIE,
>  };
>  
>  static const unsigned int stm32_adc_offset[STM32_ADC_MAX_ADCS] = {
> diff --git a/drivers/iio/adc/stm32-adc-core.h b/drivers/iio/adc/stm32-adc-core.h
> index 2579d51..2322809 100644
> --- a/drivers/iio/adc/stm32-adc-core.h
> +++ b/drivers/iio/adc/stm32-adc-core.h
> @@ -51,10 +51,12 @@
>  #define STM32F4_ADC_CCR			(STM32_ADCX_COMN_OFFSET + 0x04)
>  
>  /* STM32F4_ADC_SR - bit fields */
> +#define STM32F4_OVR			BIT(5)
>  #define STM32F4_STRT			BIT(4)
>  #define STM32F4_EOC			BIT(1)
>  
>  /* STM32F4_ADC_CR1 - bit fields */
> +#define STM32F4_OVRIE			BIT(26)
>  #define STM32F4_RES_SHIFT		24
>  #define STM32F4_RES_MASK		GENMASK(25, 24)
>  #define STM32F4_SCAN			BIT(8)
> @@ -72,8 +74,11 @@
>  #define STM32F4_ADON			BIT(0)
>  
>  /* STM32F4_ADC_CSR - bit fields */
> +#define STM32F4_OVR3			BIT(21)
>  #define STM32F4_EOC3			BIT(17)
> +#define STM32F4_OVR2			BIT(13)
>  #define STM32F4_EOC2			BIT(9)
> +#define STM32F4_OVR1			BIT(5)
>  #define STM32F4_EOC1			BIT(1)
>  
>  /* STM32F4_ADC_CCR - bit fields */
> @@ -103,10 +108,12 @@
>  
>  /* STM32H7_ADC_ISR - bit fields */
>  #define STM32MP1_VREGREADY		BIT(12)
> +#define STM32H7_OVR			BIT(4)
>  #define STM32H7_EOC			BIT(2)
>  #define STM32H7_ADRDY			BIT(0)
>  
>  /* STM32H7_ADC_IER - bit fields */
> +#define STM32H7_OVRIE			STM32H7_OVR
>  #define STM32H7_EOCIE			STM32H7_EOC
>  
>  /* STM32H7_ADC_CR - bit fields */
> @@ -155,7 +162,9 @@ enum stm32h7_adc_dmngt {
>  #define STM32H7_LINCALFACT_MASK		GENMASK(29, 0)
>  
>  /* STM32H7_ADC_CSR - bit fields */
> +#define STM32H7_OVR_SLV			BIT(20)
>  #define STM32H7_EOC_SLV			BIT(18)
> +#define STM32H7_OVR_MST			BIT(4)
>  #define STM32H7_EOC_MST			BIT(2)
>  
>  /* STM32H7_ADC_CCR - bit fields */
> diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
> index 3b291d7..9361f92 100644
> --- a/drivers/iio/adc/stm32-adc.c
> +++ b/drivers/iio/adc/stm32-adc.c
> @@ -117,7 +117,9 @@ struct stm32_adc_regs {
>   * struct stm32_adc_regspec - stm32 registers definition
>   * @dr:			data register offset
>   * @ier_eoc:		interrupt enable register & eocie bitfield
> + * @ier_ovr:		interrupt enable register & overrun bitfield
>   * @isr_eoc:		interrupt status register & eoc bitfield
> + * @isr_ovr:		interrupt status register & overrun bitfield
>   * @sqr:		reference to sequence registers array
>   * @exten:		trigger control register & bitfield
>   * @extsel:		trigger selection register & bitfield
> @@ -128,7 +130,9 @@ struct stm32_adc_regs {
>  struct stm32_adc_regspec {
>  	const u32 dr;
>  	const struct stm32_adc_regs ier_eoc;
> +	const struct stm32_adc_regs ier_ovr;
>  	const struct stm32_adc_regs isr_eoc;
> +	const struct stm32_adc_regs isr_ovr;
>  	const struct stm32_adc_regs *sqr;
>  	const struct stm32_adc_regs exten;
>  	const struct stm32_adc_regs extsel;
> @@ -337,7 +341,9 @@ static const unsigned int stm32f4_adc_smp_cycles[STM32_ADC_MAX_SMP + 1] = {
>  static const struct stm32_adc_regspec stm32f4_adc_regspec = {
>  	.dr = STM32F4_ADC_DR,
>  	.ier_eoc = { STM32F4_ADC_CR1, STM32F4_EOCIE },
> +	.ier_ovr = { STM32F4_ADC_CR1, STM32F4_OVRIE },
>  	.isr_eoc = { STM32F4_ADC_SR, STM32F4_EOC },
> +	.isr_ovr = { STM32F4_ADC_SR, STM32F4_OVR },
>  	.sqr = stm32f4_sq,
>  	.exten = { STM32F4_ADC_CR2, STM32F4_EXTEN_MASK, STM32F4_EXTEN_SHIFT },
>  	.extsel = { STM32F4_ADC_CR2, STM32F4_EXTSEL_MASK,
> @@ -429,7 +435,9 @@ static const unsigned int stm32h7_adc_smp_cycles[STM32_ADC_MAX_SMP + 1] = {
>  static const struct stm32_adc_regspec stm32h7_adc_regspec = {
>  	.dr = STM32H7_ADC_DR,
>  	.ier_eoc = { STM32H7_ADC_IER, STM32H7_EOCIE },
> +	.ier_ovr = { STM32H7_ADC_IER, STM32H7_OVRIE },
>  	.isr_eoc = { STM32H7_ADC_ISR, STM32H7_EOC },
> +	.isr_ovr = { STM32H7_ADC_ISR, STM32H7_OVR },
>  	.sqr = stm32h7_sq,
>  	.exten = { STM32H7_ADC_CFGR, STM32H7_EXTEN_MASK, STM32H7_EXTEN_SHIFT },
>  	.extsel = { STM32H7_ADC_CFGR, STM32H7_EXTSEL_MASK,
> @@ -506,6 +514,18 @@ static void stm32_adc_conv_irq_disable(struct stm32_adc *adc)
>  			   adc->cfg->regs->ier_eoc.mask);
>  }
>  
> +static void stm32_adc_ovr_irq_enable(struct stm32_adc *adc)
> +{
> +	stm32_adc_set_bits(adc, adc->cfg->regs->ier_ovr.reg,
> +			   adc->cfg->regs->ier_ovr.mask);
> +}
> +
> +static void stm32_adc_ovr_irq_disable(struct stm32_adc *adc)
> +{
> +	stm32_adc_clr_bits(adc, adc->cfg->regs->ier_ovr.reg,
> +			   adc->cfg->regs->ier_ovr.mask);
> +}
> +
>  static void stm32_adc_set_res(struct stm32_adc *adc)
>  {
>  	const struct stm32_adc_regs *res = &adc->cfg->regs->res;
> @@ -1205,6 +1225,19 @@ static int stm32_adc_read_raw(struct iio_dev *indio_dev,
>  	}
>  }
>  
> +static irqreturn_t stm32_adc_threaded_isr(int irq, void *data)
> +{
> +	struct stm32_adc *adc = data;
> +	struct iio_dev *indio_dev = iio_priv_to_dev(adc);
> +	const struct stm32_adc_regspec *regs = adc->cfg->regs;
> +	u32 status = stm32_adc_readl(adc, regs->isr_eoc.reg);
> +
> +	if (status & regs->isr_ovr.mask)
> +		dev_err(&indio_dev->dev, "Overrun interrupt, stopping.\n");
> +
> +	return IRQ_HANDLED;
> +}
> +
>  static irqreturn_t stm32_adc_isr(int irq, void *data)
>  {
>  	struct stm32_adc *adc = data;
> @@ -1212,6 +1245,17 @@ static irqreturn_t stm32_adc_isr(int irq, void *data)
>  	const struct stm32_adc_regspec *regs = adc->cfg->regs;
>  	u32 status = stm32_adc_readl(adc, regs->isr_eoc.reg);
>  
> +	if (status & regs->isr_ovr.mask) {
> +		/*
> +		 * Overrun occurred on regular conversions: data for wrong
> +		 * channel may be read. Unconditionally disable interrupts
> +		 * to stop processing data and print error message.
> +		 */
> +		stm32_adc_ovr_irq_disable(adc);
> +		stm32_adc_conv_irq_disable(adc);
> +		return IRQ_WAKE_THREAD;
> +	}
> +
>  	if (status & regs->isr_eoc.mask) {
>  		/* Reading DR also clears EOC status flag */
>  		adc->buffer[adc->bufi] = stm32_adc_readw(adc, regs->dr);
> @@ -1441,6 +1485,8 @@ static int __stm32_adc_buffer_postenable(struct iio_dev *indio_dev)
>  	/* Reset adc buffer index */
>  	adc->bufi = 0;
>  
> +	stm32_adc_ovr_irq_enable(adc);
> +
>  	if (!adc->dma_chan)
>  		stm32_adc_conv_irq_enable(adc);
>  
> @@ -1481,6 +1527,8 @@ static void __stm32_adc_buffer_predisable(struct iio_dev *indio_dev)
>  	if (!adc->dma_chan)
>  		stm32_adc_conv_irq_disable(adc);
>  
> +	stm32_adc_ovr_irq_disable(adc);
> +
>  	if (adc->dma_chan)
>  		dmaengine_terminate_sync(adc->dma_chan);
>  
> @@ -1818,8 +1866,9 @@ static int stm32_adc_probe(struct platform_device *pdev)
>  	if (adc->irq < 0)
>  		return adc->irq;
>  
> -	ret = devm_request_irq(&pdev->dev, adc->irq, stm32_adc_isr,
> -			       0, pdev->name, adc);
> +	ret = devm_request_threaded_irq(&pdev->dev, adc->irq, stm32_adc_isr,
> +					stm32_adc_threaded_isr,
> +					0, pdev->name, adc);
>  	if (ret) {
>  		dev_err(&pdev->dev, "failed to request IRQ\n");
>  		return ret;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
