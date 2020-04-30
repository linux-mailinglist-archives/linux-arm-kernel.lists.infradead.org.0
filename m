Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3FB1C023D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OUjJC+kGJv3YGo7mqaPmrTHpvqasPPYaPheNrzR1tLA=; b=MNjnIOiGZfBy/+93JzyQLR6WJ
	l8uuuwSMh8xdrYcZor/xYYtTI8N6hQOULww8SW73fmxYaAD2gQZrd045iizclnLHzI4J16jFxfZ1W
	Yy90sezkTTluhjEDn9jdghoquByCqKh7SnrF1/HSAOuN4FdcuiM1QgMRHr7V6Ax6wn0NGvWygcOSC
	bD8LLdHi0NYOouJnU4Gc8Xl+zKVPw0rMhD/BqTX9Ej3yVKjMTi4Geh5L7uuC+/rvHSkEpWSo4NjCJ
	lek9nQ0+7xjs7lvHrDvH9rYprAJX99uD8P19vYHDRWdOhNeTzdTInmkq1fH5zviAHJr5wMua6hGY4
	TtEHz1aVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBv2-0004kg-WC; Thu, 30 Apr 2020 16:20:13 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBud-0004iY-Mh; Thu, 30 Apr 2020 16:19:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 68804ACC4;
 Thu, 30 Apr 2020 16:19:43 +0000 (UTC)
Message-ID: <0f7f2350cebdbd6904274e6a4e8da6e0a6c72102.camel@suse.de>
Subject: Re: [PATCH v2 05/91] clk: bcm: rpi: Allow the driver to be probed
 by DT
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Eric Anholt <eric@anholt.net>
Date: Thu, 30 Apr 2020 18:19:41 +0200
In-Reply-To: <0f5319caa4d1b9ba8a83a094abcb681d4be6eb1c.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <0f5319caa4d1b9ba8a83a094abcb681d4be6eb1c.1587742492.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_091948_023527_86056831 
X-CRM114-Status: GOOD (  21.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8963574579066597953=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8963574579066597953==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-q7dZwA3wemW7oWhPS4wd"


--=-q7dZwA3wemW7oWhPS4wd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-04-24 at 17:33 +0200, Maxime Ripard wrote:
> The current firmware clock driver for the RaspberryPi can only be probed =
by
> manually registering an associated platform_device.
>=20
> While this works fine for cpufreq where the device gets attached a clkdev
> lookup, it would be tedious to maintain a table of all the devices using
> one of the clocks exposed by the firmware.
>=20
> Since the DT on the other hand is the perfect place to store those
> associations, make the firmware clocks driver probe-able through the devi=
ce
> tree so that we can represent it as a node.
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/clk/bcm/clk-raspberrypi.c | 20 +++++++++++++++++---
>  1 file changed, 17 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-
> raspberrypi.c
> index 1654fd0eedc9..aedeaaf2f66b 100644
> --- a/drivers/clk/bcm/clk-raspberrypi.c
> +++ b/drivers/clk/bcm/clk-raspberrypi.c
> @@ -255,15 +255,22 @@ static int raspberrypi_clk_probe(struct platform_de=
vice
> *pdev)
>  	struct raspberrypi_clk *rpi;
>  	int ret;
> =20
> -	firmware_node =3D of_find_compatible_node(NULL, NULL,
> -					"raspberrypi,bcm2835-firmware");
> +	/*
> +	 * We can be probed either through the an old-fashioned
> +	 * platform device registration or through a DT node that is a
> +	 * child of the firmware node. Handle both cases.
> +	 */
> +	if (dev->of_node)
> +		firmware_node =3D of_get_parent(dev->of_node);
> +	else
> +		firmware_node =3D of_find_compatible_node(NULL, NULL,
> +							"raspberrypi,bcm2835-
> firmware");
>  	if (!firmware_node) {
>  		dev_err(dev, "Missing firmware node\n");
>  		return -ENOENT;
>  	}
> =20
>  	firmware =3D rpi_firmware_get(firmware_node);
> -	of_node_put(firmware_node);

Why remove this? I think it's still needed after your changes.

Regards,
Nicolas


--=-q7dZwA3wemW7oWhPS4wd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6q+p0ACgkQlfZmHno8
x/5Aewf/fIRt353bQjRQPXHvnCWvme3juReNuol1emq3w4qxjIbYk/3z6mE5Xqik
N6cAGO+Hf35L5nhpW9qXpVTT3vbylYXIZ/OW5weQzIN+oKmUvJh+7FUwzl790OiU
y2LJVs53mnmGErmkoTOkyoJNmDeft+FMuQ+105YbheOsgDY3XKDscjlwQgsk/Vx7
/ELAtNxaNwm0lU2V6TfIgDaIDysRbkao9DtA1c97wG1O6lZAanouAfuIFR+8+xrz
AYKm8KnHJXi4wRSh2BAjm0e3qX+/RaI9RNeT7Xq68tsLl4jbz673IXTuyETjVc0s
Csb4+I6CCUbczBNHzKUO2UntZvTpdQ==
=fDu0
-----END PGP SIGNATURE-----

--=-q7dZwA3wemW7oWhPS4wd--



--===============8963574579066597953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8963574579066597953==--


