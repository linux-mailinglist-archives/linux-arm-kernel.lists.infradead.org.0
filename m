Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C34CE16EDF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 19:24:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iFN1wtxXqYPpnzDVxkb1HQKJZ/rzF1HTWKHB6J2uls=; b=hrT+lREt0L1E1e
	SXAtfaUZkILdgmuRe1I0qzdq4yKhCygkewxiyWNScm/QzIQIZZa244RFJN0zQKfc8thlhwxD7E+0k
	KIZu4O8vtEhP87v7pXp22dRqs1bRn2YoITUQ+dfwsjC6rsxPZdfTInjq0G0DFPVMq5Topme/Y3tDp
	MJy+6D3zwhR16oepu15Z3DNnaVCpMHKqIjmL6NvyDwRWg2nJ35hvSExgpgEimEhx/6aW01d7BX8p7
	WQ871YuLG6HjxBVOouIPVfh3R5WAwPMx81XbWLmAENk8Fzc9y9jpYh3GDbxIopaXGsmToSVTENs2x
	iMVBBH5n6AWoBJGKPP2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6esZ-0006w7-TK; Tue, 25 Feb 2020 18:24:23 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6esP-0006vj-0f; Tue, 25 Feb 2020 18:24:14 +0000
Received: by mail-oi1-f194.google.com with SMTP id v19so223537oic.12;
 Tue, 25 Feb 2020 10:24:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zyUEcnd6mf3xDLs58H/+znKVsIUHaN8BT7T15bn5I/4=;
 b=ofZudJ/8ni0qHtfMeaqXbd6G/Qgpt2m+db9A9EoNqLyp52jFuHwAtBX98i1L9108hr
 +Eb8hEvKtcnSo6KEWPfJAGl/Aws8t8+2zvOQ2wYYj9Z07oSYuPdbVoDuhk5MoTB0Ftra
 CzZpyaIukUatFJwbhXJFPjNX3uAR6wYZVMk76RiUlWcPOljUVZTlPyArJ3/50gRmuHCr
 qDqgOzy0hylNqYIQB/TVmJdEw2l/DepPqpdpTS7GKOAHU/D0ajbV1saIcBWBTJyWgGnW
 928PRSvsVO8qgJNvxDG59aq4FO6c8MbQXRCmvzUea14DYf/uiLU4btvS0iPTSuthPCWm
 DV3g==
X-Gm-Message-State: APjAAAVUg7IerlvZwdN3xvofL1cJpYIz6yLux2ipkfh5rSJQ20ghUMNa
 TJWQIkfjBqoFStOQ8Lt5sQ==
X-Google-Smtp-Source: APXvYqy2YFi/Z/AQYaFr+0YJAOKBBXw2YKbb14sGV3IuzdQIEB+ZE6Mmn4i6K3FgKLi1IMdYd8+R/w==
X-Received: by 2002:a05:6808:251:: with SMTP id
 m17mr190704oie.15.1582655052039; 
 Tue, 25 Feb 2020 10:24:12 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n27sm5572706oie.18.2020.02.25.10.24.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 10:24:11 -0800 (PST)
Received: (nullmailer pid 14462 invoked by uid 1000);
 Tue, 25 Feb 2020 18:24:10 -0000
Date: Tue, 25 Feb 2020 12:24:10 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 88/89] dt-bindings: display: vc4: hdmi: Add BCM2711 HDMI
 controllers bindings
Message-ID: <20200225182410.GA7661@bogus>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <4c21dda4f0b73977de1e54d408d7bf6bf3b6d238.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c21dda4f0b73977de1e54d408d7bf6bf3b6d238.1582533919.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_102413_060016_66726EEA 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

On Mon, Feb 24, 2020 at 10:07:30AM +0100, Maxime Ripard wrote:
> The HDMI controllers found in the BCM2711 SoC need some adjustments to the
> bindings, especially since the registers have been shuffled around in more
> register ranges.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml | 118 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++------
>  1 file changed, 109 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
> index 52b3cdac0bdf..a9d24e1cf684 100644
> --- a/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
> @@ -11,24 +11,58 @@ maintainers:
>  
>  properties:
>    compatible:
> -    const: brcm,bcm2835-hdmi
> +    enum:
> +      - brcm,bcm2835-hdmi
> +      - brcm,bcm2711-hdmi0
> +      - brcm,bcm2711-hdmi1
>  
>    reg:
> +    oneOf:
> +      - items:
> +        - description: HDMI register range
> +        - description: HD register range
> +
> +      - items:
> +        - description: HDMI controller register range
> +        - description: DVP register range
> +        - description: HDMI PHY register range
> +        - description: Rate Manager register range
> +        - description: Packet RAM register range
> +        - description: Metadata RAM register range
> +        - description: CSC register range
> +        - description: CEC register range
> +        - description: HD register range
> +
> +  reg-names:
>      items:
> -      - description: HDMI register range
> -      - description: HD register range
> +      - const: hdmi
> +      - const: dvp
> +      - const: phy
> +      - const: rm
> +      - const: packet
> +      - const: metadata
> +      - const: csc
> +      - const: cec
> +      - const: hd

Don't you want 'hd' 2nd or need to define the 2 entry case separately?

Really, I think this should be 2 files. All but interrupts and ddc have 
a difference.

>  
>    interrupts:
>      minItems: 2
>  
>    clocks:
> -    items:
> -      - description: The pixel clock
> -      - description: The HDMI state machine clock
> +    oneOf:
> +      - items:
> +        - description: The pixel clock
> +        - description: The HDMI state machine clock
> +
> +      - items:
> +        - description: The HDMI state machine clock
>  
>    clock-names:
> -    items:
> -      - const: pixel
> +    oneOf:
> +      - items:
> +        - const: pixel
> +        - const: hdmi
> +
>        - const: hdmi
>  
>    ddc:
> @@ -51,15 +85,54 @@ properties:
>    dma-names:
>      const: audio-rx
>  
> +  resets:
> +    maxItems: 1
> +
>  required:
>    - compatible
>    - reg
> -  - interrupts
>    - clocks
>    - ddc
>  
>  additionalProperties: false
>  
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - brcm,bcm2711-hdmi0
> +          - brcm,bcm2711-hdmi1
> +
> +then:
> +  properties:
> +    reg:
> +      minItems: 9
> +
> +    clocks:
> +      maxItems: 1
> +
> +    clock-names:
> +      maxItems: 1
> +
> +  required:
> +    - reg-names
> +    - resets
> +
> +else:
> +  properties:
> +    reg:
> +      maxItems: 2
> +
> +    clocks:
> +      minItems: 2
> +
> +    clock-names:
> +      minItems: 2
> +
> +  required:
> +    - interrupts
> +
>  examples:
>    - |
>      #include <dt-bindings/clock/bcm2835.h>
> @@ -77,4 +150,31 @@ examples:
>          clock-names = "pixel", "hdmi";
>      };
>  
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
>  ...
> -- 
> git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
