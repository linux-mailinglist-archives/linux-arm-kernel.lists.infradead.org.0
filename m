Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852D515D950
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 15:20:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKPRSanWd0EJvNipiO3lnTaDc6wf2YMsvXDyPk5SQlA=; b=cDD5TMbHtCpyDw
	0B8WfwGUBMCANKhRuzfzeulc8de11Sw/UgB8RxcV//+qiz9i739ghn9nIOY0CP3lC+KESNi8nrcFA
	yLGrGJPYwqWBjTvqcaZ1EHJr2WKbgZu5AcMKTbaLZ2pEs29xEIqgfaZIDjZN3mHNLqSh903qYK4zh
	qI8AdSdVPPS9cDlOm8EFOBIx37ANKSz7W0Yq3TjFSieH9WmtVUfi/SCnxGi7WSEKtoOWoelpxacs2
	KcP1lypCq6tAIpBm0Ia4RwSWpCWoHeLRTiXzL1Y8/qwtcpGpHTCJ47YBs5IiEsbiUwY5qR4fi92lj
	pBFmL/HVhaJ8p1Gm6ecg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2bpp-0006Yn-W5; Fri, 14 Feb 2020 14:20:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2bpg-0006YE-VM
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 14:20:42 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9731B206B6;
 Fri, 14 Feb 2020 14:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581690040;
 bh=btFz8UjfJcHRg5K9vspAhI9v+b8KBsbZGyaM99sIHXw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QlBRCnJgnk2x8hYz/7oERx5otsicaWKKA9ndz1/URHpLK8ubsTLQ3xNQz4fGgQMvp
 nNK8NSepBFLVWY6ODESN9UiDHkmnDcGD14vuLelGBlRrHZDsLlXuui05ZnG6KDmll0
 eq+EMPurObKT9DfuNdG0VGZDrDXvD1FXoYUMMBDg=
Date: Fri, 14 Feb 2020 14:20:35 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2] iio: trigger: stm32-timer: enable clock when in
 master mode
Message-ID: <20200214142035.576e11e1@archlinux>
In-Reply-To: <1581093031-9871-1-git-send-email-fabrice.gasnier@st.com>
References: <1581093031-9871-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_062041_053165_9F16E427 
X-CRM114-Status: GOOD (  27.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: lars@metafoo.de, olivier.moysan@st.com, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, pmeerw@pmeerw.net, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Feb 2020 17:30:31 +0100
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> Clock should be enabled as soon as using master modes, even before
> enabling timer. Or, this may provoke bad behavior on the other end
> (slave timer). Then, introduce 'clk_enabled' flag, instead of relying
> on CR1 EN bit, to keep track of clock being enabled (balanced refcount).
> Propagate this anywhere else in the driver.
> 
> Also add 'remove' routine to stop timer and disable clock in case it
> has been left enabled. Enforce the user interface has been unregistered
> in the remove routine, before disabling the hardware to avoid possible
> race. So, remove use of devm_ variant to register triggers and unregister
> them before the hardware gets disabled [1].
> [1] https://patchwork.kernel.org/patch/9956247/
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Patch looks fine. So is this a fix for a known issue or a theoretical one?
Just a question of whether to line it up for an rc, or wait for next
merge window.  Ideally please give me a fixes tag as well if this
fixes a problem that is being seen in the wild.

Thanks,

Jonathan

> ---
> Changes in v2:
> - enforce the user interface has been unregistered in the remove routine,
>   before disabling the hardware to avoid possible race.
> ---
>  drivers/iio/trigger/stm32-timer-trigger.c | 98 ++++++++++++++++++++++++-------
>  1 file changed, 76 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/iio/trigger/stm32-timer-trigger.c b/drivers/iio/trigger/stm32-timer-trigger.c
> index a5dfe65..473853e 100644
> --- a/drivers/iio/trigger/stm32-timer-trigger.c
> +++ b/drivers/iio/trigger/stm32-timer-trigger.c
> @@ -79,10 +79,13 @@ struct stm32_timer_trigger {
>  	struct device *dev;
>  	struct regmap *regmap;
>  	struct clk *clk;
> +	bool clk_enabled;
>  	u32 max_arr;
>  	const void *triggers;
>  	const void *valids;
>  	bool has_trgo2;
> +	struct mutex lock; /* concurrent sysfs configuration */
> +	struct list_head tr_list;
>  };
>  
>  struct stm32_timer_trigger_cfg {
> @@ -106,7 +109,7 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
>  {
>  	unsigned long long prd, div;
>  	int prescaler = 0;
> -	u32 ccer, cr1;
> +	u32 ccer;
>  
>  	/* Period and prescaler values depends of clock rate */
>  	div = (unsigned long long)clk_get_rate(priv->clk);
> @@ -136,9 +139,11 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
>  	if (ccer & TIM_CCER_CCXE)
>  		return -EBUSY;
>  
> -	regmap_read(priv->regmap, TIM_CR1, &cr1);
> -	if (!(cr1 & TIM_CR1_CEN))
> +	mutex_lock(&priv->lock);
> +	if (!priv->clk_enabled) {
> +		priv->clk_enabled = true;
>  		clk_enable(priv->clk);
> +	}
>  
>  	regmap_write(priv->regmap, TIM_PSC, prescaler);
>  	regmap_write(priv->regmap, TIM_ARR, prd - 1);
> @@ -157,22 +162,20 @@ static int stm32_timer_start(struct stm32_timer_trigger *priv,
>  
>  	/* Enable controller */
>  	regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, TIM_CR1_CEN);
> +	mutex_unlock(&priv->lock);
>  
>  	return 0;
>  }
>  
>  static void stm32_timer_stop(struct stm32_timer_trigger *priv)
>  {
> -	u32 ccer, cr1;
> +	u32 ccer;
>  
>  	regmap_read(priv->regmap, TIM_CCER, &ccer);
>  	if (ccer & TIM_CCER_CCXE)
>  		return;
>  
> -	regmap_read(priv->regmap, TIM_CR1, &cr1);
> -	if (cr1 & TIM_CR1_CEN)
> -		clk_disable(priv->clk);
> -
> +	mutex_lock(&priv->lock);
>  	/* Stop timer */
>  	regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_ARPE, 0);
>  	regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);
> @@ -181,6 +184,12 @@ static void stm32_timer_stop(struct stm32_timer_trigger *priv)
>  
>  	/* Make sure that registers are updated */
>  	regmap_update_bits(priv->regmap, TIM_EGR, TIM_EGR_UG, TIM_EGR_UG);
> +
> +	if (priv->clk_enabled) {
> +		priv->clk_enabled = false;
> +		clk_disable(priv->clk);
> +	}
> +	mutex_unlock(&priv->lock);
>  }
>  
>  static ssize_t stm32_tt_store_frequency(struct device *dev,
> @@ -295,11 +304,18 @@ static ssize_t stm32_tt_store_master_mode(struct device *dev,
>  	for (i = 0; i <= master_mode_max; i++) {
>  		if (!strncmp(master_mode_table[i], buf,
>  			     strlen(master_mode_table[i]))) {
> +			mutex_lock(&priv->lock);
> +			if (!priv->clk_enabled) {
> +				/* Clock should be enabled first */
> +				priv->clk_enabled = true;
> +				clk_enable(priv->clk);
> +			}
>  			regmap_update_bits(priv->regmap, TIM_CR2, mask,
>  					   i << shift);
>  			/* Make sure that registers are updated */
>  			regmap_update_bits(priv->regmap, TIM_EGR,
>  					   TIM_EGR_UG, TIM_EGR_UG);
> +			mutex_unlock(&priv->lock);
>  			return len;
>  		}
>  	}
> @@ -357,11 +373,21 @@ static const struct attribute_group *stm32_trigger_attr_groups[] = {
>  static const struct iio_trigger_ops timer_trigger_ops = {
>  };
>  
> -static int stm32_setup_iio_triggers(struct stm32_timer_trigger *priv)
> +static void stm32_unregister_iio_triggers(struct stm32_timer_trigger *priv)
> +{
> +	struct iio_trigger *tr;
> +
> +	list_for_each_entry(tr, &priv->tr_list, alloc_list)
> +		iio_trigger_unregister(tr);
> +}
> +
> +static int stm32_register_iio_triggers(struct stm32_timer_trigger *priv)
>  {
>  	int ret;
>  	const char * const *cur = priv->triggers;
>  
> +	INIT_LIST_HEAD(&priv->tr_list);
> +
>  	while (cur && *cur) {
>  		struct iio_trigger *trig;
>  		bool cur_is_trgo = stm32_timer_is_trgo_name(*cur);
> @@ -388,9 +414,13 @@ static int stm32_setup_iio_triggers(struct stm32_timer_trigger *priv)
>  
>  		iio_trigger_set_drvdata(trig, priv);
>  
> -		ret = devm_iio_trigger_register(priv->dev, trig);
> -		if (ret)
> +		ret = iio_trigger_register(trig);
> +		if (ret) {
> +			stm32_unregister_iio_triggers(priv);
>  			return ret;
> +		}
> +
> +		list_add_tail(&trig->alloc_list, &priv->tr_list);
>  		cur++;
>  	}
>  
> @@ -437,7 +467,6 @@ static int stm32_counter_write_raw(struct iio_dev *indio_dev,
>  				   int val, int val2, long mask)
>  {
>  	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
> -	u32 dat;
>  
>  	switch (mask) {
>  	case IIO_CHAN_INFO_RAW:
> @@ -448,19 +477,23 @@ static int stm32_counter_write_raw(struct iio_dev *indio_dev,
>  		return -EINVAL;
>  
>  	case IIO_CHAN_INFO_ENABLE:
> +		mutex_lock(&priv->lock);
>  		if (val) {
> -			regmap_read(priv->regmap, TIM_CR1, &dat);
> -			if (!(dat & TIM_CR1_CEN))
> +			if (!priv->clk_enabled) {
> +				priv->clk_enabled = true;
>  				clk_enable(priv->clk);
> +			}
>  			regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
>  					   TIM_CR1_CEN);
>  		} else {
> -			regmap_read(priv->regmap, TIM_CR1, &dat);
>  			regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
>  					   0);
> -			if (dat & TIM_CR1_CEN)
> +			if (priv->clk_enabled) {
> +				priv->clk_enabled = false;
>  				clk_disable(priv->clk);
> +			}
>  		}
> +		mutex_unlock(&priv->lock);
>  		return 0;
>  	}
>  
> @@ -556,7 +589,6 @@ static int stm32_set_enable_mode(struct iio_dev *indio_dev,
>  {
>  	struct stm32_timer_trigger *priv = iio_priv(indio_dev);
>  	int sms = stm32_enable_mode2sms(mode);
> -	u32 val;
>  
>  	if (sms < 0)
>  		return sms;
> @@ -564,11 +596,12 @@ static int stm32_set_enable_mode(struct iio_dev *indio_dev,
>  	 * Triggered mode sets CEN bit automatically by hardware. So, first
>  	 * enable counter clock, so it can use it. Keeps it in sync with CEN.
>  	 */
> -	if (sms == 6) {
> -		regmap_read(priv->regmap, TIM_CR1, &val);
> -		if (!(val & TIM_CR1_CEN))
> -			clk_enable(priv->clk);
> +	mutex_lock(&priv->lock);
> +	if (sms == 6 && !priv->clk_enabled) {
> +		clk_enable(priv->clk);
> +		priv->clk_enabled = true;
>  	}
> +	mutex_unlock(&priv->lock);
>  
>  	regmap_update_bits(priv->regmap, TIM_SMCR, TIM_SMCR_SMS, sms);
>  
> @@ -752,8 +785,9 @@ static int stm32_timer_trigger_probe(struct platform_device *pdev)
>  	priv->triggers = triggers_table[index];
>  	priv->valids = cfg->valids_table[index];
>  	stm32_timer_detect_trgo2(priv);
> +	mutex_init(&priv->lock);
>  
> -	ret = stm32_setup_iio_triggers(priv);
> +	ret = stm32_register_iio_triggers(priv);
>  	if (ret)
>  		return ret;
>  
> @@ -762,6 +796,25 @@ static int stm32_timer_trigger_probe(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static int stm32_timer_trigger_remove(struct platform_device *pdev)
> +{
> +	struct stm32_timer_trigger *priv = platform_get_drvdata(pdev);
> +	u32 val;
> +
> +	/* Unregister triggers before everything can be safely turned off */
> +	stm32_unregister_iio_triggers(priv);
> +
> +	/* Check if nobody else use the timer, then disable it */
> +	regmap_read(priv->regmap, TIM_CCER, &val);
> +	if (!(val & TIM_CCER_CCXE))
> +		regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);
> +
> +	if (priv->clk_enabled)
> +		clk_disable(priv->clk);
> +
> +	return 0;
> +}
> +
>  static const struct stm32_timer_trigger_cfg stm32_timer_trg_cfg = {
>  	.valids_table = valids_table,
>  	.num_valids_table = ARRAY_SIZE(valids_table),
> @@ -786,6 +839,7 @@ MODULE_DEVICE_TABLE(of, stm32_trig_of_match);
>  
>  static struct platform_driver stm32_timer_trigger_driver = {
>  	.probe = stm32_timer_trigger_probe,
> +	.remove = stm32_timer_trigger_remove,
>  	.driver = {
>  		.name = "stm32-timer-trigger",
>  		.of_match_table = stm32_trig_of_match,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
