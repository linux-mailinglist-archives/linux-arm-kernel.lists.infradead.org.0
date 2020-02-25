Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA49016EB31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:20:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uhsxHWbskSDB49UokkJedICIc5o4wy+VnhcIJYSTJJw=; b=e1dxhyWM+OjZ9fRCDsmS+UpKz
	LiFt+Ls66ITAE6J01GytV3WSI+x8B/TJT5+4IljLW3++oxGWowPmmfTU2gW83aGX02UX/EZWIH8rZ
	9ENGRQIhFCjMLUhLOlCq8lV0cTCUh93gzZYD3IRsu25RcnRoyvhffI2imyjwoAVi1tuWPUfYGJSDg
	cuDf6Fmxb//hgumHqGqQVr82zpiJ0liRqbGz1ZnLTkbhtaQbYiBRYz+lkEtDAJCqIrPZsX3rW2Ls9
	BEGg55fCpD6FO6aDdNHKoPnetx3xRSi9m1yqmV5qLr2IpwBTlfwVmA4jp9jiEV0om9f479V/6TabW
	9hKZBg/Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cwA-0001Ya-Jq; Tue, 25 Feb 2020 16:19:58 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6cw0-0001Xo-Pu; Tue, 25 Feb 2020 16:19:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 2B9B3ABD7;
 Tue, 25 Feb 2020 16:19:47 +0000 (UTC)
Message-ID: <18ff8ba02028d6b299e450eed6a9a374fa4adda8.camel@suse.de>
Subject: Re: [PATCH 14/89] clk: bcm: rpi: Make sure the clkdev lookup is
 removed
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Eric Anholt <eric@anholt.net>
Date: Tue, 25 Feb 2020 17:19:45 +0100
In-Reply-To: <1779dd1489125be571fb3c2ee3e04c32f9875420.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <1779dd1489125be571fb3c2ee3e04c32f9875420.1582533919.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_081948_982134_34E94834 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
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
 Phil Elwell <phil@raspberrypi.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8876577386515263554=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8876577386515263554==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-hMIQmfGcVIyBQCc/oHBm"


--=-hMIQmfGcVIyBQCc/oHBm
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-02-24 at 10:06 +0100, Maxime Ripard wrote:
> The clkdev lookup created for the cpufreq device is never removed if
> there's an issue later in probe or at module removal time.
>=20
> Let's convert to the managed variant of the clk_hw_register_clkdev functi=
on
> to make sure it happens.
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!
Nicolas


--=-hMIQmfGcVIyBQCc/oHBm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5VSSEACgkQlfZmHno8
x/7VmQgAmYGPf8jpPjktSqZ2UXKC/Wen7oa7/UnmKQxF8fVy94130kl/8DXSL3uE
FuQjC4vVQjHJG6wLR5mRiZRb340mXcTY37UI41QZoOIdHucCaCE3B1/pKPCpvlah
m/ql1Cfi+E57jyUVIWcjZxIqn1vomGlOD9X3Brjs4ikCOy0qVx/qoVaBWGFtV9/h
STUgXbIwX8vgp6TzB97vABc6ZtsYbwRX+BA+mAS5CrZv4/TC+DD2QkYG9p2t+pjQ
6r/mWIUTyOVya/v6h5q0VgjEMp3Kux8hZsJCL+Tfwx2nTcgJfKRAMZgHXV8n8eFn
Z+nLK/AgUGgaisN18b7dPeb1g5P6Dw==
=ZqkQ
-----END PGP SIGNATURE-----

--=-hMIQmfGcVIyBQCc/oHBm--



--===============8876577386515263554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8876577386515263554==--


