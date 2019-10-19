Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B78DD799
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 11:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=73aPmCBp5qAvAj4upqAtbTvE/8Nh+Rn1BYyR5wPipa0=; b=pU7pq7I3w08h8NfrCXXg+Qq41
	1E5Bq7jq9wIx8AOwmX4o/8R32gnokgpS5Udc4jeHJMJf9h+4IPjzOx+d/i+/BW5KojyJwJfhzSxPv
	xC7BckzMHYBZdHHyubhj5E/eOu/VbWb+xrb3UeJMJfxHbPAFsfsYH9h2sW8Q+iWkgBldT1aui29no
	94KAjLCGZMEHB2CZFIvZWt2xzlDwAIrZ4EamoyFh5BQX8GLvYwsMuED2uyNnhAL/kX6oA72pW3FWM
	bIgPI+QqgRHMNG7B+JgMrUsTAJ761Cg419+85z3hQgOzmVzfUBLhWLRNK7Bxs9dBqcGNKFLeZe7Y9
	aaqcke7jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLkiQ-0000kF-KU; Sat, 19 Oct 2019 09:08:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLkiH-0000jh-EH
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 09:07:54 +0000
Received: from earth.universe (cust-west-pareq2-46-193-15-226.wb.wifirst.net
 [46.193.15.226])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61CA4222BD;
 Sat, 19 Oct 2019 09:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571476071;
 bh=2NV1TbgKu0bniyswdY2XigFoPiodZ4JCFnDTC2Fo65s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JzDjJoNhHYTL8BCTBueDInYQDm60wgqitp03SmHlqyBtzefokIe2is+Cjdhvr/Lcf
 XIt3oI7ab4mwzPFhPlNZJfVQP27C3h6P4Lg7oqM6/tdD9nbtghRYAJPI0oYJycV16y
 obMaQ9q3yGLEpXXXCHP8BV4KLP2eLpPtLkbeXm54=
Received: by earth.universe (Postfix, from userid 1000)
 id 50EAF3C09B1; Sat, 19 Oct 2019 11:07:49 +0200 (CEST)
Date: Sat, 19 Oct 2019 11:07:49 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 39/46] power: tosa: simplify probe function
Message-ID: <20191019090749.ps27yjfebzscw2pk@earth.universe>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-39-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-39-arnd@arndb.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_020753_523987_5A778F99 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [46.193.15.226 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3626242898177746919=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3626242898177746919==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cpv762fyyxe52a6d"
Content-Disposition: inline


--cpv762fyyxe52a6d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Arnd,

On Fri, Oct 18, 2019 at 05:41:54PM +0200, Arnd Bergmann wrote:
> We have three power supplies that need similar initialization.
> As a preparation for the gpio lookup table conversion, split
> out the initialization into a separate function.
>=20
> Cc: Sebastian Reichel <sre@kernel.org>
> Cc: linux-pm@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

Assuming, that the whole series goes through ARM:

Reviewed-by: Sebastian Reichel <sre@kernel.org>
Acked-by: Sebastian Reichel <sre@kernel.org>

If the series doesn't make it into 5.5, I can also apply
this cleanup patch.

-- Sebastian

>  drivers/power/supply/tosa_battery.c | 50 ++++++++++++++---------------
>  1 file changed, 24 insertions(+), 26 deletions(-)
>=20
> diff --git a/drivers/power/supply/tosa_battery.c b/drivers/power/supply/t=
osa_battery.c
> index 32cc31cd4761..b26b0eca33e1 100644
> --- a/drivers/power/supply/tosa_battery.c
> +++ b/drivers/power/supply/tosa_battery.c
> @@ -343,12 +343,24 @@ static int tosa_bat_resume(struct platform_device *=
dev)
>  #define tosa_bat_resume NULL
>  #endif
> =20
> +static int tosa_power_supply_register(struct device *dev,
> +			struct tosa_bat *bat,
> +			const struct power_supply_desc *desc)
> +{
> +	struct power_supply_config cfg =3D {
> +		.drv_data =3D bat,
> +	};
> +
> +	mutex_init(&bat->work_lock);
> +	bat->psy =3D power_supply_register(dev, desc, &cfg);
> +
> +	return PTR_ERR_OR_ZERO(bat->psy);
> +}
> +
> +
>  static int tosa_bat_probe(struct platform_device *dev)
>  {
>  	int ret;
> -	struct power_supply_config main_psy_cfg =3D {},
> -				   jacket_psy_cfg =3D {},
> -				   bu_psy_cfg =3D {};
> =20
>  	if (!machine_is_tosa())
>  		return -ENODEV;
> @@ -357,36 +369,22 @@ static int tosa_bat_probe(struct platform_device *d=
ev)
>  	if (ret)
>  		return ret;
> =20
> -	mutex_init(&tosa_bat_main.work_lock);
> -	mutex_init(&tosa_bat_jacket.work_lock);
> -
>  	INIT_WORK(&bat_work, tosa_bat_work);
> =20
> -	main_psy_cfg.drv_data =3D &tosa_bat_main;
> -	tosa_bat_main.psy =3D power_supply_register(&dev->dev,
> -						  &tosa_bat_main_desc,
> -						  &main_psy_cfg);
> -	if (IS_ERR(tosa_bat_main.psy)) {
> -		ret =3D PTR_ERR(tosa_bat_main.psy);
> +	ret =3D tosa_power_supply_register(&dev->dev, &tosa_bat_main,
> +					 &tosa_bat_main_desc);
> +	if (ret)
>  		goto err_psy_reg_main;
> -	}
> =20
> -	jacket_psy_cfg.drv_data =3D &tosa_bat_jacket;
> -	tosa_bat_jacket.psy =3D power_supply_register(&dev->dev,
> -						    &tosa_bat_jacket_desc,
> -						    &jacket_psy_cfg);
> -	if (IS_ERR(tosa_bat_jacket.psy)) {
> -		ret =3D PTR_ERR(tosa_bat_jacket.psy);
> +	ret =3D tosa_power_supply_register(&dev->dev, &tosa_bat_jacket,
> +					 &tosa_bat_jacket_desc);
> +	if (ret)
>  		goto err_psy_reg_jacket;
> -	}
> =20
> -	bu_psy_cfg.drv_data =3D &tosa_bat_bu;
> -	tosa_bat_bu.psy =3D power_supply_register(&dev->dev, &tosa_bat_bu_desc,
> -						&bu_psy_cfg);
> -	if (IS_ERR(tosa_bat_bu.psy)) {
> -		ret =3D PTR_ERR(tosa_bat_bu.psy);
> +	ret =3D tosa_power_supply_register(&dev->dev, &tosa_bat_bu,
> +					 &tosa_bat_bu_desc);
> +	if (ret)
>  		goto err_psy_reg_bu;
> -	}
> =20
>  	ret =3D request_irq(gpio_to_irq(TOSA_GPIO_BAT0_CRG),
>  				tosa_bat_gpio_isr,
> --=20
> 2.20.0
>=20

--cpv762fyyxe52a6d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl2q0l4ACgkQ2O7X88g7
+pqrAA//T4fPon8Kb85iC60YZSLoMlrHDrQophLfczRWBFp8KM4eU/bZV8g4tqnW
lvYGN7gWFAScpNVrFVEmpDFGNK/9WlfLAnnAYI7Q/hS4HZ38IdJqyETB6h32Q4uX
UIL3ZREdyKB8NRSeWYk0GlEAaGv+/dNfcOdRyrAM2k6CNPjMQVOBLE0NcqXc3fSi
qtIJO3LkSB1sMSp2RD1GGAkmbofLKH/u5ej/B4osh5J+B5dtGBME0kvGYux5hhQk
Tu31XCKayix0IejLiLa/pBc4BDrrOD1EXe6PqYvXHyLfpFDEOdnCwiqElXnf0UN2
aA39iq/hx2p3tmDSRaAFri6XyanqGafaKofq6U41CrG5CanUKwrtm4p+l0ziFg8a
iBhs6/W8gR4rBBJg85pxGRPEJ2KTS/BIOvJZuIlZpUA8LKIUcsxwI8fA9iJJ1QPF
8+GSMW17eOTd36EJDB5C7lGHNT0N4FS4ARErNUNfDwZne9mOVNTFErHmyVrXVNPy
IX/pF7r34/gnTe3hL07W+4WQg52URr1wrHyds0p6fEv9lnrykP4k7hetFqp5CgBU
8vEG2Bj7PWkAs9VkZ460ZnEoB3DJJ3xxvheeeoc9ZTnwHLcIQg2f+51WNJ2ilS1O
QQcJiIcM2GFwTAwpmohtqYoI3oYmOEBpxKxU7PCM+35QFEyCVd4=
=6w5s
-----END PGP SIGNATURE-----

--cpv762fyyxe52a6d--


--===============3626242898177746919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3626242898177746919==--

