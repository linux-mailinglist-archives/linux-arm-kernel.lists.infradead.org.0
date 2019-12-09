Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E60117A03
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 23:54:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BfNHlZqepRd9dpML2A619pLNguYGq9S9zuzGGc5NJeM=; b=ZXeKWtZ/F/lOaj
	SzPVsXcGaMco18NaZOupQUg29rZ5F/gM2tTBXmDVABXAiUCKZE71fJVrDOhY76ADUwAteNHJJgv9h
	2+LnfgLWZmdTfyCdWw8YwbEKoY5u0gJxWHVLdFgF7lsckjXGwEt+5/np/QASfHhugk2NSv83c76g9
	Gyco/Xf6s2zliXmuuHll+ou9XwjtWywrBNIN1tLxE+fF/ctrqXZKBErvN+DQ/89J4AZ4WFD1LnAMO
	0yYiByeGjzwQQgR7qKP+vjiwRoOip3byaWZi5Y9fZKfQTzxoJeOCZXrFTESCB7uB4wQpiDbFbXsVv
	Bw12eUhsJSoxGGdKEBoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieRvC-0005Zx-Ft; Mon, 09 Dec 2019 22:54:30 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieRv2-0005YH-PA
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 22:54:22 +0000
Received: by mail-pj1-x1044.google.com with SMTP id w5so6509184pjh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 14:54:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=GZbS2xfEltGE7F6nx/Sqk3zKGRtEeNKmrbNzg2JwiAc=;
 b=mUW88DZZcUm77HMOxXwdlW6E09GhqoZdMi73UXyZvqXuxha8a/66J2NeEmajC50CRk
 uppHSqsk6KZHN5slwK1hx8E1lS59JSJvffgtzvzQCCxoXvGEDs9g6yOrYKjrRQc0U2VJ
 F14XddSIXzsYYLvZsaRRw8i6eGlXsRTa8DVQOtQgFAg4WGiZIXhzticlJkngYIiqZUiS
 zYvyRcJUcIUxVNQf3PvH7XVTAVQq++X8LmuBCfi53vTg7GhZ2oC5qsbIOHt1PGov85IV
 P+2JlSX9fuav7dYzPqKnHewt2fbwfzjZ+dAb5juXdJEkLzYajGr6Yer6SwKDajIRbAit
 eEXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=GZbS2xfEltGE7F6nx/Sqk3zKGRtEeNKmrbNzg2JwiAc=;
 b=ayNmOwYRclVcC2/qBtogOy8mdLYdh8+/VBgFLAnkD8KGf/ZN6wYfLMd6e6xwsK8EBg
 3V3sjKRaf5SF9KngUtqgFqEPvSFJpmqLFM/kRDCw+ChMZy25+cHO5lhmtpw37Y2RaL8M
 9FccPZCHQpvbL49QEO1DvrWQRcR+qn2BOdIG6nstkqMcAqhVjM0jfAsiaNI56CcLbkt/
 +2LMwB8RIJLIV2AmnIAhlOZzfbA1XxSr7acF7MCKoQyAqYaCH+TOHaRsGgn2bIFx4yP+
 3TYDKkpAGEzBycVEOsqzWuW1zSt9gDM21ZqpCJNJv3U9M67cs2JK12d/yx44vrqM/pEl
 TY/A==
X-Gm-Message-State: APjAAAW92KdSpD4HFC1LTL2iRL9/+gB0kv1IN10JCNwxv0XJ2dIMVYVQ
 qExTDw3gDwTY3R8V37+7S0IlmNGncBEBJA==
X-Google-Smtp-Source: APXvYqwNJMLkK5JvNCFW6hNtE0esgiRwTzkpNVJU4zltb0IL3k5qCFuUjWhWC1FqrZ+fqHmQWyHuQg==
X-Received: by 2002:a17:902:d883:: with SMTP id
 b3mr1804416plz.231.1575932059858; 
 Mon, 09 Dec 2019 14:54:19 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id a25sm499720pfo.116.2019.12.09.14.54.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 14:54:19 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] arm64: dts: meson-a1: add I2C nodes
In-Reply-To: <20191202111253.94872-1-jian.hu@amlogic.com>
References: <20191202111253.94872-1-jian.hu@amlogic.com>
Date: Mon, 09 Dec 2019 14:54:18 -0800
Message-ID: <7hsgltqfdx.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_145420_861078_8FFA5136 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob
 Herring <robh@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Wolfram Sang <wsa@the-dreams.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Jian Hu <jian.hu@amlogic.com>,
 linux-i2c@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jian,

Jian Hu <jian.hu@amlogic.com> writes:

> There are four I2C controllers in A1 series,
> Share the same comptible with AXG.The I2C nodes
> depend on pinmux and clock controller.
>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 149 ++++++++++++++++++++++
>  1 file changed, 149 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> index eab2ecd36aa8..d0a73d953f5e 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -16,6 +16,13 @@
>  	#address-cells = <2>;
>  	#size-cells = <2>;
>  
> +	aliases {
> +		i2c0 = &i2c0;
> +		i2c1 = &i2c1;
> +		i2c2 = &i2c2;
> +		i2c3 = &i2c3;
> +	};
> +
>  	cpus {
>  		#address-cells = <2>;
>  		#size-cells = <0>;
> @@ -117,6 +124,46 @@
>  				};
>  			};
>  
> +			i2c0: i2c@1400 {
> +				compatible = "amlogic,meson-axg-i2c";
> +				reg = <0x0 0x1400 0x0 0x24>;

The AXG DT files use 0x20 for the length.  You are using 0x24.  I don't
see any additional registers added to the driver, so this doesn't look right.

> +				interrupts = <GIC_SPI 32 IRQ_TYPE_EDGE_RISING>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				clocks = <&clkc_periphs CLKID_I2C_M_A>;
> +				status = "disabled";
> +			};
> +
> +			i2c1: i2c@5c00 {
> +				compatible = "amlogic,meson-axg-i2c";
> +				reg = <0x0 0x5c00 0x0 0x24>;
> +				interrupts = <GIC_SPI 68 IRQ_TYPE_EDGE_RISING>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				clocks = <&clkc_periphs CLKID_I2C_M_B>;
> +				status = "disabled";
> +			};
> +
> +			i2c2: i2c@6800 {
> +				compatible = "amlogic,meson-axg-i2c";
> +				reg = <0x0 0x6800 0x0 0x24>;
> +				interrupts = <GIC_SPI 76 IRQ_TYPE_EDGE_RISING>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				clocks = <&clkc_periphs CLKID_I2C_M_C>;
> +				status = "disabled";
> +			};
> +
> +			i2c3: i2c@6c00 {
> +				compatible = "amlogic,meson-axg-i2c";
> +				reg = <0x0 0x6c00 0x0 0x24>;
> +				interrupts = <GIC_SPI 78 IRQ_TYPE_EDGE_RISING>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				clocks = <&clkc_periphs CLKID_I2C_M_D>;
> +				status = "disabled";
> +			};
> +
>  			uart_AO: serial@1c00 {
>  				compatible = "amlogic,meson-gx-uart",
>  					     "amlogic,meson-ao-uart";
> @@ -171,3 +218,105 @@
>  		#clock-cells = <0>;
>  	};
>  };
> +
> +&periphs_pinctrl {
> +	i2c0_f11_pins:i2c0-f11 {
> +		mux {
> +			groups = "i2c0_sck_f11",
> +				"i2c0_sda_f12";
> +			function = "i2c0";
> +			bias-pull-up;
> +			drive-strength-microamp = <3000>;

Can you also add some comment to the changelog about the need for
drive-strength compared to AXG.

> +		};
> +	};

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
