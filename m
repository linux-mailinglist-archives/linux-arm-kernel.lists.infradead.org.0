Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5F1341CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yukh7e49dyWvH+DFF+6JhSZ6CyNR3FRqt6OLZN9qKno=; b=S9K6eezqSo/l1es5n3FSV3IWD
	heJOiCfW+WjouY6U9F8/WNF2lSAn6bmFna4kK+PqYixr0TLxV8J0vL4hUycu+Wdv6SW4K1pm0+B9c
	9/zT3dnznN6Ke3a9iaojNMpAf/vt8rstkzSDmg0kK0mpqqh6suXjxGQ5xy5SkFj0ZrQJsCYCBLwYQ
	7qsGIzSfrGqTgPtJZvQsm3tLoJDuug75uYP+fX4RvpuqxkYay0mgo0Qz94r1A8wmI+xU6SdrhyYF5
	hwkgL2IU4ERO7r5biVNJmXLAfMDF7HYqhxMQUSRtvYQQ0k7z5r7bKrDTxDkt2WYSERB9L3A6NB3Fq
	Ehjq25cDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4no-0007tu-N8; Tue, 04 Jun 2019 08:28:16 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4ni-0007tS-7G
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:28:11 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 3117D6000D;
 Tue,  4 Jun 2019 08:28:06 +0000 (UTC)
Date: Tue, 4 Jun 2019 10:28:06 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Luca Weiss <luca@z3ntu.xyz>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Add lradc node
Message-ID: <20190604082806.smght44dmhuoxw2u@flea>
References: <20190518170929.24789-1-luca@z3ntu.xyz> <6901794.oDhxEVzEqc@g550jk>
 <20190603074247.hlayod2pxq55f6ci@flea> <3880268.VpfjThaCW4@g550jk>
MIME-Version: 1.0
In-Reply-To: <3880268.VpfjThaCW4@g550jk>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_012810_417468_02A536D5 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5861948430095574893=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5861948430095574893==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rokvu4c2fxf472od"
Content-Disposition: inline


--rokvu4c2fxf472od
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 03, 2019 at 05:20:51PM +0200, Luca Weiss wrote:
> On Montag, 3. Juni 2019 09:42:47 CEST Maxime Ripard wrote:
> > Hi,
> >
> > On Fri, May 31, 2019 at 12:27:55PM +0200, Luca Weiss wrote:
> > > On Freitag, 24. Mai 2019 11:20:01 CEST Maxime Ripard wrote:
> > > > It would be great to drop the -keys from the compatible, and to
> > > > document the bindings
> > > >
> > > > Looks good otherwise
> > > >
> > > > Maxime
> > >
> > > So I should just document the "allwinner,sun50i-a64-lradc" string in
> > > Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt ? Don't I
> > > also
> > > have to add the compatible to the driver code then? Just adding the a64
> > > compatible to a dts wouldn't work without that.
> >
> > What I meant was that you needed both, something like:
> >
> > compatible = "allwinner,sun50i-a64-lradc", "allwinner,sun8i-a83t-lradc";
> >
> > That way, the OS will try to match a driver for the A64 compatible if
> > any, and fallback to the A83's otherwise. And since we don't have any
> > quirk at the moment, there's no change needed to the driver.
>
> sorry for the long back and forth, I hope I understood you correctly now.
> Here's what I would submit as v2 then (I'll split the two files into seperate
> patches as the devicetree documentation suggests)
>
> Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt:
>   - compatible: should be one of the following string:
>                 "allwinner,sun4i-a10-lradc-keys"
>                 "allwinner,sun8i-a83t-r-lradc"
> +               "allwinner,sun50i-a64-lradc", "allwinner,sun8i-a83t-r-lradc"
>
> arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:
> +               lradc: lradc@1c21800 {
> +                       compatible = "allwinner,sun50i-a64-lradc",
> +                                    "allwinner,sun8i-a83t-r-lradc";
> +                       reg = <0x01c21800 0x400>;
> +                       interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
> +                       status = "disabled";
> +               };
> +
>
> Thanks,
> Luca

That looks correct :)

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--rokvu4c2fxf472od
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPYrlgAKCRDj7w1vZxhR
xZ4wAQDYf4iwJpFsfR8XtFStVojYJ+87YKlwxsWeyc2AY+blqwD/bkhJERAV91vH
je0Y6DGnu87Ep+qyk/Jh5W384aSsxgM=
=Mcc7
-----END PGP SIGNATURE-----

--rokvu4c2fxf472od--


--===============5861948430095574893==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5861948430095574893==--

