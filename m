Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A16F1C607A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 20:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMK48FL9rFvEmAImnOeyVQg7GCubmedjd+cAOEWmbj0=; b=r5R1Xq1AACZTFx
	5nVtnMavnfV1HTmYRrIZefInuS7UYav+5rzOWC7JItt8iweBIw1Hg4h18mZ2bcRGhfcysMWvyZi7O
	KUMFtrKEVEHB2HcZ163YWLDlaOa+NBnuHixyHabrkK4tq9bKJSvYLZkW0JtuSrw5pCx1CeETpYUPb
	d6FWrUt0I+P8LX3CGuFQKDOTIGy1eUku+vuIZh61amgVMOKpVzjnVSY842KveXGGHPDrK3YWt5jh9
	XFjYDtXda0kpjuvSvUKJ9uLs16lZzx7d89YtzvPaf/oJR4ttUrhUMcVNEcfMK+wv7iTA1Uijz8Rqc
	tB5GcWMhWUjydeuyAOSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW2jr-0005gE-54; Tue, 05 May 2020 18:56:19 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW2ji-0005ff-J1
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 18:56:12 +0000
Received: by mail-oi1-f195.google.com with SMTP id s202so2956639oih.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 11:56:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=d0cu7WNUYtFmviXXT9Num+FiM1gPbKHgwu8i5uezLlI=;
 b=JgfICgmJ4Fu6M8888BkiTG63kGhLa7te/VMvX76wCayVJ7PJWXEDoLUeHJV1msSOMZ
 qqH+enlH4GlxJPVa6ZkABlD7RrpW3U+sRqFQN9YGLgaHpvFbpnwHTM/KyDBh0k5F84ri
 9cTwsKznmQ3NeZ86n4d/ZtSjSX/mWDgfO6CzyhW3OmxUGzvyhS1VBSOlj5JvK4FsQFbT
 K0zIz78o4b4GqI2ednenRHTJJFL9j5j5JVqfzCMu72fhDZUUtfuiIZYYzrdlJ8xht6cg
 7pIoJtRowT9vkq5wFqyLXzP/++dXFmE5CMQwWTbahVraneoOizoSjs8tJHv+5JMZT4Wv
 U/PA==
X-Gm-Message-State: AGi0PuaNiJ01oJbVUvHMf/7lB4QpVPqpg6Rk+Pl5NKJJmgngv8idtsAB
 9ESzqHkMEz/Vbw/BG9nYWA==
X-Google-Smtp-Source: APiQypL70F5QwvoXL/avKkUzgOGFWSVdW9U+ZDOeutJO0lTmvaMfYuHHmj2SAJbOdmD6FKRTcrfm6Q==
X-Received: by 2002:aca:5588:: with SMTP id j130mr111394oib.144.1588704969198; 
 Tue, 05 May 2020 11:56:09 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y198sm782496oia.20.2020.05.05.11.56.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 11:56:08 -0700 (PDT)
Received: (nullmailer pid 31489 invoked by uid 1000);
 Tue, 05 May 2020 18:56:07 -0000
Date: Tue, 5 May 2020 13:56:07 -0500
From: Rob Herring <robh@kernel.org>
To: Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [RFT PATCH 5/5] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
Message-ID: <20200505185607.GA25651@bogus>
References: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
 <20200501083227.10886-6-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501083227.10886-6-ricardo.canuelo@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_115610_627576_58784639 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
 laurent.pinchart@ideasonboard.com, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 10:32:27AM +0200, Ricardo Ca=F1uelo wrote:
> Convert the ADV7511/11w/13/33/35 DT bindings to json-schema.
> =

> Signed-off-by: Ricardo Ca=F1uelo <ricardo.canuelo@collabora.com>
> ---
>  .../bindings/display/bridge/adi,adv7511.txt   | 143 ---------
>  .../bindings/display/bridge/adi,adv7511.yaml  | 293 ++++++++++++++++++
>  2 files changed, 293 insertions(+), 143 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/bridge/adi,=
adv7511.txt
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/adi,=
adv7511.yaml


> diff --git a/Documentation/devicetree/bindings/display/bridge/adi,adv7511=
.yaml b/Documentation/devicetree/bindings/display/bridge/adi,adv7511.yaml
> new file mode 100644
> index 000000000000..0654c3a35281
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/adi,adv7511.yaml
> @@ -0,0 +1,293 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/adi,adv7511.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices ADV7511(W)/13/33/35 HDMI Encoders
> +
> +maintainers:
> +  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> +
> +description: |
> +  The ADV7511, ADV7511W, ADV7513, ADV7533 and ADV7535 are HDMI audio and
> +  video transmitters compatible with HDMI 1.4 and DVI 1.0. They support
> +  color space conversion, S/PDIF, CEC and HDCP. ADV7533/5 supports the
> +  DSI interface for input pixels, while the others support RGB
> +  interface.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,adv7511
> +      - adi,adv7511w
> +      - adi,adv7513
> +      - adi,adv7533
> +      - adi,adv7535
> +
> +  reg:
> +    description: |
> +      I2C slave addresses.
> +
> +      The ADV7511 internal registers are split into four pages exposed
> +      through different I2C addresses, creating four register maps. Each
> +      map has it own I2C address and acts as a standard slave device on
> +      the I2C bus. The main address is mandatory, others are optional
> +      and revert to defaults if not specified.
> +    minItems: 1
> +    maxItems: 4
> +
> +  clocks:
> +    description: Reference to the CEC clock.
> +    maxItems: 1
> +
> +  clock-names:
> +    const: cec
> +
> +  reg-names:
> +    description:
> +      Names of maps with programmable addresses. It can contain any map
> +      needing a non-default address.
> +    minItems: 1
> +    items:
> +      - const: main
> +      - const: edid
> +      - const: cec
> +      - const: packet
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  pd-gpios:
> +    description: GPIO connected to the power down signal.
> +    maxItems: 1
> +
> +  avdd-supply:
> +    description: A 1.8V supply that powers up the AVDD pin.
> +    maxItems: 1

Drop. Supplies are always a single item.

> +
> +  dvdd-supply:
> +    description: A 1.8V supply that powers up the DVDD pin.
> +    maxItems: 1
> +
> +  pvdd-supply:
> +    description: A 1.8V supply that powers up the PVDD pin.
> +    maxItems: 1
> +
> +  ports:
> +    description:
> +      The ADV7511 has two video ports and one audio port. This node
> +      models their connections as documented in
> +      Documentation/devicetree/bindings/media/video-interfaces.txt
> +      Documentation/devicetree/bindings/graph.txt
> +    type: object
> +    properties:
> +      port@0:
> +        description:
> +          Video port for the RGB, YUV or DSI input. In the case of
> +          ADV7533/5, the remote endpoint phandle should be a reference
> +          to a valid mipi_dsi_host_device.
> +        type: object
> +
> +      port@1:
> +        description: Video port for the HDMI output.
> +        type: object
> +
> +      port@2:
> +        description: Audio port for the HDMI output.
> +        type: object
> +
> +
> +allOf:
> +  # ADV7511/11w/13-specific parameters
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - adi,adv7511
> +              - adi,adv7511w
> +              - adi,adv7513
> +
> +    then:
> +      properties:
> +        dvdd-3v-supply:
> +          description: A 3.3V supply that powers up the DVDD_3V pin.
> +          maxItems: 1
> +
> +        bgvdd-supply:
> +          description: A 1.8V supply that powers up the BGVDD pin.
> +          maxItems: 1
> +
> +        adi,input-depth:
> +          description: Number of bits per color component at the input.
> +          allOf:
> +            - $ref: /schemas/types.yaml#/definitions/uint32
> +            - enum: [ 8, 10, 12 ]
> +
> +        adi,input-colorspace:
> +          description: Input color space.
> +          allOf:
> +            - $ref: /schemas/types.yaml#/definitions/string
> +            - enum: [ rgb, yuv422, yuv444 ]
> +
> +        adi,input-clock:
> +          description: |
> +            Input clock type.
> +              "1x": one clock cycle per pixel
> +              "2x": two clock cycles per pixel
> +              "dd": one clock cycle per pixel, data driven on both edges
> +          allOf:
> +            - $ref: /schemas/types.yaml#/definitions/string
> +            - enum: [ 1x, 2x, dd ]
> +
> +        adi,clock-delay:
> +          description:
> +            Video data clock delay relative to the pixel clock, in ps
> +            (-1200ps .. 1600 ps).
> +          allOf:
> +            - $ref: /schemas/types.yaml#/definitions/uint32
> +            - default: 0
> +
> +        adi,embedded-sync:
> +          description:
> +            The input uses synchronization signals embedded in the data
> +            stream (similar to BT.656). Defaults to 0 (separate H/V
> +            synchronization signals).
> +          allOf:
> +            - $ref: /schemas/types.yaml#/definitions/uint32
> +            - enum: [ 0, 1 ]
> +            - default: 0
> +
> +      required:
> +        - adi,input-depth
> +        - adi,input-colorspace
> +        - adi,input-clock
> +
> +  # adi,input-style and adi,input-justification are required except in
> +  # "rgb 1x" and "yuv444 1x" modes.
> +  - if:
> +      not:
> +        properties:
> +          adi,input-colorspace:
> +            contains:
> +              enum: [ rgb, yuv444 ]
> +          adi,input-clock:
> +            contains:
> +              const: 1x

I believe this will be true (before the not) if the properties are not =

present. You need 'required' if that's not what you want.

> +
> +    then:
> +      properties:
> +        adi,input-style:
> +          description:
> +            Input components arrangement variant as listed in the input
> +            format tables in the datasheet.
> +          allOf:
> +            - $ref: /schemas/types.yaml#/definitions/uint32
> +            - enum: [ 1, 2, 3 ]
> +
> +        adi,input-justification:
> +          description: Input bit justification.
> +          allOf:
> +            - $ref: /schemas/types.yaml#/definitions/string
> +            - enum: [ left, evenly, right ]
> +
> +      required:
> +        - adi,input-style
> +        - adi,input-justification
> +
> +  # ADV7533/35-specific parameters
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - adi,adv7533
> +              - adi,adv7535
> +
> +    then:
> +      properties:
> +        adi,disable-timing-generator:
> +          description:
> +            Disables the interal timing generator. The chip will rely on
> +            the sync signals in the DSI data lanes, rather than generate
> +            its own timings for HDMI output.
> +          type: boolean
> +
> +        adi,dsi-lanes:
> +          description: Number of DSI data lanes connected to the DSI hos=
t.
> +          allOf:
> +            - $ref: /schemas/types.yaml#/definitions/uint32
> +            - enum: [ 1, 2, 3, 4 ]
> +
> +        a2vdd-supply:
> +          description: A 1.8V supply that powers up the A2VDD pin.
> +          maxItems: 1
> +
> +        v3p3-supply:
> +          description: A 3.3V supply that powers up the V3P3 pin.
> +          maxItems: 1
> +
> +        v1p2-supply:
> +          description:
> +            A supply that powers up the V1P2 pin. It can be either 1.2V
> +            or 1.8V for ADV7533 but only 1.8V for ADV7535.
> +          maxItems: 1
> +
> +      required:
> +        - adi,dsi-lanes
> +
> +required:
> +  - compatible
> +  - reg
> +  - ports
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    adv7511w: hdmi@39 {
> +        compatible =3D "adi,adv7511w";
> +        /*
> +         * The EDID page will be accessible on address 0x66 on the I2C
> +         * bus. All other maps continue to use their default addresses.
> +         */
> +        reg =3D <0x39>, <0x66>;
> +        reg-names =3D "main", "edid";
> +        interrupt-parent =3D <&gpio3>;
> +        interrupts =3D <29 IRQ_TYPE_EDGE_FALLING>;
> +        clocks =3D <&cec_clock>;
> +        clock-names =3D "cec";
> +
> +        adi,input-depth =3D <8>;
> +        adi,input-colorspace =3D "rgb";
> +        adi,input-clock =3D "1x";
> +
> +        ports {
> +            #address-cells =3D <1>;
> +            #size-cells =3D <0>;
> +
> +            port@0 {
> +                reg =3D <0>;
> +                adv7511w_in: endpoint {
> +                    remote-endpoint =3D <&dpi_out>;
> +                };
> +            };
> +
> +            port@1 {
> +                reg =3D <1>;
> +                adv7511_out: endpoint {
> +                    remote-endpoint =3D <&hdmi_connector_in>;
> +                };
> +            };
> +
> +            port@2 {
> +                reg =3D <2>;
> +                codec_endpoint: endpoint {
> +                    remote-endpoint =3D <&i2s0_cpu_endpoint>;
> +                };
> +            };
> +        };
> +    };
> +
> +...
> -- =

> 2.18.0
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
