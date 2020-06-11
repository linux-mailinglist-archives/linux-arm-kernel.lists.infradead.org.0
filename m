Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CAE1F6669
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 13:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2P2thI4Oar4tuz8KJUVuiFke2m1htt7tZSkkLCyiJ2Q=; b=LaN8blvTDpvGuw3IZbJImUeiH
	ei8qZleVFDgxMg4XkC2b6U5nsnU01cayaU838AcShPLl3peAm8RKO48bLnYsMIRXhqxxvgvvCVPLS
	6SSu0YSPCATuBfP+rK8GJFqLYfdxDLsM+fzPd6yRgNVYuLXpRzgKmG3Vql51AZazEXHDmGeiXxATz
	KzMCUgOU92WyZxvmMAIfJegaYXHpEXzNY/Zga2E8IBzIQKbX3HCt/rw6U9dqL1IdjC++iju7ofsE4
	kHbi2W9UZcoeIF2K4mKwJZy+MApdj2VcH8e7kag43TZWJ/4q5yQVPQ+ov4rSJcbIB19mjlUA+C7+r
	vRqOIGlSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLDX-0005Kg-FI; Thu, 11 Jun 2020 11:17:55 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLDQ-0005KI-8S; Thu, 11 Jun 2020 11:17:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5D151AC20;
 Thu, 11 Jun 2020 11:17:50 +0000 (UTC)
Message-ID: <ce0901dd4b9046b67ada36b0a18c36c8def811d9.camel@suse.de>
Subject: Re: [PATCH v4 26/27] clk: bcm2835: Don't cache the PLLB rate
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 11 Jun 2020 13:17:45 +0200
In-Reply-To: <264ad21afaae4a7098c3da59970d6cb9da1a8b0e.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
 <264ad21afaae4a7098c3da59970d6cb9da1a8b0e.1591860665.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_041748_443595_83B89298 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2044586099760288694=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2044586099760288694==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-X1xORuuAQB8Hb0to6LkD"


--=-X1xORuuAQB8Hb0to6LkD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-06-11 at 09:32 +0200, Maxime Ripard wrote:
> The PLLB rate will be changed through the firmware clocks drivers and wil=
l
> change behind this drivers' back, so we don't want to cache the rate.
>=20
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Thanks!

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-X1xORuuAQB8Hb0to6LkD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7iEtkACgkQlfZmHno8
x/4H7gf9H/VIGYTrqw7T7k4J9ZsElmbeuIbyHgbrPS8t8lDUMX6tzdqrGwqQX5wX
SjR19NEMVS/B7NPHZ2D87lRCpoS2+PP4reZjEEBS1aeaQxEEgZ3mEslvJIWaPYo3
S9136B45/0RvqkOM3ymgy2XohcTmuu8qt1X3ToaEtmyzVTz05mf/EWBNS19Y+5cA
TvXy48mDNNY+j5tEQgFljALEapV4DJ3PmVyxCKiJ9et8j4W5fenTA1cFHjqJGu36
XvvfB5j8cQiIw4skAwvv3WVaBmh7wm211bT8HrgNI0Zw1KFvDQTrwIBgiOukY4V6
3mBGM6Qc7py38NVB3B/B1VpEz+onzQ==
=SDXg
-----END PGP SIGNATURE-----

--=-X1xORuuAQB8Hb0to6LkD--



--===============2044586099760288694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2044586099760288694==--


