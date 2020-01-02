Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C430712E4A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 10:57:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5B7aVNZr1BwcSHV3KmXIGNn85Jia3Huwgce8ZWTbHuM=; b=C6QI250/UoupvZssmmQsF6PEh
	468gdn5tVHQYC7M4jA02EgAWqJ1Pt92iOrvhc/4HZi6An88iuqupPh3OA4+5eniMAwsmocKTa91Om
	qwTOUnAkCQ+J13X71ZjFnSywp8hasPdDuQZCHmL3e0gbi829Q9thrs5KnQT3BzZQiTU1YzYya75rV
	W3jgVzcXvnPpXMR+dzfJWivPepw/Hud5aGOmaMZCxJjoXSL/DheIrLf1a54Qkr4ogxr0975y8w0M4
	54ML3DQxKHHA/iP11/kxPH+xd5vsOqF20LukOyt5TQCABCBw70nsQ+HzHSUpNxnwT8/3YNzE6tTZf
	t/uHgSkyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imxEI-0006xF-5d; Thu, 02 Jan 2020 09:57:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imxEA-0006wR-Li
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 09:57:15 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E208A21655;
 Thu,  2 Jan 2020 09:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577959034;
 bh=dJtLGM90VsSnxOKZxJ1G3gomh0Mc7mH7LCEgRH3z7jM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DijL6X3/QfA5NrtJFRhfK1Z4wSre004+UeEAVYW/kpoTbmpbkiEoQ3lPFlWivM39e
 9E4DrJlzBGhMpKEeT2wu4Qc8yVZRLiZ9zsCEQYjgXsA6D66detQgKOPhoUxQQkyoX3
 JFvsKWZFqN4HPJII98aBvkgND9TqED80H0OWVBtI=
Date: Thu, 2 Jan 2020 10:57:11 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 3/3] ARM: dts: sun8i: R40: Add SPI controllers nodes and
 pinmuxes
Message-ID: <20200102095711.dkd2cnbyitz6mvyx@gilmour.lan>
References: <20200102012657.9278-1-andre.przywara@arm.com>
 <20200102012657.9278-4-andre.przywara@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200102012657.9278-4-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_015714_730765_E980B42E 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============2442669843021057072=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2442669843021057072==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tls4vhda4rriy47h"
Content-Disposition: inline


--tls4vhda4rriy47h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Jan 02, 2020 at 01:26:57AM +0000, Andre Przywara wrote:
> The Allwinner R40 SoC contains four SPI controllers, using the newer
> sun6i design (but at the legacy addresses).
> The controller seems to be fully compatible to the A64 one, so no driver
> changes are necessary.
> The first three controller can be used on two sets of pins, but SPI3 is
> only routed to one set on Port A.
>
> Tested by connecting a SPI flash to a Bananapi M2 Berry on the SPI0
> PortC header pins.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm/boot/dts/sun8i-r40.dtsi | 89 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 89 insertions(+)
>
> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> index 8dcbc4465fbb..af437391dcf4 100644
> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> @@ -418,6 +418,41 @@
>  				bias-pull-up;
>  			};
>
> +			spi0_pc_pins: spi0-pc-pins {
> +				pins = "PC0", "PC1", "PC2", "PC23";
> +				function = "spi0";
> +			};
> +
> +			spi0_pi_pins: spi0-pi-pins {
> +				pins = "PI10", "PI11", "PI12", "PI13", "PI14";
> +				function = "spi0";
> +			};

This split doesn't really work though :/

The PC pins group has MOSI, MISO, CLK and CS0, while the PI pins group
has CS0, CLK, MOSI, MISO and CS1.

Meaning that if a board uses a GPIO CS pin, we can't really express
that, and any board using the PI pins for its SPI bus will try to
claim CS0 and CS1, no matter how many devices are connected on the bus
(and if there's one, there might be something else connected to PI14).

And you can't have a board using CS1 with the PC signals either.

You should split away the CS pins into separate groups, like we're
doing with the A20 for example.

And please add /omit-if-no-ref/ to those groups.

Thanks!
Maxime

--tls4vhda4rriy47h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg2+dwAKCRDj7w1vZxhR
xdmiAP4mLy588nTiex+S45eKxWs1Wtt7WGHHrELTu/B/hebe3wD/WNmEX7EE0jy1
4wrmC/4yBIl0G9Cu7ulHU3J2nzFBeAI=
=04oW
-----END PGP SIGNATURE-----

--tls4vhda4rriy47h--


--===============2442669843021057072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2442669843021057072==--

