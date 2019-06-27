Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6851B589FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 20:28:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JCx/x3Tg+/FF3+1CYOcQTdkXkCPgGrOwafiyrMQGCO0=; b=IfbO/Q6ETH7TBPAw5fYGoTZer
	PSJHrb7fyra5sFRWPzokS2tVxu5/UkN8IYA2Exe2OQMCJZeSfSPHCFXhYAC9DIrBYJ+qOtFmYGJa7
	8tI8znQKvtXBz2p44qQN2MnQlYcWZZUaczFyYA9GeKf2Y4Yv5+PQ1ae2E6rJih7+Uk+D4XI19j5WD
	RueVufPY3AUX2c9PZgg+GaDQWWie8sZIUvpXuoOTqjLUkTGJi4Ir+p2HJZyY95Rru5Jnc3NGgkZBB
	XO5BCEHzUoKx43iODyyvGdwxnjeqitOnyPAbjE77x21kruInvyXmBD00iAofiUqGQ6cSguJgNBUhR
	lDIQmOCkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZ8M-0000lL-TI; Thu, 27 Jun 2019 18:28:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZ88-0000ke-JU; Thu, 27 Jun 2019 18:28:22 +0000
Received: from earth.universe (unknown [185.62.205.103])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D92F205F4;
 Thu, 27 Jun 2019 18:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561660100;
 bh=taqyQ1APEgX+EVCAzATmMcA2vqF2xWfz1x10hWSRsgI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hR15WHn5VGnYjJBJF3P3KfFz2mIU6gWMdyBW1J9JfNrAe3Wkox4nvnMreFyFc8Oga
 gHHKlRxzScRITQpZl1lYB4jheGTy3CTkrWujVUNozMy3/DQtRu1+16z5GQ7OQZL9gE
 dfQ26EIv4VN+fxjVF3qFiQDlpLL05BiHlURmYc7g=
Received: by earth.universe (Postfix, from userid 1000)
 id 66ADF3C08D5; Thu, 27 Jun 2019 20:28:17 +0200 (CEST)
Date: Thu, 27 Jun 2019 20:28:17 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Re: [PATCH 00/34] treewide: simplify getting the adapter of an I2C
 client
Message-ID: <20190627182817.5vrfmuzn7kanvtwu@earth.universe>
References: <20190608105619.593-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
In-Reply-To: <20190608105619.593-1-wsa+renesas@sang-engineering.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_112820_681334_578FF114 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, linux-rtc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-iio@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-renesas-soc@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1739110227938452194=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1739110227938452194==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dtrjmbi6re7vojrt"
Content-Disposition: inline


--dtrjmbi6re7vojrt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Jun 08, 2019 at 12:55:39PM +0200, Wolfram Sang wrote:
> While preparing a refactoring series, I noticed that some drivers use a
> complicated way of determining the adapter of a client. The easy way is
> to use the intended pointer: client->adapter
>=20
> These drivers do:
> 	to_i2c_adapter(client->dev.parent);
>=20
> The I2C core populates the parent pointer as:
> 	client->dev.parent =3D &client->adapter->dev;
>=20
> Now take into consideration that
> 	to_i2c_adapter(&adapter->dev);
>=20
> is a complicated way of saying 'adapter', then we can even formally
> prove that the complicated expression can be simplified by using
> client->adapter.
>=20
> The conversion was done using a coccinelle script with some manual
> indentation fixes applied on top.
>=20
> To avoid a brown paper bag mistake, I double checked this on a Renesas
> Salvator-XS board (R-Car M3N) and verified both expression result in the
> same pointer. Other than that, the series is only build tested.
>=20
> A branch can be found here:
>=20
> git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git i2c/no_to_ada=
pter
>=20
> Please apply the patches to the individual subsystem trees. There are no
> dependencies.
>=20
> Thanks and kind regards,
>=20
>    Wolfram

Thanks, I queued the patches prefixed with "power: supply: [...]".

-- Sebastian

> Wolfram Sang (34):
>   clk: clk-cdce706: simplify getting the adapter of a client
>   gpu: drm: bridge: sii9234: simplify getting the adapter of a client
>   iio: light: bh1780: simplify getting the adapter of a client
>   leds: leds-pca955x: simplify getting the adapter of a client
>   leds: leds-tca6507: simplify getting the adapter of a client
>   media: i2c: ak881x: simplify getting the adapter of a client
>   media: i2c: mt9m001: simplify getting the adapter of a client
>   media: i2c: mt9m111: simplify getting the adapter of a client
>   media: i2c: mt9p031: simplify getting the adapter of a client
>   media: i2c: ov2640: simplify getting the adapter of a client
>   media: i2c: tw9910: simplify getting the adapter of a client
>   misc: fsa9480: simplify getting the adapter of a client
>   misc: isl29003: simplify getting the adapter of a client
>   misc: tsl2550: simplify getting the adapter of a client
>   mtd: maps: pismo: simplify getting the adapter of a client
>   power: supply: bq24190_charger: simplify getting the adapter of a client
>   power: supply: bq24257_charger: simplify getting the adapter of a client
>   power: supply: bq25890_charger: simplify getting the adapter of a client
>   power: supply: max14656_charger_detector: simplify getting the adapter
>     of a client
>   power: supply: max17040_battery: simplify getting the adapter of a clie=
nt
>   power: supply: max17042_battery: simplify getting the adapter of a clie=
nt
>   power: supply: rt5033_battery: simplify getting the adapter of a client
>   power: supply: rt9455_charger: simplify getting the adapter of a client
>   power: supply: sbs-manager: simplify getting the adapter of a client
>   regulator: max8952: simplify getting the adapter of a client
>   rtc: fm3130: simplify getting the adapter of a client
>   rtc: m41t80: simplify getting the adapter of a client
>   rtc: rv8803: simplify getting the adapter of a client
>   rtc: rx8010: simplify getting the adapter of a client
>   rtc: rx8025: simplify getting the adapter of a client
>   staging: media: soc_camera: imx074: simplify getting the adapter of a c=
lient
>   staging: media: soc_camera: mt9t031: simplify getting the adapter of a =
client
>   staging: media: soc_camera: soc_mt9v022: simplify getting the adapter
>     of a client
>   usb: typec: tcpm: fusb302: simplify getting the adapter of a client
>=20
>  drivers/clk/clk-cdce706.c                        | 2 +-
>  drivers/gpu/drm/bridge/sii9234.c                 | 4 ++--
>  drivers/iio/light/bh1780.c                       | 2 +-
>  drivers/leds/leds-pca955x.c                      | 2 +-
>  drivers/leds/leds-tca6507.c                      | 2 +-
>  drivers/media/i2c/ak881x.c                       | 2 +-
>  drivers/media/i2c/mt9m001.c                      | 2 +-
>  drivers/media/i2c/mt9m111.c                      | 2 +-
>  drivers/media/i2c/mt9p031.c                      | 2 +-
>  drivers/media/i2c/ov2640.c                       | 2 +-
>  drivers/media/i2c/tw9910.c                       | 3 +--
>  drivers/misc/fsa9480.c                           | 2 +-
>  drivers/misc/isl29003.c                          | 2 +-
>  drivers/misc/tsl2550.c                           | 2 +-
>  drivers/mtd/maps/pismo.c                         | 2 +-
>  drivers/power/supply/bq24190_charger.c           | 2 +-
>  drivers/power/supply/bq24257_charger.c           | 2 +-
>  drivers/power/supply/bq25890_charger.c           | 2 +-
>  drivers/power/supply/max14656_charger_detector.c | 2 +-
>  drivers/power/supply/max17040_battery.c          | 2 +-
>  drivers/power/supply/max17042_battery.c          | 2 +-
>  drivers/power/supply/rt5033_battery.c            | 2 +-
>  drivers/power/supply/rt9455_charger.c            | 2 +-
>  drivers/power/supply/sbs-manager.c               | 2 +-
>  drivers/regulator/max8952.c                      | 2 +-
>  drivers/rtc/rtc-fm3130.c                         | 8 +++-----
>  drivers/rtc/rtc-m41t80.c                         | 2 +-
>  drivers/rtc/rtc-rv8803.c                         | 2 +-
>  drivers/rtc/rtc-rx8010.c                         | 2 +-
>  drivers/rtc/rtc-rx8025.c                         | 2 +-
>  drivers/staging/media/soc_camera/imx074.c        | 2 +-
>  drivers/staging/media/soc_camera/mt9t031.c       | 2 +-
>  drivers/staging/media/soc_camera/soc_mt9v022.c   | 2 +-
>  drivers/usb/typec/tcpm/fusb302.c                 | 3 +--
>  34 files changed, 37 insertions(+), 41 deletions(-)
>=20
> --=20
> 2.19.1
>=20

--dtrjmbi6re7vojrt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl0VCsEACgkQ2O7X88g7
+poEpxAAm77/GZ4czva5lDqclyAk1YfbiV55qi+jow32xQwZ17FXo8Ch9G11Qrwl
famQPiB/pD3r3m2TfihhFAcFjOGiwl9GxQJ+4at64Atab2w5BWh9zwDQWdtT80jF
3ytFncogbL36MVBgIv5YQUZQiqIiZlUei6lTOnnyfv3PLtvNVbIodxSVYp5qJWMy
M+qrdy6tAVsuK6yqAwPRhfjBzlmlLZVudUZqbAWKMbK1YBt0rkkSNw9xpF1pLrv6
zLbGdmBngoivDyNJldn+5bhMiwsDyxf/8E7eblcAMkO/D1oPrb51zV92FFX7qyzT
eI5KRHwY88XkUuIK25aDnO1bR3eDn3RDcxtW8MMMeRihWX3gNSL+hKZ24XGxOgz5
L3tL9nm6X6sHg867+V5voAxNACnbgFT/Mrzhal4HGbN8adctDoaSEuiMPAQlAkEG
PbW3c2B0n+Bav3XksRT4h19t7drSk4a3aR04I/GHc3l9jDQicnDr4DwiVaPpd1UF
gpPhBXgO4NSZr5yUEzoVOSOsW6WS2k5SFV+sQjU1C5R+oXBH59J9oIMlOOaNKo0w
rTXxOtxQ38vqyMiQZBLwoTh1remxiOBp+5lwmYWGWYpBDVcr9HB+kzNJPFxDVk5A
YgiEzXje0LsgjUBgpmiq5YPAmsNIntDezydWTc20Otk1+Vgotgo=
=CJhg
-----END PGP SIGNATURE-----

--dtrjmbi6re7vojrt--


--===============1739110227938452194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1739110227938452194==--

