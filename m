Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2273611A740
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+wfjzgVUtOnFMJSxvOeOFwwgs7D93HJDoMAO4pBlDeg=; b=XFeiWMZKph8VILc5LEPU7/7RW5
	GyyAe2MQvHvrETIbQatzlNwW6ySPM1aXPK3uS1qFY1ol9n/FzzX5G+Gt9lZ21mulufBkvjIGMlljz
	l47SSympe4p+lNtIx3ldihdZ6XKLW5TMimCFo3KxiQP27laBeqXp9w5CgKi18nTh+QQ0Jh4UBnhjv
	w2Ey0EUAGsGVGkVGiCVL8HdN+I9eOLGpyEf7p7AufuB7i/jariWtI36TAakiKhC9Vf4Rnl6AyPH02
	nSDhyT+6vGH9XXj42yHDu47YOh5gF1fMseMHLGsCCmw/8vCLPxdKRCeQ5tpvs4JWxGqLIdfpM1ZWC
	7ynCKnfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyOH-0004Wl-BH; Wed, 11 Dec 2019 09:34:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyNu-0004M5-L1
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:34:20 +0000
Received: by mail-wm1-x343.google.com with SMTP id n9so6261925wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 01:34:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=2aHze3eD3qXxFb1do0AXNxi5Ns/Q9Iwwz2n3HPpJOcs=;
 b=VzDedKeMxQaNjEiczxGBTICIPaIV8PnAeFP1Rr1OgYLJI0XPPZ8hsic40cqjmiTyo3
 wYTDItCB0zXtkyaI42IJsnUV4D0yQCvnTnWO3F00uZ7dPqoIFPgzSDJBLe65rRZm3OVe
 OBqCyUpJ+xq6g5nVO5nm6OYpdhun8nWnR8INhbYMnRBLIoascaSdvzMpS+J6p25Kre8e
 3KkQ/rMdUKCU6OmbCGynjh0CgUo5q/5lFiY9bc8rvWo4BnD7+Xts/5+fBpVBAtTHkOU5
 Syju8hBbNEbXRwgUmdisOR4FPwKw6Ut1p/I1D6tKeY03HyZFcugKDOCcrRv1IzQ5jJwx
 QY2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=2aHze3eD3qXxFb1do0AXNxi5Ns/Q9Iwwz2n3HPpJOcs=;
 b=oOheCLUB9slrDRE8PPSl+bHAY/jiC+VeUTfq42vLir3vjrzh8JuC6BIEwAlZHPRPxh
 cQKP/wg2gq1jr4+m0hK+fXr/VUZLeMTvRIg6VENzqpAi4V+Tc5TTmybYrLIEKXLLiPVr
 mLStupkB+jB6YT40jUGwIF1onLibiZwuXhk7E7wKG94ez/68Plic78CAJVS9aS6pflig
 nEQgdChuVUmGt7BNx6RPiA+YHjyGdy+8XDVFfq2ax2+DODDks8/mBDlMuAfJhT/v5159
 SI0BFrCwSDFYrb9stkQfOz3uWWs0AYbJgTowGaXVJoA9EZl1sIE6yQ16mWOOf6WS3ttg
 Pl+g==
X-Gm-Message-State: APjAAAUjh/zJFE7YSTsHdTYK8X5dZJmiTyoOiNyPDM6n46Um2Zh8Ddlr
 SmkbkncjAuu8tPIg1DzIcvVOMQ==
X-Google-Smtp-Source: APXvYqyaiVVPEaixzSy9hFWroTUOlG1fayabOrFMoHshKKilcKu2iFPikVV+wuyvp7vTFK3Tb0XS2Q==
X-Received: by 2002:a1c:9e49:: with SMTP id h70mr2604822wme.79.1576056857130; 
 Wed, 11 Dec 2019 01:34:17 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y10sm1594428wmm.3.2019.12.11.01.34.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 01:34:16 -0800 (PST)
References: <20191211032802.83309-1-jian.hu@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2] arm64: dts: meson-a1: add I2C nodes
In-reply-to: <20191211032802.83309-1-jian.hu@amlogic.com>
Date: Wed, 11 Dec 2019 10:34:16 +0100
Message-ID: <1jk173kxyf.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_013418_705103_9AB48184 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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


On Wed 11 Dec 2019 at 04:28, Jian Hu <jian.hu@amlogic.com> wrote:

> There are four I2C controllers in A1 series,
> Share the same comptible with AXG. Compared to AXG,
> Drive strength feature is newly added in A1.

Until here, OK

> This patch depends on A1 clock driver.

This last sentence is a valuable piece of information for the maintainer
but should not appear is the commit description as it is something we
want is the history

Please move this bellow the '---' *AND*
Add a link like " https://lkml.kernel.org/r/..." to help the maintainer
locate the related series


>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
>
> ---
> This patch depends on A1 clock patchset at[0]
>
> Changes since v1 at [1]:
> -change reg length to 0x20
> -assign i2c bus alias in dts file
> -add new feature note compared to AXG in changelog
>
> [0] https://lkml.kernel.org/r/20191206074052.15557-1-jian.hu@amlogic.com
> [1] https://lkml.kernel.org/r/20191202111253.94872-1-jian.hu@amlogic.com
> ---
> ---
>  .../arm64/boot/dts/amlogic/meson-a1-ad401.dts |   4 +
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi     | 142 ++++++++++++++++++
>  2 files changed, 146 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1-ad401.dts b/arch/arm64/boot/dts/amlogic/meson-a1-ad401.dts
> index 69c25c68c358..2d0457976233 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1-ad401.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1-ad401.dts
> @@ -13,6 +13,10 @@
>  
>  	aliases {
>  		serial0 = &uart_AO_B;
> +		i2c0 = &i2c0;
> +		i2c1 = &i2c1;
> +		i2c2 = &i2c2;
> +		i2c3 = &i2c3;

It is not necessary to define alias for all the possible buses,
especially it some won't be used on the platform.

Will this platform use all 4 busses ?

In any case, the aliases can added later, as needed when the related i2c
bus is enabled on the board

>  	};
>  
>  	chosen {
> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> index eab2ecd36aa8..66d5206a57de 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
> @@ -117,6 +117,46 @@
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
> +			i2c1: i2c@5c00 {

Please order nodes by address when then have one.
The 3 following i2c busses should appear after the uarts

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
> +
>  			uart_AO: serial@1c00 {
>  				compatible = "amlogic,meson-gx-uart",
>  					     "amlogic,meson-ao-uart";
> @@ -171,3 +211,105 @@
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
> +		};
> +	};
> +
> +	i2c0_f9_pins:i2c0-f9 {

When the nodes don't have an address, please order them
alpha-numerically by node name.

> +		mux {
> +			groups = "i2c0_sck_f9",
> +				"i2c0_sda_f10";
> +			function = "i2c0";
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
> +	i2c3_x_pins:i2c3-x {
> +		mux {
> +			groups = "i2c3_sck_x",
> +				"i2c3_sda_x";
> +			function = "i2c3";
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
> +};


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
