Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3C61CE7B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 23:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0sZiWHDjMelsge7ntPTAkPM8bg03roo8iDUxWIfqPKs=; b=OTY1gTfgq7hqyM
	A0Uyu+iki/9W8/2Z9yK+RiBqf//1lYCNmWMS1Snv1lDlJbaZQNxTkoXtUUOZ9VmCgDu3Xn/1SUdpF
	Kd11KW2eoTrZTX8gdi4fLNa1eWpi6p6FTSzDGRHnzc9mmoEa8mfZIsLXBo+ZbZz9QFuvU77+4PDBP
	fpiy8GKwKGIPlu1/aqnQZOksO3fBXEsrAnPTRxJozkKd2NfcfbP6f0028WjW4MKyjMw+3C2ZKRF+8
	8e86kzBE+PsPUeTDto4q1Vx7iqVPmfKAdpf8bH53B9slRDdFoQik3bmt5eA9pmkmt91Emu7Mui9Cs
	63Wrj2yitBA1/XlXd78A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYGJd-0004Vu-9j; Mon, 11 May 2020 21:50:25 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYGJV-0004Ux-BF; Mon, 11 May 2020 21:50:18 +0000
Received: by mail-oi1-f193.google.com with SMTP id i13so16483414oie.9;
 Mon, 11 May 2020 14:50:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C2cQ0d2Fnc+VFNF+rbZqUCi2lMUrS+g08IvuwIRHzJU=;
 b=Ji5NA/2NMx1hK8Zt4IudWO8LB8PluynfUoRjbJRHgckJqng1hOCuAcsypqZRSmHS9P
 8Qpkle0FnnozH/mq6swxFo1txct9qJa2E1jZzNxbVPkVfQitPXQ2e0fecbZpQTf/fDrq
 D8smCrmRHsHdiSnv7htxWT39kygHFmqoKlrqB1Nmt6+uG2R5LsguSIBS7S9pYEZ2lBsB
 /BJp3sXTxUD2stC/oLasEw5hwKIzZEP3zEd+kfPsx/GI8jkbR8oMkOku9xDZlgmlUibC
 wBPNfzfhAVEgIEcov4ObvlU2MdnnDt2ZR2VajG9o+NBDOn+cJ7/oDhfUCMrrtWzmbxLt
 LFVw==
X-Gm-Message-State: AGi0Pub9hNE+z/YShzAj3NRQw+IcE+Y8Vy+TK/Q8UPFcPUb0pCpq8j11
 WkuZf/MfEuyH3fY4jBrKXA==
X-Google-Smtp-Source: APiQypKb4S01qoeMGw5ylYdZeHeHc7Sh8XoMTwKIJeFH1WTXjNyN0cepckfp1oAcEe9Zui5mtOwgPw==
X-Received: by 2002:aca:1904:: with SMTP id l4mr21640640oii.106.1589233816216; 
 Mon, 11 May 2020 14:50:16 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e4sm1229075oou.33.2020.05.11.14.50.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 14:50:15 -0700 (PDT)
Received: (nullmailer pid 8406 invoked by uid 1000);
 Mon, 11 May 2020 21:50:14 -0000
Date: Mon, 11 May 2020 16:50:14 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 90/91] dt-bindings: display: vc4: hdmi: Add BCM2711
 HDMI controllers bindings
Message-ID: <20200511215014.GA4800@bogus>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <9bdee4024b3f95bed9b55c642f0f9415c22fc506.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9bdee4024b3f95bed9b55c642f0f9415c22fc506.1587742492.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_145017_388238_57ABA362 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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

On Fri, Apr 24, 2020 at 05:35:11PM +0200, Maxime Ripard wrote:
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

Dual license

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

This belongs in a connector node. (ddc-i2c-bus)

> +
> +  hpd-gpios:
> +    description: >
> +      The GPIO pin for the HDMI hotplug detect (if it doesn't appear
> +      as an interrupt/status bit in the HDMI controller itself)

This belongs in a connector node.

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
