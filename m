Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9154C2F27
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70VSaeUBDKkMaBR8xS5R1ShEcdBFjWPlqr0h418juVc=; b=Vlb8V7/L7nOHtt
	bsJHFjGhM5QLcTEUUXdXv3AiIOl3shK1Ug3AT/U/D0NIusR+x9f0/YD07RTopuOi5Av2ZTqcaY04z
	2Sk5HPFcRQH4R5YvlEh2PhGBH9VBC4cFBhsFIcWj5sqQ65UVPGXBGqiVn+u2RkgfS2Js1318N0O52
	2vEh/2loOBTQGLx33/c5GepMX/TzcW393dW+lULoHrAIKV6ANdY/cKw87iCyFctJCf1fVGYnhC28f
	u+0C0GP+i9LXXAH4IHBMYsz6NuTujYZv8VNiX3yjS9jchxeA1c9lYt6Zo28AeZK8XVQ0MtETXHJV6
	L4MpYxmQjOQpu7ORVn6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDp1-00075Z-JV; Tue, 01 Oct 2019 08:47:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDot-00074r-9B
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:47:44 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BCB262133F;
 Tue,  1 Oct 2019 08:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569919663;
 bh=uyBPyDajI+sn8HwUlo1GdFDsnGTZSyb9f+Mmp5bEyHg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=z3Z5JLeGA1iyieSDx+569nFEbVBAfdHRApgoQIbnHRHTMXOoGYtNzuyPPkLxqvCw8
 kqfgz0ucrmmlWa0P/EvoAEDgVNXhMVI4AWka8Uk8c2truKO9Spl5Trr6wllp7lkTWK
 CwICPefl77M2mzsefxX/hYQ/u3CEWLejiCuA9FWQ=
Date: Tue, 1 Oct 2019 09:47:35 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Yizhuo <yzhai003@ucr.edu>
Subject: Re: [PATCH] iio: adc: imx25-gcq: fix uninitialized variable usage
Message-ID: <20191001094735.4f04bfdf@archlinux>
In-Reply-To: <20190930195358.27844-1-yzhai003@ucr.edu>
References: <20190930195358.27844-1-yzhai003@ucr.edu>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_014743_360000_9E2CB672 
X-CRM114-Status: GOOD (  21.19  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: csong@cs.ucr.edu, Enrico Weigelt <info@metux.net>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-iio@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 zhiyunq@cs.ucr.edu, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, NXP Linux Team <linux-imx@nxp.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Sep 2019 12:53:54 -0700
Yizhuo <yzhai003@ucr.edu> wrote:

> In function mx25_gcq_irq(), local variable "stats" could
> be uninitialized if function regmap_read() returns -EINVAL.
> However, this value is used in if statement, which is
> potentially unsafe. The same case applied to the variable
> "data" in function mx25_gcq_get_raw_value() in the same file.
> 
> Signed-off-by: Yizhuo <yzhai003@ucr.edu>

Following similar logic to the other patch I just reviewed
for the stm32-timer-trigger, lets chase if this can happen.
In this case a clock is not provided during the regmap iomem register
and as such, the call can't actually fail.

So this one is more of a tidy up and hardening against future
problems if the code changes, than an actual fix.

Worth having, but perhaps remove the word fix from the description
unless you can find a path I've missed in which this might actually
happen as the code currently is.

One minor comment inline,

Thanks,

Jonathan
> ---
>  drivers/iio/adc/fsl-imx25-gcq.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/adc/fsl-imx25-gcq.c b/drivers/iio/adc/fsl-imx25-gcq.c
> index fa71489195c6..3b1e12b7c1ac 100644
> --- a/drivers/iio/adc/fsl-imx25-gcq.c
> +++ b/drivers/iio/adc/fsl-imx25-gcq.c
> @@ -73,8 +73,12 @@ static irqreturn_t mx25_gcq_irq(int irq, void *data)
>  {
>  	struct mx25_gcq_priv *priv = data;
>  	u32 stats;
> +	int ret;
>  
> -	regmap_read(priv->regs, MX25_ADCQ_SR, &stats);
> +	ret = regmap_read(priv->regs, MX25_ADCQ_SR, &stats);
> +	if (ret) {

No brackets around a single line block like this.

> +		return ret;
> +	}
>  
>  	if (stats & MX25_ADCQ_SR_EOQ) {
>  		regmap_update_bits(priv->regs, MX25_ADCQ_MR,
> @@ -100,6 +104,7 @@ static int mx25_gcq_get_raw_value(struct device *dev,
>  {
>  	long timeout;
>  	u32 data;
> +	int ret;
>  
>  	/* Setup the configuration we want to use */
>  	regmap_write(priv->regs, MX25_ADCQ_ITEM_7_0,
> @@ -121,7 +126,11 @@ static int mx25_gcq_get_raw_value(struct device *dev,
>  		return -ETIMEDOUT;
>  	}
>  
> -	regmap_read(priv->regs, MX25_ADCQ_FIFO, &data);
> +	ret = regmap_read(priv->regs, MX25_ADCQ_FIFO, &data);
> +	if (ret) {
> +		dev_err(dev, "Failed to read MX25_ADCQ_FIFO.\n");
> +		return ret;
> +	}
>  
>  	*val = MX25_ADCQ_FIFO_DATA(data);
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
