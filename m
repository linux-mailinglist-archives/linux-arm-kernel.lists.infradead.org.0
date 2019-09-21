Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC711B9F43
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 20:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+bB714Yw/UU2GmqqLr4asyBTT0gkZnxA2udcU5mxwM=; b=sxuWyEA80LaEfH
	5FPEXbOcfm7dLNDPjKNBSTu7NSF9rfny2YblidtMtx3hfwFXbpbYZSONtKbWva2T5LFeQc3BHkMdG
	wEFEZ7b+7mQ+s4wiW9juTactEdgSat26wkcvolEiwiZO5XUngZX7d4LdeIb5qZ72YnG8RvciAEfiW
	k/bUZZreqCb8COVOxW0c+UZE97N6Zh7bRRi5eZjwerOf+dctwywTgIa0nl/j0ssKv9yFaGqy/astT
	O0nplDbWFTgaoFtioTwNAjUbqqhoG9T9qbYDMTn2notSCo0jesHMcM5LGWWVhHLAsuS057oEli3aN
	r8ewo50F8/BFuq0elF9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBjii-0005nU-8l; Sat, 21 Sep 2019 18:02:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBjiO-0005n4-Hs
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Sep 2019 18:02:38 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D4FD2080F;
 Sat, 21 Sep 2019 18:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569088955;
 bh=99gy9UsmZhQxHRFU5g9lNPDPnf6xpbwKjEP7XEOVeks=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=m6uWIOpS/jJNWVNjA79vLRDA6UNJtpJQ7SHOA5uERmFlS+Anm8NzoHWGLLtV9U5DS
 5I5rrsGC5UbFPovJ9boDNt3QCjANhC0MTUyxQ9ejUbgzOcxspz1oZYlWJmM5Fxp8Ep
 ELF4qyQtig4cNeBYDjHkfRevpq0igeqcwUjqU8a4=
Date: Sat, 21 Sep 2019 19:02:30 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2 2/2] iio: adc: stm32-adc: fix a race when using
 several adcs with dma and irq
Message-ID: <20190921190230.7e90f20f@archlinux>
In-Reply-To: <1568723896-19063-3-git-send-email-fabrice.gasnier@st.com>
References: <1568723896-19063-1-git-send-email-fabrice.gasnier@st.com>
 <1568723896-19063-3-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_110236_633809_842DCE0E 
X-CRM114-Status: GOOD (  23.89  )
X-Spam-Score: -3.2 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 2.0 BODY_QUOTE_MALF_MSGID  Malformed MSGID with quote
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

On Tue, 17 Sep 2019 14:38:16 +0200
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
Both applied to the fixes-togreg branch of iio.git and marked for
stable.

Thanks,

Jonathan

> ---
> Changes in v2:
> - Keep registers definitions as a whole block to ease readability (add
>   a precursor patch to move them to header file)
> ---
>  drivers/iio/adc/stm32-adc-core.c | 43 +++++++++++++++++++++++++++++++++++++---
>  drivers/iio/adc/stm32-adc-core.h |  1 +
>  2 files changed, 41 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
> index 84ac326..93a096a 100644
> --- a/drivers/iio/adc/stm32-adc-core.c
> +++ b/drivers/iio/adc/stm32-adc-core.c
> @@ -44,6 +44,8 @@
>   * @eoc1:	adc1 end of conversion flag in @csr
>   * @eoc2:	adc2 end of conversion flag in @csr
>   * @eoc3:	adc3 end of conversion flag in @csr
> + * @ier:	interrupt enable register offset for each adc
> + * @eocie_msk:	end of conversion interrupt enable mask in @ier
>   */
>  struct stm32_adc_common_regs {
>  	u32 csr;
> @@ -51,6 +53,8 @@ struct stm32_adc_common_regs {
>  	u32 eoc1_msk;
>  	u32 eoc2_msk;
>  	u32 eoc3_msk;
> +	u32 ier;
> +	u32 eocie_msk;
>  };
>  
>  struct stm32_adc_priv;
> @@ -276,6 +280,8 @@ static const struct stm32_adc_common_regs stm32f4_adc_common_regs = {
>  	.eoc1_msk = STM32F4_EOC1,
>  	.eoc2_msk = STM32F4_EOC2,
>  	.eoc3_msk = STM32F4_EOC3,
> +	.ier = STM32F4_ADC_CR1,
> +	.eocie_msk = STM32F4_EOCIE,
>  };
>  
>  /* STM32H7 common registers definitions */
> @@ -284,8 +290,24 @@ static const struct stm32_adc_common_regs stm32h7_adc_common_regs = {
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
> @@ -296,13 +318,28 @@ static void stm32_adc_irq_handler(struct irq_desc *desc)
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
> index 94aa2d2..2579d51 100644
> --- a/drivers/iio/adc/stm32-adc-core.h
> +++ b/drivers/iio/adc/stm32-adc-core.h
> @@ -25,6 +25,7 @@
>   * --------------------------------------------------------
>   */
>  #define STM32_ADC_MAX_ADCS		3
> +#define STM32_ADC_OFFSET		0x100
>  #define STM32_ADCX_COMN_OFFSET		0x300
>  
>  /* STM32F4 - Registers for each ADC instance */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
