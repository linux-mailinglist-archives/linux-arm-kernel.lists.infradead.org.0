Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F1116EB25
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:18:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZagGgOgfss/E867r3TRbpfw7vf26ewu5mxszG4vi4Hs=; b=MnKjLOVf3gmTgiL/mhRMY3HSc
	xOcY7GVTnbFyJOhMJUKGj+uW2+zYNYbkqqX4cRPBWVmHgDHtCWfkLfkku68z8AFwY17PSOGMJkl80
	EHhamSycpg/86EXZw7pmHA2NcC6BLcXdt/sgoU3uQuo6lSkHwLXtDK1k6gzCyV9GxUJMlcTqEBUOv
	Tu7Lim6jfsHOcQgSlgl/IMP6CPz6/iDSlFfizh1QNh0g0OYrz8loUEslWEw57fSLq6gTcen2cDMJW
	fb9IIdTAYp5Z1zsKBYqGwZlB2WHmFLN/rI5fmzaN12Q6jQBOcRFrnbFszS/hCzHehxswFXkHA5Ngt
	v+fQskpSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cuL-0000zz-PG; Tue, 25 Feb 2020 16:18:05 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6cu8-0000yz-En; Tue, 25 Feb 2020 16:17:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 290E6B1AE;
 Tue, 25 Feb 2020 16:17:51 +0000 (UTC)
Message-ID: <343bf33c29e640241d1ca64f67b05af6d0a0bb43.camel@suse.de>
Subject: Re: [PATCH 13/89] clk: bcm: rpi: Switch to clk_hw_register_clkdev
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Eric Anholt <eric@anholt.net>
Date: Tue, 25 Feb 2020 17:17:48 +0100
In-Reply-To: <75dd8f658a253649c176509f0d8d3dd10354ce51.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <75dd8f658a253649c176509f0d8d3dd10354ce51.1582533919.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_081752_642765_F745212C 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============0537980986205744042=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0537980986205744042==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-AEsyYIEmDz/ZPvq2SNJG"


--=-AEsyYIEmDz/ZPvq2SNJG
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-02-24 at 10:06 +0100, Maxime Ripard wrote:
> Since we don't care about retrieving the clk_lookup structure pointer
> returned by clkdev_hw_create, we can just use the clk_hw_register_clkdev
> function.
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!
Nicolas


--=-AEsyYIEmDz/ZPvq2SNJG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5VSKwACgkQlfZmHno8
x/6pGAf/RhH46fsKWEbXOnAY4VW48kY55Oo5HIdgFz30Cf1FEHGSIbvJ5ybQk47Y
T2YNRaoxvcqqYAmOT6nB4LVHUE3HDBt4qWC/yNF7R0vfpVMCCAymZ63hDODXmn7R
kdfhBPmuUsEkJr6hxW3KzqjRjBoEt1KwRdj+Y7UMF/ufb6nt8rSiRtwX6oa7yomn
L+gIpiZY/Cz6Z3ALHkbyfIwrAeXNsoXCle8bFAVa5MENX0hlUc+NdbfYOn40Zm5f
SVl46yPakAdj0LUVEyUDzsaWESwRJfT8NHgz/4OWSnzqsrJ9zsfWvjyfqgJn1LrD
vtIuk4MlrJ50e8tCyoFLOTrEqWUgEA==
=uZJp
-----END PGP SIGNATURE-----

--=-AEsyYIEmDz/ZPvq2SNJG--



--===============0537980986205744042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0537980986205744042==--


