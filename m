Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA3B1353D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 08:45:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ny2C3seWlIz9EzpCFdZoEqWGIhAQjcpLoBapTf/hvw=; b=lz7g60DVktukwj
	bnpf7sTnTrU+5PyJoa7nN/hV2zBzA68Jln8z5MkCoJc8y3ryaEBeMQ4xdz4nWsplQmf0cMi8d0c6O
	q3KeWhl9jY8q5bkV7qamfYbG7fT+xptmFKOF/9TEweaer3umG5IlLCeeBcUlYQdcZlk3qi0CwtY3m
	PvDgsDnyMJVmzwNxq05IOD3E6u2VrP0rLPiuQ0HgSm4mXwXDhz697Auy5n27XMa1MZBPkLDxeKcS/
	+3Do578jFlQamSW69YwAtym9wgtN+sV6Kbl8zyJ45whDbCslZXTmeY4SpmJ/tGD1pxwwph+NGREI5
	WwAP33f6AjQkxBQF4DCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSVH-0005Yi-Ge; Thu, 09 Jan 2020 07:45:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSV6-0004n1-Cn
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 07:45:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ipSUr-0002GW-6r; Thu, 09 Jan 2020 08:44:49 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ipSUn-0006QY-Cm; Thu, 09 Jan 2020 08:44:45 +0100
Date: Thu, 9 Jan 2020 08:44:45 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] pwm: sun4i: Fix inconsistent IS_ERR and PTR_ERR
Message-ID: <20200109074445.73n3vapjl4vfjtsu@pengutronix.de>
References: <20200109072735.GA22886@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109072735.GA22886@embeddedor>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_234504_436306_14959AC5 
X-CRM114-Status: GOOD (  16.07  )
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Gustavo,

On Thu, Jan 09, 2020 at 01:27:35AM -0600, Gustavo A. R. Silva wrote:
> Fix inconsistent IS_ERR and PTR_ERR in sun4i_pwm_probe().
> =

> The proper pointers to be passed as arguments are pwm->clk and pwm->bus_c=
lk.
> =

> This bug was detected with the help of Coccinelle.
> =

> Fixes: b8d74644f34a ("pwm: sun4i: Prefer "mod" clock to unnamed")
> Fixes: 5b090b430d75 ("pwm: sun4i: Add an optional probe for bus clock")
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> ---
>  drivers/pwm/pwm-sun4i.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index 1afd41ebd3fd..a805c347ee84 100644
> --- a/drivers/pwm/pwm-sun4i.c
> +++ b/drivers/pwm/pwm-sun4i.c
> @@ -423,7 +423,7 @@ static int sun4i_pwm_probe(struct platform_device *pd=
ev)
>  	 */
>  	pwm->clk =3D devm_clk_get_optional(&pdev->dev, "mod");
>  	if (IS_ERR(pwm->clk)) {
> -		if (PTR_ERR(pwm->rst) !=3D -EPROBE_DEFER)
> +		if (PTR_ERR(pwm->clk) !=3D -EPROBE_DEFER)

How embarrassing that I didn't notice these. Thanks for catching.

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
