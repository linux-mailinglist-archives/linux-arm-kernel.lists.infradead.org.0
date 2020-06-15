Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C4A1F9D21
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=evjC570UapdRvoVIuJB3I4Ecl4jr5biO5sCzWDHcgNY=; b=qL4mAtPzIpsvi83rTomlDM+sD
	cKlzsf7ntKKNhMT1SvRT/pg8/EJR/sW2dwG+KWgURyAEaEn57VJ5+y26FuZL95CPM6dViX60VBPBy
	eevzVQFiXRHkVW8NPV0ScX2IHL3Lvd7axarNRmb8YB/LoALUkCnWNhu1Xkfdzr4qrdYLgqw52jXSo
	Bl51caCcC16dR9iT67Brehbx/i4XwXdgzvg7TMNbAczjhjMpXDNiRD/9ev16NJDNnWjW/IYdvi9Sz
	EhRSIBZmXMMhIZbr50RAo9UkMEXzhg9DXYLEF6jbNxCkii3dmILj/2emWqtPKaKOn7RPVTrvIg8em
	x5RHoeLTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrrk-00053a-Qp; Mon, 15 Jun 2020 16:21:44 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrrc-00052x-Ge; Mon, 15 Jun 2020 16:21:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0317CAE61;
 Mon, 15 Jun 2020 16:21:34 +0000 (UTC)
Message-ID: <53b387b2754ef837b9fb2b02e2032d49553d7d88.camel@suse.de>
Subject: Re: [PATCH v4 2/3] clk: bcm: Add BCM2711 DVP driver
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Mon, 15 Jun 2020 18:21:29 +0200
In-Reply-To: <bb60d97fc76b61c2eabef5a02ebd664c0f57ede0.1591867332.git-series.maxime@cerno.tech>
References: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
 <bb60d97fc76b61c2eabef5a02ebd664c0f57ede0.1591867332.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_092136_700841_77E4D4B6 
X-CRM114-Status: GOOD (  10.95  )
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7099209517841354422=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7099209517841354422==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-lv0HnO+bl/4v3cTYOsCP"


--=-lv0HnO+bl/4v3cTYOsCP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-06-11 at 11:23 +0200, Maxime Ripard wrote:
> The HDMI block has a block that controls clocks and reset signals to the
> HDMI0 and HDMI1 controllers.
>=20
> Let's expose that through a clock driver implementing a clock and reset
> provider.
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-lv0HnO+bl/4v3cTYOsCP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7noAkACgkQlfZmHno8
x/5p6Af8ChXihgt4rnC/MbdwQfP/MnNvS5Lzj0o0OUcJ6MedH4wdRT9EbkG2mIbA
3l7g+YJKn+TrPvGberRpV3/j6YnnjFZeLwC6GTkIKjwo8mkNmjH4U5nu7WSzimm6
lq87Lwo+Rg76vL6FGjJ0nLQ3W2ebJGMqTInr5JSR0WLePQgLjGkEyCwNvtPNTDiw
wcG5GmimQtjgCNqxoyaMn5yHuBKlB5Izbo+1R4AegSiyf0nailXAO5lqFC/LD695
7aAdy2dLjqnktBq1/yBr0eUE6WIH39YfM/Lul5hHFMBWjag7XsDyzIzPWFaG2TU+
J7V/jydOsVs/cx3/RdcSYgzdZsxMlw==
=gQcw
-----END PGP SIGNATURE-----

--=-lv0HnO+bl/4v3cTYOsCP--



--===============7099209517841354422==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7099209517841354422==--


