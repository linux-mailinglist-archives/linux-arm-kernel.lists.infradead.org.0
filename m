Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 709A76E63A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 15:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a2PRvpO0eWOGHArncBHbzgi4ar7dfPeQDNfCd3P9aLY=; b=mQ346IT5W5tVydWILA8UY01kO
	OgdLuycKhU8EL9exlxq8BpenV3cszFTbIX99N8dxwlly+Oz0cZr1vxd5Mxlj0LSvBqYsTaVxHq7xI
	OYTGLNKoQksBIYvZ4ze2JPebNiGGmm9VHNafNoiaxOixGXwxCRNtU4jbvluAIchtHsPYgOFyw+H99
	Be0lHT+8dKjrdKHAkPOVYZx6xQiKlzLhpV0irTH3qijFnCR9+Lw2PSlSwPNVfdk6yoIDHhtZ1584+
	GS8dXqCLzfuWqi54n0euy9rO7zoLfmt5hCynTVypBmVcooWJIsJrMcBPUDa/RFi7f8N716smdn7Oa
	26RVYP1Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoSmg-0007cC-2n; Fri, 19 Jul 2019 13:18:50 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoSmK-0007bm-2y; Fri, 19 Jul 2019 13:18:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 183DAAD05;
 Fri, 19 Jul 2019 13:18:26 +0000 (UTC)
Message-ID: <3cb7169bf90fdf1388ef89f154225950d51be56f.camel@suse.de>
Subject: Re: [PATCH RFC 00/18] ARM: Add minimal Raspberry Pi 4 support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, Florian
 Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, Scott Branden
 <sbranden@broadcom.com>,  Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Linus Walleij <linus.walleij@linaro.org>, Michael
 Turquette <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>, Ulf
 Hansson <ulf.hansson@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>, 
 Mark Brown <broonie@kernel.org>
Date: Fri, 19 Jul 2019 15:18:24 +0200
In-Reply-To: <877e8fgp1t.fsf@anholt.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
 <877e8fgp1t.fsf@anholt.net>
User-Agent: Evolution 3.32.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_061828_277450_E386937B 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6989734859714863800=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6989734859714863800==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-S0zCh+Rk9sSVlKPaPhhb"


--=-S0zCh+Rk9sSVlKPaPhhb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-07-18 at 11:45 -0700, Eric Anholt wrote:
> Stefan Wahren <wahrenst@gmx.net> writes:
>=20
> > This series adds minimal support for the new Raspberry Pi 4, so we are =
able
> > to login via debug UART.
> >=20
> > Patch 1-5:   Prepare platform and DTS for the new SoC BMC2838
> > Patch 6-9:   Enable support for emmc2 on BCM2838
> > Patch 10-14: Enable pinctrl for BCM2838
> > Patch 15:    Enable SPI support for BCM2838
> > Patch 16-18: Add Raspberry Pi 4 DTS support
> >=20
> > Unfortunately the Raspberry Pi Foundation didn't released a
> > peripheral documentation for the new SoC yet. So we only have a prelimi=
nary
> > datasheet [1] and reduced schematics [2].
> >=20
> > This series is marked as RFC because some parts (e.g. pinctrl) are stil=
l
> > work in progress.
> >=20
> > [1] -=20
> >=20
https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2711/rpi_=
DATA_2711_1p0_preliminary.pdf
> > [2] -=20
> >=20
https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/r=
pi_SCH_4b_4p0_reduced.pdf
> >=20
> > Discussible things:
> > - SoC compatible BCM2711 (as on the SoC label) vs BCM2838 (existing nam=
ing
> > scheme)
> > - ARCH membership ARCH_BCM2835 vs ARCH_BCMSTB
>=20
> Thanks for taking this on!
>=20
> I would love to see us drop this silly upstream/downstream compatible
> string naming scheme and just use 2711 (or 7211 for modules shared with
> 7211 that were enabled there first).  However, I don't feel that
> strongly about it when I'm not the one doing the work.

In the long run it would have the added benefit of being able to use all th=
e
overlays the RPi Foundation supports. That said I agree with Eric's sentime=
nt.


--=-S0zCh+Rk9sSVlKPaPhhb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl0xwyAACgkQlfZmHno8
x/7SXQf8CdSMO4m+vti9Q2Vcgnj4zF2Hsn6YCPf5AzSZZUY1fD1n5TyG7wmEzYk3
JKc5ubWgJwhvnZUjN15de7YKzVNhbdIW7q8kfZ/f9HK0gljR6hZYRPtmKZdkZ5N1
L9kPyPe2eEnk8KkSwZj4kjVMGLR01dfNlhXLQrN72c6Eerv1Ghj3rSo+oVg4eCO+
Pwa/kCY9scaCBEwlocYWXeaEBVWHW7fW3SmAl+rIN34cXQP6lvsdHtZHjphzwgFP
AGRkr0p7hqxaAwJQufARqQH7wfkZDpwHU8hkbgO8SgAMdzyMmB5lXJRVi2WSzwMQ
TryKuFfA/GzhhetifzLQvBnXDDxn+A==
=TGA9
-----END PGP SIGNATURE-----

--=-S0zCh+Rk9sSVlKPaPhhb--



--===============6989734859714863800==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6989734859714863800==--


