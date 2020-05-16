Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFCC1D62D9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 19:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0+E6kKArxTkDpUQpJyXlXepxH46dPlmTz1n4UdR1nE=; b=rV/mFA8AAhG6Yo
	O6IYfjw9Ldt28J10vapzVN0YOEs9YiJStO47aJS1Lf21jTk2RVdo6MIInSaBjz6VZgFkFvQDZu8Ud
	qmTSLE4I0n7rWPUCg/Dy0nJFsi6kugguzxXqdaVAcgPwDKd4T6uFR0rPw6WPBz7DEvxOSihdL0z2K
	7dPvPPOCVWOLREOUpxZjl7gaxpD4VT5b2xIRP70NEd/ZdmXPH8IbER3q1LZ9FWW0sRM1LnJzem+5l
	6E/v/vA9oLd9bA1K3ym22Y5W+SiVBi6kD3PQKjj4KFRJ4rT+4oa6nog6gsClss42oyDAb1HXQbNrD
	UqdDp8fzHHfjdjquwUtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja0CB-0003Wm-IY; Sat, 16 May 2020 17:01:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja0C3-0003W9-Dh
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 17:01:48 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 51EF92065C;
 Sat, 16 May 2020 17:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589648506;
 bh=7QsFKj7aDiV0u0TfxeKG4ZEc/hLCVajx0FV8HvcbpUs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=o6QAiMzJhMKNwW7prZLLng13R3+ZGftsXinmPSrLyGjXCIC3sAZFRwQ/kZsUdSiAm
 s8tZrgq0RgWgIpmgiXuXeajgbFAgHUohQsB5/UDAUOfxa9wGyIgmIa6So8GOeuVwMV
 NO72LkUozyh+2eb0udsHr11RPE36ToA96bGIWeH4=
Date: Sat, 16 May 2020 18:01:42 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] iio: adc: stm32-adc: fix a wrong error message when
 probing interrupts
Message-ID: <20200516180142.5ed10edc@archlinux>
In-Reply-To: <1589290025-23857-1-git-send-email-fabrice.gasnier@st.com>
References: <1589290025-23857-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_100147_504237_FE27973F 
X-CRM114-Status: GOOD (  21.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: olivier.moysan@st.com, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 May 2020 15:27:05 +0200
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> A wrong error message is printed out currently, like on STM32MP15:
> - stm32-adc-core 48003000.adc: IRQ index 2 not found.
> 
> This is seen since commit 7723f4c5ecdb ("driver core: platform: Add an
> error message to platform_get_irq*()").
> The STM32 ADC core driver wrongly requests up to 3 interrupt lines. It
> should request only the necessary IRQs, based on the compatible:
> - stm32f4/h7 ADCs share a common interrupt
> - stm32mp1, has one interrupt line per ADC.
> So add the number of required interrupts to the compatible data.
> 
> Fixes: d58c67d1d851 ("iio: adc: stm32-adc: add support for STM32MP1")
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Applied to the fixes-togreg branch of iio.git and marked for stable.
Whilst it's only an incorrect error message it is likely to make
people think something is broken, hence the stable marking.

Thanks,

Jonathan

> ---
>  drivers/iio/adc/stm32-adc-core.c | 34 ++++++++++++++--------------------
>  1 file changed, 14 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
> index ebe5dbc..3586369 100644
> --- a/drivers/iio/adc/stm32-adc-core.c
> +++ b/drivers/iio/adc/stm32-adc-core.c
> @@ -65,12 +65,14 @@ struct stm32_adc_priv;
>   * @clk_sel:	clock selection routine
>   * @max_clk_rate_hz: maximum analog clock rate (Hz, from datasheet)
>   * @has_syscfg: SYSCFG capability flags
> + * @num_irqs:	number of interrupt lines
>   */
>  struct stm32_adc_priv_cfg {
>  	const struct stm32_adc_common_regs *regs;
>  	int (*clk_sel)(struct platform_device *, struct stm32_adc_priv *);
>  	u32 max_clk_rate_hz;
>  	unsigned int has_syscfg;
> +	unsigned int num_irqs;
>  };
>  
>  /**
> @@ -375,21 +377,15 @@ static int stm32_adc_irq_probe(struct platform_device *pdev,
>  	struct device_node *np = pdev->dev.of_node;
>  	unsigned int i;
>  
> -	for (i = 0; i < STM32_ADC_MAX_ADCS; i++) {
> +	/*
> +	 * Interrupt(s) must be provided, depending on the compatible:
> +	 * - stm32f4/h7 shares a common interrupt line.
> +	 * - stm32mp1, has one line per ADC
> +	 */
> +	for (i = 0; i < priv->cfg->num_irqs; i++) {
>  		priv->irq[i] = platform_get_irq(pdev, i);
> -		if (priv->irq[i] < 0) {
> -			/*
> -			 * At least one interrupt must be provided, make others
> -			 * optional:
> -			 * - stm32f4/h7 shares a common interrupt.
> -			 * - stm32mp1, has one line per ADC (either for ADC1,
> -			 *   ADC2 or both).
> -			 */
> -			if (i && priv->irq[i] == -ENXIO)
> -				continue;
> -
> +		if (priv->irq[i] < 0)
>  			return priv->irq[i];
> -		}
>  	}
>  
>  	priv->domain = irq_domain_add_simple(np, STM32_ADC_MAX_ADCS, 0,
> @@ -400,9 +396,7 @@ static int stm32_adc_irq_probe(struct platform_device *pdev,
>  		return -ENOMEM;
>  	}
>  
> -	for (i = 0; i < STM32_ADC_MAX_ADCS; i++) {
> -		if (priv->irq[i] < 0)
> -			continue;
> +	for (i = 0; i < priv->cfg->num_irqs; i++) {
>  		irq_set_chained_handler(priv->irq[i], stm32_adc_irq_handler);
>  		irq_set_handler_data(priv->irq[i], priv);
>  	}
> @@ -420,11 +414,8 @@ static void stm32_adc_irq_remove(struct platform_device *pdev,
>  		irq_dispose_mapping(irq_find_mapping(priv->domain, hwirq));
>  	irq_domain_remove(priv->domain);
>  
> -	for (i = 0; i < STM32_ADC_MAX_ADCS; i++) {
> -		if (priv->irq[i] < 0)
> -			continue;
> +	for (i = 0; i < priv->cfg->num_irqs; i++)
>  		irq_set_chained_handler(priv->irq[i], NULL);
> -	}
>  }
>  
>  static int stm32_adc_core_switches_supply_en(struct stm32_adc_priv *priv,
> @@ -824,6 +815,7 @@ static const struct stm32_adc_priv_cfg stm32f4_adc_priv_cfg = {
>  	.regs = &stm32f4_adc_common_regs,
>  	.clk_sel = stm32f4_adc_clk_sel,
>  	.max_clk_rate_hz = 36000000,
> +	.num_irqs = 1,
>  };
>  
>  static const struct stm32_adc_priv_cfg stm32h7_adc_priv_cfg = {
> @@ -831,6 +823,7 @@ static const struct stm32_adc_priv_cfg stm32h7_adc_priv_cfg = {
>  	.clk_sel = stm32h7_adc_clk_sel,
>  	.max_clk_rate_hz = 36000000,
>  	.has_syscfg = HAS_VBOOSTER,
> +	.num_irqs = 1,
>  };
>  
>  static const struct stm32_adc_priv_cfg stm32mp1_adc_priv_cfg = {
> @@ -838,6 +831,7 @@ static const struct stm32_adc_priv_cfg stm32mp1_adc_priv_cfg = {
>  	.clk_sel = stm32h7_adc_clk_sel,
>  	.max_clk_rate_hz = 40000000,
>  	.has_syscfg = HAS_VBOOSTER | HAS_ANASWVDD,
> +	.num_irqs = 2,
>  };
>  
>  static const struct of_device_id stm32_adc_of_match[] = {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
