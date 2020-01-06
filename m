Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD3F130EFE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 09:56:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PM0NTysI51IsIHE6Kh5x05DAs1oNnMyKth0YO+MiCRk=; b=WylW6QZs91NrleySCQEf+po/c
	r75x8oki8RCdDhNu+pLIhjp0nGSaeJZXQ19mxBANedd7/lLv6WE2YAelf+NixT42xj2Wt7rmrnSY7
	he3G3fRWRFBcK9oPyNPKbXrgp4S3zHcSX+z/V/v2BXcCM/dR6Wyoahtg49d9jb59YlP1rShAHh/f4
	QElwxi/PBSWebuSys4mfy9+uKi4Klh4f15TeEOOX69se7PnFJnlVcuv3qo/M1rfRLKt0HwzQmZSvJ
	p/sYpFvHZX9/c+j4EoiG2BzLR9OUxaFDA+gRFLxJ3dbT0jhc2N2pvaXScOm7DFKfXuZ2oGZ3UTI6J
	IGLrzQqzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOBT-0001HV-0d; Mon, 06 Jan 2020 08:56:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOBL-0001H8-W7
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 08:56:17 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D55420848;
 Mon,  6 Jan 2020 08:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578300975;
 bh=kpTNuRYCk4/MMIP5zsVxzA3Jsb92H4wI/aZ9O1ah6CA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sC1b4Pa8E10HnPtzFhJ0HR0m4DD2dXzD4mV0T3hAdPMy2isKO4ODDPj3N1qr0c9Pf
 iMNr5g1sSbA5IToBZJV456FiODXa7ch4p0swlbkiu+mXKT1O2/SXrD4d6Spz1Ol0+Y
 4JPUwFq/QYR0ztb7n+OL4hlt8E3VwEbzqAE8VMz0=
Date: Mon, 6 Jan 2020 09:56:13 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2] ARM: dts: sun8i: R40: Add SPI controllers nodes and
 pinmuxes
Message-ID: <20200106085613.mxe33t7eklj3aeld@gilmour.lan>
References: <20200106003849.16666-1-andre.przywara@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200106003849.16666-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_005616_050718_D21BED5B 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============8978153384894084008=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8978153384894084008==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ksh7fmfwlzp3ppfl"
Content-Disposition: inline


--ksh7fmfwlzp3ppfl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 06, 2020 at 12:38:49AM +0000, Andre Przywara wrote:
> The Allwinner R40 SoC contains four SPI controllers, using the newer
> sun6i design (but at the legacy addresses).
> The controller seems to be fully compatible to the A64 one, so no driver
> changes are necessary.
> The first three controllers can be used on two sets of pins, but SPI3 is
> only routed to one set on Port A.
> Only the pin groups for SPI0 on PortC and SPI1 on PortI are added here,
> because those seem to be the only one exposed on the Bananapi boards.
>
> Tested by connecting a SPI flash to a Bananapi M2 Berry SPI0 and SPI1
> header pins.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Applied, thanks!
Maxime

--ksh7fmfwlzp3ppfl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhL2LQAKCRDj7w1vZxhR
xUb2AQC2t/o+wqWssFdYyX0elfDe2VwGXNbIb/BBf2YIjDGiQAEAnTOKxl6zFx6j
7yOxHtFLtYN6hk+SoNjDYuHQ3s/s+Ak=
=b/td
-----END PGP SIGNATURE-----

--ksh7fmfwlzp3ppfl--


--===============8978153384894084008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8978153384894084008==--

