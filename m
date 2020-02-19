Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B216D164695
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:12:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jbWCgrk35p/PGSyqDhOqyuMRS4nZgBy3SozZ+pISnU=; b=Qddv4Oa4ehT8+C
	gW9C/g5J784tftMYr6z9g/E9s+C98Vjs++dioDtln91CmylcZvZFyrIibOqMzq/53uH9M2aNaZRek
	CUPEAb/4k0zhMxjcPPnvwT7zDTKPk/OPPuYlJJH4geLSsqyXgXxWsDh/63BG0zmGicgyQQaguFxPJ
	oCcAZdITrzcxA+T/TLNd5dlk+8j5I2hPCiUSWlTnjcJsuYiebQOWZE4uy0U/sBlg1S1PHEO8DIsYC
	tqcnW3KfUNt0MsqaNVa7mEU5g/FdHeAwf/rY0B34lz/JiCp6iPR9MJKzUc89NC6WttKqNM+NCH95T
	yWD1ispMuzzk8HrdK0Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Q5X-0007UE-6B; Wed, 19 Feb 2020 14:12:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Q5C-0007MR-5U
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:12:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so657516wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 06:12:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RJKXqioDvyKKircULJkfX6xF3mRWI5j91/8iUVGAbK4=;
 b=gnIUEn7cQOwgOR+a39j7PjBIDnyjhMMvStC1RViFPRodsw41lGAumAfVE7fVVGecYZ
 UZdRW0VSu6cpscMAFJT3AZb3bEcTLrbnMFq36XhAkwcR4MF2WQCiprUlGRq9b7vJGPnZ
 Dik2c1mVYL0NM/E4HR7XQFhCKcSTPbu8CQjHzqmDA2Iw8CvADg8Wd8bZB//DpWZyoAB1
 A+3RfV0UZLWBf4hdrk1m/GsLiYM1JOeiRApU+HLGntd4outB6lPc1S0+FdYAi/tsYc8F
 YiLeNSwXSNeW4o0GsvIQ9RauY5nAAp8hJH0/mGnrYhi4qjY02e7w8EjcqvDum53JPIL+
 UkkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=RJKXqioDvyKKircULJkfX6xF3mRWI5j91/8iUVGAbK4=;
 b=XULbuOEexURbwp7ts1Gd0GO+xqD6lu3VWF1x5AxjULTgqGkm8P0SqGXdTiImJ7gUvJ
 Kvydyva+hmaJtye1vrec3XMK9CEYhGY7zD1LaDXZDDUIbJVn1QbmSkaaJ/O+8DPp8gJG
 0QJkQkeL//xPKxvpo67zLoNk32tz7pu1v9tHE6ZSEmm0ibcda9xFnWxkEgh52LPqdENM
 k4gLb2rXeMXf8y0Zo247so8c/TPP8KG4WnbbS6vlLGCb5OonGRKxvEzrfLlvdzbiWBua
 jkMsOMph00hsBT0o717kzbLzPuvOxLzJcRsoh9nu3ou60qvbRiLTL0ZviSh47J+g002t
 My8w==
X-Gm-Message-State: APjAAAW7ObRAbngQJyzhiy8L0FZ0LQVpzlmQWMGSRpDTgsXX76llQdfM
 m21MJo3w6Z2Jxf4T/aypGA30Eg==
X-Google-Smtp-Source: APXvYqz9+aPQWqiRzMV6OfoWUEixLNJduNo0aaQM0SXm8v/eggAyRBWYQl2Jt5bo22PpgZdWzSi+mA==
X-Received: by 2002:adf:f302:: with SMTP id i2mr36261663wro.21.1582121528555; 
 Wed, 19 Feb 2020 06:12:08 -0800 (PST)
Received: from ?IPv6:2a01:e35:2ec0:82b0:4ca8:b25b:98e4:858?
 ([2a01:e35:2ec0:82b0:4ca8:b25b:98e4:858])
 by smtp.gmail.com with ESMTPSA id x21sm2927157wmi.30.2020.02.19.06.12.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Feb 2020 06:12:07 -0800 (PST)
Subject: Re: [PATCH v9 3/3] arm64: dts: meson: a1: Enable USB2 PHY and DWC3
 controller
To: Hanjie Lin <hanjie.lin@amlogic.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Jerome Brunet
 <jbrunet@baylibre.com>, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@baylibre.com>
References: <1581990859-135234-1-git-send-email-hanjie.lin@amlogic.com>
 <1581990859-135234-4-git-send-email-hanjie.lin@amlogic.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <37725e68-a24f-f76f-6730-630f24431e6f@baylibre.com>
Date: Wed, 19 Feb 2020 15:12:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1581990859-135234-4-git-send-email-hanjie.lin@amlogic.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_061210_232775_7EE3A1FA 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/02/2020 02:54, Hanjie Lin wrote:
> Enable USB2 PHY and DWC3 controller for Meson A1 SoC.
> 
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 43 +++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> index 6fdc0dd..3b7ca50 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -6,6 +6,9 @@
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/power/meson-a1-power.h>
> +#include <dt-bindings/reset/amlogic,meson-a1-reset.h>
> +#include <dt-bindings/clock/a1-pll-clkc.h>
> +#include <dt-bindings/clock/a1-clkc.h>
>  
>  / {
>  	compatible = "amlogic,a1";
> @@ -100,6 +103,17 @@
>  				#power-domain-cells = <1>;
>  				status = "okay";
>  			};
> +
> +			usb2_phy1: phy@40000 {
> +				compatible = "amlogic,a1-usb2-phy";
> +				clocks = <&clkc_periphs CLKID_XTAL_USB_PHY>;
> +				clock-names = "xtal";
> +				reg = <0x0 0x40000 0x0 0x2000>;
> +				resets = <&reset RESET_USBPHY>;
> +				reset-names = "phy";
> +				#phy-cells = <0>;
> +				power-domains = <&pwrc PWRC_USB_ID>;
> +			};
>  		};
>  
>  		gic: interrupt-controller@ff901000 {
> @@ -114,6 +128,35 @@
>  			#interrupt-cells = <3>;
>  			#address-cells = <0>;
>  		};
> +
> +		usb: usb@ffe09000 {
> +			status = "disabled";
> +			compatible = "amlogic,meson-a1-usb-ctrl";
> +			reg = <0x0 0xffe09000 0x0 0xa0>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			clocks = <&clkc_periphs CLKID_USB_CTRL>,
> +				 <&clkc_periphs CLKID_USB_BUS>,
> +				 <&clkc_periphs CLKID_XTAL_USB_CTRL>;
> +			clock-names = "usb_ctrl", "usb_bus", "xtal_usb_ctrl";
> +			resets = <&reset RESET_USBCTRL>;
> +
> +			dr_mode = "host";
> +
> +			phys = <&usb2_phy1>;
> +			phy-names = "usb2-phy1";
> +
> +			dwc3: usb@ff400000 {
> +				compatible = "snps,dwc3";
> +				reg = <0x0 0xff400000 0x0 0x100000>;
> +				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> +				dr_mode = "host";
> +				snps,dis_u2_susphy_quirk;
> +				snps,quirk-frame-length-adjustment = <0x20>;
> +			};
> +		};
>  	};
>  
>  	timer {
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
