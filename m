Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74338EDA62
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:12:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7MjxJZQ3vO0wKTtRcAq+okIXZc68Nw6YhRtb8HlOOU=; b=q+OrpkHiOjzLAr
	hPWzoWTHBzgV/h+lwYqXONNN42t90dqiqj49NZ+oowzwKP/ZrsBKRP340BGMoh6tL5wm2vQLOJ6QN
	x4xsfiMzRQ/yqpxtKswFt5YNoX6pIujb9Ap4AaSg0gFfR1osoPgAGIjJrh8AJ+6BZhvaPqToSavtO
	QbPk3sgW0pKAbjeiHKpjbYWHbnETzVvFNfiJ5sEHVMxWv7/gYQ1hVx9V+fAnLHNQj4t/TnPmD9Hc6
	aJN0SwKZI7S26ltMCwMkd2zPeYca3n/0vz0klx/DF+Ts0id2ey0JHqnDccFrsYvtaBIeENhwVgHdQ
	yTNQ71+QhPuSJKnd9NrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXTD-00038A-Ox; Mon, 04 Nov 2019 08:12:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXT0-00037X-Td
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:12:04 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iRXSw-0007k4-NO; Mon, 04 Nov 2019 09:11:58 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iRXSv-0007lA-Q7; Mon, 04 Nov 2019 09:11:57 +0100
Date: Mon, 4 Nov 2019 09:11:57 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 2/7] pwm: sun4i: Add an optional probe for reset line
Message-ID: <20191104081157.373v22atswsaktbe@pengutronix.de>
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <20191103203334.10539-3-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191103203334.10539-3-peron.clem@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_001202_956572_58E8B2B7 
X-CRM114-Status: GOOD (  21.08  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

adding Philipp Zabel (=3D reset controller maintainer) to Cc: and so I'm
not stripping the uncommented parts of the patch.

On Sun, Nov 03, 2019 at 09:33:29PM +0100, Cl=E9ment P=E9ron wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
> =

> H6 PWM core needs deasserted reset line in order to work.
> =

> Add an optional probe for it.
> =

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  drivers/pwm/pwm-sun4i.c | 32 ++++++++++++++++++++++++++++++--
>  1 file changed, 30 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index 6f5840a1a82d..d194b8ebdb00 100644
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
> @@ -78,6 +79,7 @@ struct sun4i_pwm_data {
>  struct sun4i_pwm_chip {
>  	struct pwm_chip chip;
>  	struct clk *clk;
> +	struct reset_control *rst;
>  	void __iomem *base;
>  	spinlock_t ctrl_lock;
>  	const struct sun4i_pwm_data *data;
> @@ -365,6 +367,20 @@ static int sun4i_pwm_probe(struct platform_device *p=
dev)
>  	if (IS_ERR(pwm->clk))
>  		return PTR_ERR(pwm->clk);
>  =

> +	pwm->rst =3D devm_reset_control_get_optional(&pdev->dev, NULL);
> +	if (IS_ERR(pwm->rst)) {
> +		if (PTR_ERR(pwm->rst) =3D=3D -EPROBE_DEFER)
> +			return PTR_ERR(pwm->rst);
> +		dev_info(&pdev->dev, "no reset control found\n");

I would degrade this to a dev_dbg. Otherwise this spams the log for all
unaffected machines. devm_reset_control_get_optional() is defined in a
section that has a comment "These inline function calls will be removed
once all consumers have been moved over to the new explicit API.", so I
guess you want devm_reset_control_get_optional_exclusive or even
devm_reset_control_get_optional_shared here.

@Philipp: maybe a check in checkpatch that warns about introduction of
such new instances would be good?!

> +	}
> +
> +	/* Deassert reset */
> +	ret =3D reset_control_deassert(pwm->rst);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Cannot deassert reset control\n");
> +		return ret;
> +	}
> +
>  	pwm->chip.dev =3D &pdev->dev;
>  	pwm->chip.ops =3D &sun4i_pwm_ops;
>  	pwm->chip.base =3D -1;
> @@ -377,19 +393,31 @@ static int sun4i_pwm_probe(struct platform_device *=
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
> +
> +	reset_control_assert(pwm->rst);
>  =

> -	return pwmchip_remove(&pwm->chip);
> +	return 0;
>  }
>  =

>  static struct platform_driver sun4i_pwm_driver =3D {

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
