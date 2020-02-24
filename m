Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BA916A3CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 11:22:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVHrIGLGMIVl8Bz46/TEucIYC6VycVWEpdfqjv4CwiE=; b=NqDg/Q+v1hh/q5
	4lCuMBTkiPFLczfWDwh8VUGqfKO18OdTJ6krct/ifDoDxozNxpeHspK2S1Fs/WLxokIvShuvLZYWu
	j4qeL3zcNUXpZ5ycNTBllnRIXHnouRMupw9w6Ee2uY6ZP8SvHgq1/LqaOjGCiehX0YU3Y4IwoFqbp
	lLrsQxrRaAOBB2diXjZizrbC568InLaN0/5k/hVmf84nUDA8//nhkjLv3bAYoN/qNgncGF/S0qtJu
	dJMwj8MgXlQKdWDwv+UcXG4wNVqLAQbek8kLvgnC4IwlTboEfPKGd5IuriW4tNCBrHYzcYBxL6klc
	phsE90NwYP25VSQinkgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Asg-0008RE-CB; Mon, 24 Feb 2020 10:22:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6AsW-0008Qn-QL
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 10:22:22 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j6AsO-0006AU-OD; Mon, 24 Feb 2020 11:22:12 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j6AsN-00010t-EU; Mon, 24 Feb 2020 11:22:11 +0100
Date: Mon, 24 Feb 2020 11:22:11 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] watchdog: imx2_wdt: Drop .remove callback
Message-ID: <20200224102211.clzqw4vtzc4nz5df@pengutronix.de>
References: <1582512687-13312-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582512687-13312-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_022220_855357_9D957BA2 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-watchdog@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, wim@linux-watchdog.org, festevam@gmail.com,
 linux@roeck-us.net, Linux-imx@nxp.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 10:51:27AM +0800, Anson Huang wrote:
> .remove callback implementation doesn' call clk_disable_unprepare() which
> is buggy, actually, we can just use devm_watchdog_register_device() and
> devm_add_action_or_reset() to handle all necessary operations for remove
> action, then .remove callback can be dropped.
> =

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/watchdog/imx2_wdt.c | 37 ++++++++++---------------------------
>  1 file changed, 10 insertions(+), 27 deletions(-)
> =

> diff --git a/drivers/watchdog/imx2_wdt.c b/drivers/watchdog/imx2_wdt.c
> index f8d58bf..1fe472f 100644
> --- a/drivers/watchdog/imx2_wdt.c
> +++ b/drivers/watchdog/imx2_wdt.c
> @@ -244,6 +244,11 @@ static const struct regmap_config imx2_wdt_regmap_co=
nfig =3D {
>  	.max_register =3D 0x8,
>  };
>  =

> +static void imx2_wdt_action(void *data)
> +{
> +	clk_disable_unprepare(data);

Does this have the effect of stopping the watchdog? Maybe we can have a
more expressive function name here (imx2_wdt_stop_clk or similar)?

Is there some watchdog core policy that tells if the watchdog should be
stopped on unload?

> +}
> +
>  static int __init imx2_wdt_probe(struct platform_device *pdev)
>  {
>  	struct device *dev =3D &pdev->dev;
> @@ -292,6 +297,10 @@ static int __init imx2_wdt_probe(struct platform_dev=
ice *pdev)
>  	if (ret)
>  		return ret;
>  =

> +	ret =3D devm_add_action_or_reset(dev, imx2_wdt_action, wdev->clk);
> +	if (ret)
> +		return ret;
> +
>  	regmap_read(wdev->regmap, IMX2_WDT_WRSR, &val);
>  	wdog->bootstatus =3D val & IMX2_WDT_WRSR_TOUT ? WDIOF_CARDRESET : 0;
>  =

> @@ -315,32 +324,7 @@ static int __init imx2_wdt_probe(struct platform_dev=
ice *pdev)
>  	 */
>  	regmap_write(wdev->regmap, IMX2_WDT_WMCR, 0);
>  =

> -	ret =3D watchdog_register_device(wdog);
> -	if (ret)
> -		goto disable_clk;
> -
> -	dev_info(dev, "timeout %d sec (nowayout=3D%d)\n",
> -		 wdog->timeout, nowayout);

Does the core put this info in the kernel log? If not dropping it isn't
obviously right enough to be done en passant.

> -	return 0;
> -
> -disable_clk:
> -	clk_disable_unprepare(wdev->clk);
> -	return ret;
> -}
> -
> -static int __exit imx2_wdt_remove(struct platform_device *pdev)
> -{
> -	struct watchdog_device *wdog =3D platform_get_drvdata(pdev);
> -	struct imx2_wdt_device *wdev =3D watchdog_get_drvdata(wdog);
> -
> -	watchdog_unregister_device(wdog);
> -
> -	if (imx2_wdt_is_running(wdev)) {
> -		imx2_wdt_ping(wdog);
> -		dev_crit(&pdev->dev, "Device removed: Expect reboot!\n");
> -	}

I also wonder about this one. This changes the timing behaviour and so
IMHO shouldn't be done as a side effect of a cleanup patch.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
