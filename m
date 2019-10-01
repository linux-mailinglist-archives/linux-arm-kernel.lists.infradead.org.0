Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B6FC2F4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:53:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CHwijQC1+CISNlsPXcGxXEmavbTJixzO6DA+2NeZe6Y=; b=ko5mEilh0ee+/7YxCcQb9/eX0
	0XLqEkAiw3GFxw9TvI96KZaQDDf8L8HwUn2EhdcBYXLBQBuLANMMjMY1Kfx8oRlNu01OLsm/zD9ML
	Y3wDwmvDLM//RVBk7HBZlL0zV182juXhO4lwPihnuiaDJYDcReOKGGZwfGuW4YRhRjQMynRzv7lBS
	8O8rttCrfjvJOgc9Bgx7QQDr1vd66hmJ90/uuZv6bSL99+ZEa2uiZ+PiD006GUnH2Zkr1E8+uuVJy
	5Wrr46HTiauf5Ww5HmehFNmUVhosNC13YnweiJSjOUeBxsrJVHI9mYcY3ZZVQaYzlMHzaIq3obhcV
	dV8bJHr6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDty-0000hc-Ix; Tue, 01 Oct 2019 08:52:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDtq-0000gk-ER
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:52:52 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 872D82133F;
 Tue,  1 Oct 2019 08:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569919970;
 bh=TYXtlG+fiA+pF3jSsz1tPLK5DQwytXD+ciUdbJAWuhk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pcq6+VW4s9nKnunOdT0D2PQSwt06qFkxoutKMOh6lfzCjv0B+CUXME6uoPjRpjMRG
 1KExkyTabs+UJgSqaLRPYZyj4KicHav4PbAdLBmqDsnfYA2BQWDSdDQP66AhfCHpH9
 fl8DS+0XLZDHcBytry97Ks7aXl8rbOpD6/Wa2SQM=
Date: Tue, 1 Oct 2019 10:52:46 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v6 1/5] dt-bindings: media: Add Allwinner A10 CSI binding
Message-ID: <20191001085246.55srb62bpfc6jhtu@gilmour>
References: <cover.34bcd988943a26671681eaf849aacab51fab1cfe.1562847292.git-series.maxime.ripard@bootlin.com>
 <110dd9ff1784c29fa16304825a41d1603a33f166.1562847292.git-series.maxime.ripard@bootlin.com>
 <CAGb2v64nx2AuWZN+RxCneE0pqvXr_d7u6mQ+=nCHv2VJ1MNtrQ@mail.gmail.com>
 <CAGb2v66Sin9HZ+QENegLQ3d7iiy278niwdr9rEZ0HwUfeQNFRQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v66Sin9HZ+QENegLQ3d7iiy278niwdr9rEZ0HwUfeQNFRQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_015250_531456_9349A06E 
X-CRM114-Status: GOOD (  28.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============2666203972379612575=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2666203972379612575==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xnpqoekd4qgpls3t"
Content-Disposition: inline


--xnpqoekd4qgpls3t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Thanks for looking into this.

On Sun, Sep 15, 2019 at 04:54:16PM +0800, Chen-Yu Tsai wrote:
> On Thu, Aug 15, 2019 at 4:34 PM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > Hi,
> >
> > Sorry for chiming in so late.
> >
> > On Thu, Jul 11, 2019 at 8:15 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > The Allwinner A10 CMOS Sensor Interface is a camera capture interface also
> > > used in later (A10s, A13, A20, R8 and GR8) SoCs.
> > >
> > > On some SoCs, like the A10, there's multiple instances of that controller,
> > > with one instance supporting more channels and having an ISP.
> > >
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > > ---
> > >  Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml | 94 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
> > >  1 file changed, 94 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > > new file mode 100644
> > > index 000000000000..97c9fc3b5050
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> > > @@ -0,0 +1,94 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/arm/allwinner,sun4i-a10-csi.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Allwinner A10 CMOS Sensor Interface (CSI) Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Chen-Yu Tsai <wens@csie.org>
> > > +  - Maxime Ripard <maxime.ripard@bootlin.com>
> > > +
> > > +description: |-
> > > +  The Allwinner A10 and later has a CMOS Sensor Interface to retrieve
> > > +  frames from a parallel or BT656 sensor.
> > > +
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      - items:
> > > +          - enum:
> > > +              - allwinner,sun7i-a20-csi0
> > > +          - const: allwinner,sun4i-a10-csi0
> >
> > CSI0 on the A10 has an ISP. Do we know if the one in the A20 does
> > as well? It certainly doesn't say so in the user manual. If not,
> > then we can't claim that A20 CSI0 is compatible with A10 CSI0.
> >
> > > +
> > > +      - items:
> > > +          - const: allwinner,sun4i-a10-csi0
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    items:
> > > +      - description: The CSI interface clock
> > > +      - description: The CSI module clock
> > > +      - description: The CSI ISP clock
> > > +      - description: The CSI DRAM clock
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: bus
> > > +      - const: mod
> >
> > I doubt this actually is a module clock. Based on the usage in your
> > device tree patch, and the csi driver in the old linux-sunxi kernel,
> > the clock rate is set to 24 MHz, or whatever the sensor requires for
> > MCLK.
>
> I'm working on adding support for this on the R40, and it seems with
> this SoC the picture is much clearer. It has the same CSI interface
> block, but the CCU has the clocks correctly named. We have:
>
>   - CSI_MCLK0
>   - CSI_MCLK1
>   - CSI_SCLK
>
> in addition to the bus clocks.
>
> The CSI section also explains the clock signals:
>
>     6.1.3.2. Clock Sources
>     Two Clocks need to be configured for CSI controller. CSI0/1_MCLK
>     provides the master clock for sensor and other devices. CSI_SCLK
>     is the top clock for the whole CSI module.
>
> So it would seem the ISP clock we currently have in the DT is simply
> the module clock shared by all CSI-related hardware blocks, and the
> module clock is bogus.

I don't think it is. It looks like there's no ISP in the R40 CSI
controllers, so that would mean that we don't have an ISP clock, and
the SCLK is the module clock.

Does that make sense?

Maxime

--xnpqoekd4qgpls3t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZMT3gAKCRDj7w1vZxhR
xS3GAQChjJb/Uh7KohG6iZVuImDjv2jvfjSVwaddzLEzegEoVwD/RqeeW3t/PRw3
H9mwot1F7alalXIAAbHRVcaRaKwlXQE=
=vdGi
-----END PGP SIGNATURE-----

--xnpqoekd4qgpls3t--


--===============2666203972379612575==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2666203972379612575==--

