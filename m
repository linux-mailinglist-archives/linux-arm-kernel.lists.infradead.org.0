Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B9B16EBAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:45:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4rZ9Alqgb3hLBu/gkNT7bUsOMRuu45E/FZ6aNe6a2h4=; b=mF9GOJPpJRgaGpJVIBfbxH+XB
	Ge4VQR1tTaW4T9+y55Kg3/3m6FMFRFYRpU4SNORHj+7HGtJZ6lRs2Dz4JetGSGf3vk8/AITOmCxNC
	NdXWa8vwFSnMjf7D3Al246dYUHoPgsB4EeuPHgbhFOlIPOryCJ/c0YpTMjBXzZLg4CHzvtWzDhX8o
	ROgsQzmwEKWKk//n6inUgAwy+j7jXkf+6fAhEpVRzf3cy4dSmf3Z4YXqV09uKLXQ5hZtXBGvMNPru
	tl9vS+0XPmSla6S8540KgyddDa9mEukSBrNeswywlYfX+OzqGvFNsufftreXcEhSyYJzZv/hCb2oR
	dZQn5vKqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6dKz-0004em-Hr; Tue, 25 Feb 2020 16:45:37 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6dKs-0004bZ-9t; Tue, 25 Feb 2020 16:45:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9897AAAC2;
 Tue, 25 Feb 2020 16:45:28 +0000 (UTC)
Message-ID: <47f6f9f63a25820b9c9fb10d281f4824862a234b.camel@suse.de>
Subject: Re: [PATCH 18/89] clk: bcm: rpi: Rename is_prepared function
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Eric Anholt <eric@anholt.net>
Date: Tue, 25 Feb 2020 17:45:26 +0100
In-Reply-To: <cdeaa4152ac84aecc362e09153d1427777e3d933.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <cdeaa4152ac84aecc362e09153d1427777e3d933.1582533919.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_084530_489992_FA61D9A3 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9154294995988546990=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9154294995988546990==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-RIXUZuAJcUivUhgI0C4B"


--=-RIXUZuAJcUivUhgI0C4B
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-02-24 at 10:06 +0100, Maxime Ripard wrote:
> The raspberrypi_fw_pll_is_on function doesn't only apply to PLL
> registered in the driver, but any clock exposed by the firmware.
>=20
> Since we also implement the is_prepared hook, make the function
> consistent with the other function names, and drop the fw from the
> function name.

It seems you didn't :)

As it does use the fw interface I'd say keep it in the name, with that:

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!
Nicolas

>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---


--=-RIXUZuAJcUivUhgI0C4B
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5VTyYACgkQlfZmHno8
x/5rAgf7BxTTPBRye7XRqwBPhoICcffv/Ii4T91MNAtumCd4F0s+hsYk44Ttsbrb
tr9ZiFNFnOkV/rVNLG3cg/QhMaKotcAg59qVcw/g/ZDPc6xodEilj19jaf2WDIi1
echfeq0yvG8cPb8ljFCPiKisneTp/ascqFR//M9Ap8zpfpQUCswisjsqzhSY1Y1k
f5Dtc3fY+2szMYu08XhKojT0UUBt4gtxh5pAXk7RSG1moPrP/NGJpS/8XQ0w5EyT
fs8hWtU4De7Ja4NH8Xb2haFk0kZgoJyqxGjhMOyeYtBUS8mpKbE0iWMg0fx2vW+/
KtTtxwpzcWfrZ+Ox/njAdAXkd+CUOA==
=pqBd
-----END PGP SIGNATURE-----

--=-RIXUZuAJcUivUhgI0C4B--



--===============9154294995988546990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9154294995988546990==--


