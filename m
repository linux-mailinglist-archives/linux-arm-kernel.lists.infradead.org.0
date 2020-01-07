Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80504132318
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:58:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WQxLyVuHFrOLqrc04vOWZi0ydM4L4qiLXb4OD5IWXCQ=; b=epP8jHme5G9mJJ3YhoRZVl0vca
	itrfW4umOTqK0dLt4z0yxj0aoRXNqaNolvJ92a6OBY9iRLOX2ac7paWq4uBw++OaKm0Bl9dH30P6F
	ZNbinGUBBYrg8DDbsX2MKT9LXpPLf3iN5ksXFFkX16hxsMn+i+sl60pemcJ27T8LqC11SyjquBb5t
	I+jB3lpY+g1EGfEmA9OSW//49nOeUpw1rxPV6HvgW7oDrumK613cEQTfe4h4pdJtFqxJk1OuT4WI1
	eC7n2eRgTbbe6XKnjLZFPQhcPRJ7xtjWha3POy6oABsljtj09lPsKRUMyLF+rBSL1ikSQVuPCzeH/
	NUIkjDww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iold3-0004Zk-FC; Tue, 07 Jan 2020 09:58:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolcu-0004Yi-2j
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 09:58:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id b19so18178864wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 01:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=UfGDE/pY8GyHptw1+lgKhCDTDIHwOAgtK6t8XN0nv5M=;
 b=ziDuMHvptB5Iu+MWIvv7l5G8tPvQ62nt+243YesP3kh3NQllbFzC0wCoWuOPEliMoN
 fO8w5gcZPdaccC5JuLJLdvgPrLjqL5NMPXXhH9H+If4iQQR4TwPn94FfkkM9ixj98/tI
 eiNUZ0h09fFAS6fsjhBMM3VPL9oFlrySbPVIbbo2bkKhmdEQ2ib1aWRSNM1l/Ka5D/3u
 HaDAB7iNzcL0++VaSvgApD5ZwEvqceQQ2onwnpRQNghmfll5WqYbhG7v5iayIrHzmDw6
 qcliaLUXAbEkkV2d8LJ2M1/jzQm7CUgjmZoNEZjokSJ5AynhB/n2OY/cV0XY5GwUTyqw
 Wmbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=UfGDE/pY8GyHptw1+lgKhCDTDIHwOAgtK6t8XN0nv5M=;
 b=ZerPIgHXHY/I2Ij4au2OQez2QvrGCU/K67HCnpY6FxslXwzIysu5X7sNYIKDlemWaV
 ZEvrsmediktVdCPHGazzmXhTr5B4tGcRuZBEqu2AkfvVJvAclFzpn3+gfPv/vQ67zN9l
 +MKUarGEC8zRYMJAXQJMZmgmqh6LUFhFJZYNL+R/voKu/rvnQhWhpnl7NCJpn4DM9Sxi
 bE5mUIZzqgvou637aiOxzLaK9aAYXcFR2n/k4ooLYzCSD8HC+EiNI/FercJZVp80FWb2
 e2wFstR4zdztqzDreFo2PMQlhbORhZUFnJxHA/DVA6DP5RNj0eldFi58TeDFniSUX7iA
 kldw==
X-Gm-Message-State: APjAAAXKumPG9KPPeIapITme6skdGg9iQs3uMmU1Wjn2OOQCIo/7uRfF
 RINKwMsWOoNWOV00LFQIAuxFFw==
X-Google-Smtp-Source: APXvYqw02ATk0nvqjCckJPV3pNCB6y4om3PfcHfNjLxZVW3lmZbv6PEn/XkS6a6cZR4h/pibsnaHDw==
X-Received: by 2002:a1c:61c1:: with SMTP id
 v184mr38685861wmb.160.1578391093938; 
 Tue, 07 Jan 2020 01:58:13 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h8sm78708203wrx.63.2020.01.07.01.58.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 01:58:13 -0800 (PST)
References: <20191220091611.36319-1-jian.hu@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v3] arm64: dts: meson-a1: add I2C nodes
In-reply-to: <20191220091611.36319-1-jian.hu@amlogic.com>
Date: Tue, 07 Jan 2020 10:58:12 +0100
Message-ID: <1ja76zsi4r.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_015816_133334_B7776E87 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob
 Herring <robh@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Wolfram Sang <wsa@the-dreams.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri 20 Dec 2019 at 10:16, Jian Hu <jian.hu@amlogic.com> wrote:

> There are four I2C controllers in A1 series,
> Share the same comptible with AXG. Compared to AXG,
> Drive strength feature is newly added in A1.
>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
>
> ---
> This patch depends on A1 clock patchset at [0][3]
>
> Changes since v1 at [1]:
> -change reg length to 0x20
> -assign i2c bus alias in dts file
> -add new feature note compared to AXG in changelog
>
> Changes since v2 at [2]:
> -remove the dependence the commit description
> -remove i2c alias in dtsi
> -reorder the i2c nodes
> -reorder the i2c pins
>
> [0] https://lkml.kernel.org/r/20191206074052.15557-1-jian.hu@amlogic.com
> [1] https://lkml.kernel.org/r/20191202111253.94872-1-jian.hu@amlogic.com
> [2] https://lkml.kernel.org/r/20191211032802.83309-1-jian.hu@amlogic.com
> [3] https://lkml.kernel.org/r/20191206074052.15557-1-jian.hu@amlogic.com
> ---
> ---
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 142 ++++++++++++++++++++++
>  1 file changed, 142 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> index eab2ecd36aa8..1542eeee699d 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -117,6 +117,16 @@
>  				};
>  			};
>  
> +			i2c0: i2c@1400 {
> +				compatible = "amlogic,meson-axg-i2c";
> +				reg = <0x0 0x1400 0x0 0x20>;
> +				interrupts = <GIC_SPI 32 IRQ_TYPE_EDGE_RISING>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				clocks = <&clkc_periphs CLKID_I2C_M_A>;
> +				status = "disabled";
> +			};
> +
>  			uart_AO: serial@1c00 {
>  				compatible = "amlogic,meson-gx-uart",
>  					     "amlogic,meson-ao-uart";
> @@ -136,6 +146,36 @@
>  				clock-names = "xtal", "pclk", "baud";
>  				status = "disabled";
>  			};
> +
> +			i2c1: i2c@5c00 {
> +				compatible = "amlogic,meson-axg-i2c";
> +				reg = <0x0 0x5c00 0x0 0x20>;
> +				interrupts = <GIC_SPI 68 IRQ_TYPE_EDGE_RISING>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				clocks = <&clkc_periphs CLKID_I2C_M_B>;
> +				status = "disabled";
> +			};
> +
> +			i2c2: i2c@6800 {
> +				compatible = "amlogic,meson-axg-i2c";
> +				reg = <0x0 0x6800 0x0 0x20>;
> +				interrupts = <GIC_SPI 76 IRQ_TYPE_EDGE_RISING>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				clocks = <&clkc_periphs CLKID_I2C_M_C>;
> +				status = "disabled";
> +			};
> +
> +			i2c3: i2c@6c00 {
> +				compatible = "amlogic,meson-axg-i2c";
> +				reg = <0x0 0x6c00 0x0 0x20>;
> +				interrupts = <GIC_SPI 78 IRQ_TYPE_EDGE_RISING>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				clocks = <&clkc_periphs CLKID_I2C_M_D>;
> +				status = "disabled";
> +			};
>  		};
>  
>  		gic: interrupt-controller@ff901000 {
> @@ -171,3 +211,105 @@
>  		#clock-cells = <0>;
>  	};
>  };
> +
> +&periphs_pinctrl {

Why is this not directly under the periphs_pinctrl node ?

> +	i2c0_f9_pins:i2c0-f9 {
                     ^
                     Missing space here. Same for the other nodes

> +		mux {
> +			groups = "i2c0_sck_f9",
> +				"i2c0_sda_f10";
> +			function = "i2c0";
> +			bias-pull-up;

Most device we have seen so far have the pull-up on the PCB.

If you look at the other dts file, the i2c pad bias is disabled. If the
pull-up resistor is missing on the PCB, this setting can overloaded in
the board dt.

Bottom line please put "bias-disable" or justify why a1 is different
from the SoC.

> +			drive-strength-microamp = <3000>;
> +		};
> +	};
> +
> +	i2c0_f11_pins:i2c0-f11 {
> +		mux {
> +			groups = "i2c0_sck_f11",
> +				"i2c0_sda_f12";
> +			function = "i2c0";
> +			bias-pull-up;
> +			drive-strength-microamp = <3000>;
> +		};
> +	};
> +
> +	i2c1_a_pins:i2c1-a {
> +		mux {
> +			groups = "i2c1_sck_a",
> +				"i2c1_sda_a";
> +			function = "i2c1";
> +			bias-pull-up;
> +			drive-strength-microamp = <3000>;
> +		};
> +	};
> +
> +	i2c1_x_pins:i2c1-x {
> +		mux {
> +			groups = "i2c1_sck_x",
> +				"i2c1_sda_x";
> +			function = "i2c1";
> +			bias-pull-up;
> +			drive-strength-microamp = <3000>;
> +		};
> +	};
> +
> +	i2c2_a4_pins:i2c2-a4 {
> +		mux {
> +			groups = "i2c2_sck_a4",
> +				"i2c2_sda_a5";
> +			function = "i2c2";
> +			bias-pull-up;
> +			drive-strength-microamp = <3000>;
> +		};
> +	};
> +
> +	i2c2_a8_pins:i2c2-a8 {
> +		mux {
> +			groups = "i2c2_sck_a8",
> +				"i2c2_sda_a9";
> +			function = "i2c2";
> +			bias-pull-up;
> +			drive-strength-microamp = <3000>;
> +		};
> +	};
> +
> +	i2c2_x0_pins:i2c2-x0 {
> +		mux {
> +			groups = "i2c2_sck_x0",
> +				"i2c2_sda_x1";
> +			function = "i2c2";
> +			bias-pull-up;
> +			drive-strength-microamp = <3000>;
> +		};
> +	};
> +
> +	i2c2_x15_pins:i2c2-x15 {
> +		mux {
> +			groups = "i2c2_sck_x15",
> +				"i2c2_sda_x16";
> +			function = "i2c2";
> +			bias-pull-up;
> +			drive-strength-microamp = <3000>;
> +		};
> +	};
> +
> +	i2c3_f_pins:i2c3-f {
> +		mux {
> +			groups = "i2c3_sck_f",
> +				"i2c3_sda_f";
> +			function = "i2c3";
> +			bias-pull-up;
> +			drive-strength-microamp = <3000>;
> +		};
> +	};
> +
> +	i2c3_x_pins:i2c3-x {
> +		mux {
> +			groups = "i2c3_sck_x",
> +				"i2c3_sda_x";
> +			function = "i2c3";
> +			bias-pull-up;
> +			drive-strength-microamp = <3000>;
> +		};
> +	};
> +};


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
