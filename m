Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7528AFBD68
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 02:20:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFsIhqginw+UDyzJw25XEsQP8waSJrXGMNR4PItj0zc=; b=LD0WkMbxwd30T8
	NTAd9LtdB4Hpm/Gnh+VVOkBR6v0gRaXGnTa+oIMbNWBTxHEnTj7wIIo2hJuoi+MJj2DOSagqIy0Tv
	3Auzh1boShbL53ZOzkqooOcpVz48asU8kaSdkmyRyoNyOWA7gXkh1MdgfPqlmYu6WP/Rdy7G+3kQ7
	U2KI3SUHsJ40DjjXmCWw7MO8+RFL2tyno0+ji7femyCMVzgCVVcGPiwgevllrWEJ1YewxySVJxScQ
	4YV6VZEHuo1WTC1TwU1+qIY4xGd7eq5SROpez+1BcTKHhnF4+I3/RRpM6jXDch34DdCFuSvxbJMBP
	gkbJmrpqmLqDiBaJeQsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV3oC-0000Kq-FY; Thu, 14 Nov 2019 01:20:28 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV3o4-0000KH-67
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 01:20:21 +0000
Received: by mail-oi1-f196.google.com with SMTP id 22so3720347oip.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 17:20:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/K5jnJYkn2AvQdcmqwZlI7+QyjIXXZrWLvpnHt8x5XA=;
 b=FNXAPFjRYBOi+UEiShRdbchtvsyMco0XWpBal1Bs1M8PnKuPvfRjwpy/lX5PuZDtrR
 PP939e/t/htMQx6ov36++hlIxTD8IOlePmIO6AigF8PMFOhwTO97Vbuizyv8s2/UaPbO
 fBmI9HlnI1HmHmg9RHBxLRurwARNCHrOxXD7MBxM5w/tcXdNs8Ut7fMhQLr9W3iocAD3
 n+lt4EQMwjTX7FN/EXqDR3awgugFiMQKCIwqb2NWkGqzrfLKtgljvI4fLv+bCGs+VJqH
 PB+xhTDvv6absA7/fRu7au6FTZH0VcVsPBRyOrqgMhjqNA6KJGYN2M9CUFGPrbgdmiF1
 Qwfw==
X-Gm-Message-State: APjAAAXYutqaypImJFgVEtEiNiUcfT5daF8LUFng09P26vIU6DAEQwD6
 6DJyhG5qvumfwxihUT7UWA==
X-Google-Smtp-Source: APXvYqyEIOl8lwb4tjxfJzJO7GYF8YSZw8Qlvayg5mTnoyRtLO6AIrgKiwBF/MtTFld693lhmoQU9A==
X-Received: by 2002:aca:a8d4:: with SMTP id r203mr1428225oie.12.1573694414787; 
 Wed, 13 Nov 2019 17:20:14 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u1sm1267887oie.37.2019.11.13.17.20.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 17:20:14 -0800 (PST)
Date: Wed, 13 Nov 2019 19:20:13 -0600
From: Rob Herring <robh@kernel.org>
To: Al Cooper <alcooperx@gmail.com>
Subject: Re: [PATCH 06/13] dt-bindings: Add Broadcom STB USB PHY binding
 document
Message-ID: <20191114012013.GA25050@bogus>
References: <20191107141339.6079-1-alcooperx@gmail.com>
 <20191107141339.6079-7-alcooperx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107141339.6079-7-alcooperx@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_172020_227129_B3DB4362 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, bcm-kernel-feedback-list@broadcom.com,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 09:13:32AM -0500, Al Cooper wrote:
> Add support for bcm7216 and bcm7211
> 
> Signed-off-by: Al Cooper <alcooperx@gmail.com>
> ---
>  .../bindings/phy/brcm,brcmstb-usb-phy.txt     | 69 +++++++++++++++----
>  1 file changed, 56 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.txt b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.txt
> index 24a0d06acd1d..14184cec15dc 100644
> --- a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.txt
> +++ b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.txt
> @@ -1,30 +1,49 @@
>  Broadcom STB USB PHY
>  
>  Required properties:
> - - compatible: brcm,brcmstb-usb-phy
> - - reg: two offset and length pairs.
> -	The first pair specifies a manditory set of memory mapped
> -	registers used for general control of the PHY.
> -	The second pair specifies optional registers used by some of
> -	the SoCs that support USB 3.x
> - - #phy-cells: Shall be 1 as it expects one argument for setting
> -	       the type of the PHY. Possible values are:
> -	       - PHY_TYPE_USB2 for USB1.1/2.0 PHY
> -	       - PHY_TYPE_USB3 for USB3.x PHY
> +- compatible: should be one of
> +	"brcm,brcmstb-usb-phy"
> +	"brcm,bcm7216-usb-phy"
> +	"brcm,bcm7211-usb-phy"
> +
> +- reg and reg-names properties requirements are specific to the
> +  compatible string.
> +  "brcm,brcmstb-usb-phy":
> +    - reg: 1 or 2 offset and length pairs. One for the base CTRL registers
> +           and an optional pair for systems with USB 3.x support
> +    - reg-names: not specified
> +  "brcm,bcm7216-usb-phy":
> +    - reg: 3 offset and length pairs for CTRL, XHCI_EC and XHCI_GBL
> +           registers
> +    - reg-names: "ctrl", "xhci_ec", "xhci_gbl"
> +  "brcm,bcm7211-usb-phy":
> +    - reg: 5 offset and length pairs for CTRL, XHCI_EC, XHCI_GBL,
> +           USB_PHY and USB_MDIO registers and an optional pair
> +	   for the BDC registers
> +    - reg-names: "ctrl", "xhci_ec", "xhci_gbl", "usb_phy", "usb_mdio", "bdc_ec"
> +
> +- #phy-cells: Shall be 1 as it expects one argument for setting
> +	      the type of the PHY. Possible values are:
> +	      - PHY_TYPE_USB2 for USB1.1/2.0 PHY
> +	      - PHY_TYPE_USB3 for USB3.x PHY
>  
>  Optional Properties:
>  - clocks : clock phandles.
>  - clock-names: String, clock name.
> +- interrupts: wake interrupt
> +- interrupt-names: "wake"

If a wakeup source, the standard name is 'wakeup'.

>  - brcm,ipp: Boolean, Invert Port Power.
>    Possible values are: 0 (Don't invert), 1 (Invert)
>  - brcm,ioc: Boolean, Invert Over Current detection.
>    Possible values are: 0 (Don't invert), 1 (Invert)
> -NOTE: one or both of the following two properties must be set
> -- brcm,has-xhci: Boolean indicating the phy has an XHCI phy.
> -- brcm,has-eohci: Boolean indicating the phy has an EHCI/OHCI phy.
>  - dr_mode: String, PHY Device mode.
>    Possible values are: "host", "peripheral ", "drd" or "typec-pd"
>    If this property is not defined, the phy will default to "host" mode.
> +- syscon-piarbctl: phandle to syscon for handling config registers

Needs vendor prefix.

> +NOTE: one or both of the following two properties must be set
> +- brcm,has-xhci: Boolean indicating the phy has an XHCI phy.
> +- brcm,has-eohci: Boolean indicating the phy has an EHCI/OHCI phy.
> +
>  
>  Example:
>  
> @@ -41,3 +60,27 @@ usbphy_0: usb-phy@f0470200 {
>  	clocks = <&usb20>, <&usb30>;
>  	clock-names = "sw_usb", "sw_usb3";
>  };
> +
> +usb-phy@29f0200 {
> +	reg = <0x29f0200 0x200>,
> +		<0x29c0880 0x30>,
> +		<0x29cc100 0x534>,
> +		<0x2808000 0x24>,
> +		<0x2980080 0x8>;
> +	reg-names = "ctrl",
> +		"xhci_ec",
> +		"xhci_gbl",
> +		"usb_phy",
> +		"usb_mdio";
> +	brcm,ioc = <0x0>;
> +	brcm,ipp = <0x0>;
> +	compatible = "brcm,bcm7211-usb-phy";
> +	interrupts = <0x30>;
> +	interrupt-parent = <&vpu_intr1_nosec_intc>;
> +	interrupt-names = "wake";
> +	#phy-cells = <0x1>;
> +	brcm,has-xhci;
> +	syscon-piarbctl = <&syscon_piarbctl>;
> +	clocks = <&scmi_clk 256>;
> +	clock-names = "sw_usb";
> +};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
