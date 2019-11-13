Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6A9FAC22
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 09:35:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yV+0iD38eDbdnhH/lGBmc1jcrHMPI1LwbZL6yOnkqVE=; b=RhpC+uswCLxCjB
	4kE6ObRLEWBK4HQMGHl8EKfA3yq24LwyhrJ1gFU4iSo7L3JQX097bpF9jyQk8g+g7CByPTlGLwQyN
	AhDPpIPn186q+T+FnY8/Ep1/Njv1FLM+PAWR1qt8kXVKvXMPdgC0FtlW8XN3cW9XHjGE8mhxf1ewK
	XVOiHQ3GoEmV26WvNTemo9O27o8K67PFtSmR1UYecTCaR0MGo+PHk3UmmK90dlsN5VABpWqj0emXD
	R6RQAKW3HbvK681qZbzvMj0PQcFECZAkOjYEdQv4L5SKlN4TWufcks75/FWiWCVCug8MC+hC6cjQ7
	hkze0V5ygy9CmP7WBgOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUo7n-0000Nx-9c; Wed, 13 Nov 2019 08:35:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUo7e-0000NM-Bl
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 08:35:32 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iUo7Z-0004tD-Sc; Wed, 13 Nov 2019 09:35:25 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iUo7Z-0001Wi-0E; Wed, 13 Nov 2019 09:35:25 +0100
Date: Wed, 13 Nov 2019 09:35:24 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v4 3/7] pwm: sun4i: Add an optional probe for bus clock
Message-ID: <20191113083524.aqtf2ed4ltuiazjg@pengutronix.de>
References: <20191108084517.21617-1-peron.clem@gmail.com>
 <20191108084517.21617-4-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108084517.21617-4-peron.clem@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_003530_407039_CF8356ED 
X-CRM114-Status: GOOD (  23.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <pza@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 09:45:13AM +0100, Cl=E9ment P=E9ron wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
> =

> H6 PWM core needs bus clock to be enabled in order to work.
> =

> Add an optional probe for it and a fallback for previous
> bindings without name on module clock.
> =

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  drivers/pwm/pwm-sun4i.c | 48 +++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 46 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index 2b9a2a78591f..a10022d6c0fd 100644
> --- a/drivers/pwm/pwm-sun4i.c
> +++ b/drivers/pwm/pwm-sun4i.c
> @@ -78,6 +78,7 @@ struct sun4i_pwm_data {
>  =

>  struct sun4i_pwm_chip {
>  	struct pwm_chip chip;
> +	struct clk *bus_clk;
>  	struct clk *clk;
>  	struct reset_control *rst;
>  	void __iomem *base;
> @@ -363,9 +364,38 @@ static int sun4i_pwm_probe(struct platform_device *p=
dev)
>  	if (IS_ERR(pwm->base))
>  		return PTR_ERR(pwm->base);
>  =

> -	pwm->clk =3D devm_clk_get(&pdev->dev, NULL);
> -	if (IS_ERR(pwm->clk))
> +	/* Get all clocks and reset line */
> +	pwm->clk =3D devm_clk_get_optional(&pdev->dev, "mod");
> +	if (IS_ERR(pwm->clk)) {
> +		if (PTR_ERR(pwm->rst) !=3D -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "get clock failed %pe\n",
> +				pwm->clk);
>  		return PTR_ERR(pwm->clk);
> +	}
> +
> +	/*
> +	 * Fallback for old dtbs with a single clock and no name.
> +	 * If a parent has a clock-name called "mod" whereas the
> +	 * current node is unnamed the clock reference will be
> +	 * incorrectly obtained and will not go into this fallback.

For me "old dtbs" suggests that today a device tree should have a "mod"
clock. Is this true also for machines other than H6? And I'd put the
comment before the acquisition of the "mod" clock. Something like:

	/*
	 * A clock called "mod" is only required on H6 (for now) and on
	 * other SoCs we expect an unnamed clock. So we request "mod"
	 * first (and ignore the corner case that a parent provides a
	 * "mod" clock) and if this is not found we fall back to the
	 * first clock of the PWM.
	 */

> +	 */
> +	if (!pwm->clk) {
> +		pwm->clk =3D devm_clk_get(&pdev->dev, NULL);
> +		if (IS_ERR(pwm->clk)) {
> +			if (PTR_ERR(pwm->rst) !=3D -EPROBE_DEFER)
> +				dev_err(&pdev->dev, "get clock failed %pe\n",
> +					pwm->clk);
> +			return PTR_ERR(pwm->clk);
> +		}
> +	}
> +
> +	pwm->bus_clk =3D devm_clk_get_optional(&pdev->dev, "bus");
> +	if (IS_ERR(pwm->bus_clk)) {
> +		if (PTR_ERR(pwm->rst) !=3D -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "get bus_clock failed %pe\n",
> +				pwm->bus_clk);
> +		return PTR_ERR(pwm->bus_clk);
> +	}
>  =

>  	pwm->rst =3D devm_reset_control_get_optional_shared(&pdev->dev, NULL);
>  	if (IS_ERR(pwm->rst)) {
> @@ -382,6 +412,17 @@ static int sun4i_pwm_probe(struct platform_device *p=
dev)
>  		return ret;
>  	}
>  =

> +	/*
> +	 * We're keeping the bus clock on for the sake of simplicity.
> +	 * Actually it only needs to be on for hardware register
> +	 * accesses.
> +	 */
> +	ret =3D clk_prepare_enable(pwm->bus_clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Cannot prepare and enable bus_clk\n");
> +		goto err_bus;
> +	}
> +

Would it make sense to split this patch into "Prefer "mod" clock to
(unnamed) clock" and "Introduce optional bus clock"?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
