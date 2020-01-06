Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D088A131AB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 22:51:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82uAh86Ytz1M3y906zD4eltc9DYUEk0gFqvvCFFpZBM=; b=RemvCHQd0javDH
	MHdg0vWVpRjJyw9GfgL7HGfztAIWEOCuwoDED28ciNkN2k8SgVyte6BEMA2SN3jU7ZEqfH+QLXYIz
	sICMGn62JzGy4+rV4E0w4I0axLQ2Sz45gBGUy0I9AEwtM4vsJ1eg8hUxq3VBNm1tDe/FGMb5dBzqY
	wQ1TIR9ju2h9/8VZYtjfQln7+HNXuxvUvJFrlyIe44PZyXrgNIyI5rGl9IHXPyreJ9XX5dctnJPwL
	Ivd/TIFxukZp/SaXDdFhi9Eo+zoT96v0ot5RpSrXPfVTLZl1ttHoqpq3JJt/z5WFVWsRIthRLUuq0
	uGmoUjDu4n0aRQNzyIQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioaHn-0004aU-5F; Mon, 06 Jan 2020 21:51:43 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioaHf-0004ZR-9S
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 21:51:36 +0000
Received: by mail-ot1-f67.google.com with SMTP id 66so73504233otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 13:51:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=q6uD0y39fhm44pZWO41miHHEfqh/x5T19yL2RZ/nwqg=;
 b=q3RRqdl//tIq5uXeYlLdqhQ0rktF04HyuKlu9Y5UKzbPk1NoZY1X2q+vE2JH+jb6qd
 P/17ALyj5ul2vO2hQx1iOi40RYYQEs5iWEYcgq+wBZ0GzIiRcOco6Y1HPjrbVWPKN8R1
 4KiVQ5VJK/jXJntMKwjLaAm/1OK6rTcZuVGO9zn3SFLCpuryT0r8L2JIV/jrwpA5DcVj
 Ifvud9Ybwgt1sj0l+2xOU0lSHotwu1k9ZRFPsjR/abeOP+I77RBVCbGopLX9wPgvs8SS
 QRx/giwwj4hoOZ5wPkCUXXagjXfNqu1Uufm97eN7layPPg63MNR2rru/JzftuvTW/KO/
 rUlQ==
X-Gm-Message-State: APjAAAXuw5i6Rc7s/WxwFePL43lIegGGcBU7JlouCAUukw00gEF4LX+D
 beXSWzU1QdDnapMbaL9e7jMiPuY=
X-Google-Smtp-Source: APXvYqzwneN9vk3RFNSTDhR/9MbAWciDFhbc/9bWJlt1Pd/F3zJLJ0VktExu62DatUGQue916SV/aw==
X-Received: by 2002:a9d:3b09:: with SMTP id z9mr119177336otb.195.1578347493160; 
 Mon, 06 Jan 2020 13:51:33 -0800 (PST)
Received: from rob-hp-laptop (ip-70-5-121-225.ftwttx.spcsdns.net.
 [70.5.121.225])
 by smtp.gmail.com with ESMTPSA id r25sm24596899otk.2.2020.01.06.13.51.32
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 13:51:32 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22043f
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 06 Jan 2020 15:51:29 -0600
Date: Mon, 6 Jan 2020 15:51:29 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2] dt-bindings: usb: Convert Allwinner A80 USB PHY
 controller to a schema
Message-ID: <20200106215129.GB11672@bogus>
References: <20200103152824.47383-1-maxime@cerno.tech>
 <20200104221321.GA11672@bogus>
 <20200106092724.pi2kbui7zayrhhzi@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106092724.pi2kbui7zayrhhzi@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_135135_331331_4F3B3CDD 
X-CRM114-Status: GOOD (  24.41  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 kishon@ti.com, Chen-Yu Tsai <wens@csie.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 06, 2020 at 10:27:24AM +0100, Maxime Ripard wrote:
> Hi Rob,
> 
> On Sat, Jan 04, 2020 at 03:13:21PM -0700, Rob Herring wrote:
> > On Fri, Jan 03, 2020 at 04:28:24PM +0100, Maxime Ripard wrote:
> > > The Allwinner A80 SoCs have a USB PHY controller that is used by Linux,
> > > with a matching Device Tree binding.
> > >
> > > Now that we have the DT validation in place, let's convert the device tree
> > > bindings for that controller over to a YAML schemas.
> > >
> > > Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > >
> > > ---
> > >
> > > Changes from v1:
> > >   - Added r-b tag from chen-yu
> > > ---
> > >  .../phy/allwinner,sun9i-a80-usb-phy.yaml      | 135 ++++++++++++++++++
> > >  .../devicetree/bindings/phy/sun9i-usb-phy.txt |  37 -----
> > >  2 files changed, 135 insertions(+), 37 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > >  delete mode 100644 Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt
> > >
> > > diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > > new file mode 100644
> > > index 000000000000..ded7d6f0a119
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > > @@ -0,0 +1,135 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/phy/allwinner,sun9i-a80-usb-phy.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Allwinner A80 USB PHY Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Chen-Yu Tsai <wens@csie.org>
> > > +  - Maxime Ripard <mripard@kernel.org>
> > > +
> > > +properties:
> > > +  "#phy-cells":
> > > +    const: 0
> > > +
> > > +  compatible:
> > > +    const: allwinner,sun9i-a80-usb-phy
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    anyOf:
> > > +      - description: Main PHY Clock
> > > +
> > > +      - items:
> > > +          - description: Main PHY clock
> > > +          - description: HSIC 12MHz clock
> > > +          - description: HSIC 480MHz clock
> >
> > Rather than anyOf, just 'minItems: 1' would work here. Though I guess
> > this disallows 2 items.
> 
> Yeah, 2 items is not allowed so I wanted to prevent that.
> 
> > > +
> > > +  clock-names:
> > > +    oneOf:
> > > +      - const: phy
> > > +
> > > +      - items:
> > > +          - const: phy
> > > +          - const: hsic_12M
> > > +          - const: hsic_480M
> > > +
> > > +  resets:
> > > +    anyOf:
> > > +      - description: Normal USB PHY reset
> > > +
> > > +      - items:
> > > +          - description: Normal USB PHY reset
> > > +          - description: HSIC Reset
> > > +
> > > +  reset-names:
> > > +    oneOf:
> > > +      - const: phy
> > > +
> > > +      - items:
> > > +          - const: phy
> > > +          - const: hsic
> > > +
> > > +  phy_type:
> > > +    const: hsic
> > > +    description:
> > > +      When absent, the PHY type will be assumed to be normal USB.
> > > +
> > > +  phy-supply:
> > > +    description:
> > > +      Regulator that powers VBUS
> > > +
> > > +required:
> > > +  - "#phy-cells"
> > > +  - compatible
> > > +  - reg
> > > +  - clocks
> > > +  - clock-names
> > > +  - resets
> > > +  - reset-names
> > > +
> > > +additionalProperties: false
> > > +
> > > +if:
> > > +  properties:
> > > +    phy_type:
> > > +      const: hsic
> > > +
> > > +  required:
> > > +    - phy_type
> > > +
> > > +then:
> > > +  properties:
> > > +    clocks:
> > > +      maxItems: 3
> > > +
> > > +    clock-names:
> > > +      maxItems: 3
> > > +
> > > +    resets:
> > > +      maxItems: 2
> > > +
> > > +    reset-names:
> > > +      maxItems: 2
> >
> > Do you intend that only a single item is allowed when not HSIC? If so,
> > that's not what is happening.
> 
> That's intentional indeed, the former binding was making the hsic
> clocks and resets mandatory when the phy was in HSIC mode, but only
> recommending listing them otherwise. Maybe we can change that in the
> future, but that seems out of scope for a conversion.

Okay. In that case,

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
