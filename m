Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7883105B92
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 22:06:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iWrwc8K0rC61KdMCO69kJxRbkikAnXNyAAkPjdo+xw=; b=mAamCcUJGVRNtx
	pfvTcp/EoRUzrx4tbL1NIB4Se5eMJv58t9LrY2ZdPzWg4RB3C8OAzZ0vFRlaMZJJC06+iZEfJ7nDE
	jfqTQ1hna0Y6WtR/nkxOdGBSURps6b+7JstQ09wLuym9KffSmbn+TzSzg1z8hfIcpQ2JJ8lcsAJY6
	wM3lsAjpEYUx2EwnHIuRlSr1lNieDUPq1+RunxHvcmKmErfjtSJG2nBt2aFLLVFLHCDAlvt/o0Pwo
	g3HXN60Py8v0RlQV5+yAEEaKjJ45K/G2zDjise4GbbHUfgFZPXJM/eltWudYi5J7sDsyc24nVSscn
	MPLFGVDBfzSrxJth2LRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXtea-000348-2q; Thu, 21 Nov 2019 21:06:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXteS-00033d-LV
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 21:06:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iXteL-000788-O7; Thu, 21 Nov 2019 22:06:01 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iXteJ-0005WV-4h; Thu, 21 Nov 2019 22:05:59 +0100
Date: Thu, 21 Nov 2019 22:05:59 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v8 3/6] pwm: sun4i: Add an optional probe for bus clock
Message-ID: <20191121210559.pz3nsyomqfrjuoe4@pengutronix.de>
References: <20191121195902.6906-1-peron.clem@gmail.com>
 <20191121195902.6906-4-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121195902.6906-4-peron.clem@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_130608_702084_6B3E920F 
X-CRM114-Status: GOOD (  18.10  )
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>, Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 08:58:59PM +0100, Cl=E9ment P=E9ron wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
> =

> H6 PWM core needs bus clock to be enabled in order to work.
> =

> Add an optional probe for it.
> =

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  drivers/pwm/pwm-sun4i.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> =

> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index 369990ae7d09..66befd8d6f9c 100644
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
> @@ -391,6 +392,14 @@ static int sun4i_pwm_probe(struct platform_device *p=
dev)
>  		}
>  	}
>  =

> +	pwm->bus_clk =3D devm_clk_get_optional(&pdev->dev, "bus");
> +	if (IS_ERR(pwm->bus_clk)) {
> +		if (PTR_ERR(pwm->rst) !=3D -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "get bus clock failed %pe\n",
> +				pwm->bus_clk);
> +		return PTR_ERR(pwm->bus_clk);
> +	}
> +
>  	pwm->rst =3D devm_reset_control_get_optional_shared(&pdev->dev, NULL);
>  	if (IS_ERR(pwm->rst)) {
>  		if (PTR_ERR(pwm->rst) !=3D -EPROBE_DEFER)
> @@ -407,6 +416,17 @@ static int sun4i_pwm_probe(struct platform_device *p=
dev)
>  		return ret;
>  	}
>  =

> +	/*
> +	 * We're keeping the bus clock on for the sake of simplicity.
> +	 * Actually it only needs to be on for hardware register accesses.
> +	 */
> +	ret =3D clk_prepare_enable(pwm->bus_clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Cannot prepare and enable bus_clk %d\n",
> +			ret);

nitpick: other error messages in this driver start with a lower case
letter.

Until there is an equivalent for %pe that consumes an int, I suggest to
use

	dev_err(&pdev->dev, "Cannot prepare and enable bus_clk: %pe\n",
	        ERR_PTR(ret));

to benefit from a symbolic error name instead of an error constant.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
