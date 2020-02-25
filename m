Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A418E16EB52
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:24:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v22/KUz3Z8M5JjZlSLPXF6u7WMRAROQFz0LNmMJ7KBo=; b=HlPLDKLjqBwSkark44/CHrtiZ
	Mv8OWY9ntDt2SUQWL3WOm66+Hejzdv+oEfVIMSWSHtK0SC6bCxQ7xI2Z+Gj7xEzKyJbkfkY2Cczeu
	iSOPkROmi1VXQ5zWHj338z0qjsVBHLdOX6PjbL0bz8Gpa0ja4WlBQ8Ia6pijxsasIUK3faLvn+BRf
	e/+KairM7enbEq1srEXwoU8sJlKoh6hYz+Rv0h4EN6WfeX62IeN5F3cQHZmUOfV1Sgq/SkhUri/VP
	6fDlYzQT4Dl+iFVdD2bl+tf92FqCiCSmBhsw4ShZFffq2a4vZfBRtMT5HmRQOHrVvArVfC39BBYg1
	b1x10fV9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6d0O-0003ne-Lw; Tue, 25 Feb 2020 16:24:20 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6d0F-0003mn-7S; Tue, 25 Feb 2020 16:24:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id CB7D8AD48;
 Tue, 25 Feb 2020 16:24:06 +0000 (UTC)
Message-ID: <b411e2a675dd1b2e688815fa3eb0bd3c7c86946d.camel@suse.de>
Subject: Re: [PATCH 15/89] clk: bcm: rpi: Create a data structure for the
 clocks
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Eric Anholt <eric@anholt.net>
Date: Tue, 25 Feb 2020 17:24:02 +0100
In-Reply-To: <adc5810f9ed6400940f36be6e0a3a7255c557687.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <adc5810f9ed6400940f36be6e0a3a7255c557687.1582533919.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_082411_420363_8E6EC166 
X-CRM114-Status: GOOD (  12.07  )
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
Content-Type: multipart/mixed; boundary="===============6550099061577533251=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6550099061577533251==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-NxrkRqtfUvDY/OjkZYGj"


--=-NxrkRqtfUvDY/OjkZYGj
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-02-24 at 10:06 +0100, Maxime Ripard wrote:
> So far the driver has really only been providing a single clock, and stor=
ed
> both the data associated to that clock in particular with the data
> associated to the "controller".
>=20
> Since we will change that in the future, let's decouple the clock data fr=
om
> the provider data.
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!
Nicolas


--=-NxrkRqtfUvDY/OjkZYGj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5VSiIACgkQlfZmHno8
x/67cQf9ElW7VnzLZaFV3c8EcEp/LDyKUov3/WaAU+cOAeaQeXhBsw6PuOhDYoe4
WBbwNikei9qvSn48Vq/kH00pkXvoHQsVY2BY4O7ImbuHTEyYkeIguWeAtVHLFv0m
sP35lY0G/MeI1MZkPO8NCCNXoQPvLqyVU65gnjAAsnEvpfKe2PCzbjmGp+E85Yov
oRxeevriB34mlrTDEIDQ2cxPvku3YO2yHyPqbq+1CLHjqJV4nK1JJq/b7vcTKbue
OkhCsNJb+ddOD4J7MMJGTdiZJrfO2tPe7PyFAEuaAK7ytHLy/G0S1kvBWW/e2+XV
jOLl9CnX6QQBZoLloLB+OplaQFqj5A==
=73tJ
-----END PGP SIGNATURE-----

--=-NxrkRqtfUvDY/OjkZYGj--



--===============6550099061577533251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6550099061577533251==--


