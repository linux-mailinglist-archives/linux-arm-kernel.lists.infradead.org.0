Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBD5AD0FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 00:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syxvYrpBitog83tz/ph5I2XmGjfsjGBFUrrBpMFxPXk=; b=YwZXsZ0v8lUb3C
	LXfnAkL7lXQwJzgNPRur0Jjed/0T6+ql6/LDC0HcIXxf3rV+FFonQEAkNLZRG9WLvCluu0MrF/Mnb
	X/PkRZVl9zba+we5mKDekjVAenqPs6XvX+tqu+NtHgjg1Uwb5B44yR4M2t8XueOMXo2DEPLX24E1I
	jP86BES7OglFFNPcSPcpCKLJJptMMO7F4/F5HCi3bve064w8Q7UTOC1VxAU1vQI4rgrG8Zf/d++SQ
	kYXIFXlQYlW+T3Tjd13bm372ybMw1Bf9Z4r4jo2nKfsXIMPuC9w0g8fiWz205yO1OjQHFTOaGi5MH
	/FHJ9WI0Fd7/MK2MmqdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i75SC-00017u-Dp; Sun, 08 Sep 2019 22:14:40 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i75S4-00017E-Ji
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 22:14:34 +0000
Received: from penelope.horms.nl (195-23-252-147.net.novis.pt [195.23.252.147])
 by kirsty.vergenet.net (Postfix) with ESMTPA id A723525AF0E;
 Mon,  9 Sep 2019 08:14:27 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 27864E21127; Sun,  8 Sep 2019 14:06:17 +0200 (CEST)
Date: Sun, 8 Sep 2019 13:06:17 +0100
From: Simon Horman <horms@verge.net.au>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm: renesas: Convert 'renesas,prr' to
 json-schema
Message-ID: <20190908120616.3gnmhhpxhxfxpayp@verge.net.au>
References: <20190906111435.5706-1-horms+renesas@verge.net.au>
 <CAL_JsqLvU4=kaQ-nSwMuh4VXX67U5URZAPvVJohfKzQsQdFTrA@mail.gmail.com>
 <20190906114857.4mgunm4feehakc4u@verge.net.au>
 <CAL_Jsq+yp6vw=RoUb+-C3rX2322Y=8xD=wr8OYWxmbvq2SOuKg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+yp6vw=RoUb+-C3rX2322Y=8xD=wr8OYWxmbvq2SOuKg@mail.gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_151432_956461_9B1B1B7F 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 01:54:26PM +0100, Rob Herring wrote:
> On Fri, Sep 6, 2019 at 12:49 PM Simon Horman <horms@verge.net.au> wrote:
> >
> > On Fri, Sep 06, 2019 at 12:21:58PM +0100, Rob Herring wrote:
> > > On Fri, Sep 6, 2019 at 12:14 PM Simon Horman <horms+renesas@verge.net.au> wrote:
> > > >
> > > > Convert Renesas Product Register bindings documentation to json-schema.
> > > >
> > > > Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
> > > > ---
> > > > Based on v5.3-rc1
> > > > Tested using:
> > > >   make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/renesas,prr.yaml
> > > > ---
> > > >  .../devicetree/bindings/arm/renesas,prr.txt        | 20 ------------
> > > >  .../devicetree/bindings/arm/renesas,prr.yaml       | 36 ++++++++++++++++++++++
> > > >  2 files changed, 36 insertions(+), 20 deletions(-)
> > > >  delete mode 100644 Documentation/devicetree/bindings/arm/renesas,prr.txt
> > > >  create mode 100644 Documentation/devicetree/bindings/arm/renesas,prr.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/arm/renesas,prr.txt b/Documentation/devicetree/bindings/arm/renesas,prr.txt
> > > > deleted file mode 100644
> > > > index 08e482e953ca..000000000000
> > > > --- a/Documentation/devicetree/bindings/arm/renesas,prr.txt
> > > > +++ /dev/null
> > > > @@ -1,20 +0,0 @@
> > > > -Renesas Product Register
> > > > -
> > > > -Most Renesas ARM SoCs have a Product Register or Boundary Scan ID Register that
> > > > -allows to retrieve SoC product and revision information.  If present, a device
> > > > -node for this register should be added.
> > > > -
> > > > -Required properties:
> > > > -  - compatible: Must be one of:
> > > > -    "renesas,prr"
> > > > -    "renesas,bsid"
> > > > -  - reg: Base address and length of the register block.
> > > > -
> > > > -
> > > > -Examples
> > > > ---------
> > > > -
> > > > -       prr: chipid@ff000044 {
> > > > -               compatible = "renesas,prr";
> > > > -               reg = <0 0xff000044 0 4>;
> > > > -       };
> > > > diff --git a/Documentation/devicetree/bindings/arm/renesas,prr.yaml b/Documentation/devicetree/bindings/arm/renesas,prr.yaml
> > > > new file mode 100644
> > > > index 000000000000..9df003041456
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/arm/renesas,prr.yaml
> > > > @@ -0,0 +1,36 @@
> > > > +# SPDX-License-Identifier: GPL-2.0
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/arm/renesas,prr.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Renesas Product Register
> > > > +
> > > > +maintainers:
> > > > +  - Geert Uytterhoeven <geert+renesas@glider.be>
> > > > +  - Magnus Damm <magnus.damm@gmail.com>
> > > > +
> > > > +description: |
> > > > +  Most Renesas ARM SoCs have a Product Register or Boundary Scan ID
> > > > +  Register that allows to retrieve SoC product and revision information.
> > > > +  If present, a device node for this register should be added.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    oneOf:
> > > > +        - const: "renesas,prr"
> > > > +        - const: "renesas,bsid"
> > >
> > > enum is better than oneOf+const and drop the quotes. oneOf/allOf/anyOf
> > > result in terrible error messages.
> >
> > Thanks Rob,
> >
> > Like this?
> >
> >   compatible:
> >     enum:
> >       - renesas,prr
> >       - renesas,bsid
> >
> > > > +  reg:
> > > > +    items:
> > > > +      - description: Base address and length of the register block.
> > >
> > > That's what 'reg' *always* is... Just 'maxItems: 1' is sufficient when
> > > there is" only 1 entry.
> >
> > And this?
> >
> >   reg:
> >     maxItems: 1
> 
> Yes, for both.

Thanks, I have posted v2 with the changes you suggested.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
