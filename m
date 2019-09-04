Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F63CA7C0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 08:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1CW2HfM57NTRgPtd3/1ygi+EfiR1X8LR18Qvdy6SM0=; b=Fedqrx7TQXaimS
	3MQyQpe2F29LFxGek/579ikNOhKRgjPefjEApgfumAv8jAsuJthsm7PZeHFLl8W5vmF8joE2HRkfw
	sFJoy2KLSGH+jZxFlN62PKnzi30Gw9OVVtIrZcs0bD3Ozg5tYaXXXigNgYK77nRq1OvV6MCthMnXZ
	2bZxOdg1tJ2wknILsYu0wtanKaxjqn9HE6+jyDldgffw657upPHjlzX1H7GwHyOiJ0zpp2mH0NMpp
	pbifbihpNqLo6jYCSQApy2Gl1As9sdE2UNTumPf0V9NZKHiq7BsJnV2pfk/v2igmPqpGWewMJURMe
	Tef6bMF1yv6r+D0qLIRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5PAI-0006Tn-Fy; Wed, 04 Sep 2019 06:53:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5PA1-0006SI-5X
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 06:52:59 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1i5P9s-0002uV-Ki; Wed, 04 Sep 2019 08:52:48 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1i5P9s-0004iI-6D; Wed, 04 Sep 2019 08:52:48 +0200
Date: Wed, 4 Sep 2019 08:52:48 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Robin van der Gracht <robin@protonic.nl>
Subject: Re: [PATCH v3] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
Message-ID: <20190904065248.4i7q2vuxxt2xdnrr@pengutronix.de>
References: <20190904062329.97520-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904062329.97520-1-robin@protonic.nl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:40:59 up 109 days, 12:59, 63 users,  load average: 0.17, 0.09,
 0.03
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_235257_227112_7DDD8F43 
X-CRM114-Status: GOOD (  26.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Adam Ford <aford173@gmail.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input @ vger . kernel . org" <linux-input@vger.kernel.org>,
 RobinGong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

thanks for the patch it looks quite good, just two minor nitpicks.

On 19-09-04 06:23, Robin van der Gracht wrote:
> The first generation i.MX6 processors does not send an interrupt when the
> power key is pressed. It sends a power down request interrupt if the key is
> released before a hard shutdown (5 second press). This should allow
> software to bring down the SoC safely.
> 
> For this driver to work as a regular power key with the older SoCs, we need
> to send a keypress AND release when we get the power down request irq.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
> 
> Changes v2 -> v3:
>  - Drop alt compatible string for identifying first revision snvs hardware,
>    read minor revision from register instead.
>  - Drop imx6qdl.dtsi modification and device-tree binding documentation.
>  - Add an additional input_sync() to create 2 seperate input reports for press
>    and release.
> 
>  drivers/input/keyboard/Kconfig       |  2 +-
>  drivers/input/keyboard/snvs_pwrkey.c | 28 ++++++++++++++++++++++++++--
>  2 files changed, 27 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
> index 7c4f19dab34f..937e58da5ce1 100644
> --- a/drivers/input/keyboard/Kconfig
> +++ b/drivers/input/keyboard/Kconfig
> @@ -436,7 +436,7 @@ config KEYBOARD_SNVS_PWRKEY
>  	depends on OF
>  	help
>  	  This is the snvs powerkey driver for the Freescale i.MX application
> -	  processors that are newer than i.MX6 SX.
> +	  processors.
>  
>  	  To compile this driver as a module, choose M here; the
>  	  module will be called snvs_pwrkey.
> diff --git a/drivers/input/keyboard/snvs_pwrkey.c b/drivers/input/keyboard/snvs_pwrkey.c
> index 5342d8d45f81..828580eee0d2 100644
> --- a/drivers/input/keyboard/snvs_pwrkey.c
> +++ b/drivers/input/keyboard/snvs_pwrkey.c
> @@ -19,6 +19,7 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/regmap.h>
>  
> +#define SNVS_HPVIDR1_REG 0xF8
>  #define SNVS_LPSR_REG	0x4C	/* LP Status Register */
>  #define SNVS_LPCR_REG	0x38	/* LP Control Register */
>  #define SNVS_HPSR_REG	0x14
> @@ -37,6 +38,7 @@ struct pwrkey_drv_data {
>  	int wakeup;
>  	struct timer_list check_timer;
>  	struct input_dev *input;
> +	u8 minor_rev;
>  };
>  
>  static void imx_imx_snvs_check_for_events(struct timer_list *t)
> @@ -45,6 +47,20 @@ static void imx_imx_snvs_check_for_events(struct timer_list *t)
>  	struct input_dev *input = pdata->input;
>  	u32 state;
>  
> +	if (pdata->minor_rev == 0) {

Should we use a define here and ..

> +		/*
> +		 * The first generation i.MX6 SoCs only sends an interrupt on
> +		 * button release. To mimic power-key usage, we'll prepend a
> +		 * press event.
> +		 */
> +		input_report_key(input, pdata->keycode, 1);
> +		input_sync(input);
> +		input_report_key(input, pdata->keycode, 0);
> +		input_sync(input);
> +		pm_relax(input->dev.parent);
> +		return;
> +	}
> +
>  	regmap_read(pdata->snvs, SNVS_HPSR_REG, &state);
>  	state = state & SNVS_HPSR_BTN ? 1 : 0;
>  
> @@ -67,13 +83,17 @@ static irqreturn_t imx_snvs_pwrkey_interrupt(int irq, void *dev_id)
>  {
>  	struct platform_device *pdev = dev_id;
>  	struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
> +	unsigned long expire = jiffies;
>  	u32 lp_status;
>  
>  	pm_wakeup_event(pdata->input->dev.parent, 0);
>  
>  	regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
> -	if (lp_status & SNVS_LPSR_SPO)
> -		mod_timer(&pdata->check_timer, jiffies + msecs_to_jiffies(DEBOUNCE_TIME));
> +	if (lp_status & SNVS_LPSR_SPO) {
> +		if (pdata->minor_rev > 0)

here? Just a nitpick, feel free to add/drop it.

> +			expire = jiffies + msecs_to_jiffies(DEBOUNCE_TIME);
> +		mod_timer(&pdata->check_timer, expire);
> +	}
>  
>  	/* clear SPO status */
>  	regmap_write(pdata->snvs, SNVS_LPSR_REG, SNVS_LPSR_SPO);
> @@ -94,6 +114,7 @@ static int imx_snvs_pwrkey_probe(struct platform_device *pdev)
>  	struct input_dev *input = NULL;
>  	struct device_node *np;
>  	int error;
> +	u32 vid;
>  
>  	/* Get SNVS register Page */
>  	np = pdev->dev.of_node;
> @@ -123,6 +144,9 @@ static int imx_snvs_pwrkey_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>  
> +	regmap_read(pdata->snvs, SNVS_HPVIDR1_REG, &vid);

Should we check the return val here?

Regards,
  Marco

> +	pdata->minor_rev = vid & 0xff;
> +
>  	regmap_update_bits(pdata->snvs, SNVS_LPCR_REG, SNVS_LPCR_DEP_EN, SNVS_LPCR_DEP_EN);
>  
>  	/* clear the unexpected interrupt before driver ready */
> -- 
> 2.20.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
