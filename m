Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9740D1C027C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z3E7P0ZkjY4wrsr1TtGzKYNq5xZ0h61s4e5GuBN3Lyg=; b=Z7rjyStgK7iXRyxRBun3bN+V9
	7nBnX4yi/VOGkKxzYOXk/aw3nBtohlNIZDdlUD9zic2lPb3iqDdIgF+4NvKSJqW2TAIBqDcy/r/6L
	tgN/4pbzhp0AicJSiA9e/f6JYweAOFbBwSHukLSAldwojsduzUcXwV9vvVPyLb+gYntSUH9ZVQ8Zb
	LnkGESYhnyMlG8m8CxRnojuUM4U4FZZcg03u+W2oB/20Syq3oJiyIQpNHE3vDrZX6tOwDTt4cUXbM
	g2yInkZkDgM1XlhMW37wHhvhdPDiZD4FvwsAgDYFYxNPjLkaGUDJzIsDAm1pRm4FsHD36TSlE6wZc
	lI8qZ9Feg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUC2z-0003Ks-R1; Thu, 30 Apr 2020 16:28:25 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUC2b-0003Ar-TE; Thu, 30 Apr 2020 16:28:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 69D85AC92;
 Thu, 30 Apr 2020 16:27:59 +0000 (UTC)
Message-ID: <affd68499ff843e8f3e0d18890699e18cde7582e.camel@suse.de>
Subject: Re: [PATCH v2 04/91] firmware: rpi: Only create clocks device if we
 don't have a node for it
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Eric Anholt <eric@anholt.net>
Date: Thu, 30 Apr 2020 18:27:58 +0200
In-Reply-To: <b181d867cb9523e1877a3dfd258bafde2988024f.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <b181d867cb9523e1877a3dfd258bafde2988024f.1587742492.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_092802_100067_900FD5A9 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5873830654455529926=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5873830654455529926==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-8iAI6Ck2SuZD2phx19xp"


--=-8iAI6Ck2SuZD2phx19xp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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

In the case you find a compatible device node you have to decrement the
refcount of_get_compatible_child() increased before leaving.

Regards,
Nicolas


--=-8iAI6Ck2SuZD2phx19xp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6q/I4ACgkQlfZmHno8
x/7lFAf/ZpNeGVs0IJARqWX4JgGzfAueqaUdKpDNTfmLeklqw80t61otAkXEg88E
4MPVJnyIQvyPVDN0mgKg34bytiAYby8jadKUe9/H2e6eCkQ4+5XL2OiJBdsDZtrO
61TiPBWTOLY4c6Kixyx+0zGElXfcvZF+RLN37NqZVKG0JAsebwUWIbCxLKuf9cWj
KSMYL2iNFNs6RYVctEdLh5pFAnaEtA14Gg9sJlpXO718MS+UBsa5wRmlN973IWUO
u8PqR317lotzyFeD1U5iuaWSBPsuZKbQYLhLh2/UXoCpBbLZeV/5wp64hxpBh1vF
XU33W6eYeOM9fRbgMKq74VUDZlf1DA==
=+5W0
-----END PGP SIGNATURE-----

--=-8iAI6Ck2SuZD2phx19xp--



--===============5873830654455529926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5873830654455529926==--


