Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EF71001B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:50:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DEElxMA9saFBdvDhrzxoR/dockl6iw3u5nKG8xyJ16o=; b=VEzbr000XYgAnC
	aSaAADoPpwM3++Xv5v2dJMKfS7N9zXVSajKY5KXbA8I5X2j0BBCmDZjAzJtk0k7jJfFV6DJi19YQP
	dXSGqqYpE33cMra8lMX3oeIsC5dAzBy7uVxyxSDfh97duO6GZIHW967C+6fNxrXW9mYOfUoNlBAer
	uch97uNhG3SsD3Zi1Oir5ALg/rH/b0gF3Q7+dOQ5W7ur8DUCv5z9sR+A8Qy+UbzG2JirWZKQ2f8mI
	59KKuxtlnTb1TC4tBJhVq7gS2FRUggfK/P4m8jMpAJlBGuqYEjUXsUlEsKws6ctWKaH/VNCnGW6pQ
	LDd4PaLPTf/aY3dYydUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdfo-0001p2-T8; Mon, 18 Nov 2019 09:50:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdfd-0001UI-IU
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:50:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iWdfW-0003GP-SK; Mon, 18 Nov 2019 10:50:02 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iWdfU-00055N-AT; Mon, 18 Nov 2019 10:50:00 +0100
Date: Mon, 18 Nov 2019 10:50:00 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v5 3/8] pwm: sun4i: Prefer "mod" clock to unnamed
Message-ID: <20191118095000.gmvnmrtsbjf7nbsq@pengutronix.de>
References: <20191118093727.21899-1-peron.clem@gmail.com>
 <20191118093727.21899-4-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118093727.21899-4-peron.clem@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_015009_612106_DF03FAEA 
X-CRM114-Status: GOOD (  22.46  )
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
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>, Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 10:37:22AM +0100, Cl=E9ment P=E9ron wrote:
> New device tree bindings called the source clock of the module
> "mod" when several clocks are defined.
> =

> Try to get a clock called "mod" if nothing is found try to get
> an unnamed clock.
> =

> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  drivers/pwm/pwm-sun4i.c | 29 +++++++++++++++++++++++++++--
>  1 file changed, 27 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index c17935805690..bbb1ed194c0e 100644
> --- a/drivers/pwm/pwm-sun4i.c
> +++ b/drivers/pwm/pwm-sun4i.c
> @@ -362,9 +362,34 @@ static int sun4i_pwm_probe(struct platform_device *p=
dev)
>  	if (IS_ERR(pwm->base))
>  		return PTR_ERR(pwm->base);
>  =

> -	pwm->clk =3D devm_clk_get(&pdev->dev, NULL);
> -	if (IS_ERR(pwm->clk))
> +	/*
> +	 * All hardware variants need a source clock that is divided and
> +	 * then feeds the counter that defines the output wave form. In the
> +	 * device tree this clock is either unnamed or called "mod".
> +	 * Some variants (e.g. H6) need another clock to access the
> +	 * hardware registers; this is called "bus".
> +	 * So we request "mod" first (and ignore the corner case that a
> +	 * parent provides a "mod" clock while the right one would be the
> +	 * unnamed one of the PWM device) and if this is not found we fall
> +	 * back to the first clock of the PWM.
> +	 */
> +	pwm->clk =3D devm_clk_get_optional(&pdev->dev, "mod");
> +	if (IS_ERR(pwm->clk)) {
> +		if (PTR_ERR(pwm->rst) !=3D -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "get clock failed %pe\n",
> +				pwm->clk);

I think the line break isn't needed here. Unless I'm mistaken the final
; will end in column 80 which is fine.

>  		return PTR_ERR(pwm->clk);
> +	}
> +
> +	if (!pwm->clk) {
> +		pwm->clk =3D devm_clk_get(&pdev->dev, NULL);
> +		if (IS_ERR(pwm->clk)) {
> +			if (PTR_ERR(pwm->rst) !=3D -EPROBE_DEFER)
> +				dev_err(&pdev->dev, "get clock failed %pe\n",
> +					pwm->clk);

A different error message than above would be nice to be able to
distinguish the two cases.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
