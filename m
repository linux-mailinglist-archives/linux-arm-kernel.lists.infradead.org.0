Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5850F1BA23D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 13:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dbsPYStOWIgCnMLZERcrEFFD9QeIVOAgzbGKa2l5MgQ=; b=utVZf/CCJFJoFqFEDVdWwZPQk
	XrT+HFQ5uaV3KnYCMzmYkWA8idokkv30Tt0oJ4Og9rXHbLZWmqvC3aFKm0ERysrFT/k/pDNRxxl1y
	zy+cwE8zoOqt79pfIuOdbyoKjl4iKCiX1N+w5Lt60twXizakBo+kfHtiAyGKF0CLN2hV2z2uaLroq
	Tq8+FrqUjBeUT44d0rrGLfWRZ5x3H3olgx0mGxU6mmTcvDHsXXL/R4umhn5/NCW0e0q7LwaYu7Ima
	jzPHg34VZjgqIeMKRqZMcsgl/Xl1ZrUbrwPtDodKt4EvnFqxDcJuMbRZD7Uf5AsYhfrl85wmKZ7Bg
	oKGjxUCtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT1sK-00084o-IO; Mon, 27 Apr 2020 11:24:36 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT1s5-00083W-MT; Mon, 27 Apr 2020 11:24:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id BADA4ABC2;
 Mon, 27 Apr 2020 11:24:15 +0000 (UTC)
Message-ID: <4842d1b72192bb7c461a2d50c8798f178da964e0.camel@suse.de>
Subject: Re: [PATCH v2 04/91] firmware: rpi: Only create clocks device if we
 don't have a node for it
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Eric Anholt <eric@anholt.net>
Date: Mon, 27 Apr 2020 13:24:14 +0200
In-Reply-To: <b181d867cb9523e1877a3dfd258bafde2988024f.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <b181d867cb9523e1877a3dfd258bafde2988024f.1587742492.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_042422_040848_7E4A1EA2 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5628699131984865013=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5628699131984865013==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-t2CrNR4eS4OpaMihaaXw"


--=-t2CrNR4eS4OpaMihaaXw
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maxime,

On Fri, 2020-04-24 at 17:33 +0200, Maxime Ripard wrote:
> The firmware clocks driver was previously probed through a platform_devic=
e
> created by the firmware driver.
>=20
> Since we will now have a node for that clocks driver, we need to create t=
he
> device only in the case where there's no node for it already.
>=20
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/firmware/raspberrypi.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberryp=
i.c
> index da26a584dca0..1874f41b007c 100644
> --- a/drivers/firmware/raspberrypi.c
> +++ b/drivers/firmware/raspberrypi.c
> @@ -210,6 +210,15 @@ rpi_register_hwmon_driver(struct device *dev, struct
> rpi_firmware *fw)
> =20
>  static void rpi_register_clk_driver(struct device *dev)
>  {
> +	/*
> +	 * Earlier DTs don't have a node for the firmware clocks but
> +	 * rely on us creating a platform device by hand. If we do
> +	 * have a node for the firmware clocks, just bail out here.
> +	 */
> +	if (of_get_compatible_child(dev->of_node,
> +				    "raspberrypi,firmware-clocks"))
> +		return;
> +
>  	rpi_clk =3D platform_device_register_data(dev, "raspberrypi-clk",
>  						-1, NULL, 0);
>  }
> @@ -262,8 +271,12 @@ static int rpi_firmware_remove(struct platform_devic=
e
> *pdev)
> =20
>  	platform_device_unregister(rpi_hwmon);
>  	rpi_hwmon =3D NULL;
> -	platform_device_unregister(rpi_clk);
> -	rpi_clk =3D NULL;
> +
> +	if (rpi_clk) {

rpi_clk, being a static global variable, will be zeroed by default. So, if =
you
don't register the platform device, rpi_clk is going to be NULL, which you'=
re
allowed to feed platform_device_unregister(), so no need to be extra carefu=
l.

Regards,
Nicolas

> +		platform_device_unregister(rpi_clk);
> +		rpi_clk =3D NULL;
> +	}
> +
>  	mbox_free_channel(fw->chan);
> =20
>  	return 0;


--=-t2CrNR4eS4OpaMihaaXw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6mwN4ACgkQlfZmHno8
x/5xXAf+Ng2E3SKjoUMbR1+VP/yWSENtjk2GqBEMGPPIZYYmsbkt9al9HYQZJ5C3
nwOXe0b3145xT5Von1/JrpzL3sPIp29cbA9zYKU+7x+WpZtSctau+dkeM5VpTPdw
hHu01BPVOX2KJERjvB8u4y25U2Xpm1LzosEf9CFGDxng3LDaBrgP4j779Oq9sbq3
0pfATYlX1KFsMwbN3twlsShGwuokSb6kdcrKj53kBP2alNxL2dGpre4COea33YAx
Ro1hGda3eGhqBndalntUHQ0MsSiKIwdkQP4H287W+D7UPb46ee0GdRcoVohqQadY
W9mJfQMFIP2MiJ/tYqxOUPFqBrJi7A==
=fYAz
-----END PGP SIGNATURE-----

--=-t2CrNR4eS4OpaMihaaXw--



--===============5628699131984865013==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5628699131984865013==--


