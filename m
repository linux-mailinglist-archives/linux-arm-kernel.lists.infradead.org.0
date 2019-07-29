Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3FF78506
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 08:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qSOXQqrPA3HHck+rrMf5NSfSRvU4EGrjmj6IZYsfT9E=; b=c3xE09iDSJNcb9
	3FcG8rHtl8bj0kyPQkI5CctgGfyAcqEquTAd+IUEksjLlSloQ6bZR4vnCatA9q/gz4PlKDYwuTaZD
	6ZCWZdTiR46J7Xab97e9bShHdC4sUhLJYqVwy/5/K/RSf67CFsA7p5JlPk8cRhOq+Ka4RKxh4ctHc
	GG6ihrt9+wEfVChdmA5wSoHwpI7lClFdqjJIHMioxm3A+adlNWl/HK1dpPG9Ao+myRlmYT2KcaOpO
	CrPJ0fPid6eAIq+EfYWYdnHp2X6y5H53WHh0p0ijS5HAUH9+Jh0/w6vhrrJ0vp8b5RK3fJpBtxOzn
	otJAjbrb6uzV503xTT5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrzHJ-0004Ea-8U; Mon, 29 Jul 2019 06:37:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrzGx-0004AA-Vj
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 06:36:41 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hrzGq-0006RE-Jk; Mon, 29 Jul 2019 08:36:32 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hrzGo-0003FU-Dg; Mon, 29 Jul 2019 08:36:30 +0200
Date: Mon, 29 Jul 2019 08:36:30 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 2/6] pwm: sun4i: Add a quirk for reset line
Message-ID: <20190729063630.rn325whatfnc3m7n@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-3-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726184045.14669-3-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_233640_097202_CB4AD602 
X-CRM114-Status: GOOD (  19.47  )
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cc +=3D reset framework maintainer

Hello Jernej,

On Fri, Jul 26, 2019 at 08:40:41PM +0200, Jernej Skrabec wrote:
> H6 PWM core needs deasserted reset line in order to work.
> =

> Add a quirk for it.
> =

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/pwm/pwm-sun4i.c | 27 +++++++++++++++++++++++++--
>  1 file changed, 25 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index de78c824bbfd..1b7be8fbde86 100644
> --- a/drivers/pwm/pwm-sun4i.c
> +++ b/drivers/pwm/pwm-sun4i.c
> @@ -16,6 +16,7 @@
>  #include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/pwm.h>
> +#include <linux/reset.h>
>  #include <linux/slab.h>
>  #include <linux/spinlock.h>
>  #include <linux/time.h>
> @@ -72,12 +73,14 @@ static const u32 prescaler_table[] =3D {
>  =

>  struct sun4i_pwm_data {
>  	bool has_prescaler_bypass;
> +	bool has_reset;
>  	unsigned int npwm;
>  };
>  =

>  struct sun4i_pwm_chip {
>  	struct pwm_chip chip;
>  	struct clk *clk;
> +	struct reset_control *rst;
>  	void __iomem *base;
>  	spinlock_t ctrl_lock;
>  	const struct sun4i_pwm_data *data;
> @@ -371,6 +374,14 @@ static int sun4i_pwm_probe(struct platform_device *p=
dev)
>  	if (IS_ERR(pwm->clk))
>  		return PTR_ERR(pwm->clk);
>  =

> +	if (pwm->data->has_reset) {
> +		pwm->rst =3D devm_reset_control_get(&pdev->dev, NULL);
> +		if (IS_ERR(pwm->rst))
> +			return PTR_ERR(pwm->rst);
> +
> +		reset_control_deassert(pwm->rst);
> +	}
> +

I wonder why there is a need to track if a given chip needs a reset
line. I'd just use devm_reset_control_get_optional() and drop the
.has_reset member in struct sun4i_pwm_data.

>  	pwm->chip.dev =3D &pdev->dev;
>  	pwm->chip.ops =3D &sun4i_pwm_ops;
>  	pwm->chip.base =3D -1;
> @@ -383,19 +394,31 @@ static int sun4i_pwm_probe(struct platform_device *=
pdev)
>  	ret =3D pwmchip_add(&pwm->chip);
>  	if (ret < 0) {
>  		dev_err(&pdev->dev, "failed to add PWM chip: %d\n", ret);
> -		return ret;
> +		goto err_pwm_add;
>  	}
>  =

>  	platform_set_drvdata(pdev, pwm);
>  =

>  	return 0;
> +
> +err_pwm_add:
> +	reset_control_assert(pwm->rst);
> +
> +	return ret;
>  }
>  =

>  static int sun4i_pwm_remove(struct platform_device *pdev)
>  {
>  	struct sun4i_pwm_chip *pwm =3D platform_get_drvdata(pdev);
> +	int ret;
> +
> +	ret =3D pwmchip_remove(&pwm->chip);
> +	if (ret)
> +		return ret;
>  =

> -	return pwmchip_remove(&pwm->chip);
> +	reset_control_assert(pwm->rst);
> +
> +	return 0;
>  }
>  =

>  static struct platform_driver sun4i_pwm_driver =3D {

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
