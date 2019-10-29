Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BB8E8DBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:11:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GM3po1OaZGQX7F3P1yf4GBBPgu0EqOua3pPCN7Mq0PU=; b=VN6cXSrXMBD+7N
	BKCX6nVXV64GodYVQyqhYhpSJTPgdJWvifvcjAPoY0vA24PDSLrYqyJjGXeyWJx2zuZpILYXWq5kE
	0IEkxkfzBFn8iw+S5R5klTQFAkl5XIaxkMnJvSaXncqLwdpkPJm1TeCvPdD7GtgeFoUPun5a95hp3
	lATCs0gDK1gk2kdSyM8gXApjAljA6R3zUgm9Pws8/QrDdseLVGljxOVfsZ09IqyyGXS9fQLvvctv4
	cJ0BGMfYGYVqe2TwslU0/qj7E9fKshXc5ZthIfFiV+cc5G1ZuqnPRJmpznNpcHOvuVv3P83Rs+9vF
	eMYCLsaobVC4y6D1GgpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPV18-0005pp-RD; Tue, 29 Oct 2019 17:10:53 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPV0u-0005oi-9C
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:10:38 +0000
Received: by mail-oi1-f193.google.com with SMTP id v186so9588499oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 10:10:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xTORcAVGGotokS03E5KBBwWhY7+0pNKbT792zrXJzuE=;
 b=lqGeHtVlGZNRarIgx48fmT/5/zohU3JJ1kLCNyOPB0GulMcfZgT4VZR36NaW5kTkvy
 gOMHgW3lhAiD7R5nrVqhox9iIt/VjFzgo0hlOmQ+N1Yq8+ndrzVb6LWhxzMTVyKmcPTf
 FX9LQJP6X+2dXSAycApDYQ4/mRpwQWxqOYZ4MCGl7r5sleTfW+LX63BMQ18D/SH2wPy6
 v7eL03qIvolyAJFDhC3QJ5+fEMJiObNjT815uSVJFGhp/jN5rO9RHHhYAPlg10BX7+tX
 AkyE+rnp80MbIH2aGzy4/XOjXt+V7M2HWex0C4nxr+rDKFrXmzASty68e7z+yxImNlzf
 ryaA==
X-Gm-Message-State: APjAAAUX+rULJf+/rMlV9DC3JcpGpAdBQmrCHSrG2KVQ+VptFpCkQkln
 yBUAf1gUyrGvcQH4ADNSPQ==
X-Google-Smtp-Source: APXvYqwhf9erp+knV+GYq4o8z2jRx3QPFwBGjz6heFMEd1H0LxUvvtsWOZlDhpjmAZfu2wttiHcfvA==
X-Received: by 2002:a05:6808:317:: with SMTP id
 i23mr5049536oie.17.1572369034538; 
 Tue, 29 Oct 2019 10:10:34 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y4sm4084204oie.42.2019.10.29.10.10.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 10:10:32 -0700 (PDT)
Date: Tue, 29 Oct 2019 12:10:32 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] dt-bindings: usb: Convert Allwinner A10 mUSB controller
 to a schema
Message-ID: <20191029171032.GA23536@bogus>
References: <20191022161951.43567-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022161951.43567-1-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_101036_324706_7F88FD37 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 06:19:51PM +0200, Maxime Ripard wrote:
> The Allwinner SoCs have an mUSB controller that is supported in Linux, with
> a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  .../bindings/usb/allwinner,sun4i-a10-musb.txt |  28 -----
>  .../usb/allwinner,sun4i-a10-musb.yaml         | 101 ++++++++++++++++++
>  2 files changed, 101 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.txt
>  create mode 100644 Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.txt b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.txt
> deleted file mode 100644
> index 50abb20fe319..000000000000
> --- a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.txt
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -Allwinner sun4i A10 musb DRC/OTG controller
> --------------------------------------------
> -
> -Required properties:
> - - compatible      : "allwinner,sun4i-a10-musb", "allwinner,sun6i-a31-musb",
> -                     "allwinner,sun8i-a33-musb" or "allwinner,sun8i-h3-musb"
> - - reg             : mmio address range of the musb controller
> - - clocks          : clock specifier for the musb controller ahb gate clock
> - - reset           : reset specifier for the ahb reset (A31 and newer only)
> - - interrupts      : interrupt to which the musb controller is connected
> - - interrupt-names : must be "mc"
> - - phys            : phy specifier for the otg phy
> - - phy-names       : must be "usb"
> - - dr_mode         : Dual-Role mode must be "host" or "otg"
> - - extcon          : extcon specifier for the otg phy
> -
> -Example:
> -
> -	usb_otg: usb@1c13000 {
> -		compatible = "allwinner,sun4i-a10-musb";
> -		reg = <0x01c13000 0x0400>;
> -		clocks = <&ahb_gates 0>;
> -		interrupts = <38>;
> -		interrupt-names = "mc";
> -		phys = <&usbphy 0>;
> -		phy-names = "usb";
> -		extcon = <&usbphy 0>;
> -	};
> diff --git a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
> new file mode 100644
> index 000000000000..81d0189ed5c8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
> @@ -0,0 +1,101 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/allwinner,sun4i-a10-musb.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A10 mUSB OTG Controller Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: allwinner,sun4i-a10-musb
> +      - const: allwinner,sun6i-a31-musb
> +      - const: allwinner,sun8i-a33-musb
> +      - items:
> +          - const: allwinner,sun8i-a83t-musb
> +          - const: allwinner,sun8i-a33-musb
> +      - const: allwinner,sun8i-h3-musb
> +      - items:
> +          - const: allwinner,sun50i-h6-musb
> +          - const: allwinner,sun8i-a33-musb

This could be 2 oneOf entries instead. Or just combine the 2 2 items 
entries.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupt-names:
> +    const: mc
> +
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  phys:
> +    description: PHY specifier for the OTG PHY
> +
> +  phy-names:
> +    const: usb
> +
> +  extcon:
> +    description: Extcon specifier for the OTG PHY
> +
> +  dr_mode:
> +    enum:
> +      - host
> +      - otg
> +      - peripheral

3rd definition I've seen in the past day...

> +
> +  allwinner,sram:
> +    description: Phandle to the device SRAM
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - phys
> +  - phy-names
> +  - dr_mode
> +  - extcon
> +
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - allwinner,sun6i-a31-musb
> +          - allwinner,sun8i-a33-musb
> +          - allwinner,sun8i-h3-musb
> +
> +then:
> +  required:
> +    - resets
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    usb_otg: usb@1c13000 {
> +      compatible = "allwinner,sun4i-a10-musb";
> +      reg = <0x01c13000 0x0400>;
> +      clocks = <&ahb_gates 0>;
> +      interrupts = <38>;
> +      interrupt-names = "mc";
> +      phys = <&usbphy 0>;
> +      phy-names = "usb";
> +      extcon = <&usbphy 0>;
> +      dr_mode = "peripheral";
> +    };
> +
> +...
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
