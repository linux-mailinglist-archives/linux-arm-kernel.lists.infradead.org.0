Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5721E8679
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 20:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjeLjLUsgiiPABldXk4IEbT7Ej4BRHgp7iyLti2EBdY=; b=dikjqDqPYoHNbz
	qE1M6JPPL0NemD3jlkCHjG4M3DLQxNY8spy1ue5nKCpXwwVAVq1fyJY0ZPZqPdmi5jF3hs5VdIzA3
	JyT+k91z2FsV/oo+0Jkn2Ocps6btvnN5eYur/5Z/ADrFj1BzvXWHPHl3T8taiN+DoFZfvAam2oL+H
	3tng4ujsZLAYYab5qULrbY5lPbkoMZsnpqQi4giVqLzGZg/yBBsXmY1/gBjywWNXUdW1Gj7vt88xM
	YjBBIvbysnGUYzoNppdFnXs6XCOWbsgDyJXIOE+HfXe/wd1m/BNdI4ITWoqOrYEftQQwzTPNkyRNz
	QDvaz1tzylym61KVHZ6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jejaf-0008W2-4b; Fri, 29 May 2020 18:18:45 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jejaW-0008VN-AX; Fri, 29 May 2020 18:18:37 +0000
Received: by mail-io1-f66.google.com with SMTP id p20so302422iop.11;
 Fri, 29 May 2020 11:18:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+Zt0XlCRbQEAA6WM2kGlK/C6ChZT4zLq85OJJjGFn0o=;
 b=XXOhjXN6PoeCjddDkJLIP3Zi22jGC3sRAAaYl0B0xDkTEokHHDsPf/OzCjKrFjpPCG
 XvFH8vb8bn+Z8T/yWZNT2o4aghdDTr6zAZIpns5eqDMKVqSwPIVrD1tJRz8Ya9tJAwxz
 Aiho2K7iiFQy0jcdNARLrUAgJD9RnuALwg8LAh9DvrsRuzH7bCmPSJuKB1lTH7kpqKbn
 ADymd4zbSc6uwXyu6MjhrW622JD0l1ANB1DYIeGUY3QMF3R3dSBvQVDBI4Aq8e0M2+iQ
 uT71fWFphnf0A/LAcVtegbkQza9mdPCoceWaGNUhbJNhMnyROYUcfvEIRKFeoSlLTvdm
 aYdw==
X-Gm-Message-State: AOAM5308Ip1W3YUbk2y6Cy1+oJhCEqx/qI3oJ1v1rZfoq3mduTI3tXbR
 AG1vSF0Jel8QlqB7gW8CJw==
X-Google-Smtp-Source: ABdhPJzNDQewkud68OMi7ffyblEdKBffzwXmj7DJAvdOeqGXbabXJygx2EyHsLyuZVGswit2+zLTxg==
X-Received: by 2002:a6b:5c19:: with SMTP id z25mr7597825ioh.119.1590776315569; 
 Fri, 29 May 2020 11:18:35 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id j63sm1246230ilg.50.2020.05.29.11.18.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 11:18:34 -0700 (PDT)
Received: (nullmailer pid 2691280 invoked by uid 1000);
 Fri, 29 May 2020 18:18:33 -0000
Date: Fri, 29 May 2020 12:18:33 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v3 104/105] dt-bindings: display: vc4: hdmi: Add BCM2711
 HDMI controllers bindings
Message-ID: <20200529181833.GA2685451@bogus>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <e85e24a494a3ff41177c94673ced0f4280b6a0ee.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e85e24a494a3ff41177c94673ced0f4280b6a0ee.1590594512.git-series.maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_111836_363567_CA958620 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 05:49:14PM +0200, Maxime Ripard wrote:
> The HDMI controllers found in the BCM2711 SoC need some adjustments to the
> bindings, especially since the registers have been shuffled around in more
> register ranges.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml | 109 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 109 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> new file mode 100644
> index 000000000000..6091fe3d315b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> @@ -0,0 +1,109 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license...

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/brcm,bcm2711-hdmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom BCM2711 HDMI Controller Device Tree Bindings
> +
> +maintainers:
> +  - Eric Anholt <eric@anholt.net>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - brcm,bcm2711-hdmi0
> +      - brcm,bcm2711-hdmi1

What's the difference between the 2 blocks? 

> +
> +  reg:
> +    items:
> +      - description: HDMI controller register range
> +      - description: DVP register range
> +      - description: HDMI PHY register range
> +      - description: Rate Manager register range
> +      - description: Packet RAM register range
> +      - description: Metadata RAM register range
> +      - description: CSC register range
> +      - description: CEC register range
> +      - description: HD register range
> +
> +  reg-names:
> +    items:
> +      - const: hdmi
> +      - const: dvp
> +      - const: phy
> +      - const: rm
> +      - const: packet
> +      - const: metadata
> +      - const: csc
> +      - const: cec
> +      - const: hd
> +
> +  clocks:
> +    description: The HDMI state machine clock
> +
> +  clock-names:
> +    const: hdmi
> +
> +  ddc:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/phandle
> +    description: >
> +      Phandle of the I2C controller used for DDC EDID probing

Goes in the connector.

And isn't the standard name ddc-i2c-bus?

> +
> +  hpd-gpios:
> +    description: >
> +      The GPIO pin for the HDMI hotplug detect (if it doesn't appear
> +      as an interrupt/status bit in the HDMI controller itself)

Goes in the connector.

> +
> +  dmas:
> +    maxItems: 1
> +    description: >
> +      Should contain one entry pointing to the DMA channel used to
> +      transfer audio data.
> +
> +  dma-names:
> +    const: audio-rx
> +
> +  resets:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - resets
> +  - ddc
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    hdmi0: hdmi@7ef00700 {
> +        compatible = "brcm,bcm2711-hdmi0";
> +        reg = <0x7ef00700 0x300>,
> +              <0x7ef00300 0x200>,
> +              <0x7ef00f00 0x80>,
> +              <0x7ef00f80 0x80>,
> +              <0x7ef01b00 0x200>,
> +              <0x7ef01f00 0x400>,
> +              <0x7ef00200 0x80>,
> +              <0x7ef04300 0x100>,
> +              <0x7ef20000 0x100>;
> +        reg-names = "hdmi",
> +                    "dvp",
> +                    "phy",
> +                    "rm",
> +                    "packet",
> +                    "metadata",
> +                    "csc",
> +                    "cec",
> +                    "hd";
> +        clocks = <&firmware_clocks 13>;
> +        clock-names = "hdmi";
> +        resets = <&dvp 0>;
> +        ddc = <&ddc0>;
> +    };
> +
> +...
> -- 
> git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
