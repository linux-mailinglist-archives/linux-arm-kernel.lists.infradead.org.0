Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E282233360
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 17:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ir+jXthUaRjNqy1T/FBN/27ZUYdlCsUcE5AI/TroJfo=; b=G46yM//bnjeHS+BvgRGkiDEQh
	w/vlVBDSb9uEK18bXe7PMdngBpzzRadWm1M5rnuc6LAFHttt3txSCZ0gjoqrdB1UUq4HHNRl9S30O
	cRDt8xmLdED6YeOa9KoiFvL7TMUgK+IItOQTu+TFUZ/UJcYVefgcll7/s7O+hIxB9hVItPPOJtMGP
	eNsjR1FFOqT90KcdCw5uuG46Dbvat4s2ktWfnv/EW+kDLY12QQeQXhZkivRvOyfxH8PveEx0QDbLe
	4qecVGwuv7CahNR4xGhFbg8JOhrYDCCMcganWec1BidFRK2lRvgRLw63HRZDlGPKI2D99ZFjLlCDC
	BpWseKHFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXolx-0002x2-UN; Mon, 03 Jun 2019 15:21:17 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXolr-0002wg-0H
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 15:21:12 +0000
Received: from g550jk.localnet (80-110-121-20.cgn.dynamic.surfer.at
 [80.110.121.20])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id 2DA26C1EA1;
 Mon,  3 Jun 2019 15:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1559575268; bh=7lWq2A3Lrc28KJtfHYy0Wb+Zh4J86K9tw6JaC+YS190=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=NcfueCi9EZ+5MR4qMjNwW7RWSbqdzNVZ//pdTCqaUdOg8Vgf+yZ/9P2FisvGPEt60
 Yhcm2gZ2u0yRi+oi3/zmq4mQc/sxQVOl1ySw5iVzLb+mO34+PWZlRVHu2KXRsN8s+q
 RZKOdsqSWS68fgvD4d3TpsRPmw9mCWxG2gCRS35w=
From: Luca Weiss <luca@z3ntu.xyz>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Add lradc node
Date: Mon, 03 Jun 2019 17:20:51 +0200
Message-ID: <3880268.VpfjThaCW4@g550jk>
In-Reply-To: <20190603074247.hlayod2pxq55f6ci@flea>
References: <20190518170929.24789-1-luca@z3ntu.xyz>
 <6901794.oDhxEVzEqc@g550jk> <20190603074247.hlayod2pxq55f6ci@flea>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_082111_324437_886D17E0 
X-CRM114-Status: GOOD (  20.62  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
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
Content-Type: multipart/mixed; boundary="===============0295837884784297851=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============0295837884784297851==
Content-Type: multipart/signed; boundary="nextPart4884027.SNrMX4W1oj"; micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4884027.SNrMX4W1oj
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Montag, 3. Juni 2019 09:42:47 CEST Maxime Ripard wrote:
> Hi,
> 
> On Fri, May 31, 2019 at 12:27:55PM +0200, Luca Weiss wrote:
> > On Freitag, 24. Mai 2019 11:20:01 CEST Maxime Ripard wrote:
> > > It would be great to drop the -keys from the compatible, and to
> > > document the bindings
> > > 
> > > Looks good otherwise
> > > 
> > > Maxime
> > 
> > So I should just document the "allwinner,sun50i-a64-lradc" string in
> > Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt ? Don't I
> > also
> > have to add the compatible to the driver code then? Just adding the a64
> > compatible to a dts wouldn't work without that.
> 
> What I meant was that you needed both, something like:
> 
> compatible = "allwinner,sun50i-a64-lradc", "allwinner,sun8i-a83t-lradc";
> 
> That way, the OS will try to match a driver for the A64 compatible if
> any, and fallback to the A83's otherwise. And since we don't have any
> quirk at the moment, there's no change needed to the driver.
> 
> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

Hi Maxime,
sorry for the long back and forth, I hope I understood you correctly now.
Here's what I would submit as v2 then (I'll split the two files into seperate 
patches as the devicetree documentation suggests)

Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt:
  - compatible: should be one of the following string:
                "allwinner,sun4i-a10-lradc-keys"
                "allwinner,sun8i-a83t-r-lradc"
+               "allwinner,sun50i-a64-lradc", "allwinner,sun8i-a83t-r-lradc"

arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:
+               lradc: lradc@1c21800 {
+                       compatible = "allwinner,sun50i-a64-lradc",
+                                    "allwinner,sun8i-a83t-r-lradc";
+                       reg = <0x01c21800 0x400>;
+                       interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+                       status = "disabled";
+               };
+

Thanks,
Luca
--nextPart4884027.SNrMX4W1oj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE66ocILd+OiPORlvAOY2pEqPLBhkFAlz1OtMACgkQOY2pEqPL
BhniWhAAlYK190VpcKotzROcAO4PQWaBW+NvYV6iqItgjYPBg88mefVeqvnC1P8n
aga2RYwebN4iL8W3Rr+jyAzMza2B0ofuyn/2FTSizOxnfF6IgmEUvs2VehLPHSM8
oYD/J2aGB8aBVMRfGLmEaI2Ky47lnDCfoBS8iF6sh4ownDJyWrKVctwjqg5yTidq
sA2Qr8VnJyRdu75RAz9mJ9xKxiSOOK1IZlBlcuJBWpHHP9RBga8vNX12iKAwSpy6
wScB1JSUV3SzrarYn0Rp5CgQ1GocJJBM7I41si3cTkkhGdcngto+j3D5b/EZl61U
yv4BMhBhPpXsWhlRiWu0AeixVMBahlmNIkxKouehpMs1OvsgtVamdo/KLXzi/q9A
yN1Ut/WJkC3l8LzRg7ZQ9eXGO2HcbEmgNos2b5q6MgG55SyLVOmnpH7wGqdVnXNB
HTOfA0j2GCnJGWfVySBXXKLn4uIVrRyDeX0grO8nJp74f6Xp1iX4MC8jOjLidFPk
wPZmzgiGNzajyDLwyHt2Ir94n2qCRDxdp4Oh6mdXBxIDc0UDWEW58VcDZCdYDiL3
93BM+E1+3sQpIzryj1K9IElpGsUhcLYRemD+TchmNLKJAlLb+KlKac6ykLwMNwat
510fwJqUGSMJdgM4TldRE8sNLjJFRtUsJRDQ0yti6lkfDIBS5kA=
=CDr4
-----END PGP SIGNATURE-----

--nextPart4884027.SNrMX4W1oj--





--===============0295837884784297851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0295837884784297851==--




