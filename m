Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 031D91D631A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 19:31:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0K1abd7kfTiALrezFViTnl/W/4G0ZPd/5FXa83P+uJE=; b=fJ/GRvce19Fzgr
	C8NNHSS/Tr3vAV19FCHeA/G+DaIAGmtpCGT/kYcvEkU87n89dBI4t40eVwsRBSo7alFOHnY2aOFL3
	BGbb8FJ4vdiRHB+n3HuEcyauFHoyfaHZjeXixE+akqCu9VBHeuRSqRTRByoF7CCb3Wds5EqUS7rcD
	wPiW1bqw8fzhmGCIZ7wHIK5+IdTWNEw0fNfjKvqZ/ZcfnKDzlALpHeUwDvV3d7oj/UD46EbYW9Xve
	kMAhd5CbHZV6qeWVTIkf4n68m+IyITfX+JPpPzUx5p/Og06R1AEqhOKA0VpDTGe8C8TNC5wOGdOC8
	17enjdksLDQdr9HCm8Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja0em-0005nU-Oy; Sat, 16 May 2020 17:31:28 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja0eZ-0005lI-AV; Sat, 16 May 2020 17:31:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id y3so7083832wrt.1;
 Sat, 16 May 2020 10:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KTU7NTpAFJkVH7oWKOmEldGpkgu/thmJgGpYK77O3tU=;
 b=b1CjCe1dEcnbju+WTVgFvnDhINqVotbwLWQhkowXogmE87vFafk24Sb/OqvAjm1vCJ
 TMhPaW0rwxCBm2WoD6qu3stsVLtjnhXsznfpG4Z9hdTMAA99beIXegbioG9K6M/208a4
 isggmrWRi4WBC3v5lp0zaY7RmRutRjMl4MgWCsFcVG46n1wDjSHCCKzF2r2OQjLf0QXB
 SY4DuZD8JfwTXPsw+hvf3VID4KN/KB8ZBrgvWzH0xdtVG49PLrGikncnQgwdXtgWGS0X
 Ir3xCrJ/rdSxr6BMMMk0DHy5UcXFIouztlaEybKZxtdhspIq9XXxsZLOGthmI5mXuRmJ
 PaEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=KTU7NTpAFJkVH7oWKOmEldGpkgu/thmJgGpYK77O3tU=;
 b=hKHmB0FhEnWBNNnBcXPzC9qUcVKC96yYIb31oJWY6EyJabWenzq0ypQ8kaNGhlltic
 ZBswc/dS8lZe5+1J2dHvI/LamBlDxJJ+qwKS/wzqO3SxRWDq/nBQEG8xN1vD+NIyCEdN
 x5+OkEBzmM9vS/ur6t1pxm6w++SGVRXAxVIOshvkVCdWC5tob0yL4TsK+zXLdWOlYigR
 m8YWsO9D5vKla9dW289Eto1CDg4NQeflW4w8kuFDvj7s7LbF5ww8woQ6tR9vRL6Y1hQG
 CBck3U6T+vfbF5A2JJsWXLW+aEIIFQ6ydHiU5gKpo6NIVn/2MVbmWXxV73t0FXccW58E
 1iWg==
X-Gm-Message-State: AOAM530G5DuspccfL//ebt+uqCMy4hQZ3kVWGS3+Xbty8GB2zyYQ0agv
 O6IEh3XYRY8fFx10gZYzFpY=
X-Google-Smtp-Source: ABdhPJzg+puNPU94pMz43XrE+hUUlYK9uiCg50YU4Ec8dE5WUHeTFdqwojT8qpRbRYMY9G6FCHrKOA==
X-Received: by 2002:a5d:5105:: with SMTP id s5mr10572770wrt.202.1589650273971; 
 Sat, 16 May 2020 10:31:13 -0700 (PDT)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id c140sm3323240wmd.18.2020.05.16.10.31.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 May 2020 10:31:13 -0700 (PDT)
Subject: Re: [PATCH v9 2/6] arm: dts: mt2701: Add usb2 device nodes
To: min.guo@mediatek.com, Bin Liu <b-liu@ti.com>,
 Rob Herring <robh+dt@kernel.org>
References: <20191211015446.11477-1-min.guo@mediatek.com>
 <20191211015446.11477-3-min.guo@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <5b5d2339-1179-72ee-f503-701860664eeb@gmail.com>
Date: Sat, 16 May 2020 19:31:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20191211015446.11477-3-min.guo@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_103115_385754_9106C45F 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 tony@atomide.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, hdegoede@redhat.com,
 Alan Stern <stern@rowland.harvard.edu>, chunfeng.yun@mediatek.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/12/2019 02:54, min.guo@mediatek.com wrote:
> From: Min Guo <min.guo@mediatek.com>
> 
> Add musb nodes and usb2 phy nodes for MT2701
> 
> Signed-off-by: Min Guo <min.guo@mediatek.com>

Applied now to v5.7-next/dts32

Sorry for the long delay!

> ---
> changes in v9:
> 1. Add usb-role-switch
> 2. Remove label of usb connector child node
> 3. Change usb connector child node compatible as "gpio-usb-b-connector", "usb-b-connector";
> 
> changes in v8:
> 1. no changes
> 
> changes in v7:
> 1. Change usb connector child node compatible as "gpio-usb-b-connector" 
> 
> changes in v6:
> 1. Modify usb connector child node
> 
> changes in v5:
> 1. Add usb connector child node
> 
> changes in v4:
> 1. no changes
> 
> changes in v3:
> 1. no changes
> 
> changes in v2:
> 1. Remove phy-names
> ---
>  arch/arm/boot/dts/mt2701-evb.dts | 21 ++++++++++++++++++++
>  arch/arm/boot/dts/mt2701.dtsi    | 33 ++++++++++++++++++++++++++++++++
>  2 files changed, 54 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/mt2701-evb.dts b/arch/arm/boot/dts/mt2701-evb.dts
> index be0edb3dae6c..844ed3f971fe 100644
> --- a/arch/arm/boot/dts/mt2701-evb.dts
> +++ b/arch/arm/boot/dts/mt2701-evb.dts
> @@ -6,6 +6,7 @@
>   */
>  
>  /dts-v1/;
> +#include <dt-bindings/gpio/gpio.h>
>  #include "mt2701.dtsi"
>  
>  / {
> @@ -60,6 +61,15 @@ backlight_lcd: backlight_lcd {
>  		>;
>  		default-brightness-level = <9>;
>  	};
> +
> +	usb_vbus: regulator@0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&pio 45 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
>  };
>  
>  &auxadc {
> @@ -229,3 +239,14 @@ pins1 {
>  &uart0 {
>  	status = "okay";
>  };
> +
> +&usb2 {
> +	status = "okay";
> +	usb-role-switch;
> +	connector{
> +		compatible = "gpio-usb-b-connector", "usb-b-connector";
> +		type = "micro";
> +		id-gpios = <&pio 44 GPIO_ACTIVE_HIGH>;
> +		vbus-supply = <&usb_vbus>;
> +	};
> +};
> diff --git a/arch/arm/boot/dts/mt2701.dtsi b/arch/arm/boot/dts/mt2701.dtsi
> index 180377e56ef4..a6b1434e83fb 100644
> --- a/arch/arm/boot/dts/mt2701.dtsi
> +++ b/arch/arm/boot/dts/mt2701.dtsi
> @@ -670,6 +670,39 @@ u3port1: usb-phy@1a244900 {
>  		};
>  	};
>  
> +	usb2: usb@11200000 {
> +		compatible = "mediatek,mt2701-musb",
> +			     "mediatek,mtk-musb";
> +		reg = <0 0x11200000 0 0x1000>;
> +		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-names = "mc";
> +		phys = <&u2port2 PHY_TYPE_USB2>;
> +		dr_mode = "otg";
> +		clocks = <&pericfg CLK_PERI_USB0>,
> +			 <&pericfg CLK_PERI_USB0_MCU>,
> +			 <&pericfg CLK_PERI_USB_SLV>;
> +		clock-names = "main","mcu","univpll";
> +		power-domains = <&scpsys MT2701_POWER_DOMAIN_IFR_MSC>;
> +		status = "disabled";
> +	};
> +
> +	u2phy0: usb-phy@11210000 {
> +		compatible = "mediatek,generic-tphy-v1";
> +		reg = <0 0x11210000 0 0x0800>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +		status = "okay";
> +
> +		u2port2: usb-phy@1a1c4800 {
> +			reg = <0 0x11210800 0 0x0100>;
> +			clocks = <&topckgen CLK_TOP_USB_PHY48M>;
> +			clock-names = "ref";
> +			#phy-cells = <1>;
> +			status = "okay";
> +		};
> +	};
> +
>  	ethsys: syscon@1b000000 {
>  		compatible = "mediatek,mt2701-ethsys", "syscon";
>  		reg = <0 0x1b000000 0 0x1000>;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
