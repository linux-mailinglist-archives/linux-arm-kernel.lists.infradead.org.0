Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC99AAB754
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 13:49:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BfE1MQEQLaoXrNYkgrsQs1TIuPOXw1zwn5hNI05f6r4=; b=HbuDWA/hsE24HB
	Zb0d1AUf6NgdYpyL8CuRR6QWqTxmhHW1vFUyzbtZnI281/7WW5gjJ1wvaY3KbqNnAbwVmtPdCrZEW
	rrZ+7UBKqXrz+IiA9lwH7KDX3S5050cNjsYYRXj5I1d6jXC5Y9m16wa+f/9gBJrGPc4sCsTi1YrSs
	tvn0Ggvvxc+J/i1cCyLy1NM3QoUD13iFLtfj2xBOz1WelcdBON5pSblDTAG2q3VKU0+LUMr7WQzvU
	4TkU6mYgZWY04VavSnrIOFITTT+qHfivI3fsm0Aill6SlX51BQ+JemJYSZLSVSPxl59fBByoAwt1y
	6DC0061tAcNKnzhvEQtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Cjl-0000QG-7J; Fri, 06 Sep 2019 11:49:09 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Cjf-0000Pm-0w
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 11:49:04 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id A8C5225B7AD;
 Fri,  6 Sep 2019 21:48:59 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 9647E9445BA; Fri,  6 Sep 2019 13:48:57 +0200 (CEST)
Date: Fri, 6 Sep 2019 13:48:57 +0200
From: Simon Horman <horms@verge.net.au>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm: renesas: Convert 'renesas,prr' to
 json-schema
Message-ID: <20190906114857.4mgunm4feehakc4u@verge.net.au>
References: <20190906111435.5706-1-horms+renesas@verge.net.au>
 <CAL_JsqLvU4=kaQ-nSwMuh4VXX67U5URZAPvVJohfKzQsQdFTrA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqLvU4=kaQ-nSwMuh4VXX67U5URZAPvVJohfKzQsQdFTrA@mail.gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_044903_376915_9A821C85 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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

On Fri, Sep 06, 2019 at 12:21:58PM +0100, Rob Herring wrote:
> On Fri, Sep 6, 2019 at 12:14 PM Simon Horman <horms+renesas@verge.net.au> wrote:
> >
> > Convert Renesas Product Register bindings documentation to json-schema.
> >
> > Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
> > ---
> > Based on v5.3-rc1
> > Tested using:
> >   make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/renesas,prr.yaml
> > ---
> >  .../devicetree/bindings/arm/renesas,prr.txt        | 20 ------------
> >  .../devicetree/bindings/arm/renesas,prr.yaml       | 36 ++++++++++++++++++++++
> >  2 files changed, 36 insertions(+), 20 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/renesas,prr.txt
> >  create mode 100644 Documentation/devicetree/bindings/arm/renesas,prr.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/arm/renesas,prr.txt b/Documentation/devicetree/bindings/arm/renesas,prr.txt
> > deleted file mode 100644
> > index 08e482e953ca..000000000000
> > --- a/Documentation/devicetree/bindings/arm/renesas,prr.txt
> > +++ /dev/null
> > @@ -1,20 +0,0 @@
> > -Renesas Product Register
> > -
> > -Most Renesas ARM SoCs have a Product Register or Boundary Scan ID Register that
> > -allows to retrieve SoC product and revision information.  If present, a device
> > -node for this register should be added.
> > -
> > -Required properties:
> > -  - compatible: Must be one of:
> > -    "renesas,prr"
> > -    "renesas,bsid"
> > -  - reg: Base address and length of the register block.
> > -
> > -
> > -Examples
> > ---------
> > -
> > -       prr: chipid@ff000044 {
> > -               compatible = "renesas,prr";
> > -               reg = <0 0xff000044 0 4>;
> > -       };
> > diff --git a/Documentation/devicetree/bindings/arm/renesas,prr.yaml b/Documentation/devicetree/bindings/arm/renesas,prr.yaml
> > new file mode 100644
> > index 000000000000..9df003041456
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/renesas,prr.yaml
> > @@ -0,0 +1,36 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/renesas,prr.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Renesas Product Register
> > +
> > +maintainers:
> > +  - Geert Uytterhoeven <geert+renesas@glider.be>
> > +  - Magnus Damm <magnus.damm@gmail.com>
> > +
> > +description: |
> > +  Most Renesas ARM SoCs have a Product Register or Boundary Scan ID
> > +  Register that allows to retrieve SoC product and revision information.
> > +  If present, a device node for this register should be added.
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +        - const: "renesas,prr"
> > +        - const: "renesas,bsid"
> 
> enum is better than oneOf+const and drop the quotes. oneOf/allOf/anyOf
> result in terrible error messages.

Thanks Rob,

Like this?

  compatible:
    enum:
      - renesas,prr
      - renesas,bsid

> > +  reg:
> > +    items:
> > +      - description: Base address and length of the register block.
> 
> That's what 'reg' *always* is... Just 'maxItems: 1' is sufficient when
> there is" only 1 entry.

And this?

  reg:
    maxItems: 1

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +examples:
> > +  - |
> > +    prr: chipid@ff000044 {
> > +        compatible = "renesas,prr";
> > +        reg = <0 0xff000044 0 4>;
> > +    };
> > --
> > 2.11.0
> >
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
