Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5641739AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 15:20:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjetDr3KHoLqK23Z1jdX3E34pwJ8wnVTR25OqOleGso=; b=m4d6FHW5SPWUoH
	g6u8omt0yUhOCaOf5RWtCzC52TjxQXAFv2fKLQcUbP8OdokneAS4d5+Dvm/twvE8f3nyjLj+V/90D
	zYxOnuP5MEx4X6YMCmZrpYbsktJ7twjscrAAgIYLlA1Lr5aGyceVD5V5HjM8hDTaHo1+BKt/nMhvA
	ie1xrVaoI0+Nz5hJjAdWtuWzR0aDpS1yz7g7KROFx+/kgYVj6zHPKcXHs7qargC8dudp9V9CZQ60f
	PNCLnUO187XXobT5WIzB9yNKYdhOBM7lcZq/uM1W5PJRh1c3Rtn7UYwcZbkAXc8+Fi4m+12LE7GtA
	HgsY7hbtA8GjBATILGOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7gUx-0000BL-Vx; Fri, 28 Feb 2020 14:20:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7gUf-0000A8-96; Fri, 28 Feb 2020 14:19:59 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j7gUA-0006Mp-46; Fri, 28 Feb 2020 15:19:26 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
Date: Fri, 28 Feb 2020 15:19:25 +0100
Message-ID: <12370413.gKdrHkWbHd@diego>
In-Reply-To: <20200227180630.166982-3-t.schramm@manjaro.org>
References: <20200227180630.166982-1-t.schramm@manjaro.org>
 <20200227180630.166982-3-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_061957_472177_D01232AD 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Alexis Ballier <aballier@gentoo.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 enric.balletbo@collabora.com, Andy Yan <andy.yan@rock-chips.com>,
 Matthias Kaehlcke <mka@chromium.org>, Vivek Unune <npcomplete13@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tobias,

Am Donnerstag, 27. Februar 2020, 19:06:30 CET schrieb Tobias Schramm:
> This commit adds initial dt support for the rk3399 based Pinebook Pro.
> 
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>


> +	chosen {
> +		bootargs = "earlycon=uart8250,mmio32,0xff1a0000";

hmm, bootargs in a mainline dt seem awkward (argument about dt not being
a place for configuration) ... so please drop that ... stdout-path can
of course stay.

> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	leds {

node sorting preference is by address for foo@bar nodes
and alphabetically for everything else, so
- backlight
- edp-panel
- gpio-key-lid
....

> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pwrled_gpio &slpled_gpio>;
> +
> +		green-led {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "off";
> +			function = LED_FUNCTION_POWER;
> +			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
> +			label = "green:disk-activity";
> +			linux,default-trigger = "mmc2";

hmm, LED_FUNCTION_POWER but trigger for mmc2 ?
So if there is no activity on the LED it looks to be off?

> +		};
> +
> +		red-led {
> +			color = <LED_COLOR_ID_RED>;
> +			default-state = "off";
> +			function = LED_FUNCTION_STANDBY;
> +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> +			label = "red:standby";
> +			panic-indicator;
> +			retain-state-suspended;
> +		};
> +	};
> +
> +	/* Use separate nodes for gpio-keys to allow for selective deactivation

nit:
/*
 * Use separate ....

> +	 * of wakeup sources without disabling the whole key

Also can you explain the problem a bit? If there is a deficit in the input
subsystem regarding wakeup events, dt is normally not the place to work
around things [we're supposed to be OS independent]

> +	 */
> +	gpio-key-power {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pwrbtn_gpio>;
> +
> +		power {
> +			debounce-interval = <20>;
> +			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
> +			label = "Power";
> +			linux,code = <KEY_POWER>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	gpio-key-lid {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&lidbtn_gpio>;
> +
> +		lid {
> +			debounce-interval = <20>;
> +			gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_LOW>;
> +			label = "Lid";
> +			linux,code = <SW_LID>;
> +			linux,input-type = <EV_SW>;
> +			wakeup-event-action = <EV_ACT_DEASSERTED>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	/* first 128k(0xff8d0000~0xff8f0000) for ddr and ATF */
> +	sram@ff8d0000 {
> +		compatible = "mmio-sram";
> +		reg = <0x0 0xff8d0000 0x0 0x20000>; /* 128k */
> +	};

(1) The sram would be soc property, so shouldn't be in a board-dts
(2) nobody is using the sram?
(3) you say 0xff8d0000~0xff8f0000 but then provide the same memory
    to the kernel? ATF will likely protect that memory from unsecure access.
    (not necessarily the old BSP binary-ATF though)

So I'd suggest dropping the sram for now.

> +
> +	edp_panel: edp-panel {
> +		compatible = "boe,nv140fhmn49", "simple-panel";
> +		backlight = <&backlight>;
> +
> +		enable-delay-ms = <20>;
> +		enable-gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&panel_en_gpio>;
> +
> +		power-supply = <&vcc3v3_panel>;
> +		prepare-delay-ms = <20>;
> +		status = "okay";

edp-panel is a board-node and therefore default status okay

> +
> +		ports {
> +			#address-cells = <0x01>;
> +			#size-cells = <0x00>;
> +			port@0 {
> +				panel_in_edp: endpoint@0 {
> +					remote-endpoint = <&edp_out_panel>;
> +				};
> +			};
> +		};
> +	};
> +
> +	backlight: edp-backlight {
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
> +		default-brightness-level = <200>;

pwm-backlight can now calculate default brightness-levels, so you don't need
the table and default-brightness-level.

> +		power-supply = <&vcc_12v>;
> +		pwms = <&pwm0 0 740740 0>;
> +		status = "okay";

same okay comment as above

> +	};

> +	/* Audio components */
> +	speaker_amp: speaker-amplifier {
> +		compatible = "simple-audio-amplifier";
> +		enable-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
> +		sound-name-prefix = "Speaker Amplifier";
> +		status = "okay";

same okay comment as above
[and I guess I should stop repeating this for all following status=okay
in board nodes ;-) ]

> +		VCC-supply = <&pa_5v>;
> +	};
> +
> +	es8316-sound {
> +		compatible = "simple-audio-card";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hp_det_gpio>;
> +		simple-audio-card,name = "rockchip,es8316-codec";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,mclk-fs = <256>;
> +
> +		simple-audio-card,widgets =
> +			"Microphone", "Mic Jack",
> +			"Headphone", "Headphones",
> +			"Speaker", "Speaker";
> +		simple-audio-card,routing =
> +			"MIC1", "Mic Jack",
> +			"Headphones", "HPOL",
> +			"Headphones", "HPOR",
> +			"Speaker Amplifier INL", "HPOL",
> +			"Speaker Amplifier INR", "HPOR",
> +			"Speaker", "Speaker Amplifier OUTL",
> +			"Speaker", "Speaker Amplifier OUTR";
> +
> +		simple-audio-card,hp-det-gpio = <&gpio0 RK_PB0 GPIO_ACTIVE_LOW>;
> +		simple-audio-card,aux-devs = <&speaker_amp>;
> +		simple-audio-card,pin-switches = "Speaker";
> +		status = "okay";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s1>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&es8316>;
> +		};
> +	};
> +
> +	/* Power tree */

I really like clean power-trees, so thanks for probably digging through
the schematics to get this right.

[...]

> +&cluster1_opp {
> +	opp08 {
> +		opp-hz = /bits/ 64 <2000000000>;
> +		opp-microvolt = <1300000>;

Where does this operating point come from.
The opp-table Rockchip specified for the stock-rk3399 ends at 1.8Ghz@1.2V
and the OP1 variant only has a 2.016Ghz@1.25V .

Adding overclocked cou rates to the DT we ship in the mainline

> +	};
> +};
> +
> +&cdn_dp {
> +	status = "okay";
> +	extcon = <&fusb0>;

The fusb-extcon is Rockchip-BSP voodoo. This should use the kernel's
type-c framework, which in turn is depending on the cros-ec-pd stuff
from rk3399-gru also moving to the type-c framework (

> +};
> +
> +/* CPU */
> +&cpu_alert0 {
> +	temperature = <80000>;
> +};
> +
> +&cpu_alert1 {
> +	temperature = <95000>;
> +};
> +
> +&cpu_crit {
> +	temperature = <100000>;
> +};

Same issue for the temperatures. You're increasing the max allowed
temperature and so may decrease the life expectancy of devices.

The only other board-level changes for temperatures are decreasing
them to actually prevent thermal issues.


> +&i2c0 {
> +	clock-frequency = <400000>;
> +	i2c-scl-rising-time-ns = <168>;
> +	i2c-scl-falling-time-ns = <4>;
> +	status = "okay";
> +
> +	rk808: pmic@1b {
> +		compatible = "rockchip,rk808";
> +		reg = <0x1b>;
> +		#clock-cells = <1>;
> +		clock-output-names = "xin32k", "rk808-clkout2";
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int_l_gpio>;
> +		rockchip,system-power-controller;
> +		wakeup-source;
> +
> +		vddio-supply = <&vcc_3v0>;

where does this come from? Aka it's not specified in the dt-binding
(though the example falsely uses it) and also not referenced in the driver.

> +
> +	vdd_cpu_b: regulator@40 {
> +		compatible = "silergy,syr827";
> +		reg = <0x40>;
> +		fcs,suspend-voltage-selector = <1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vsel1_gpio>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-compatible = "fan53555-reg";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-name = "vdd_cpu_b";
> +		regulator-ramp-delay = <1000>;
> +		vin-supply = <&vcc_1v8>;
> +		vsel-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;

not part of the regulator binding nor driver

> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vdd_gpu: regulator@41 {
> +		compatible = "silergy,syr828";
> +		reg = <0x41>;
> +		fcs,suspend-voltage-selector = <1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vsel2_gpio>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-compatible = "fan53555-reg";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-name = "vdd_gpu";
> +		regulator-ramp-delay = <1000>;
> +		vin-supply = <&vcc_1v8>;
> +		vsel-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;

same

> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +};

[...]

> +&sdio0 {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	disable-wp;
> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	num-slots = <1>;

num-slots got removed a while ago

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +	supports-sdio;

not part of the binding


> +&tcphy0 {
> +	extcon = <&fusb0>;

that is Rockchip voodoo. The fusb302 in mainline does not (and should not)
export an extcon for status informations. Instead this should use the
type-c framework.


> +	status = "okay";
> +};
> +
> +&tcphy0_dp {
> +	port {
> +		tcphy0_typec_dp: endpoint {
> +			remote-endpoint = <&usbc_dp>;
> +		};
> +	};
> +};
> +
> +&tcphy0_usb3 {
> +	port {
> +		tcphy0_typec_ss: endpoint {
> +			remote-endpoint = <&usbc_ss>;
> +		};
> +	};
> +};

[...]

> +&u2phy1 {
> +	status = "okay";
> +
> +	u2phy1_otg: otg-port {
> +		status = "okay";
> +	};
> +
> +	u2phy1_host: host-port {
> +		phy-supply = <&vcc5v0_otg>;
> +		status = "okay";
> +	};
> +};
> +
> +

nit: double empty line

> +&uart0 {


Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
