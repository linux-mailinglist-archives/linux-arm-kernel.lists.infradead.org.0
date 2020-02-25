Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C6116EAD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:05:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p+BrtKt6JKrETd5SA7kpaOBaeLgmhO6ibcsydGKfOvE=; b=SxXQDO+Swz1sLLDge/EEus54e
	nuYfaNDnhzDZtdMwAU/4tZUPyRywsUh67OR+KT4/GFv2GmLnsuNBoY5CgA2MHXUflQRmBeSsXoATN
	039Kx9gMlgMC72fuyp+I2c3Qup81iKBmBbiCHOGS/7P6A3S8cBeQmBZq0UYJeH+8G0mGBch4gdIdE
	uTnu1A6igOtxBDKW3Hso54PvfL3Kvxdqx52de7V6eXmg+7FQBNDi5HptAjVZDieXPuFuQnz3N0pLS
	TQGwFoDc62uKPZKdN480YkyygGDx6i66rYerAHjSwNIl4wjCUv2CbjKY5HCu5wky4Q5S5IjFUMDuD
	sCDGH0H9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ci2-0002wl-1E; Tue, 25 Feb 2020 16:05:22 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6chs-0002wN-0R; Tue, 25 Feb 2020 16:05:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7540FACB8;
 Tue, 25 Feb 2020 16:05:10 +0000 (UTC)
Message-ID: <1ac802c877be35f9065230fb657b5249b201c36d.camel@suse.de>
Subject: Re: [PATCH 08/89] clk: bcm: rpi: Statically init clk_init_data
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Eric Anholt <eric@anholt.net>
Date: Tue, 25 Feb 2020 17:05:09 +0100
In-Reply-To: <9ca2cfd02a75d6680533233a9a4e2b60d2ad0ff5.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <9ca2cfd02a75d6680533233a9a4e2b60d2ad0ff5.1582533919.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_080512_198887_6E7E30D2 
X-CRM114-Status: UNSURE (   8.97  )
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
 linux-clk@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8441984715687726733=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8441984715687726733==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-QEtcQAOM4pSVPW/kdM3g"


--=-QEtcQAOM4pSVPW/kdM3g
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-02-24 at 10:06 +0100, Maxime Ripard wrote:
> Instead of declaring the clk_init_data and then calling memset on it, jus=
t
> initialise properly.
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!
Nicolas


--=-QEtcQAOM4pSVPW/kdM3g
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5VRbUACgkQlfZmHno8
x/5Lkgf/RGwXdMhFQQIz9ZY+f+MAzsSdRjRkEHxy3s5tJqSgI6muZTrC1I1Zt85a
XrQKG44hswhNqI+fPduksGqRQwj5j3Neh4QTyNlSfNPW1kQ2mHR5PqUgNt4husNz
wQCIafF/scKUWXFSZLFHS7GJXaqmlE+u7wQqeYOzRuklJXtG1LG2+0DnaYKBHFLT
vPJC96MYKxW0+bP3QD3P3vwXwoNSc7cH0d6Y8FVy0ttKZrh3Y1VPBAYMSnCgUdaQ
/rNcJqD/dJsfEsMpn02gDZm7IXJgX6noCPWklw4HDXfKI9u8/jmBN8IgE352F4fg
ASIY8V7SpueYJCk2A/L3/1i2l/bHFQ==
=jbQQ
-----END PGP SIGNATURE-----

--=-QEtcQAOM4pSVPW/kdM3g--



--===============8441984715687726733==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8441984715687726733==--


