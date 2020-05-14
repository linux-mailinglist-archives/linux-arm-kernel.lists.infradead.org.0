Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798491D2B90
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 11:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zlGPe1Q85/cOQrr5F8syrz5OuZzwKhWQuY6eSQyhSCQ=; b=Yi7srqmKj1s9gg
	5qgpvBFYFhN8aRrwW9p8DBwlHzgVnkN80gnPpmLRyfSqWAKc3pg+G6eCwSJ8tG+9b1XL65xjaS1/1
	rw2MyJKDLPYN6nWC8LgmsmkKOAxqDZz0sUFwG85/Y31FX5e5rcc32RdyhjDED6IKNy5jNeJcI+XMR
	19KpeIkx/3aFvhQ2otSFft8r3EGmC3ddD2NnYgJc15gL3X7wqOYRwHLgygjVV0Ci2L0WV9lxXfvdC
	92JzwvFIC8RijiFEGhDa0aTC/Ax5GYIAHbiDYtedVQCeB0WgdXkrBPu7/HtHLnH6yM0tquUBU/1wi
	z7BoN2JYHJCTuZhLtmaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZAI5-00069a-7s; Thu, 14 May 2020 09:36:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZAHw-000697-41
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 09:36:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 0244F2A06B8
Date: Thu, 14 May 2020 11:36:17 +0200
From: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 6/6] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
Message-ID: <20200514093617.dwhmqaasc3z5ixy6@rcn-XPS-13-9360>
Mail-Followup-To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, geert+renesas@glider.be,
 robh+dt@kernel.org, xuwei5@hisilicon.com
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-7-ricardo.canuelo@collabora.com>
 <20200514015412.GF7425@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514015412.GF7425@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_023624_423983_9FA313EE 
X-CRM114-Status: GOOD (  23.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent, thanks for the thorough review. Some comments below:

On jue 14-05-2020 04:54:12, Laurent Pinchart wrote:
> > +description: |
> > +  The ADV7511, ADV7511W and ADV7513 are HDMI audio and video
> > +  transmitters compatible with HDMI 1.4 and DVI 1.0. They support color
> > +  space conversion, S/PDIF, CEC and HDCP. They support RGB input
> > +  interface.
> 
> I would write the last sentence as "The transmitter input is parallel
> RGB or YUV data." as YUV is also supported.

Ok.

> > +  adi,input-colorspace:
> > +    description: Input color space.
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/string
> > +      - enum: [ rgb, yuv422, yuv444 ]
> 
> Isn't string implied ? Can't you write
> 
>   adi,input-colorspace:
>     description: Input color space.
>     enum: [ rgb, yuv422, yuv444 ]

example-schema.yaml says that

    Vendor specific properties have slightly different schema
    requirements than common properties. They must have at least a type
    definition and 'description'.

However, dt_binding_check doesn't seem to enforce this rule for string
properties, and I saw a couple of vendor-specific string properties in
other bindings that don't define the type either, so I'm going to follow
your suggestion but only for string properties, the rest need a type
definition.

I noticed I can remove the "allOf" keywords from these too.

> > +  adi,embedded-sync:
> > +    description:
> > +      The input uses synchronization signals embedded in the data
> > +      stream (similar to BT.656). Defaults to 0 (separate H/V
> > +      synchronization signals).
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - enum: [ 0, 1 ]
> > +      - default: 0
> 
> This be a boolean property (it is read as a bool by the driver, the
> property being absent means false, the property being present means
> true).

You're completely right.

> > +  ports:
> > +    description:
> > +      The ADV7511(W)/13 has two video ports and one audio port. This node
> > +      models their connections as documented in
> > +      Documentation/devicetree/bindings/media/video-interfaces.txt
> > +      Documentation/devicetree/bindings/graph.txt
> > +    type: object
> > +    properties:
> > +      port@0:
> > +        description: Video port for the RGB, YUV or DSI input.
> 
> s/RGB, YUV or DSI/RGB or YUV/

Ok.

> > +if:
> > +  not:
> > +    properties:
> > +      adi,input-colorspace:
> > +        contains:
> > +          enum: [ rgb, yuv444 ]
> > +      adi,input-clock:
> > +        contains:
> > +          const: 1x
> 
> As both properties take a single value, I think you can omit
> "contains:".

I think it's required here, removing it makes the test fail.

> > +required:
> > +  - compatible
> > +  - reg
> > +  - ports
> > +  - adi,input-depth
> > +  - adi,input-colorspace
> > +  - adi,input-clock
> 
> Shouldn't the power supplies be required ?

Good question. The original binding is not completely clear on
this. There's a "Required properties" section at the top that doesn't
include the supplies, the supplies block for the ADV7511/11w/13 looks
like a gray area in that regard, while the same block for ADV7533/35 is
more explicit in that they are required, and they are not listed in the
"Optional properties" section.

However, most of the DTs that use this binding don't define any
supplies. And AFAICT from looking at the code, regulator_get() will use
a dummy regulator and show a warning for every expected regulator that's
not defined in the DT.

If we want to be more strict and require the definition of all the
supplies, there will be many more DTs changes in the series, and I'm not
sure I'll be able to do that in a reasonable amount of time. I'm looking
at them and it's not always clear which regulators to use or if they are
even defined.

> > +description: |
> > +  The ADV7533 and ADV7535 are HDMI audio and video transmitters
> > +  compatible with HDMI 1.4 and DVI 1.0. They support color space
> > +  conversion, S/PDIF, CEC and HDCP. They support DSI for input pixels.
> 
> I would write the last sentence as "The transmitter input is MIPI DSI.".
>
> ...
>
> > +      Disables the interal timing generator. The chip will rely on the
> 
> s/interal/internal/
> 
> > +      sync signals in the DSI data lanes, rather than generate its own
> 
> s/generate/generating/
>
> ...
>
> > +    properties:
> > +      port@0:
> > +        description:
> > +          Video port for the RGB, YUV or DSI input. The remote endpoint
> 
> s/RGB, YUV or //

Ok.

> > +        ports {
> > +            #address-cells = <1>;
> > +            #size-cells = <0>;
> > +
> > +            port@0 {
> > +                reg = <0>;
> > +                adv7511w_in: endpoint {
> > +                    remote-endpoint = <&dpi_out>;
> > +                };
> > +            };
> > +
> > +            port@1 {
> > +                reg = <1>;
> > +                adv7511_out: endpoint {
> > +                    remote-endpoint = <&hdmi_connector_in>;
> > +                };
> > +            };
> 
> The name of the two endpoints doesn't match the adv7533. The remote
> endpoint phandle for port 0 should have dsi in its name.

Oops, thanks for catching these.

Cheers,
Ricardo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
