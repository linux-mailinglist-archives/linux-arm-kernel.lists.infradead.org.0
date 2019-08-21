Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAD7978B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 13:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z5U3Hos/wruia4nZsX4w2S96A+hfE0VSqmKWZ0OGNlc=; b=WcnEuIQYGDFVhX48ZSyHCAT/d
	AFWEiDWeWgfxg2UiFLD84WZnLUqsCus6If/Y0kTOr1ebtHSYoP83nadFPI2GWCJ0JdvaQ80U6qOrE
	SSWUSYzEBaU3FBoRsIQ3akXuR8I6JFRPufEcgyNEBTFcR9sZGizjVg6tQVa73GWei5zAHJqSjwYf4
	SDTbsOVQrfiCGssa+NKY5HuCg8ekaPZ+Iv4/Ff5S36gFk4Apdvtqz4zQ8FOPocdODch7tOo1EoUDA
	7/8x4H+oUD5r2Jt1YuyNOw951jFVdG9MEZgLykFsAjYak/sLiWcgsskBo9OZjCwFjEt0vwUuFkfIp
	g5uOzltMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0PGn-0000Mr-C8; Wed, 21 Aug 2019 11:59:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0PFG-0000Gx-TW
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 11:58:03 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B17C206BB;
 Wed, 21 Aug 2019 11:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566388661;
 bh=vzV50aK7lDvwz6lMyupuXqdrTQf9pceOREc9MLPjXDA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ErsoLiwFvVa4rb4uLVibjPKKg37prkawlSogG246Bql64GbTFVcbjAdJEsqfxdtpg
 t/T9fuApibipBMV5XIlwzJERndrgD1LMe2CEi1NiuSyrE3AAwO3y0t9vgPxVknuhr2
 XIHNqq7kTNCvuIxF5g/OL1vLp3iqYReP6SqQdaso=
Date: Wed, 21 Aug 2019 13:57:38 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v7 1/5] dt-bindings: media: Add Allwinner A10 CSI binding
Message-ID: <20190821115738.3amrk5td544mhpwd@flea>
References: <cover.b695c63cf668192aff5574a3005d483c601e77f6.1566300265.git-series.maxime.ripard@bootlin.com>
 <f490b35e62c5fd15174b5241ce1653e991c8fc9e.1566300265.git-series.maxime.ripard@bootlin.com>
 <20190820114849.GD5123@paasikivi.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <20190820114849.GD5123@paasikivi.fi.intel.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_045745_810147_BFD221FD 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0365528672027695102=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0365528672027695102==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6ow4c2sufu6lsmjk"
Content-Disposition: inline


--6ow4c2sufu6lsmjk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Sakari,

On Tue, Aug 20, 2019 at 02:48:49PM +0300, Sakari Ailus wrote:
> Hi Maxime,
>
> On Tue, Aug 20, 2019 at 01:24:32PM +0200, Maxime Ripard wrote:
> > From: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > The Allwinner A10 CMOS Sensor Interface is a camera capture interface also
> > used in later (A10s, A13, A20, R8 and GR8) SoCs.
> >
> > On some SoCs, like the A10, there's multiple instances of that controller,
> > with one instance supporting more channels and having an ISP.
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml | 107 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 107 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > new file mode 100644
> > index 000000000000..9000bca344f9
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > @@ -0,0 +1,107 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/allwinner,sun4i-a10-csi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner A10 CMOS Sensor Interface (CSI) Device Tree Bindings
> > +
> > +maintainers:
> > +  - Chen-Yu Tsai <wens@csie.org>
> > +  - Maxime Ripard <maxime.ripard@bootlin.com>
> > +
> > +description: |-
> > +  The Allwinner A10 and later has a CMOS Sensor Interface to retrieve
> > +  frames from a parallel or BT656 sensor.
> > +
> > +properties:
> > +  compatible:
> > +    const: allwinner,sun7i-a20-csi0
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: The CSI interface clock
> > +      - description: The CSI module clock
> > +      - description: The CSI ISP clock
> > +      - description: The CSI DRAM clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bus
> > +      - const: mod
> > +      - const: isp
> > +      - const: ram
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  port:
> > +    type: object
> > +    additionalProperties: false
> > +
> > +    properties:
> > +      endpoint:
> > +        properties:
> > +          bus-width:
> > +            const: 8
> > +            description: Number of data lines actively used.
>
> Are other values supported? If not, you could omit this.

It can also support 16 bits data input, but this description is
redundant anyway, I'll remove it.

> > +
> > +          data-active: true
> > +          hsync-active: true
> > +          pclk-sample: true
> > +          remote-endpoint: true
> > +          vsync-active: true
> > +
> > +        required:
> > +          - bus-width
> > +          - data-active
> > +          - hsync-active
> > +          - pclk-sample
> > +          - remote-endpoint
> > +          - vsync-active
>
> Some of these are not allowed in the Bt.656 mode (vsync-active and
> hsync-active) while they're required in Bt.601 mode. Is there a way to tell
> that in YAML-based bindings?

You could, but that would be more suited in another schemas. The way
schemas works is that you can have several layers of them, and each
being validated in isolation from the others.

Here, we're just listing the values usable by that binding, and it
will be used only to validate that binding.

Eventually, we'll want to have a video-interfaces schemas that will
apply to all the OF graph users, with those constraints defined.

This way, we can avoid a lot of duplication and just have the binding
description.

I guess I could just have the remote endpoint being required, and the
rest will be in the generic part.

> Similarly, video-interfaces.txt should be referenced from here, shouldn't
> it?

Sure.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--6ow4c2sufu6lsmjk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV0xsgAKCRDj7w1vZxhR
xZRVAQCiMCXGC+Jhj5UArGqGUPo8RfUmzov8i8LF6Y+puf29bQD9FukZcvSbUwWP
7Nb97AhXzuzAohNb4SnGTSQI6zT4lQQ=
=wBTw
-----END PGP SIGNATURE-----

--6ow4c2sufu6lsmjk--


--===============0365528672027695102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0365528672027695102==--

