Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E92419C362
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 15:58:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aGJqGl9QAXpISgwhkHDuNe5En1gdfdRHRvgBkS3toUw=; b=M23qpm3EmPUM8KuEntvoKVDox
	IQdipS6g6SHJ9x9+XDFfGlSAjjHFjHeqPf3sR4cWyRjFeqt/dAD2QaAMvmPrPQy1CA9MbeWF2mm5r
	NKimB2mhfvsMkBi697OsSEd+L4pdbwMUNBa1GTJdcXgzL5L9eKmuXhpMdTLEy+KHmi/0cHNMEvOWG
	G4rsoh1NUle/jOlAgJhAdqwrDOGsrGro6K44Wf8kTK2JhXKwjKBsLW3l9QZ68ao3AzPISyXdyfD4J
	R7vuA7Tua7+CncOh0XusLvnk9qBLSyk1XhJ4kprBniLhBsE0bkXq9MI0DeMMIOoGWBzAjfpL7Efmr
	O7ktv4t3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0MA-0002K8-SA; Thu, 02 Apr 2020 13:58:06 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0M0-0002FA-BX
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 13:57:58 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 66E12E0007;
 Thu,  2 Apr 2020 13:57:50 +0000 (UTC)
Date: Thu, 2 Apr 2020 15:57:50 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 1/2] rtc: sun6i: let the core handle rtc range
Message-ID: <20200402135750.GB625345@aptenodytes>
References: <20200330201226.860967-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20200330201226.860967-1-alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_065756_664405_4A0E26DB 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5164750693492482110=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5164750693492482110==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="V0207lvV8h4k8FAm"
Content-Disposition: inline


--V0207lvV8h4k8FAm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 30 Mar 20, 22:12, Alexandre Belloni wrote:
> Let the rtc core check the date/time against the RTC range.
>=20
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

This was successfully:
Tested-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> ---
>  drivers/rtc/rtc-sun6i.c | 25 ++++++++++---------------
>  1 file changed, 10 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/rtc/rtc-sun6i.c b/drivers/rtc/rtc-sun6i.c
> index 415a20a936e4..446ce38c1592 100644
> --- a/drivers/rtc/rtc-sun6i.c
> +++ b/drivers/rtc/rtc-sun6i.c
> @@ -108,7 +108,6 @@
>   * driver, even though it is somewhat limited.
>   */
>  #define SUN6I_YEAR_MIN				1970
> -#define SUN6I_YEAR_MAX				2033
>  #define SUN6I_YEAR_OFF				(SUN6I_YEAR_MIN - 1900)
> =20
>  /*
> @@ -569,14 +568,6 @@ static int sun6i_rtc_settime(struct device *dev, str=
uct rtc_time *rtc_tm)
>  	struct sun6i_rtc_dev *chip =3D dev_get_drvdata(dev);
>  	u32 date =3D 0;
>  	u32 time =3D 0;
> -	int year;
> -
> -	year =3D rtc_tm->tm_year + 1900;
> -	if (year < SUN6I_YEAR_MIN || year > SUN6I_YEAR_MAX) {
> -		dev_err(dev, "rtc only supports year in range %d - %d\n",
> -			SUN6I_YEAR_MIN, SUN6I_YEAR_MAX);
> -		return -EINVAL;
> -	}
> =20
>  	rtc_tm->tm_year -=3D SUN6I_YEAR_OFF;
>  	rtc_tm->tm_mon +=3D 1;
> @@ -585,7 +576,7 @@ static int sun6i_rtc_settime(struct device *dev, stru=
ct rtc_time *rtc_tm)
>  		SUN6I_DATE_SET_MON_VALUE(rtc_tm->tm_mon)  |
>  		SUN6I_DATE_SET_YEAR_VALUE(rtc_tm->tm_year);
> =20
> -	if (is_leap_year(year))
> +	if (is_leap_year(rtc_tm->tm_year + SUN6I_YEAR_MIN))
>  		date |=3D SUN6I_LEAP_SET_VALUE(1);
> =20
>  	time =3D SUN6I_TIME_SET_SEC_VALUE(rtc_tm->tm_sec)  |
> @@ -726,12 +717,16 @@ static int sun6i_rtc_probe(struct platform_device *=
pdev)
> =20
>  	device_init_wakeup(&pdev->dev, 1);
> =20
> -	chip->rtc =3D devm_rtc_device_register(&pdev->dev, "rtc-sun6i",
> -					     &sun6i_rtc_ops, THIS_MODULE);
> -	if (IS_ERR(chip->rtc)) {
> -		dev_err(&pdev->dev, "unable to register device\n");
> +	chip->rtc =3D devm_rtc_allocate_device(&pdev->dev);
> +	if (IS_ERR(chip->rtc))
>  		return PTR_ERR(chip->rtc);
> -	}
> +
> +	chip->rtc->ops =3D &sun6i_rtc_ops;
> +	chip->rtc->range_max =3D 2019686399LL; /* 2033-12-31 23:59:59 */
> +
> +	ret =3D rtc_register_device(chip->rtc);
> +	if (ret)
> +		return ret;
> =20
>  	dev_info(&pdev->dev, "RTC enabled\n");
> =20
> --=20
> 2.25.1
>=20
>=20
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--V0207lvV8h4k8FAm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6F710ACgkQ3cLmz3+f
v9Gq1wf/eZuw4SqfApdh/ne7KCouiVqi0dVgGBxHtJS+Ri7ubxxKPy6gL4uvjq4b
mWk8NTgQS9SQR+tcPxT54JBoN/PlYiB8yaI8ZUBOsHTMl2F3HZfvvaVNWlqiLqd0
hDt+aw6lO0j1q48VDR55EcjxocBCDrEGrpnM65lZc6qg7FWtxgSRWSxMUWm/AKiD
YHzNzP2gjWEyQ5a34KoYZK64bTJcWS7F+hqh7gUWs33hzT4qtL3BlSGJf5Dz4dFN
Z82A5GkA9WVDULUgO7VmaFDsg8VRGZpzg3OOXFRpMnXOprILikTU6zKuJqfb+0+F
znTn9YNLLJYbRsAgJ2Hr9/oJCIlnZw==
=sjtj
-----END PGP SIGNATURE-----

--V0207lvV8h4k8FAm--


--===============5164750693492482110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5164750693492482110==--

