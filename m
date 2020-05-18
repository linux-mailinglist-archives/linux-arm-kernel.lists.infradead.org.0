Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 032411D8A09
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 23:28:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wXrRLZd3LYCOHLvBKw38XvINO7I/OaLGealpdlkDQI=; b=kX2Ea4x7D7olmw
	PPUussAn29JRQoJ+e9CwchniTI+kIGnSW5HUAtVftaUl+wgb6TAZuScCoZEJ+IiP54rPa4tUFUx1S
	cieV2Yez2meI/sUVIzb381fZzbUbpPBq3AvgpRiEDa9/GAddnQJ8Ps6nrM6K9uQ4oUmAH/3KgSvDL
	6gIFj7q8K00umtaVJGDzcoZLjomf+9GyxRwVUxu4KzeHsWG/N4wJCtPKth3jZlKsjn0S/5vMdt1yy
	0Rt+CqJlC85WN8L7dhPfTbHVDTojIyubW+qSNRPyGfIIZRZRwJsJ4EIXJXC8WE8ow2WrZf2cTZV1q
	0qEWyIWwJiBtJRMc2EnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1janIt-0006am-N8; Mon, 18 May 2020 21:28:07 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1janIl-0006aK-JB
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 21:28:00 +0000
Received: by mail-io1-f65.google.com with SMTP id t15so5477632ios.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 14:27:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=7FQwau3PCqaM/9zZ31O1gXyxqGZu0XGLSVBElgDs3LI=;
 b=FlFHwVX2j0yeQYeHkmbBw7NZvNLK/WAZKYZhZ4uO4pjS28EBI3ZAqkwvwFxBPlAtOS
 pctqit7alKQqMZy96BwAylCTfM8M35kQ/0lzuFQJSTSoCxIZulTcf1nZeXPPisBY02Oo
 rBVMLGruqqNP4XffogA0oJX+E2tLFzxHoKVGnpt1evHz2uTEnV3iGGyvdwsVHGbcnA8B
 TQb/PXulQyAf0eEIS0EW2t6XjixaGiMeIxQbjj2tr5Xg+rTMeS+hh4ozGebl+fvaZ4i1
 Qaw/hsfyamoBn9ZIxvA9dMwS+OhdzIX9a38pl8zjZe/UJauQxgEb1h2aZ0YcBw1/p/FQ
 JI6g==
X-Gm-Message-State: AOAM531avIs58knWdEvEmNpX7UV4ntaH+cih/HdQGieSA4L5kLn6JlJC
 OgUhdoTF+4NpQsbrZJX+mw==
X-Google-Smtp-Source: ABdhPJyP1G2iCjtRxtRLACkM46A2uYvHx8oxBdf8Gy6hJ8mmM56dfpTSJL0ube0FqvJR5rLwIzDkrg==
X-Received: by 2002:a05:6602:1616:: with SMTP id
 x22mr15107056iow.70.1589837278706; 
 Mon, 18 May 2020 14:27:58 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id c7sm5257708ilf.36.2020.05.18.14.27.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 14:27:58 -0700 (PDT)
Received: (nullmailer pid 9009 invoked by uid 1000);
 Mon, 18 May 2020 21:27:57 -0000
Date: Mon, 18 May 2020 15:27:57 -0600
From: Rob Herring <robh@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 6/6] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
Message-ID: <20200518212757.GA15067@bogus>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-7-ricardo.canuelo@collabora.com>
 <20200514015412.GF7425@pendragon.ideasonboard.com>
 <20200514093617.dwhmqaasc3z5ixy6@rcn-XPS-13-9360>
 <20200514152239.GG5955@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514152239.GG5955@pendragon.ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_142759_630989_8B82EE25 
X-CRM114-Status: GOOD (  22.60  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 kernel@collabora.com,
 Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 06:22:39PM +0300, Laurent Pinchart wrote:
> Hi Ricardo,
> =

> On Thu, May 14, 2020 at 11:36:17AM +0200, Ricardo Ca=F1uelo wrote:
> > Hi Laurent, thanks for the thorough review. Some comments below:
> > =

> > On jue 14-05-2020 04:54:12, Laurent Pinchart wrote:
> > > > +description: |
> > > > +  The ADV7511, ADV7511W and ADV7513 are HDMI audio and video
> > > > +  transmitters compatible with HDMI 1.4 and DVI 1.0. They support =
color
> > > > +  space conversion, S/PDIF, CEC and HDCP. They support RGB input
> > > > +  interface.
> > > =

> > > I would write the last sentence as "The transmitter input is parallel
> > > RGB or YUV data." as YUV is also supported.
> > =

> > Ok.
> > =

> > > > +  adi,input-colorspace:
> > > > +    description: Input color space.
> > > > +    allOf:
> > > > +      - $ref: /schemas/types.yaml#/definitions/string
> > > > +      - enum: [ rgb, yuv422, yuv444 ]
> > > =

> > > Isn't string implied ? Can't you write
> > > =

> > >   adi,input-colorspace:
> > >     description: Input color space.
> > >     enum: [ rgb, yuv422, yuv444 ]
> > =

> > example-schema.yaml says that
> > =

> >     Vendor specific properties have slightly different schema
> >     requirements than common properties. They must have at least a type
> >     definition and 'description'.
> > =

> > However, dt_binding_check doesn't seem to enforce this rule for string
> > properties, and I saw a couple of vendor-specific string properties in
> > other bindings that don't define the type either, so I'm going to follow
> > your suggestion but only for string properties, the rest need a type
> > definition.
> =

> I'll defer to Rob to tell the law here :-)

Yes, if you have a string with defined values, then a type isn't needed. =

That only applies to strings as numeric values need a size.

> =

> > I noticed I can remove the "allOf" keywords from these too.

Yes, that's a recent change. Both forms still work.


> > > > +  adi,embedded-sync:
> > > > +    description:
> > > > +      The input uses synchronization signals embedded in the data
> > > > +      stream (similar to BT.656). Defaults to 0 (separate H/V
> > > > +      synchronization signals).
> > > > +    allOf:
> > > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > > +      - enum: [ 0, 1 ]
> > > > +      - default: 0
> > > =

> > > This be a boolean property (it is read as a bool by the driver, the
> > > property being absent means false, the property being present means
> > > true).
> > =

> > You're completely right.
> > =

> > > > +  ports:
> > > > +    description:
> > > > +      The ADV7511(W)/13 has two video ports and one audio port. Th=
is node
> > > > +      models their connections as documented in
> > > > +      Documentation/devicetree/bindings/media/video-interfaces.txt
> > > > +      Documentation/devicetree/bindings/graph.txt
> > > > +    type: object
> > > > +    properties:
> > > > +      port@0:
> > > > +        description: Video port for the RGB, YUV or DSI input.
> > > =

> > > s/RGB, YUV or DSI/RGB or YUV/
> > =

> > Ok.
> > =

> > > > +if:
> > > > +  not:
> > > > +    properties:
> > > > +      adi,input-colorspace:
> > > > +        contains:
> > > > +          enum: [ rgb, yuv444 ]
> > > > +      adi,input-clock:
> > > > +        contains:
> > > > +          const: 1x
> > > =

> > > As both properties take a single value, I think you can omit
> > > "contains:".
> > =

> > I think it's required here, removing it makes the test fail.
> =

> I thought the following could work:
> =

> if:
>   not:
>     properties:
>       adi,input-colorspace:
>         enum: [ rgb, yuv444 ]
>       adi,input-clock:
>         items:
>           - const: 1x
> =

> But no big deal, contains: is ok too.

In theory the above should work. However, this is probably a case where =

we don't fix-up the properties. If you look at the DT yaml encoding, =

everything is an array (as dtc doesn't know). For schemas, the tooling =

expands scalars to arrays.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
