Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EE61F6479
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 11:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LdvrG1+SYQI1pjYFq97BbWZdKA5pEgeKEsUhC84oTaY=; b=sG+nSu1cjOz+z/5jHcTspnrvK
	Qffc/pJWV4CRWHIxs5JIrUlC2x+L83p+Lb/xmIhVz7Dz1IwzqZcNDeKNT3OyRS9peqX1FS43bU4os
	RJQUDB3p7CJF7EexF7m4twhZJ2dPqrqgYNUSB2BhVugBrZ18rz8bzgJcjIpZ3/px4p4waQrKsmAkD
	TkDTmwHVlP2kJzdbv4qFUJ1imvAL3hmapyPgCrZodLzSX6h3CciRQot+GCwTxeGd2mfU7Tkde97UU
	2DvSUwuIMtiXxX8b72gkscSI/X9m1GX+9CPfYQvhlMHwf3jwBhmZ0rvmMHRBH24VQEprtCA3BW47s
	0XZz2hToQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjJH0-00087v-8q; Thu, 11 Jun 2020 09:13:22 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjJEo-0006Kq-Ii; Thu, 11 Jun 2020 09:11:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 04499ACBD;
 Thu, 11 Jun 2020 09:11:06 +0000 (UTC)
Message-ID: <dd44eff2babb57cc9034e8de85162d0a1516e15f.camel@suse.de>
Subject: Re: [PATCH v4 25/27] clk: bcm2835: Allow custom CCF flags for the PLLs
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 11 Jun 2020 11:11:00 +0200
In-Reply-To: <abfae9fb4bfd76cd83d5ae97499b97b56b5dee58.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
 <abfae9fb4bfd76cd83d5ae97499b97b56b5dee58.1591860665.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_021106_795652_0D6C09F2 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Phil Elwell <phil@raspberrypi.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6954776755390726584=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6954776755390726584==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-fOGfccOwdRSSTyMd7woJ"


--=-fOGfccOwdRSSTyMd7woJ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maxime,

On Thu, 2020-06-11 at 09:32 +0200, Maxime Ripard wrote:
> While some clock types allow for each clock to specify its own custom
> flags, the PLLs can't. We will need this for the PLLB, so let's add it.
>=20
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/clk/bcm/clk-bcm2835.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.=
c
> index 32f5c13be9d1..846ea68b2c73 100644
> --- a/drivers/clk/bcm/clk-bcm2835.c
> +++ b/drivers/clk/bcm/clk-bcm2835.c
> @@ -421,6 +421,7 @@ struct bcm2835_pll_data {
>  	u32 reference_enable_mask;
>  	/* Bit in CM_LOCK to indicate when the PLL has locked. */
>  	u32 lock_mask;
> +	u32 flags;
> =20
>  	const struct bcm2835_pll_ana_bits *ana;
> =20
> @@ -1310,7 +1311,7 @@ static struct clk_hw *bcm2835_register_pll(struct
> bcm2835_cprman *cprman,
>  	init.num_parents =3D 1;
>  	init.name =3D pll_data->name;
>  	init.ops =3D &bcm2835_pll_clk_ops;
> -	init.flags =3D CLK_IGNORE_UNUSED;
> +	init.flags =3D data->flags | CLK_IGNORE_UNUSED;

This should be 'pll_data->flags'.

With that fixed:

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-fOGfccOwdRSSTyMd7woJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7h9SQACgkQlfZmHno8
x/5hGAgArrdyadJsxlxAD7oIdzlj8Q+2RKvz1lT4pRALZz06U0yhqAoIB/CswueU
z4TmOiXuOAhOI53ZDdEZSWA4XFO5rmgcSr19N6VWK9pRZ35FSMXE8wHVcqRSiMFH
R25RpkYUzKbhyP9DqazaR8a31a8HCrXwITH/miNGrD4xzos56i7DenXKku74HwcW
bk0UKLJ1iU35NtDGA8U22c4O2UOkqhySKV1ytFB8Td34U0q/nwJmSmRFn0960FZJ
F4oUfqKnqTTKZ7mrqp03iXL/eSip1cbYhJaTc0TQrAeazyPQO3SWa7uZelB1YpKO
XZF4NzdTne7NXjbTrgr4kUXrvotDXg==
=NtVc
-----END PGP SIGNATURE-----

--=-fOGfccOwdRSSTyMd7woJ--



--===============6954776755390726584==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6954776755390726584==--


