Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BD434BA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:08:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dP5R4ViukdR20YosdrGtLZd+nDrDdrIXQrjTwk/uGw8=; b=dXSDB8ZY47yGhX2yUa9oDuNU2
	Q+zpo7b8RtQQNywsooSPqyX3ANRuH+xIREd/GydUPaPQtFeaIFQ7QOc2dhrRgYLEpdOXDtdtYdtdq
	M9EDMsXewyLR7JBUd7dcyW1aNCn1FAK6K7z9N+gkQzKwVDwgZ2eE+L3AqLISvbv54AUPu6JgrMitH
	HBHRzA1r9ZViroluKDZJCQ8WwFURMrwsclrJDSKGTtVyMfIidjZ/FT21Zb6skZqenebVidPSzuNmA
	pXpEfQdPBhxkArFfO6Lf6fqJwyBmpCM3naQ4YSpAnj+bDRmF6KW6SUYlmObhR3eyjiIuCn928U6Pj
	0m/Lm+yEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYB2y-0006NA-29; Tue, 04 Jun 2019 15:08:20 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYB2p-0006Mn-Rm
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 15:08:13 +0000
Received: from g550jk.localnet (80-110-121-20.cgn.dynamic.surfer.at
 [80.110.121.20])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id 86472C5AE9;
 Tue,  4 Jun 2019 15:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1559660890; bh=zaAaHqRh524jBgxUSZGEHXD3aaBdPWcefSF2HtJ/9iQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=AjEsKnAHmL87BRiX9xgo2aImU9EqSkkVH3yVyQAJqw1uOeyMqmHblkFu2DiT0u0Ir
 rlqAsEKr5k13pjZiih1v3/L1SvCjlA54Sy48/3UO5cnQW31O07hfV/+gi5Mhudniul
 qVSTol9I3tVYwL18RzvW3APMYmOmMvqZZw5bNYzk=
From: Luca Weiss <luca@z3ntu.xyz>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Add lradc node
Date: Tue, 04 Jun 2019 17:07:57 +0200
Message-ID: <1832388.aQYCy0c1Lq@g550jk>
In-Reply-To: <20190604145907.j3fp52gxupd3bkih@flea>
References: <20190604144252.26965-1-luca@z3ntu.xyz>
 <20190604145907.j3fp52gxupd3bkih@flea>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_080812_032912_11D88637 
X-CRM114-Status: GOOD (  24.34  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
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
 <devicetree@vger.kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1048457200114929555=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1048457200114929555==
Content-Type: multipart/signed; boundary="nextPart2909352.anXG0Hpojg"; micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2909352.anXG0Hpojg
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Maxime,
sorry I forgot to mark it as a v2 and add the changelog to v1.

I've actually not split the patch into two on purpose as it's a pretty small 
change and the patch adding support for the A83T didn't split out the device 
tree changes - and recently in another patch of mine, the extra devicetree 
patch was squashed into the driver patch by the maintainer while merging. I'll 
fix this up asap.

Luca

On Dienstag, 4. Juni 2019 16:59:07 CEST Maxime Ripard wrote:
> Hi Luca,
> 
> On Tue, Jun 04, 2019 at 04:42:53PM +0200, Luca Weiss wrote:
> > Add a node describing the KEYADC on the A64.
> > 
> > Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> 
> You should have a changelog detailing which changes you made to your
> patch with the previous version, and why you made those changes (for
> example because we looked at the a83t datasheet and found the two
> controllers to be very similar).
> 
> > ---
> > 
> >  .../devicetree/bindings/input/sun4i-lradc-keys.txt        | 1 +
> >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi             | 8 ++++++++
> >  2 files changed, 9 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt
> > b/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt index
> > 496125c6bfb7..507b737612ea 100644
> > --- a/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt
> > +++ b/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt
> > 
> > @@ -5,6 +5,7 @@ Required properties:
> >   - compatible: should be one of the following string:
> >  		"allwinner,sun4i-a10-lradc-keys"
> >  		"allwinner,sun8i-a83t-r-lradc"
> > 
> > +		"allwinner,sun50i-a64-lradc", "allwinner,sun8i-a83t-r-
lradc"
> > 
> >   - reg: mmio address range of the chip
> >   - interrupts: interrupt to which the chip is connected
> >   - vref-supply: powersupply for the lradc reference voltage
> > 
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi index
> > 7734f70e1057..3a42352b5c9f 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > @@ -704,6 +704,14 @@
> > 
> >  			status = "disabled";
> >  		
> >  		};
> > 
> > +		lradc: lradc@1c21800 {
> > +			compatible = "allwinner,sun50i-a64-lradc",
> > +				     "allwinner,sun8i-a83t-r-
lradc";
> > +			reg = <0x01c21800 0x400>;
> > +			interrupts = <GIC_SPI 30 
IRQ_TYPE_LEVEL_HIGH>;
> > +			status = "disabled";
> > +		};
> > +
> 
> The bindings and the dt changes should be two different patches as
> well.
> 
> Thanks!
> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com


--nextPart2909352.anXG0Hpojg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE66ocILd+OiPORlvAOY2pEqPLBhkFAlz2iU0ACgkQOY2pEqPL
BhkUqQ/+LT63fs1EFL67wFkz1sDABOyesiVfTNGHeZxt7U3iBZKMlWr2imGwPypZ
FZkdHq5CgOTVceNoMvxJtaKFNuewU75VUjGo5bEw/+hO7qdawpu7oni+6BjOaPGY
3KaDj0GxNELe2wO6ZBcvfJNrgc2IoA6lkTDWdGqkchTO+bb824VGZmeStPfGRAAg
UXcjmqeQ6UfUZN7OMSKD82VOXNsG55xxLZwGFBIZlw45vZ9+wVEJhPAQFmn6V03V
y5CHvQYAQ9zOpvPe4DQz3ruOZm7Od+bUEMUP0W2hYVig0l1rkzUMPEEXsrcAY7al
ow3Mw0J2wMHy7WN6Tjx1MO2C8eTLd+D1e8VfqulEtA/4oy7hvXpiIjEKR5HwQb3P
Sdk/eWGhnrDLcWZ0tcpP7P5k2k6OrKJzlvaZ3Qiy/sYifBYzM1p+LX3V4WAHGoYx
5c8vt4XnmGYZN3zyDWnDW/gbpyqNal0PvtiDjnzglFfaYOn+smu8KOB7yJaBzPuT
+F/ziMdUpiTHvIwbGr/5iNi2stbTp22DE2b86w9JtPJanuLvibQ0Ub/iZXgWR+6j
GDwAaH0fqhqBoq0dqWkB3LU0dDnjWN4v+ADShF8NYkMBXcCFoGDNlRMrlEmltSM+
al4GF+2ykyt8QQWDYfBu5fp/ZT0P7XzEo+Cb8SeUOSqZNxXOG7E=
=Q6BY
-----END PGP SIGNATURE-----

--nextPart2909352.anXG0Hpojg--





--===============1048457200114929555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1048457200114929555==--




