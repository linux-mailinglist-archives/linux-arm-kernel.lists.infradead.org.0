Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB14F62B77
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 00:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIQWDmLwe97TvzY58/SC7EQrkFCHTAwB6sDxNqk7+FU=; b=E43muklAP9Hsm4
	vYREIzdGsEFQgk1NnsnLXA7p7kT4Bi4lIQJlKL3F9N9GAU8Df6A8fEJYUq2HRvnOnsJW8Cllf7VFp
	FBMUF8i2vVrI2c4KdxiURpF9O/mSu2B1iV0jAfXvbCVm+rL7fnmwwHP1wkEz5Qj6tKUcxFTBQLQol
	+2WDIaQvI6DHfH8K4NohU1QMT5blbSjnoh0ZakzuqvyHAGwjlscFIcH6g1t3G3Vg2wYC4gE8iu0dO
	e+O8hIY6oKAFdqO53K8uiWYdAkPs3CwhIOVfznY8GQOnx6yOzq8rSvO423rYFloQaMgsbsqxABLYY
	EDJ5Qa7niGR+sKHXWH/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkc9t-0004SO-Gs; Mon, 08 Jul 2019 22:30:53 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkc9f-0004RR-8r; Mon, 08 Jul 2019 22:30:40 +0000
Received: by mail-io1-f68.google.com with SMTP id j6so38935035ioa.5;
 Mon, 08 Jul 2019 15:30:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DKbe5Bw/ZWkGGevk11CJOS1MNbgfdugSW24hlqZbzbo=;
 b=diWYtvy+zBXd0AIyppXnnzcvvo19gDPguy3iJdssAOPOCn/60ekQHXOJiht6J+vVnM
 0bWo1NO/o1ZcEtnFuQ720eO8BQdq0OGwBHW4Im6MbVx/0uHFQEmNbl8ADdbXN7wSnFke
 DD7BpfMYUJAKhvU3//Hs8gnUolQ1WMcwIZDdxeJfzfh714boWF5r4C4nsNQ+qidLdKxG
 g1VYqImoCMwtKjPBu/XZkL0R0BJLCy8JkUJc/4aKgm/fCCQiHPdMPoQwyl9UOVN3Rr1M
 imXEAziVVDAmZAJ5Yxdd5vVXY3QE/vrHx+ethZqndjTGxkZGVcGnAGjpzn1meJBxHsZR
 NFGA==
X-Gm-Message-State: APjAAAWfUxnLlIhSaJd634tQucmh3udhY+3TKlg9hkYeKDxNBmkFQKnZ
 nR68xBYEAgKz+v8Q1V9M0Q==
X-Google-Smtp-Source: APXvYqzSDWN6ooiwDgwx+KLeyHhdjBuL+QsFBURU2G0UGLCiUVOLkcMQl1URO5AdsIaKlOsojsMMsg==
X-Received: by 2002:a5e:c00e:: with SMTP id u14mr7422195iol.196.1562625037976; 
 Mon, 08 Jul 2019 15:30:37 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id x22sm14429132iob.84.2019.07.08.15.30.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 15:30:36 -0700 (PDT)
Date: Mon, 8 Jul 2019 16:30:35 -0600
From: Rob Herring <robh@kernel.org>
To: min.guo@mediatek.com
Subject: Re: [PATCH v6 1/6] dt-bindings: usb: musb: Add support for MediaTek
 musb controller
Message-ID: <20190708223035.GA7005@bogus>
References: <1559648359-6569-1-git-send-email-min.guo@mediatek.com>
 <1559648359-6569-2-git-send-email-min.guo@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559648359-6569-2-git-send-email-min.guo@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_153039_316801_9886033E 
X-CRM114-Status: GOOD (  20.81  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 hdegoede@redhat.com, tony@atomide.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Alan Stern <stern@rowland.harvard.edu>, chunfeng.yun@mediatek.com,
 linux-mediatek@lists.infradead.org, Bin Liu <b-liu@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 07:39:14PM +0800, min.guo@mediatek.com wrote:
> From: Min Guo <min.guo@mediatek.com>
> 
> This adds support for MediaTek musb controller in
> host, peripheral and otg mode.
> 
> Signed-off-by: Min Guo <min.guo@mediatek.com>
> ---
> changes in v6:
> 1. Modify usb connector child node
> 
> changes in v5:
> suggested by Rob:
> 1. Modify compatible as 
> - compatible : should be one of:
>                "mediatek,mt-2701"

No, should be: mediatek,mt2701-musb

>                ...
>                followed by "mediatek,mtk-musb"
> 2. Add usb connector child node
> 
> changes in v4:
> suggested by Sergei:
> 1. String alignment
> 
> changes in v3:
> 1. no changes
> 
> changes in v2:
> suggested by Bin:
> 1. Modify DRC to DRD
> suggested by Rob:
> 2. Drop the "<soc-model>-musb" in compatible
> 3. Remove phy-names
> 4. Add space after comma in clock-names
> ---
>  .../devicetree/bindings/usb/mediatek,musb.txt      | 55 ++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/mediatek,musb.txt
> 
> diff --git a/Documentation/devicetree/bindings/usb/mediatek,musb.txt b/Documentation/devicetree/bindings/usb/mediatek,musb.txt
> new file mode 100644
> index 0000000..7434299
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/mediatek,musb.txt
> @@ -0,0 +1,55 @@
> +MediaTek musb DRD/OTG controller
> +-------------------------------------------
> +
> +Required properties:
> + - compatible      : should be one of:
> +                     "mediatek,mt-2701"
> +                     ...
> +                     followed by "mediatek,mtk-musb"
> + - reg             : specifies physical base address and size of
> +                     the registers
> + - interrupts      : interrupt used by musb controller
> + - interrupt-names : must be "mc"
> + - phys            : PHY specifier for the OTG phy
> + - dr_mode         : should be one of "host", "peripheral" or "otg",
> +                     refer to usb/generic.txt
> + - clocks          : a list of phandle + clock-specifier pairs, one for
> +                     each entry in clock-names
> + - clock-names     : must contain "main", "mcu", "univpll"
> +                     for clocks of controller
> +
> +Optional properties:
> + - power-domains   : a phandle to USB power domain node to control USB's
> +                     MTCMOS
> +
> +Required child nodes:
> + usb connector node as defined in bindings/connector/usb-connector.txt
> +Optional properties:
> + - id-gpios        : input GPIO for USB ID pin.
> + - vbus-gpios      : input GPIO for USB VBUS pin.
> + - vbus-supply     : reference to the VBUS regulator, needed when supports
> +                     dual-role mode
> +
> +Example:
> +
> +usb2: usb@11200000 {
> +	compatible = "mediatek,mt2701-musb",
> +		     "mediatek,mtk-musb";
> +	reg = <0 0x11200000 0 0x1000>;
> +	interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_LOW>;
> +	interrupt-names = "mc";
> +	phys = <&u2port2 PHY_TYPE_USB2>;
> +	dr_mode = "otg";
> +	clocks = <&pericfg CLK_PERI_USB0>,
> +		 <&pericfg CLK_PERI_USB0_MCU>,
> +		 <&pericfg CLK_PERI_USB_SLV>;
> +	clock-names = "main","mcu","univpll";
> +	power-domains = <&scpsys MT2701_POWER_DOMAIN_IFR_MSC>;
> +	connector{
> +		compatible = "linux,typeb-conn-gpio", "usb-b-connector";

linux,typeb-conn-gpio is not an accepted compatible string.

> +		label = "micro-USB";
> +		type = "micro";
> +		id-gpios = <&pio 44 GPIO_ACTIVE_HIGH>;
> +		vbus-supply = <&usb_vbus>;
> +	};
> +};
> -- 
> 1.9.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
