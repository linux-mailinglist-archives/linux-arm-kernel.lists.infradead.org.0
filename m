Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1E3169E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 20:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XgLZbGttYjhQ4gWsY6DlVBedcRYlfNqWWba8kI5icJs=; b=LC9xBHt48WIb2S
	6SD2wgNqBKWPEdquueTjFEdXHxlS04n2i5xZjFSOFD35gV5E9cU2+lgRQDA7WxNxeOgnyhUPFVY35
	e1DIHQK0LDVIK5WwzHr9m/hD80JIkGIruRakE7P7r0Wl0cUHiEYTRZVD4u/Soz/1+6SOqakHAu8kD
	Ua3ZH2E9K9oE1ujMK87cchxXI8YjILIZHUVxpxWw+O87DTuViIMjP+T/EmoC8ZEo1idgxYqg5Ea05
	DhzbSRrRPLgHGojl83XHgNIdvQ/+dQ9M1oY17URg1BJncNGkYV1TrBQVXwiu3qbFTCne52swig1J5
	618CcnBUj6VPLFcXjAWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4Vi-0005h3-DU; Tue, 07 May 2019 18:08:14 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4VH-0005Hr-EB
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 18:07:49 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 7E4F124000B;
 Tue,  7 May 2019 18:07:33 +0000 (UTC)
Date: Tue, 7 May 2019 17:13:53 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: spi: Add YAML schemas for the generic
 SPI options
Message-ID: <20190507151353.ns2i72ii5cw6z7lz@flea>
References: <b7a6095a5c900fa23cc54d1ccd8e8ef0ccf6e788.1557236840.git-series.maxime.ripard@bootlin.com>
 <CAL_JsqKeLWgGLafwbKViTgpw4B=W9YGULaMr8h0p_rWX8PP_UQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqKeLWgGLafwbKViTgpw4B=W9YGULaMr8h0p_rWX8PP_UQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_110747_619644_505F2D73 
X-CRM114-Status: GOOD (  24.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-spi <linux-spi@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, May 07, 2019 at 09:35:28AM -0500, Rob Herring wrote:
> On Tue, May 7, 2019 at 8:48 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > The SPI controllers have a bunch of generic options that are needed in a
> > device tree. Add a YAML schemas for those.
>
> I'd started on this one, but was planning to move it to the schema
> repository. The issue there is re-licensing (adding BSD 2 clause).
> Maybe better to just move it later.

I just found out that dt-doc-validate also chokes on the reference
URI. Maybe I should just submit it to the repo then once that is
settled?

> > +properties:
> > +  $nodename:
> > +    pattern: "^spi(@[a-zA-Z0-9]+)?$"
>
> I think we want just "(@.*)". At a minimum, you need to allow for ','.
> It would be the a bus schema for the parent which should validate unit
> addresses, so we should pretty much just allow anything here.

The issue with this is that it will also match any node starting with
spi. In the Allwinner case, that also means the pinctrl nodes with spi
pins in them, but I'm sure we can find more corner cases.

> > +
> > +  "#address-cells":
> > +    const: 1
> > +
> > +  "#size-cells":
> > +    const: 0
> > +
> > +  cs-gpios:
> > +    description: |
> > +      GPIOs used as chip selects.
> > +      If that property is used, the number of chip selects will be
> > +      increased automatically with max(cs-gpios, hardware chip selects).
> > +
> > +      So if, for example, the controller has 2 CS lines, and the
> > +      cs-gpios looks like this
> > +        cs-gpios = <&gpio1 0 0>, <0>, <&gpio1 1 0>, <&gpio1 2 0>;
> > +
> > +      Then it should be configured so that num_chipselect = 4, with
> > +      the following mapping
> > +        cs0 : &gpio1 0 0
> > +        cs1 : native
> > +        cs2 : &gpio1 1 0
> > +        cs3 : &gpio1 2 0
> > +
> > +  num-cs:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      Total number of chip selects.
> > +
> > +  spi-slave:
> > +    $ref: /schemas/types.yaml#/definitions/flag
>
> "type: boolean" is sufficient here. Maybe we should just remove
> 'flag'. OTOH, maybe consistency with other types and the abstraction
> is better as we could add to the flag schema.

I was trying to be consistent. Do you want me to remove it?

> > +      spi-rx-bus-width:
> > +        allOf:
> > +          - $ref: /schemas/types.yaml#/definitions/uint32
> > +          - enum: [ 1, 2, 4, 8 ]
>
> Is the old doc out of date and 8 is allowed now?

It's not, it's a copy and paste mistake.

I'll respin this with your fixes, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
