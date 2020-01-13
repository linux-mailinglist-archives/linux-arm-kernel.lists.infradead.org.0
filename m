Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B609138D59
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 09:59:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oWyrVvTYMEzECkNZxFtDi1TwfW/H3Jg9K/1pdwGYgiA=; b=tyF79N4Pma9EBK2MSjBlBiUco
	17DzVSrG0eIhxOF91+a8W/iO2aeVC5XT9sfz1yTTOcdGEOHgGZNh547dqa0H8VIlBSV9dL4KsvyFX
	MJdHBdiljuXeAqszvzMlGTr49qtqKktnikKCrn77eEHGxEXw8q+JW9MHvjIuC6muXRKXGAbaxUVJ4
	svNVaj4ExDWvVbqSqr4iYF1JbpwfUXlJ1+HlBBXs5XHuNhghXEldLsgiKB+/dyj11vQLSwMv57jOw
	2op3eyrYnrseGWoZXbgicQlKtLCQPL2N2CPccEr8rWX0d+tLkYy/C0P12zWbcTdaV0d/0FPrmqQKC
	nzFlcEDmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvZY-0002Yn-NT; Mon, 13 Jan 2020 08:59:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvZN-0002YQ-Mw
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 08:59:35 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A09820678;
 Mon, 13 Jan 2020 08:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578905972;
 bh=JfZwSTOrI3J7CIa5OdM8C3bfShk23rBqMg7ZmqPnXd0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Oi9IO6MWKgGI+YoNaP20pa1l4rq2n7FBdgy/pBOn4XJCDISx2Jdz3ni2uErW4Ldz2
 cWG4w1zm8qisUTJI8kAGS2iXzgfSOqAuQwq9GzZNo8NOW7hBs4Wl2kDoXd9byaG6+U
 TBfAuEQKR39d2TFLq3Hr+4Z3HC0pneZIvN7Sr7ak=
Date: Mon, 13 Jan 2020 09:59:29 +0100
From: Maxime Ripard <mripard@kernel.org>
To: =?utf-8?B?QW5kcsOp?= Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 1/2] arm64: dts: sun50i: H6: Add SPI controllers nodes
 and pinmuxes
Message-ID: <20200113085929.24iseck4fljw5njh@gilmour.lan>
References: <20200108101006.150706-1-andre.przywara@arm.com>
 <20200108101006.150706-2-andre.przywara@arm.com>
 <20200111172639.to3lhzros6ca5hj2@gilmour.lan>
 <cea0a8ed-fcf7-53c8-daf9-cf27408d83f9@arm.com>
MIME-Version: 1.0
In-Reply-To: <cea0a8ed-fcf7-53c8-daf9-cf27408d83f9@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_005933_795286_774B694B 
X-CRM114-Status: GOOD (  29.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-spi@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Icenowy Zheng <icenowy@aosc.xyz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9009682315185840296=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9009682315185840296==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ir7fewqs7mlcjtw5"
Content-Disposition: inline


--ir7fewqs7mlcjtw5
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 12, 2020 at 03:12:19PM +0000, Andr=E9 Przywara wrote:
> On 11/01/2020 17:26, Maxime Ripard wrote:
>
> Hi Maxime,
>
> > On Wed, Jan 08, 2020 at 10:10:05AM +0000, Andre Przywara wrote:
> >> The Allwinner H6 SoC contains two SPI controllers similar to the H3/A6=
4,
> >> but with the added capability of 3-wire and 4-wire operation modes.
> >> For now the driver does not support those, but the SPI registers are
> >> fully backwards-compatible, just adding bits and registers which were
> >> formerly reserved. So we can use the existing driver for the "normal" =
SPI
> >> modes, for instance to access the SPI NOR flash soldered on the PineH64
> >> board.
> >> We use an H6 specific compatible string in addition to the existing H3
> >> string, so when the driver later gains Quad SPI support, it should work
> >> automatically without any DT changes.
> >>
> >> Tested by accessing the SPI flash on a Pine H64 board (SPI0), also
> >> connecting another SPI flash to the SPI1 header pins.
> >>
> >> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> >> ---
> >>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 54 ++++++++++++++++++++
> >>  1 file changed, 54 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64=
/boot/dts/allwinner/sun50i-h6.dtsi
> >> index 3329283e38ab..40835850893e 100644
> >> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> >> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> >> @@ -338,6 +338,30 @@
> >>  				bias-pull-up;
> >>  			};
> >>
> >> +			/omit-if-no-ref/
> >> +			spi0_pins: spi0-pins {
> >> +				pins =3D "PC0", "PC2", "PC3";
> >> +				function =3D "spi0";
> >> +			};
> >> +
> >> +			/omit-if-no-ref/
> >> +			spi0_cs_pin: spi0-cs-pin {
> >> +				pins =3D "PC5";
> >> +				function =3D "spi0";
> >> +			};
> >
> > It seems suspicious to use it in the Pine H64, since PC5 is also used
> > by the eMMC (and this prevents either the SPI or the emmc controller
> > to probe, depending on which probed first).
>
> Argh, good catch! I saw that AW changed the pin sharing between SPI and
> MMC2 slightly, but didn't actually check that they made it worse :-(
> Because this time it's the MMC CMD pin affected, and not the somewhat
> optional DS pin as in the A64.
> So I see we can't really have both at the same time. So what about this:
>
> We keep the SPI flash chip described as in patch 2/2 (as it's soldered
> on every board), but mark it as disabled and explain this in a comment.
> This way we can't access it under Linux, but keep a potential eMMC chip
> accessible.
>
> In U-Boot's DT copy we could deviate and mark it as "okay", as U-Boot
> doesn't use both eMMC and SPI at the same time. I need to check whether
> this works or we would need to move the pinmux setup out of the probe
> routine into something later.
>
> And we could go one step further: If U-Boot detects an eMMC connected
> (it's on a socket and so optional), it changes the SPI flash status to
> "disabled", to allow EFI apps and kernels using this DT to access the
> eMMC - which is far more useful than the SPI flash.
> Otherwise (no eMMC connected) it can stay at "okay", as there would be
> no conflict.
>
> Does this make sense?

It does, it seems like a good plan

Maxime

--ir7fewqs7mlcjtw5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhwxcQAKCRDj7w1vZxhR
xeN3AP472p91nx9oqXRJe6+0u8r0T386EdVwUUHUSJGHeqdtzwEA8UiwW9E3F42A
/XZ5acoOflKaj0ShNtTko85S2oaFWQM=
=8bva
-----END PGP SIGNATURE-----

--ir7fewqs7mlcjtw5--


--===============9009682315185840296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9009682315185840296==--

