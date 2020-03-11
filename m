Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72351824CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 23:25:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ng3zoI4u+tmGektb+YNm8sxU1j7NiLX41L3L2mepN4M=; b=WWFUURS7il2JGOZtAzQ1Gl1o6
	+akWBcIBbkllTCc5KYy2D6TPk3ku4hkpSs9jVUpWOAzHNhzTLiXtPRLi7RMdX6SzE15ta88loaMZ0
	mWOibcTQe/NDsNnJGAqBIdhqMsTE2mgBRc4KrgZaI5I6WByQKfjROqFQfpZ2N9hYmMqzrsn1SZChz
	NO1q0IX3iiqzJdtAgLT1X2dlJUUONn4yDsBk4Vhy8XK8lVA/d7q5Cr45CLk2+BCgDN2Xee+NY1Saq
	qMF0jN258a4Tc0GkrL5MbG8ScoPs7aTspfwnOhemryxg9lo64DTMn5D6R9sZMGIdivi2wRb0i+TPd
	sCb+TT+SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC9mr-0002yk-Pz; Wed, 11 Mar 2020 22:25:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC9mZ-0002yH-6e; Wed, 11 Mar 2020 22:24:56 +0000
Received: from jupiter.universe (dyndsl-037-138-186-138.ewe-ip-backbone.de
 [37.138.186.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4904820575;
 Wed, 11 Mar 2020 22:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583965494;
 bh=UZudGW4ntWR2WDjFg7rUyYyM4uljMpWCzCsi4J+ORvk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gfGX/r286WMLdJy5TKyVTTLMx6xyzdGvb1b0jKt8PBaYqHqLf+JvTFGPC9iB6rcxK
 sLrugxbZURjcvYnT7DmgWKnw+/NSDwe+QkcNCSlHXH89QgTBay2LsWf1FCHihdRlhf
 e5wgd8i82/7gEPDbFUU7lRaAnJx1O3gj8l8OlSEs=
Received: by jupiter.universe (Postfix, from userid 1000)
 id 8F7CB4800FC; Wed, 11 Mar 2020 23:24:52 +0100 (CET)
Date: Wed, 11 Mar 2020 23:24:52 +0100
From: Sebastian Reichel <sre@kernel.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v10 4/5] rtc: mt6397: Add support for the MediaTek MT6358
 RTC
Message-ID: <20200311222452.nxeajmbbpidbwyal@jupiter.universe>
References: <1583918223-22506-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1583918223-22506-5-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1583918223-22506-5-git-send-email-hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_152455_282793_78D02D5E 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Frank Wunderlich <frank-w@public-files.de>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Josef Friedl <josef.friedl@speed.at>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1937636271973347121=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1937636271973347121==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h2zavgzncyp2cq5o"
Content-Disposition: inline


--h2zavgzncyp2cq5o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Mar 11, 2020 at 05:17:02PM +0800, Hsin-Hsiung Wang wrote:
> From: Ran Bi <ran.bi@mediatek.com>
>=20
> This add support for the MediaTek MT6358 RTC. Driver using
> compatible data to store different RTC_WRTGR address offset.
> This replace RTC_WRTGR to RTC_WRTGR_MT6323 in mt6323-poweroff
> driver which only needed by armv7 CPU without ATF.
>=20
> Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---

Should be fine to simply merge this through RTC:

Acked-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  drivers/power/reset/mt6323-poweroff.c |  2 +-
>  drivers/rtc/rtc-mt6397.c              | 32 ++++++++++++++++++++++++-----=
---
>  include/linux/mfd/mt6397/rtc.h        |  9 ++++++++-
>  3 files changed, 33 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/power/reset/mt6323-poweroff.c b/drivers/power/reset/=
mt6323-poweroff.c
> index 1caf43d..0532803 100644
> --- a/drivers/power/reset/mt6323-poweroff.c
> +++ b/drivers/power/reset/mt6323-poweroff.c
> @@ -30,7 +30,7 @@ static void mt6323_do_pwroff(void)
>  	int ret;
> =20
>  	regmap_write(pwrc->regmap, pwrc->base + RTC_BBPU, RTC_BBPU_KEY);
> -	regmap_write(pwrc->regmap, pwrc->base + RTC_WRTGR, 1);
> +	regmap_write(pwrc->regmap, pwrc->base + RTC_WRTGR_MT6323, 1);
> =20
>  	ret =3D regmap_read_poll_timeout(pwrc->regmap,
>  					pwrc->base + RTC_BBPU, val,
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index cda238d..7a5a9e2 100644
> --- a/drivers/rtc/rtc-mt6397.c
> +++ b/drivers/rtc/rtc-mt6397.c
> @@ -9,18 +9,38 @@
>  #include <linux/mfd/mt6397/core.h>
>  #include <linux/module.h>
>  #include <linux/mutex.h>
> +#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
>  #include <linux/rtc.h>
>  #include <linux/mfd/mt6397/rtc.h>
>  #include <linux/mod_devicetable.h>
> =20
> +static const struct mtk_rtc_data mt6358_rtc_data =3D {
> +	.wrtgr =3D RTC_WRTGR_MT6358,
> +};
> +
> +static const struct mtk_rtc_data mt6397_rtc_data =3D {
> +	.wrtgr =3D RTC_WRTGR_MT6397,
> +};
> +
> +static const struct of_device_id mt6397_rtc_of_match[] =3D {
> +	{ .compatible =3D "mediatek,mt6323-rtc",
> +		.data =3D (void *)&mt6397_rtc_data, },
> +	{ .compatible =3D "mediatek,mt6358-rtc",
> +		.data =3D (void *)&mt6358_rtc_data, },
> +	{ .compatible =3D "mediatek,mt6397-rtc",
> +		.data =3D (void *)&mt6397_rtc_data, },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, mt6397_rtc_of_match);
> +
>  static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
>  {
>  	int ret;
>  	u32 data;
> =20
> -	ret =3D regmap_write(rtc->regmap, rtc->addr_base + RTC_WRTGR, 1);
> +	ret =3D regmap_write(rtc->regmap, rtc->addr_base + rtc->data->wrtgr, 1);
>  	if (ret < 0)
>  		return ret;
> =20
> @@ -269,6 +289,9 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>  	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	rtc->addr_base =3D res->start;
> =20
> +	rtc->data =3D (struct mtk_rtc_data *)
> +			of_device_get_match_data(&pdev->dev);
> +
>  	rtc->irq =3D platform_get_irq(pdev, 0);
>  	if (rtc->irq < 0)
>  		return rtc->irq;
> @@ -325,13 +348,6 @@ static int mt6397_rtc_resume(struct device *dev)
>  static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_rtc_suspend,
>  			mt6397_rtc_resume);
> =20
> -static const struct of_device_id mt6397_rtc_of_match[] =3D {
> -	{ .compatible =3D "mediatek,mt6323-rtc", },
> -	{ .compatible =3D "mediatek,mt6397-rtc", },
> -	{ }
> -};
> -MODULE_DEVICE_TABLE(of, mt6397_rtc_of_match);
> -
>  static struct platform_driver mtk_rtc_driver =3D {
>  	.driver =3D {
>  		.name =3D "mt6397-rtc",
> diff --git a/include/linux/mfd/mt6397/rtc.h b/include/linux/mfd/mt6397/rt=
c.h
> index 7dfb63b..66534ed 100644
> --- a/include/linux/mfd/mt6397/rtc.h
> +++ b/include/linux/mfd/mt6397/rtc.h
> @@ -18,7 +18,9 @@
>  #define RTC_BBPU_CBUSY         BIT(6)
>  #define RTC_BBPU_KEY            (0x43 << 8)
> =20
> -#define RTC_WRTGR              0x003c
> +#define RTC_WRTGR_MT6358       0x3a
> +#define RTC_WRTGR_MT6397       0x3c
> +#define RTC_WRTGR_MT6323       RTC_WRTGR_MT6397
> =20
>  #define RTC_IRQ_STA            0x0002
>  #define RTC_IRQ_STA_AL         BIT(0)
> @@ -65,6 +67,10 @@
>  #define MTK_RTC_POLL_DELAY_US  10
>  #define MTK_RTC_POLL_TIMEOUT   (jiffies_to_usecs(HZ))
> =20
> +struct mtk_rtc_data {
> +	u32			wrtgr;
> +};
> +
>  struct mt6397_rtc {
>  	struct device           *dev;
>  	struct rtc_device       *rtc_dev;
> @@ -74,6 +80,7 @@ struct mt6397_rtc {
>  	struct regmap           *regmap;
>  	int                     irq;
>  	u32                     addr_base;
> +	const struct mtk_rtc_data *data;
>  };
> =20
>  #endif /* _LINUX_MFD_MT6397_RTC_H_ */
> --=20
> 2.6.4

--h2zavgzncyp2cq5o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl5pZTQACgkQ2O7X88g7
+pq9wQ/+KoirFKK4cM7Qw34TtpdNX2uGtfuzcUmBKNjfJl/5WCUE/qo5WgaKcplR
VgE7uQWOzATqT3mQxG0iH2lzyXd2BVP2PJyEbswUyWTw/hZYLsrT2i+DKvQ4UKQa
WDKOvNwWsZMJrVAYnyV35Xsp4pWr2yFER61UiAMLlaXhhRzOLQE+P8dd4dr0cFhu
OgWclCmPjvLgVJsRbLvbyhQ2cLmTwnwBJICbHG+j8FQ0se2EgwzLyOl/45/6Oae+
qIzjAlZwYAwTmSpwCUeTLSJBp8i4BRg/xETQYpGf6cfBrf7VzBnQFZMo7rdGfj5G
gTJtq7yqAHlCXN1xQsYhy1Xx+SCl9y6Afjr7jyPW3iHnGvjrVeD1SR7tpDL3G9aT
iRviJlgdfpp7SrT0PwQkQ+Nk2OS2CqUcdWoTjODOtUPxQeAVcE2Hj14qjlcvftVa
+TGsljzNgIu8rfjwyqnf4ppfSMzK+M5tWCyzPLmKxZSchgvHILQ5DFlpYYG8HV/E
rUWRsEO9o1KZdlaOne98g90WZqbbqPRa3qpPUihmvj0yUlNsB7cPWBalFx8A8kAc
dGXnDj36egCGIb4Y5R3GtStgE6J4aDctSQuQzlm6vfk2C7sebUuTLmuy44TWMxez
L8QZ8aytJjFJ2dDAyUkHuTDJ47im2TyeIAbPfB/HkA7UYSM/Ars=
=P8yi
-----END PGP SIGNATURE-----

--h2zavgzncyp2cq5o--


--===============1937636271973347121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1937636271973347121==--

