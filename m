Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4B250A57
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 14:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTG6P7T1IieeOsAzzVcIIRf4e1j195cdJI3PAcbZv6A=; b=Fw/dd08d/XrP7v
	T1pcK5XS363BTim6jNsGyohBGqPO8RN3zAFNPym1CDJvfopm9WT4cL8sITIgjc/KdifDPxZnKai10
	Oz+trMZrS6vpL1dI6PHNvBqDl5Eb3Z1QUlhkkCo9X1zZqwm28GmDIrg+O7Lk7BrQU8hlPL2xnsi2R
	WLpUsAxld1Q2IYMwQt7VpFSHKNhYTrtD76g113eV/dqgHMy0eyND5TcfnkqXj54b1nk76Kq3fk0OY
	CLUJEIkDSRSgyqZ4Ti0jwH/xHTLD2UAXyki9+Mcrfq3XRkliIUezZFP4lCxhNweKHlovvNNB6h0Ys
	b1s44YgGbPnmmkNS8JvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfNjK-0003W0-U5; Mon, 24 Jun 2019 12:05:50 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfNjC-0003V6-H7
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 12:05:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1561377938; bh=T4BXa4VwDBoEc4A4HcwS0Dl0bssMv2ECXblVliRU+Rc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mziuWN5kTFFpcq304OoQGK6gxdzqSCt3c4v+QPAJAN2Xr/rjVgJt8bguMb+m+Bs0+
 vDVZ1NmuEY1NyjB18a9F+pwxlCIMHxTyDOcZCQvhN8Zz//HRyQr+mAtuE+Xl8Kl2Lr
 IWjXiq/GG8qikZgtD4XyWJPxehxIBwPjI1F10fGA=
Date: Mon, 24 Jun 2019 14:05:37 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v4 11/11] thermal: sun8i: add thermal driver for h3
Message-ID: <20190624120537.sxdm4y3jec3ksr4u@core.my.home>
Mail-Followup-To: Yangtao Li <tiny.windzz@gmail.com>, rui.zhang@intel.com,
 edubezval@gmail.com, daniel.lezcano@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, maxime.ripard@bootlin.com, wens@csie.org,
 davem@davemloft.net, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
 <20190623164206.7467-12-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190623164206.7467-12-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_050542_908322_03E5844A 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 maxime.ripard@bootlin.com, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, edubezval@gmail.com, wens@csie.org,
 robh+dt@kernel.org, mchehab+samsung@kernel.org, rui.zhang@intel.com,
 paulmck@linux.ibm.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Yangtao,

On Sun, Jun 23, 2019 at 12:42:06PM -0400, Yangtao Li wrote:
> This patch adds the support for allwinner h3 thermal sensor.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/thermal/sun8i_thermal.c | 72 +++++++++++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> index 260b24340f5b..c8ee291f3b17 100644
> --- a/drivers/thermal/sun8i_thermal.c
> +++ b/drivers/thermal/sun8i_thermal.c
> @@ -27,6 +27,14 @@
>  #define TEMP_TO_REG				672
>  #define CALIBRATE_DEFAULT			0x800
>  
> +#define SUN8I_THS_CTRL0				0x00
> +#define SUN8I_THS_CTRL2				0x40
> +#define SUN8I_THS_IC				0x44
> +#define SUN8I_THS_IS				0x48
> +#define SUN8I_THS_MFC				0x70
> +#define SUN8I_THS_TEMP_CALIB			0x74
> +#define SUN8I_THS_TEMP_DATA			0x80
> +
>  #define SUN50I_THS_CTRL0			0x00
>  #define SUN50I_H6_THS_ENABLE			0x04
>  #define SUN50I_H6_THS_PC			0x08
> @@ -36,6 +44,9 @@
>  #define SUN50I_H6_THS_TEMP_CALIB		0xa0
>  #define SUN50I_H6_THS_TEMP_DATA			0xc0
>  
> +#define SUN8I_THS_CTRL0_T_ACQ0(x)		(GENMASK(15, 0) & (x))
> +#define SUN8I_THS_CTRL2_T_ACQ1(x)		((GENMASK(15, 0) & (x)) << 16)
> +
>  #define SUN50I_THS_CTRL0_T_ACQ(x)		((GENMASK(15, 0) & (x)) << 16)
>  #define SUN50I_THS_FILTER_EN			BIT(2)
>  #define SUN50I_THS_FILTER_TYPE(x)		(GENMASK(1, 0) & (x))
> @@ -121,6 +132,21 @@ static const struct regmap_config config = {
>  	.fast_io = true,
>  };
>  
> +static int sun8i_h3_irq_ack(struct ths_device *tmdev)
> +{
> +	int state, ret = 0;
> +
> +	regmap_read(tmdev->regmap, SUN8I_THS_IS, &state);
> +
> +	if (state & BIT(8)) {
> +		regmap_write(tmdev->regmap, SUN8I_THS_IS,
> +			     BIT(8));
> +		ret |= BIT(1);
> +	}
> +
> +	return ret;
> +}
> +
>  static int sun50i_h6_irq_ack(struct ths_device *tmdev)
>  {
>  	int i, state, ret = 0;
> @@ -154,6 +180,14 @@ static irqreturn_t sun8i_irq_thread(int irq, void *data)
>  	return IRQ_HANDLED;
>  }
>  
> +static int sun8i_h3_ths_calibrate(struct ths_device *tmdev,
> +			       u16 *caldata, int callen)
> +{
> +	regmap_write(tmdev->regmap, SUN8I_THS_TEMP_CALIB, *caldata);

You're missing a sanity check for callen here.

regards,
	o.

> +	return 0;
> +}
> +
>  static int sun50i_h6_ths_calibrate(struct ths_device *tmdev,
>  				   u16 *caldata, int callen)
>  {
> @@ -325,6 +359,32 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
>  	return ret;
>  }
>  
> +static int sun8i_h3_thermal_init(struct ths_device *tmdev)
> +{
> +	/* average over 4 samples */
> +	regmap_write(tmdev->regmap, SUN8I_THS_MFC,
> +		     SUN50I_THS_FILTER_EN |
> +		     SUN50I_THS_FILTER_TYPE(1));
> +	/*
> +	 * period = (x + 1) * 4096 / clkin; ~10ms
> +	 * enable data interrupt
> +	 */
> +	regmap_write(tmdev->regmap, SUN8I_THS_IC,
> +		     SUN50I_H6_THS_PC_TEMP_PERIOD(58) | BIT(8));
> +	/*
> +	 * clkin = 24MHz
> +	 * T acquire = clkin / (x + 1)
> +	 *           = 20us
> +	 * enable sensor
> +	 */
> +	regmap_write(tmdev->regmap, SUN8I_THS_CTRL0,
> +		     SUN8I_THS_CTRL0_T_ACQ0(479));
> +	regmap_write(tmdev->regmap, SUN8I_THS_CTRL2,
> +		     SUN8I_THS_CTRL2_T_ACQ1(479) | BIT(0));
> +
> +	return 0;
> +}
> +
>  static int sun50i_thermal_init(struct ths_device *tmdev)
>  {
>  	int val;
> @@ -431,6 +491,17 @@ static int sun8i_ths_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static const struct ths_thermal_chip sun8i_h3_ths = {
> +	.sensor_num = 1,
> +	.offset = -1794,
> +	.scale = -121,
> +	.has_ahb_clk = true,
> +	.temp_data_base = SUN8I_THS_TEMP_DATA,
> +	.calibrate = sun8i_h3_ths_calibrate,
> +	.init = sun8i_h3_thermal_init,
> +	.irq_ack = sun8i_h3_irq_ack,
> +};
> +
>  static const struct ths_thermal_chip sun50i_h6_ths = {
>  	.sensor_num = 2,
>  	.offset = -2794,
> @@ -443,6 +514,7 @@ static const struct ths_thermal_chip sun50i_h6_ths = {
>  };
>  
>  static const struct of_device_id of_ths_match[] = {
> +	{ .compatible = "allwinner,sun8i-h3-ths", .data = &sun8i_h3_ths },
>  	{ .compatible = "allwinner,sun50i-h6-ths", .data = &sun50i_h6_ths },
>  	{ /* sentinel */ },
>  };
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
