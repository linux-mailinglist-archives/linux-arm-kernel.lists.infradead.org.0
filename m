Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8E178519
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 08:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o4wZCpdsued4GSaveE33h/Hc/WOR/noatt+VjAbfVv8=; b=I1Y37okEdkeOKi
	ikpw9Xa1rcvXfAjiYrnV8H9y3h9AND7cveoSFJC0pQEqE92llI3FURxu2XbOT3EMlBQpiWnwggw6D
	sjCnglOqBqhkjvtoFsjCAHiqLUF3SFTGxYsXgozHmjqW0trYl4bwK60AVtXPe58cKTFW2Io4zjAvP
	h2nSrL/NWWK8G1tiLLE5z85ACmXpDrKvfKDeR1RQhe6nvGEmYJ9SSTpDY8DWPBVwdObXGPQSin9Fu
	fJWY3zK2sZMDv8R2K7x7jAo/U3nEQ6Dza26H0KrMV4yjVx3FL7uBDgC3IhD+M2rBlDkEmFYpTkxGW
	AtSagoy1VhliPL5Vpa6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrzLm-00068x-Iy; Mon, 29 Jul 2019 06:41:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrzKn-00068Y-1P
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 06:40:39 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hrzKh-0006rA-Ca; Mon, 29 Jul 2019 08:40:31 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hrzKg-0003NX-Tb; Mon, 29 Jul 2019 08:40:30 +0200
Date: Mon, 29 Jul 2019 08:40:30 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
Message-ID: <20190729064030.7uenld2kbof45zti@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-5-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726184045.14669-5-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_234037_292775_4252150B 
X-CRM114-Status: GOOD (  17.73  )
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
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 08:40:43PM +0200, Jernej Skrabec wrote:
> Now that sun4i PWM driver supports deasserting reset line and enabling
> bus clock, support for H6 PWM can be added.
> =

> Note that while H6 PWM has two channels, only first one is wired to
> output pin. Second channel is used as a clock source to companion AC200
> chip which is bundled into same package.
> =

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/pwm/pwm-sun4i.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> =

> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index 7d3ac3f2dc3f..9e0eca79ff88 100644
> --- a/drivers/pwm/pwm-sun4i.c
> +++ b/drivers/pwm/pwm-sun4i.c
> @@ -331,6 +331,13 @@ static const struct sun4i_pwm_data sun4i_pwm_single_=
bypass =3D {
>  	.npwm =3D 1,
>  };
>  =

> +static const struct sun4i_pwm_data sun50i_pwm_dual_bypass_clk_rst =3D {
> +	.has_bus_clock =3D true,
> +	.has_prescaler_bypass =3D true,
> +	.has_reset =3D true,
> +	.npwm =3D 2,
> +};
> +
>  static const struct of_device_id sun4i_pwm_dt_ids[] =3D {
>  	{
>  		.compatible =3D "allwinner,sun4i-a10-pwm",
> @@ -347,6 +354,9 @@ static const struct of_device_id sun4i_pwm_dt_ids[] =
=3D {
>  	}, {
>  		.compatible =3D "allwinner,sun8i-h3-pwm",
>  		.data =3D &sun4i_pwm_single_bypass,
> +	}, {
> +		.compatible =3D "allwinner,sun50i-h6-pwm",
> +		.data =3D &sun50i_pwm_dual_bypass_clk_rst,

If you follow my suggestion for the two previous patches, you can just
use:

	compatible =3D "allwinner,sun50i-h6-pwm", "allwinner,sun5i-a10s-pwm";

and drop this patch.

Best regards
Uwe

>  	}, {
>  		/* sentinel */
>  	},
> -- =

> 2.22.0
> =

> =


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
