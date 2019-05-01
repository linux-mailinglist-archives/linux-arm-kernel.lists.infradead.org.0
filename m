Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEA310808
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 14:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=alJYi8YEQ9LdpD3jEq5Dm5p3PcPuWi4bGPRVEc0T0N8=; b=FWvT48mzEmf75N6R5w8q6gZC4
	UHLNqN0WeJ0sHHOi4zmx+q0X6CLotUpAV8Mx3pS4kAr5LKf8V1txcA1LWhArXHS8M1jxXqxItl+jD
	1CNzZIuCId9q7ZiQYNQsu4aZeqfW8BV8zgJydQdDNX9t2WS1O5h6+Po8ZQcEQzS1GCu/COTninEqC
	1YQn5AN5uuZxJs/A66zDfZt4zyIRpJIvZHHvVIaM2vpAV0Riwx7lXSpa6vvZImkYnL1/dnyl3DS9q
	gb2W7TnXpiVBj8r002d2VLafLOVl9OKl9tcFSkMc4YoRYHu0KpnNire4A/p9LoV17yIg51IIKyzXR
	kxnPeeARg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLoec-00065s-66; Wed, 01 May 2019 12:48:06 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLoeN-0005vX-Gc; Wed, 01 May 2019 12:47:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F190780D;
 Wed,  1 May 2019 05:47:48 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4D26B3F5C1;
 Wed,  1 May 2019 05:47:47 -0700 (PDT)
Subject: Re: [DO NOT MERGE] [PATCH 2/2] arm64: rockchip: rk3399: nanopc-t4:
 Enable FriendlyELEC HD702E eDP panel
To: Jagan Teki <jagan@amarulasolutions.com>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <20190501121448.3812-1-jagan@amarulasolutions.com>
 <20190501121448.3812-2-jagan@amarulasolutions.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <cc16498b-71f8-04ce-44d1-25417fd64757@arm.com>
Date: Wed, 1 May 2019 13:47:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501121448.3812-2-jagan@amarulasolutions.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_054751_790597_8C94EF05 
X-CRM114-Status: GOOD (  23.69  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/05/2019 13:14, Jagan Teki wrote:
> FriendlyELEC HD702E is one of optional LCD panel for
> NanoPC T4 eDP interface.
> 
> It features 800x1280 resolutions, with built in GT9271 captive
> touchscreen and adjustable backlight via PWM.
> 
> eDP panel connections are:
> - VCC3V3_SYS: 3.3V panel power supply
> - GPIO4_C2: PWM0_BL pin
> - GPIO4_D5_LCD_BL_EN: Backlight enable pin
> - VCC12V0_SYS: 12V backlight power supply
> - Touchscreen connected via I2C4
> - GPIO1_C4_TP_INT: touchscreen interrupt pin
> - GPIO1_B5_TP_RST: touchscreen reset pin
> 
> Add support for it.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Note: we need to disable hdmi-cec pinctrl to work with
> edp-hpd since both share same pin, otherwise we can
> encounter below error during bootup
> [    1.047726] rockchip-pinctrl pinctrl: pin gpio4-23 already requested by ff940000.hdmi; cannot claim for ff970000.edp
> [    1.048655] rockchip-pinctrl pinctrl: pin-151 (ff970000.edp) status -22
> [    1.049235] rockchip-pinctrl pinctrl: could not request pin 151 (gpio4-23) from group edp-hpd  on device rockchip-pinctrl
> [    1.050191] rockchip-dp ff970000.edp: Error applying setting, reverse things back
> [    1.050867] rockchip-dp: probe of ff970000.edp failed with error -22

Hmm, AFAICS that pin is exclusively wired to the HDMI connector and not 
used for the eDP interface, so really it's the fault of rk3399.dtsi for 
trying to claim it unconditionally. Ideally we'd pull those pinctrl 
properties out into the board DTs which do actually need them, but the 
quick and easy approach would be to add some "/delete-property/ ..." 
workarounds to the &edp node here.

>   .../boot/dts/rockchip/rk3399-nanopc-t4.dts    | 82 +++++++++++++++++++
>   1 file changed, 82 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> index 931c3dbf1b7d..b652d960946f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> @@ -46,6 +46,48 @@
>   		};
>   	};
>   
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		brightness-levels = <
> +			  0   1   2   3   4   5   6   7
> +			  8   9  10  11  12  13  14  15
> +			 16  17  18  19  20  21  22  23
> +			 24  25  26  27  28  29  30  31
> +			 32  33  34  35  36  37  38  39
> +			 40  41  42  43  44  45  46  47
> +			 48  49  50  51  52  53  54  55
> +			 56  57  58  59  60  61  62  63
> +			 64  65  66  67  68  69  70  71
> +			 72  73  74  75  76  77  78  79
> +			 80  81  82  83  84  85  86  87
> +			 88  89  90  91  92  93  94  95
> +			 96  97  98  99 100 101 102 103
> +			104 105 106 107 108 109 110 111
> +			112 113 114 115 116 117 118 119
> +			120 121 122 123 124 125 126 127
> +			128 129 130 131 132 133 134 135
> +			136 137 138 139 140 141 142 143
> +			144 145 146 147 148 149 150 151
> +			152 153 154 155 156 157 158 159
> +			160 161 162 163 164 165 166 167
> +			168 169 170 171 172 173 174 175
> +			176 177 178 179 180 181 182 183
> +			184 185 186 187 188 189 190 191
> +			192 193 194 195 196 197 198 199
> +			200 201 202 203 204 205 206 207
> +			208 209 210 211 212 213 214 215
> +			216 217 218 219 220 221 222 223
> +			224 225 226 227 228 229 230 231
> +			232 233 234 235 236 237 238 239
> +			240 241 242 243 244 245 246 247
> +			248 249 250 251 252 253 254 255>;

This looks trivial enough that I wonder whether it might still work to 
just omit it? Not that I know anything about backlights, but I had the 
impression (from mailing list traffic, I guess) that the driver gained 
the ability to provide a reasonable default behaviour at some point.

Robin.

> +		default-brightness-level = <200>;
> +		enable-gpios = <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;	/* GPIO4_D5_LCD_BL_EN */
> +		pwms = <&pwm0 0 25000 0>;
> +		power-supply = <&vcc12v0_sys>;
> +		status = "okay";
> +	};
> +
>   	ir-receiver {
>   		compatible = "gpio-ir-receiver";
>   		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
> @@ -64,6 +106,18 @@
>   		fan-supply = <&vcc12v0_sys>;
>   		pwms = <&pwm1 0 50000 0>;
>   	};
> +
> +	panel {
> +		compatible ="friendlyarm,hd702e";
> +		backlight = <&backlight>;
> +		power-supply = <&vcc3v3_sys>;
> +
> +		port {
> +			panel_in_edp: endpoint {
> +				remote-endpoint = <&edp_out_panel>;
> +			};
> +		};
> +	};
>   };
>   
>   &cpu_thermal {
> @@ -94,6 +148,23 @@
>   	};
>   };
>   
> +&edp {
> +	status = "okay";
> +
> +	ports {
> +		edp_out: port@1 {
> +			reg = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			edp_out_panel: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&panel_in_edp>;
> +			};
> +		};
> +	};
> +};
> +
>   &gpu_thermal {
>   	trips {
>   		gpu_warm: gpu_warm {
> @@ -130,6 +201,17 @@
>   	};
>   };
>   
> +&i2c4 {
> +	touchscreen@5d {
> +		compatible = "goodix,gt911";
> +		reg = <0x5d>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <RK_PC4 IRQ_TYPE_EDGE_FALLING>;
> +		irq-gpio = <&gpio1 RK_PC4 GPIO_ACTIVE_HIGH>;	/* GPIO1_C4_TP_INT */
> +		reset-gpio = <&gpio1 RK_PB5 GPIO_ACTIVE_LOW>;	/* GPIO1_B5_TP_RST */
> +	};
> +};
> +
>   &sdhci {
>   	mmc-hs400-1_8v;
>   	mmc-hs400-enhanced-strobe;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
