Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F33110E5A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 06:59:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d0/CsmLd7+f6TUhJ260a2cpj5PJNKEmrtrEep0NQZ7E=; b=VgtEx8D0pPYwnnHEZ++dtjWAZ
	LINWQ4GxDCMNXMttjB7umV3atd/SRNgGydum9Rd/0gpAY7VrwxypNiQCXl2uWRyEKHFXl2EcH+0MK
	P/eFmcEmt/37PRqJcUgrYOUMd8tQRaNT3aGG5IkWk7qn66acjx+GYqwJW7U/5pz8EEzZbtT+OQqYI
	U7HOPSwNDY9+vfW5Bhh2Yjf1EpI5JyaDxYaPAcqeBNOmi1ZIWXakrbEoydTXN4PuDkIlXtFZ1XVi8
	5ymK/sppJQQ/1HcmS3NzCwR90yssJ5igKRj1+Do8iFLAMJXaPKkk5jeudm/2uCi5gmGZ1DgPHVsv4
	bX0haSLpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibekL-0006P7-2P; Mon, 02 Dec 2019 05:59:45 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibek9-0006L3-O6
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 05:59:37 +0000
Received: from fsav302.sakura.ne.jp (fsav302.sakura.ne.jp [153.120.85.133])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id xB25xMak083383;
 Mon, 2 Dec 2019 14:59:22 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav302.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav302.sakura.ne.jp);
 Mon, 02 Dec 2019 14:59:22 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav302.sakura.ne.jp)
Received: from [192.168.1.2] (121.252.232.153.ap.dti.ne.jp [153.232.252.121])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id xB25xLS4083373
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Mon, 2 Dec 2019 14:59:21 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: [PATCH v2] arm64: dts: rockchip: split rk3399-rockpro64 for v2
 and v2.1 boards
To: Vasily Khoruzhick <anarsoul@gmail.com>
References: <20191128140146.29837-1-katsuhiro@katsuster.net>
 <CA+E=qVd7o60aRJcyz1VL_aP0XNc-GUmEnz9=d-5pHVarGhLYyQ@mail.gmail.com>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <20d9dd50-46e7-a9b0-6fd1-1796a6b6629f@katsuster.net>
Date: Mon, 2 Dec 2019 14:59:21 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CA+E=qVd7o60aRJcyz1VL_aP0XNc-GUmEnz9=d-5pHVarGhLYyQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_215934_349233_B42B52BC 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, Hugh Cole-Baker <sigmaris@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Vasily,

On 2019/11/29 4:19, Vasily Khoruzhick wrote:
> On Thu, Nov 28, 2019 at 6:02 AM Katsuhiro Suzuki
> <katsuhiro@katsuster.net> wrote:
>>
>> This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
>> v2.1 boards.
>>
>> Both v2 and v2.1 boards can use almost same settings but we find a
>> difference in I2C address of audio CODEC ES8136.
>>
>> Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
>>
>> ---
>>
>> Changes in v2:
>>    - Use rk3399-rockpro64.dts for for v2.1 instead of creating
>>      rk3399-rockpro64-v2.1.dts
>> ---

(...snip...)

>> +/dts-v1/;
>> +#include "rk3399-rockpro64.dtsi"
>> +
>> +/ {
>> +       model = "Pine64 RockPro64 v2.0";
>> +       compatible = "pine64,rockpro64", "rockchip,rk3399";
> 
> Since boards have limited compatibility due to different audiocodec
> address it should be:
> 
> compatible = "pine64,rockpro64-v2.0", "pine64,rockpro64", "rockchip,rk3399";
> 
>> +};
>> +
>> +&i2c1 {
>> +       es8316: codec@10 {
>> +               compatible = "everest,es8316";
>> +               reg = <0x10>;
>> +               clocks = <&cru SCLK_I2S_8CH_OUT>;
>> +               clock-names = "mclk";
>> +               #sound-dai-cells = <0>;
>> +
>> +               port {
>> +                       es8316_p0_0: endpoint {
>> +                               remote-endpoint = <&i2s1_p0_0>;
>> +                       };
>> +               };
>> +       };
>> +};
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> index 7f4b2eba31d4..9450207bedad 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> @@ -2,481 +2,18 @@
>>   /*
>>    * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
>>    * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
>> + * Copyright (c) 2019 Katsuhiro Suzuki <katsuhiro@katsuster.net>
>>    */
>>
>>   /dts-v1/;
>> -#include <dt-bindings/input/linux-event-codes.h>
>> -#include <dt-bindings/pwm/pwm.h>
>> -#include "rk3399.dtsi"
>> -#include "rk3399-opp.dtsi"
>> +#include "rk3399-rockpro64.dtsi"
>>
>>   / {
>> -       model = "Pine64 RockPro64";
>> +       model = "Pine64 RockPro64 v2.1";
>>          compatible = "pine64,rockpro64", "rockchip,rk3399";
> 
> I think it makes sense to add "pine64,rockpro64-v2.1" here as well,
> i.e. it should be:
> 
> compatible = "pine64,rockpro64-v2.1", "pine64,rockpro64", "rockchip,rk3399";
> 

Thank you for review! I'll fix and post v3 patch.

Best Regards,
Katsuhiro Suzuki

>> -
>> -       chosen {
>> -               stdout-path = "serial2:1500000n8";
>> -       };
>> -
>> -       clkin_gmac: external-gmac-clock {
>> -               compatible = "fixed-clock";
>> -               clock-frequency = <125000000>;
>> -               clock-output-names = "clkin_gmac";
>> -               #clock-cells = <0>;
>> -       };
>> -
>> -       gpio-keys {
>> -               compatible = "gpio-keys";
>> -               autorepeat;
>> -               pinctrl-names = "default";
>> -               pinctrl-0 = <&pwrbtn>;
>> -
>> -               power {
>> -                       debounce-interval = <100>;
>> -                       gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
>> -                       label = "GPIO Key Power";
>> -                       linux,code = <KEY_POWER>;
>> -                       wakeup-source;
>> -               };
>> -       };
>> -
>> -       leds {
>> -               compatible = "gpio-leds";
>> -               pinctrl-names = "default";
>> -               pinctrl-0 = <&work_led_gpio>, <&diy_led_gpio>;
>> -
>> -               work-led {
>> -                       label = "work";
>> -                       default-state = "on";
>> -                       gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
>> -               };
>> -
>> -               diy-led {
>> -                       label = "diy";
>> -                       default-state = "off";
>> -                       gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
>> -               };
>> -       };
>> -
>> -       fan: pwm-fan {
>> -               compatible = "pwm-fan";
>> -               #cooling-cells = <2>;
>> -               fan-supply = <&vcc12v_dcin>;
>> -               pwms = <&pwm1 0 50000 0>;
>> -       };
>> -
>> -       sdio_pwrseq: sdio-pwrseq {
>> -               compatible = "mmc-pwrseq-simple";
>> -               clocks = <&rk808 1>;
>> -               clock-names = "ext_clock";
>> -               pinctrl-names = "default";
>> -               pinctrl-0 = <&wifi_enable_h>;
>> -
>> -               /*
>> -                * On the module itself this is one of these (depending
>> -                * on the actual card populated):
>> -                * - SDIO_RESET_L_WL_REG_ON
>> -                * - PDN (power down when low)
>> -                */
>> -               reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>> -       };
>> -
>> -       sound {
>> -               compatible = "audio-graph-card";
>> -               label = "rockchip,rk3399";
>> -               dais = <&i2s1_p0>;
>> -       };
>> -
>> -       vcc12v_dcin: vcc12v-dcin {
>> -               compatible = "regulator-fixed";
>> -               regulator-name = "vcc12v_dcin";
>> -               regulator-always-on;
>> -               regulator-boot-on;
>> -               regulator-min-microvolt = <12000000>;
>> -               regulator-max-microvolt = <12000000>;
>> -       };
>> -
>> -       /* switched by pmic_sleep */
>> -       vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
>> -               compatible = "regulator-fixed";
>> -               regulator-name = "vcc1v8_s3";
>> -               regulator-always-on;
>> -               regulator-boot-on;
>> -               regulator-min-microvolt = <1800000>;
>> -               regulator-max-microvolt = <1800000>;
>> -               vin-supply = <&vcc_1v8>;
>> -       };
>> -
>> -       vcc3v3_pcie: vcc3v3-pcie-regulator {
>> -               compatible = "regulator-fixed";
>> -               enable-active-high;
>> -               gpio = <&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>;
>> -               pinctrl-names = "default";
>> -               pinctrl-0 = <&pcie_pwr_en>;
>> -               regulator-name = "vcc3v3_pcie";
>> -               regulator-always-on;
>> -               regulator-boot-on;
>> -               vin-supply = <&vcc12v_dcin>;
>> -       };
>> -
>> -       vcc3v3_sys: vcc3v3-sys {
>> -               compatible = "regulator-fixed";
>> -               regulator-name = "vcc3v3_sys";
>> -               regulator-always-on;
>> -               regulator-boot-on;
>> -               regulator-min-microvolt = <3300000>;
>> -               regulator-max-microvolt = <3300000>;
>> -               vin-supply = <&vcc5v0_sys>;
>> -       };
>> -
>> -       /* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
>> -       vcc5v0_host: vcc5v0-host-regulator {
>> -               compatible = "regulator-fixed";
>> -               enable-active-high;
>> -               gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
>> -               pinctrl-names = "default";
>> -               pinctrl-0 = <&vcc5v0_host_en>;
>> -               regulator-name = "vcc5v0_host";
>> -               regulator-always-on;
>> -               vin-supply = <&vcc5v0_usb>;
>> -       };
>> -
>> -       vcc5v0_typec: vcc5v0-typec-regulator {
>> -               compatible = "regulator-fixed";
>> -               enable-active-high;
>> -               gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
>> -               pinctrl-names = "default";
>> -               pinctrl-0 = <&vcc5v0_typec_en>;
>> -               regulator-name = "vcc5v0_typec";
>> -               regulator-always-on;
>> -               vin-supply = <&vcc5v0_usb>;
>> -       };
>> -
>> -       vcc5v0_sys: vcc5v0-sys {
>> -               compatible = "regulator-fixed";
>> -               regulator-name = "vcc5v0_sys";
>> -               regulator-always-on;
>> -               regulator-boot-on;
>> -               regulator-min-microvolt = <5000000>;
>> -               regulator-max-microvolt = <5000000>;
>> -               vin-supply = <&vcc12v_dcin>;
>> -       };
>> -
>> -       vcc5v0_usb: vcc5v0-usb {
>> -               compatible = "regulator-fixed";
>> -               regulator-name = "vcc5v0_usb";
>> -               regulator-always-on;
>> -               regulator-boot-on;
>> -               regulator-min-microvolt = <5000000>;
>> -               regulator-max-microvolt = <5000000>;
>> -               vin-supply = <&vcc12v_dcin>;
>> -       };
>> -
>> -       vdd_log: vdd-log {
>> -               compatible = "pwm-regulator";
>> -               pwms = <&pwm2 0 25000 1>;
>> -               regulator-name = "vdd_log";
>> -               regulator-always-on;
>> -               regulator-boot-on;
>> -               regulator-min-microvolt = <800000>;
>> -               regulator-max-microvolt = <1700000>;
>> -               vin-supply = <&vcc5v0_sys>;
>> -       };
>> -};
>> -
>> -&cpu_l0 {
>> -       cpu-supply = <&vdd_cpu_l>;
>> -};
>> -
>> -&cpu_l1 {
>> -       cpu-supply = <&vdd_cpu_l>;
>> -};
>> -
>> -&cpu_l2 {
>> -       cpu-supply = <&vdd_cpu_l>;
>> -};
>> -
>> -&cpu_l3 {
>> -       cpu-supply = <&vdd_cpu_l>;
>> -};
>> -
>> -&cpu_b0 {
>> -       cpu-supply = <&vdd_cpu_b>;
>> -};
>> -
>> -&cpu_b1 {
>> -       cpu-supply = <&vdd_cpu_b>;
>> -};
>> -
>> -&emmc_phy {
>> -       status = "okay";
>> -};
>> -
>> -&gmac {
>> -       assigned-clocks = <&cru SCLK_RMII_SRC>;
>> -       assigned-clock-parents = <&clkin_gmac>;
>> -       clock_in_out = "input";
>> -       phy-supply = <&vcc_lan>;
>> -       phy-mode = "rgmii";
>> -       pinctrl-names = "default";
>> -       pinctrl-0 = <&rgmii_pins>;
>> -       snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
>> -       snps,reset-active-low;
>> -       snps,reset-delays-us = <0 10000 50000>;
>> -       tx_delay = <0x28>;
>> -       rx_delay = <0x11>;
>> -       status = "okay";
>> -};
>> -
>> -&hdmi {
>> -       ddc-i2c-bus = <&i2c3>;
>> -       pinctrl-names = "default";
>> -       pinctrl-0 = <&hdmi_cec>;
>> -       status = "okay";
>> -};
>> -
>> -&hdmi_sound {
>> -       status = "okay";
>> -};
>> -
>> -&gpu {
>> -       mali-supply = <&vdd_gpu>;
>> -       status = "okay";
>> -};
>> -
>> -&i2c0 {
>> -       clock-frequency = <400000>;
>> -       i2c-scl-rising-time-ns = <168>;
>> -       i2c-scl-falling-time-ns = <4>;
>> -       status = "okay";
>> -
>> -       rk808: pmic@1b {
>> -               compatible = "rockchip,rk808";
>> -               reg = <0x1b>;
>> -               interrupt-parent = <&gpio3>;
>> -               interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
>> -               #clock-cells = <1>;
>> -               clock-output-names = "xin32k", "rk808-clkout2";
>> -               pinctrl-names = "default";
>> -               pinctrl-0 = <&pmic_int_l>;
>> -               rockchip,system-power-controller;
>> -               wakeup-source;
>> -
>> -               vcc1-supply = <&vcc5v0_sys>;
>> -               vcc2-supply = <&vcc5v0_sys>;
>> -               vcc3-supply = <&vcc5v0_sys>;
>> -               vcc4-supply = <&vcc5v0_sys>;
>> -               vcc6-supply = <&vcc5v0_sys>;
>> -               vcc7-supply = <&vcc5v0_sys>;
>> -               vcc8-supply = <&vcc3v3_sys>;
>> -               vcc9-supply = <&vcc5v0_sys>;
>> -               vcc10-supply = <&vcc5v0_sys>;
>> -               vcc11-supply = <&vcc5v0_sys>;
>> -               vcc12-supply = <&vcc3v3_sys>;
>> -               vddio-supply = <&vcca_1v8>;
>> -
>> -               regulators {
>> -                       vdd_center: DCDC_REG1 {
>> -                               regulator-name = "vdd_center";
>> -                               regulator-always-on;
>> -                               regulator-boot-on;
>> -                               regulator-min-microvolt = <750000>;
>> -                               regulator-max-microvolt = <1350000>;
>> -                               regulator-ramp-delay = <6001>;
>> -                               regulator-state-mem {
>> -                                       regulator-off-in-suspend;
>> -                               };
>> -                       };
>> -
>> -                       vdd_cpu_l: DCDC_REG2 {
>> -                               regulator-name = "vdd_cpu_l";
>> -                               regulator-always-on;
>> -                               regulator-boot-on;
>> -                               regulator-min-microvolt = <750000>;
>> -                               regulator-max-microvolt = <1350000>;
>> -                               regulator-ramp-delay = <6001>;
>> -                               regulator-state-mem {
>> -                                       regulator-off-in-suspend;
>> -                               };
>> -                       };
>> -
>> -                       vcc_ddr: DCDC_REG3 {
>> -                               regulator-name = "vcc_ddr";
>> -                               regulator-always-on;
>> -                               regulator-boot-on;
>> -                               regulator-state-mem {
>> -                                       regulator-on-in-suspend;
>> -                               };
>> -                       };
>> -
>> -                       vcc_1v8: DCDC_REG4 {
>> -                               regulator-name = "vcc_1v8";
>> -                               regulator-always-on;
>> -                               regulator-boot-on;
>> -                               regulator-min-microvolt = <1800000>;
>> -                               regulator-max-microvolt = <1800000>;
>> -                               regulator-state-mem {
>> -                                       regulator-on-in-suspend;
>> -                                       regulator-suspend-microvolt = <1800000>;
>> -                               };
>> -                       };
>> -
>> -                       vcc1v8_dvp: LDO_REG1 {
>> -                               regulator-name = "vcc1v8_dvp";
>> -                               regulator-always-on;
>> -                               regulator-boot-on;
>> -                               regulator-min-microvolt = <1800000>;
>> -                               regulator-max-microvolt = <1800000>;
>> -                               regulator-state-mem {
>> -                                       regulator-off-in-suspend;
>> -                               };
>> -                       };
>> -
>> -                       vcc3v0_touch: LDO_REG2 {
>> -                               regulator-name = "vcc3v0_touch";
>> -                               regulator-always-on;
>> -                               regulator-boot-on;
>> -                               regulator-min-microvolt = <3000000>;
>> -                               regulator-max-microvolt = <3000000>;
>> -                               regulator-state-mem {
>> -                                       regulator-off-in-suspend;
>> -                               };
>> -                       };
>> -
>> -                       vcca_1v8: LDO_REG3 {
>> -                               regulator-name = "vcca_1v8";
>> -                               regulator-always-on;
>> -                               regulator-boot-on;
>> -                               regulator-min-microvolt = <1800000>;
>> -                               regulator-max-microvolt = <1800000>;
>> -                               regulator-state-mem {
>> -                                       regulator-on-in-suspend;
>> -                                       regulator-suspend-microvolt = <1800000>;
>> -                               };
>> -                       };
>> -
>> -                       vcc_sdio: LDO_REG4 {
>> -                               regulator-name = "vcc_sdio";
>> -                               regulator-always-on;
>> -                               regulator-boot-on;
>> -                               regulator-min-microvolt = <1800000>;
>> -                               regulator-max-microvolt = <3000000>;
>> -                               regulator-state-mem {
>> -                                       regulator-on-in-suspend;
>> -                                       regulator-suspend-microvolt = <3000000>;
>> -                               };
>> -                       };
>> -
>> -                       vcca3v0_codec: LDO_REG5 {
>> -                               regulator-name = "vcca3v0_codec";
>> -                               regulator-always-on;
>> -                               regulator-boot-on;
>> -                               regulator-min-microvolt = <3000000>;
>> -                               regulator-max-microvolt = <3000000>;
>> -                               regulator-state-mem {
>> -                                       regulator-off-in-suspend;
>> -                               };
>> -                       };
>> -
>> -                       vcc_1v5: LDO_REG6 {
>> -                               regulator-name = "vcc_1v5";
>> -                               regulator-always-on;
>> -                               regulator-boot-on;
>> -                               regulator-min-microvolt = <1500000>;
>> -                               regulator-max-microvolt = <1500000>;
>> -                               regulator-state-mem {
>> -                                       regulator-on-in-suspend;
>> -                                       regulator-suspend-microvolt = <1500000>;
>> -                               };
>> -                       };
>> -
>> -                       vcca1v8_codec: LDO_REG7 {
>> -                               regulator-name = "vcca1v8_codec";
>> -                               regulator-always-on;
>> -                               regulator-boot-on;
>> -                               regulator-min-microvolt = <1800000>;
>> -                               regulator-max-microvolt = <1800000>;
>> -                               regulator-state-mem {
>> -                                       regulator-off-in-suspend;
>> -                               };
>> -                       };
>> -
>> -                       vcc_3v0: LDO_REG8 {
>> -                               regulator-name = "vcc_3v0";
>> -                               regulator-always-on;
>> -                               regulator-boot-on;
>> -                               regulator-min-microvolt = <3000000>;
>> -                               regulator-max-microvolt = <3000000>;
>> -                               regulator-state-mem {
>> -                                       regulator-on-in-suspend;
>> -                                       regulator-suspend-microvolt = <3000000>;
>> -                               };
>> -                       };
>> -
>> -                       vcc3v3_s3: vcc_lan: SWITCH_REG1 {
>> -                               regulator-name = "vcc3v3_s3";
>> -                               regulator-always-on;
>> -                               regulator-boot-on;
>> -                               regulator-state-mem {
>> -                                       regulator-off-in-suspend;
>> -                               };
>> -                       };
>> -
>> -                       vcc3v3_s0: SWITCH_REG2 {
>> -                               regulator-name = "vcc3v3_s0";
>> -                               regulator-always-on;
>> -                               regulator-boot-on;
>> -                               regulator-state-mem {
>> -                                       regulator-off-in-suspend;
>> -                               };
>> -                       };
>> -               };
>> -       };
>> -
>> -       vdd_cpu_b: regulator@40 {
>> -               compatible = "silergy,syr827";
>> -               reg = <0x40>;
>> -               fcs,suspend-voltage-selector = <1>;
>> -               pinctrl-names = "default";
>> -               pinctrl-0 = <&vsel1_gpio>;
>> -               regulator-name = "vdd_cpu_b";
>> -               regulator-min-microvolt = <712500>;
>> -               regulator-max-microvolt = <1500000>;
>> -               regulator-ramp-delay = <1000>;
>> -               regulator-always-on;
>> -               regulator-boot-on;
>> -               vin-supply = <&vcc5v0_sys>;
>> -
>> -               regulator-state-mem {
>> -                       regulator-off-in-suspend;
>> -               };
>> -       };
>> -
>> -       vdd_gpu: regulator@41 {
>> -               compatible = "silergy,syr828";
>> -               reg = <0x41>;
>> -               fcs,suspend-voltage-selector = <1>;
>> -               pinctrl-names = "default";
>> -               pinctrl-0 = <&vsel2_gpio>;
>> -               regulator-name = "vdd_gpu";
>> -               regulator-min-microvolt = <712500>;
>> -               regulator-max-microvolt = <1500000>;
>> -               regulator-ramp-delay = <1000>;
>> -               regulator-always-on;
>> -               regulator-boot-on;
>> -               vin-supply = <&vcc5v0_sys>;
>> -
>> -               regulator-state-mem {
>> -                       regulator-off-in-suspend;
>> -               };
>> -       };
>>   };
>>
>>   &i2c1 {
>> -       i2c-scl-rising-time-ns = <300>;
>> -       i2c-scl-falling-time-ns = <15>;
>> -       status = "okay";
>> -
>>          es8316: codec@11 {
>>                  compatible = "everest,es8316";
>>                  reg = <0x11>;
>> @@ -491,291 +28,3 @@ es8316_p0_0: endpoint {
>>                  };
>>          };
>>   };
>> -
>> -&i2c3 {
>> -       i2c-scl-rising-time-ns = <450>;
>> -       i2c-scl-falling-time-ns = <15>;
>> -       status = "okay";
>> -};
>> -
>> -&i2c4 {
>> -       i2c-scl-rising-time-ns = <600>;
>> -       i2c-scl-falling-time-ns = <20>;
>> -       status = "okay";
>> -
>> -       fusb0: typec-portc@22 {
>> -               compatible = "fcs,fusb302";
>> -               reg = <0x22>;
>> -               interrupt-parent = <&gpio1>;
>> -               interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
>> -               pinctrl-names = "default";
>> -               pinctrl-0 = <&fusb0_int>;
>> -               vbus-supply = <&vcc5v0_typec>;
>> -               status = "okay";
>> -       };
>> -};
>> -
>> -&i2s0 {
>> -       rockchip,playback-channels = <8>;
>> -       rockchip,capture-channels = <8>;
>> -       status = "okay";
>> -};
>> -
>> -&i2s1 {
>> -       rockchip,playback-channels = <2>;
>> -       rockchip,capture-channels = <2>;
>> -       status = "okay";
>> -
>> -       i2s1_p0: port {
>> -               i2s1_p0_0: endpoint {
>> -                       dai-format = "i2s";
>> -                       mclk-fs = <256>;
>> -                       remote-endpoint = <&es8316_p0_0>;
>> -               };
>> -       };
>> -};
>> -
>> -&i2s2 {
>> -       status = "okay";
>> -};
>> -
>> -&io_domains {
>> -       status = "okay";
>> -
>> -       bt656-supply = <&vcc1v8_dvp>;
>> -       audio-supply = <&vcc_3v0>;
>> -       sdmmc-supply = <&vcc_sdio>;
>> -       gpio1830-supply = <&vcc_3v0>;
>> -};
>> -
>> -&pcie0 {
>> -       ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
>> -       num-lanes = <4>;
>> -       pinctrl-names = "default";
>> -       pinctrl-0 = <&pcie_perst>;
>> -       vpcie12v-supply = <&vcc12v_dcin>;
>> -       vpcie3v3-supply = <&vcc3v3_pcie>;
>> -       status = "okay";
>> -};
>> -
>> -&pcie_phy {
>> -       status = "okay";
>> -};
>> -
>> -&pmu_io_domains {
>> -       pmu1830-supply = <&vcc_3v0>;
>> -       status = "okay";
>> -};
>> -
>> -&pinctrl {
>> -       buttons {
>> -               pwrbtn: pwrbtn {
>> -                       rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
>> -               };
>> -       };
>> -
>> -       fusb302x {
>> -               fusb0_int: fusb0-int {
>> -                       rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
>> -               };
>> -       };
>> -
>> -       leds {
>> -               work_led_gpio: work_led-gpio {
>> -                       rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
>> -               };
>> -
>> -               diy_led_gpio: diy_led-gpio {
>> -                       rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
>> -               };
>> -       };
>> -
>> -       pcie {
>> -               pcie_perst: pcie-perst {
>> -                       rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
>> -               };
>> -
>> -               pcie_pwr_en: pcie-pwr-en {
>> -                       rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
>> -               };
>> -       };
>> -
>> -       pmic {
>> -               pmic_int_l: pmic-int-l {
>> -                       rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
>> -               };
>> -
>> -               vsel1_gpio: vsel1-gpio {
>> -                       rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
>> -               };
>> -
>> -               vsel2_gpio: vsel2-gpio {
>> -                       rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
>> -               };
>> -       };
>> -
>> -       sdio-pwrseq {
>> -               wifi_enable_h: wifi-enable-h {
>> -                       rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
>> -               };
>> -       };
>> -
>> -       usb-typec {
>> -               vcc5v0_typec_en: vcc5v0_typec_en {
>> -                       rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
>> -               };
>> -       };
>> -
>> -       usb2 {
>> -               vcc5v0_host_en: vcc5v0-host-en {
>> -                       rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
>> -               };
>> -       };
>> -};
>> -
>> -&pwm0 {
>> -       status = "okay";
>> -};
>> -
>> -&pwm1 {
>> -       status = "okay";
>> -};
>> -
>> -&pwm2 {
>> -       status = "okay";
>> -};
>> -
>> -&saradc {
>> -       vref-supply = <&vcca1v8_s3>;
>> -       status = "okay";
>> -};
>> -
>> -&sdmmc {
>> -       bus-width = <4>;
>> -       cap-sd-highspeed;
>> -       cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
>> -       disable-wp;
>> -       max-frequency = <150000000>;
>> -       pinctrl-names = "default";
>> -       pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
>> -       status = "okay";
>> -};
>> -
>> -&sdhci {
>> -       bus-width = <8>;
>> -       mmc-hs200-1_8v;
>> -       non-removable;
>> -       status = "okay";
>> -};
>> -
>> -&spi1 {
>> -       status = "okay";
>> -
>> -       flash@0 {
>> -               compatible = "jedec,spi-nor";
>> -               reg = <0>;
>> -               spi-max-frequency = <10000000>;
>> -       };
>> -};
>> -
>> -&tcphy0 {
>> -       status = "okay";
>> -};
>> -
>> -&tcphy1 {
>> -       status = "okay";
>> -};
>> -
>> -&tsadc {
>> -       /* tshut mode 0:CRU 1:GPIO */
>> -       rockchip,hw-tshut-mode = <1>;
>> -       /* tshut polarity 0:LOW 1:HIGH */
>> -       rockchip,hw-tshut-polarity = <1>;
>> -       status = "okay";
>> -};
>> -
>> -&u2phy0 {
>> -       status = "okay";
>> -
>> -       u2phy0_otg: otg-port {
>> -               status = "okay";
>> -       };
>> -
>> -       u2phy0_host: host-port {
>> -               phy-supply = <&vcc5v0_host>;
>> -               status = "okay";
>> -       };
>> -};
>> -
>> -&u2phy1 {
>> -       status = "okay";
>> -
>> -       u2phy1_otg: otg-port {
>> -               status = "okay";
>> -       };
>> -
>> -       u2phy1_host: host-port {
>> -               phy-supply = <&vcc5v0_host>;
>> -               status = "okay";
>> -       };
>> -};
>> -
>> -&uart0 {
>> -       pinctrl-names = "default";
>> -       pinctrl-0 = <&uart0_xfer &uart0_cts>;
>> -       status = "okay";
>> -};
>> -
>> -&uart2 {
>> -       status = "okay";
>> -};
>> -
>> -&usb_host0_ehci {
>> -       status = "okay";
>> -};
>> -
>> -&usb_host0_ohci {
>> -       status = "okay";
>> -};
>> -
>> -&usb_host1_ehci {
>> -       status = "okay";
>> -};
>> -
>> -&usb_host1_ohci {
>> -       status = "okay";
>> -};
>> -
>> -&usbdrd3_0 {
>> -       status = "okay";
>> -};
>> -
>> -&usbdrd_dwc3_0 {
>> -       status = "okay";
>> -       dr_mode = "otg";
>> -};
>> -
>> -&usbdrd3_1 {
>> -       status = "okay";
>> -};
>> -
>> -&usbdrd_dwc3_1 {
>> -       status = "okay";
>> -       dr_mode = "host";
>> -};
>> -
>> -&vopb {
>> -       status = "okay";
>> -};
>> -
>> -&vopb_mmu {
>> -       status = "okay";
>> -};
>> -
>> -&vopl {
>> -       status = "okay";
>> -};
>> -
>> -&vopl_mmu {
>> -       status = "okay";
>> -};
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> new file mode 100644
>> index 000000000000..183eda4ffb9c
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> @@ -0,0 +1,763 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
>> + * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
>> + */
>> +
>> +#include <dt-bindings/input/linux-event-codes.h>
>> +#include <dt-bindings/pwm/pwm.h>
>> +#include "rk3399.dtsi"
>> +#include "rk3399-opp.dtsi"
>> +
>> +/ {
>> +       chosen {
>> +               stdout-path = "serial2:1500000n8";
>> +       };
>> +
>> +       clkin_gmac: external-gmac-clock {
>> +               compatible = "fixed-clock";
>> +               clock-frequency = <125000000>;
>> +               clock-output-names = "clkin_gmac";
>> +               #clock-cells = <0>;
>> +       };
>> +
>> +       gpio-keys {
>> +               compatible = "gpio-keys";
>> +               autorepeat;
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&pwrbtn>;
>> +
>> +               power {
>> +                       debounce-interval = <100>;
>> +                       gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
>> +                       label = "GPIO Key Power";
>> +                       linux,code = <KEY_POWER>;
>> +                       wakeup-source;
>> +               };
>> +       };
>> +
>> +       leds {
>> +               compatible = "gpio-leds";
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&work_led_gpio>, <&diy_led_gpio>;
>> +
>> +               work-led {
>> +                       label = "work";
>> +                       default-state = "on";
>> +                       gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
>> +               };
>> +
>> +               diy-led {
>> +                       label = "diy";
>> +                       default-state = "off";
>> +                       gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
>> +               };
>> +       };
>> +
>> +       fan: pwm-fan {
>> +               compatible = "pwm-fan";
>> +               #cooling-cells = <2>;
>> +               fan-supply = <&vcc12v_dcin>;
>> +               pwms = <&pwm1 0 50000 0>;
>> +       };
>> +
>> +       sdio_pwrseq: sdio-pwrseq {
>> +               compatible = "mmc-pwrseq-simple";
>> +               clocks = <&rk808 1>;
>> +               clock-names = "ext_clock";
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&wifi_enable_h>;
>> +
>> +               /*
>> +                * On the module itself this is one of these (depending
>> +                * on the actual card populated):
>> +                * - SDIO_RESET_L_WL_REG_ON
>> +                * - PDN (power down when low)
>> +                */
>> +               reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>> +       };
>> +
>> +       sound {
>> +               compatible = "audio-graph-card";
>> +               label = "rockchip,rk3399";
>> +               dais = <&i2s1_p0>;
>> +       };
>> +
>> +       vcc12v_dcin: vcc12v-dcin {
>> +               compatible = "regulator-fixed";
>> +               regulator-name = "vcc12v_dcin";
>> +               regulator-always-on;
>> +               regulator-boot-on;
>> +               regulator-min-microvolt = <12000000>;
>> +               regulator-max-microvolt = <12000000>;
>> +       };
>> +
>> +       /* switched by pmic_sleep */
>> +       vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
>> +               compatible = "regulator-fixed";
>> +               regulator-name = "vcc1v8_s3";
>> +               regulator-always-on;
>> +               regulator-boot-on;
>> +               regulator-min-microvolt = <1800000>;
>> +               regulator-max-microvolt = <1800000>;
>> +               vin-supply = <&vcc_1v8>;
>> +       };
>> +
>> +       vcc3v3_pcie: vcc3v3-pcie-regulator {
>> +               compatible = "regulator-fixed";
>> +               enable-active-high;
>> +               gpio = <&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>;
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&pcie_pwr_en>;
>> +               regulator-name = "vcc3v3_pcie";
>> +               regulator-always-on;
>> +               regulator-boot-on;
>> +               vin-supply = <&vcc12v_dcin>;
>> +       };
>> +
>> +       vcc3v3_sys: vcc3v3-sys {
>> +               compatible = "regulator-fixed";
>> +               regulator-name = "vcc3v3_sys";
>> +               regulator-always-on;
>> +               regulator-boot-on;
>> +               regulator-min-microvolt = <3300000>;
>> +               regulator-max-microvolt = <3300000>;
>> +               vin-supply = <&vcc5v0_sys>;
>> +       };
>> +
>> +       /* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
>> +       vcc5v0_host: vcc5v0-host-regulator {
>> +               compatible = "regulator-fixed";
>> +               enable-active-high;
>> +               gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&vcc5v0_host_en>;
>> +               regulator-name = "vcc5v0_host";
>> +               regulator-always-on;
>> +               vin-supply = <&vcc5v0_usb>;
>> +       };
>> +
>> +       vcc5v0_typec: vcc5v0-typec-regulator {
>> +               compatible = "regulator-fixed";
>> +               enable-active-high;
>> +               gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&vcc5v0_typec_en>;
>> +               regulator-name = "vcc5v0_typec";
>> +               regulator-always-on;
>> +               vin-supply = <&vcc5v0_usb>;
>> +       };
>> +
>> +       vcc5v0_sys: vcc5v0-sys {
>> +               compatible = "regulator-fixed";
>> +               regulator-name = "vcc5v0_sys";
>> +               regulator-always-on;
>> +               regulator-boot-on;
>> +               regulator-min-microvolt = <5000000>;
>> +               regulator-max-microvolt = <5000000>;
>> +               vin-supply = <&vcc12v_dcin>;
>> +       };
>> +
>> +       vcc5v0_usb: vcc5v0-usb {
>> +               compatible = "regulator-fixed";
>> +               regulator-name = "vcc5v0_usb";
>> +               regulator-always-on;
>> +               regulator-boot-on;
>> +               regulator-min-microvolt = <5000000>;
>> +               regulator-max-microvolt = <5000000>;
>> +               vin-supply = <&vcc12v_dcin>;
>> +       };
>> +
>> +       vdd_log: vdd-log {
>> +               compatible = "pwm-regulator";
>> +               pwms = <&pwm2 0 25000 1>;
>> +               regulator-name = "vdd_log";
>> +               regulator-always-on;
>> +               regulator-boot-on;
>> +               regulator-min-microvolt = <800000>;
>> +               regulator-max-microvolt = <1700000>;
>> +               vin-supply = <&vcc5v0_sys>;
>> +       };
>> +};
>> +
>> +&cpu_l0 {
>> +       cpu-supply = <&vdd_cpu_l>;
>> +};
>> +
>> +&cpu_l1 {
>> +       cpu-supply = <&vdd_cpu_l>;
>> +};
>> +
>> +&cpu_l2 {
>> +       cpu-supply = <&vdd_cpu_l>;
>> +};
>> +
>> +&cpu_l3 {
>> +       cpu-supply = <&vdd_cpu_l>;
>> +};
>> +
>> +&cpu_b0 {
>> +       cpu-supply = <&vdd_cpu_b>;
>> +};
>> +
>> +&cpu_b1 {
>> +       cpu-supply = <&vdd_cpu_b>;
>> +};
>> +
>> +&emmc_phy {
>> +       status = "okay";
>> +};
>> +
>> +&gmac {
>> +       assigned-clocks = <&cru SCLK_RMII_SRC>;
>> +       assigned-clock-parents = <&clkin_gmac>;
>> +       clock_in_out = "input";
>> +       phy-supply = <&vcc_lan>;
>> +       phy-mode = "rgmii";
>> +       pinctrl-names = "default";
>> +       pinctrl-0 = <&rgmii_pins>;
>> +       snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
>> +       snps,reset-active-low;
>> +       snps,reset-delays-us = <0 10000 50000>;
>> +       tx_delay = <0x28>;
>> +       rx_delay = <0x11>;
>> +       status = "okay";
>> +};
>> +
>> +&hdmi {
>> +       ddc-i2c-bus = <&i2c3>;
>> +       pinctrl-names = "default";
>> +       pinctrl-0 = <&hdmi_cec>;
>> +       status = "okay";
>> +};
>> +
>> +&hdmi_sound {
>> +       status = "okay";
>> +};
>> +
>> +&gpu {
>> +       mali-supply = <&vdd_gpu>;
>> +       status = "okay";
>> +};
>> +
>> +&i2c0 {
>> +       clock-frequency = <400000>;
>> +       i2c-scl-rising-time-ns = <168>;
>> +       i2c-scl-falling-time-ns = <4>;
>> +       status = "okay";
>> +
>> +       rk808: pmic@1b {
>> +               compatible = "rockchip,rk808";
>> +               reg = <0x1b>;
>> +               interrupt-parent = <&gpio3>;
>> +               interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
>> +               #clock-cells = <1>;
>> +               clock-output-names = "xin32k", "rk808-clkout2";
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&pmic_int_l>;
>> +               rockchip,system-power-controller;
>> +               wakeup-source;
>> +
>> +               vcc1-supply = <&vcc5v0_sys>;
>> +               vcc2-supply = <&vcc5v0_sys>;
>> +               vcc3-supply = <&vcc5v0_sys>;
>> +               vcc4-supply = <&vcc5v0_sys>;
>> +               vcc6-supply = <&vcc5v0_sys>;
>> +               vcc7-supply = <&vcc5v0_sys>;
>> +               vcc8-supply = <&vcc3v3_sys>;
>> +               vcc9-supply = <&vcc5v0_sys>;
>> +               vcc10-supply = <&vcc5v0_sys>;
>> +               vcc11-supply = <&vcc5v0_sys>;
>> +               vcc12-supply = <&vcc3v3_sys>;
>> +               vddio-supply = <&vcca_1v8>;
>> +
>> +               regulators {
>> +                       vdd_center: DCDC_REG1 {
>> +                               regulator-name = "vdd_center";
>> +                               regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-min-microvolt = <750000>;
>> +                               regulator-max-microvolt = <1350000>;
>> +                               regulator-ramp-delay = <6001>;
>> +                               regulator-state-mem {
>> +                                       regulator-off-in-suspend;
>> +                               };
>> +                       };
>> +
>> +                       vdd_cpu_l: DCDC_REG2 {
>> +                               regulator-name = "vdd_cpu_l";
>> +                               regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-min-microvolt = <750000>;
>> +                               regulator-max-microvolt = <1350000>;
>> +                               regulator-ramp-delay = <6001>;
>> +                               regulator-state-mem {
>> +                                       regulator-off-in-suspend;
>> +                               };
>> +                       };
>> +
>> +                       vcc_ddr: DCDC_REG3 {
>> +                               regulator-name = "vcc_ddr";
>> +                               regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-state-mem {
>> +                                       regulator-on-in-suspend;
>> +                               };
>> +                       };
>> +
>> +                       vcc_1v8: DCDC_REG4 {
>> +                               regulator-name = "vcc_1v8";
>> +                               regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-min-microvolt = <1800000>;
>> +                               regulator-max-microvolt = <1800000>;
>> +                               regulator-state-mem {
>> +                                       regulator-on-in-suspend;
>> +                                       regulator-suspend-microvolt = <1800000>;
>> +                               };
>> +                       };
>> +
>> +                       vcc1v8_dvp: LDO_REG1 {
>> +                               regulator-name = "vcc1v8_dvp";
>> +                               regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-min-microvolt = <1800000>;
>> +                               regulator-max-microvolt = <1800000>;
>> +                               regulator-state-mem {
>> +                                       regulator-off-in-suspend;
>> +                               };
>> +                       };
>> +
>> +                       vcc3v0_touch: LDO_REG2 {
>> +                               regulator-name = "vcc3v0_touch";
>> +                               regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-min-microvolt = <3000000>;
>> +                               regulator-max-microvolt = <3000000>;
>> +                               regulator-state-mem {
>> +                                       regulator-off-in-suspend;
>> +                               };
>> +                       };
>> +
>> +                       vcca_1v8: LDO_REG3 {
>> +                               regulator-name = "vcca_1v8";
>> +                               regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-min-microvolt = <1800000>;
>> +                               regulator-max-microvolt = <1800000>;
>> +                               regulator-state-mem {
>> +                                       regulator-on-in-suspend;
>> +                                       regulator-suspend-microvolt = <1800000>;
>> +                               };
>> +                       };
>> +
>> +                       vcc_sdio: LDO_REG4 {
>> +                               regulator-name = "vcc_sdio";
>> +                               regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-min-microvolt = <1800000>;
>> +                               regulator-max-microvolt = <3000000>;
>> +                               regulator-state-mem {
>> +                                       regulator-on-in-suspend;
>> +                                       regulator-suspend-microvolt = <3000000>;
>> +                               };
>> +                       };
>> +
>> +                       vcca3v0_codec: LDO_REG5 {
>> +                               regulator-name = "vcca3v0_codec";
>> +                               regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-min-microvolt = <3000000>;
>> +                               regulator-max-microvolt = <3000000>;
>> +                               regulator-state-mem {
>> +                                       regulator-off-in-suspend;
>> +                               };
>> +                       };
>> +
>> +                       vcc_1v5: LDO_REG6 {
>> +                               regulator-name = "vcc_1v5";
>> +                               regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-min-microvolt = <1500000>;
>> +                               regulator-max-microvolt = <1500000>;
>> +                               regulator-state-mem {
>> +                                       regulator-on-in-suspend;
>> +                                       regulator-suspend-microvolt = <1500000>;
>> +                               };
>> +                       };
>> +
>> +                       vcca1v8_codec: LDO_REG7 {
>> +                               regulator-name = "vcca1v8_codec";
>> +                               regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-min-microvolt = <1800000>;
>> +                               regulator-max-microvolt = <1800000>;
>> +                               regulator-state-mem {
>> +                                       regulator-off-in-suspend;
>> +                               };
>> +                       };
>> +
>> +                       vcc_3v0: LDO_REG8 {
>> +                               regulator-name = "vcc_3v0";
>> +                               regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-min-microvolt = <3000000>;
>> +                               regulator-max-microvolt = <3000000>;
>> +                               regulator-state-mem {
>> +                                       regulator-on-in-suspend;
>> +                                       regulator-suspend-microvolt = <3000000>;
>> +                               };
>> +                       };
>> +
>> +                       vcc3v3_s3: vcc_lan: SWITCH_REG1 {
>> +                               regulator-name = "vcc3v3_s3";
>> +                               regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-state-mem {
>> +                                       regulator-off-in-suspend;
>> +                               };
>> +                       };
>> +
>> +                       vcc3v3_s0: SWITCH_REG2 {
>> +                               regulator-name = "vcc3v3_s0";
>> +                               regulator-always-on;
>> +                               regulator-boot-on;
>> +                               regulator-state-mem {
>> +                                       regulator-off-in-suspend;
>> +                               };
>> +                       };
>> +               };
>> +       };
>> +
>> +       vdd_cpu_b: regulator@40 {
>> +               compatible = "silergy,syr827";
>> +               reg = <0x40>;
>> +               fcs,suspend-voltage-selector = <1>;
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&vsel1_gpio>;
>> +               regulator-name = "vdd_cpu_b";
>> +               regulator-min-microvolt = <712500>;
>> +               regulator-max-microvolt = <1500000>;
>> +               regulator-ramp-delay = <1000>;
>> +               regulator-always-on;
>> +               regulator-boot-on;
>> +               vin-supply = <&vcc5v0_sys>;
>> +
>> +               regulator-state-mem {
>> +                       regulator-off-in-suspend;
>> +               };
>> +       };
>> +
>> +       vdd_gpu: regulator@41 {
>> +               compatible = "silergy,syr828";
>> +               reg = <0x41>;
>> +               fcs,suspend-voltage-selector = <1>;
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&vsel2_gpio>;
>> +               regulator-name = "vdd_gpu";
>> +               regulator-min-microvolt = <712500>;
>> +               regulator-max-microvolt = <1500000>;
>> +               regulator-ramp-delay = <1000>;
>> +               regulator-always-on;
>> +               regulator-boot-on;
>> +               vin-supply = <&vcc5v0_sys>;
>> +
>> +               regulator-state-mem {
>> +                       regulator-off-in-suspend;
>> +               };
>> +       };
>> +};
>> +
>> +&i2c1 {
>> +       i2c-scl-rising-time-ns = <300>;
>> +       i2c-scl-falling-time-ns = <15>;
>> +       status = "okay";
>> +};
>> +
>> +&i2c3 {
>> +       i2c-scl-rising-time-ns = <450>;
>> +       i2c-scl-falling-time-ns = <15>;
>> +       status = "okay";
>> +};
>> +
>> +&i2c4 {
>> +       i2c-scl-rising-time-ns = <600>;
>> +       i2c-scl-falling-time-ns = <20>;
>> +       status = "okay";
>> +
>> +       fusb0: typec-portc@22 {
>> +               compatible = "fcs,fusb302";
>> +               reg = <0x22>;
>> +               interrupt-parent = <&gpio1>;
>> +               interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&fusb0_int>;
>> +               vbus-supply = <&vcc5v0_typec>;
>> +               status = "okay";
>> +       };
>> +};
>> +
>> +&i2s0 {
>> +       rockchip,playback-channels = <8>;
>> +       rockchip,capture-channels = <8>;
>> +       status = "okay";
>> +};
>> +
>> +&i2s1 {
>> +       rockchip,playback-channels = <2>;
>> +       rockchip,capture-channels = <2>;
>> +       status = "okay";
>> +
>> +       i2s1_p0: port {
>> +               i2s1_p0_0: endpoint {
>> +                       dai-format = "i2s";
>> +                       mclk-fs = <256>;
>> +                       remote-endpoint = <&es8316_p0_0>;
>> +               };
>> +       };
>> +};
>> +
>> +&i2s2 {
>> +       status = "okay";
>> +};
>> +
>> +&io_domains {
>> +       status = "okay";
>> +
>> +       bt656-supply = <&vcc1v8_dvp>;
>> +       audio-supply = <&vcc_3v0>;
>> +       sdmmc-supply = <&vcc_sdio>;
>> +       gpio1830-supply = <&vcc_3v0>;
>> +};
>> +
>> +&pcie0 {
>> +       ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
>> +       num-lanes = <4>;
>> +       pinctrl-names = "default";
>> +       pinctrl-0 = <&pcie_perst>;
>> +       vpcie12v-supply = <&vcc12v_dcin>;
>> +       vpcie3v3-supply = <&vcc3v3_pcie>;
>> +       status = "okay";
>> +};
>> +
>> +&pcie_phy {
>> +       status = "okay";
>> +};
>> +
>> +&pmu_io_domains {
>> +       pmu1830-supply = <&vcc_3v0>;
>> +       status = "okay";
>> +};
>> +
>> +&pinctrl {
>> +       buttons {
>> +               pwrbtn: pwrbtn {
>> +                       rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
>> +               };
>> +       };
>> +
>> +       fusb302x {
>> +               fusb0_int: fusb0-int {
>> +                       rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
>> +               };
>> +       };
>> +
>> +       leds {
>> +               work_led_gpio: work_led-gpio {
>> +                       rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
>> +               };
>> +
>> +               diy_led_gpio: diy_led-gpio {
>> +                       rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
>> +               };
>> +       };
>> +
>> +       pcie {
>> +               pcie_perst: pcie-perst {
>> +                       rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
>> +               };
>> +
>> +               pcie_pwr_en: pcie-pwr-en {
>> +                       rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
>> +               };
>> +       };
>> +
>> +       pmic {
>> +               pmic_int_l: pmic-int-l {
>> +                       rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
>> +               };
>> +
>> +               vsel1_gpio: vsel1-gpio {
>> +                       rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
>> +               };
>> +
>> +               vsel2_gpio: vsel2-gpio {
>> +                       rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
>> +               };
>> +       };
>> +
>> +       sdio-pwrseq {
>> +               wifi_enable_h: wifi-enable-h {
>> +                       rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
>> +               };
>> +       };
>> +
>> +       usb-typec {
>> +               vcc5v0_typec_en: vcc5v0_typec_en {
>> +                       rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
>> +               };
>> +       };
>> +
>> +       usb2 {
>> +               vcc5v0_host_en: vcc5v0-host-en {
>> +                       rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
>> +               };
>> +       };
>> +};
>> +
>> +&pwm0 {
>> +       status = "okay";
>> +};
>> +
>> +&pwm1 {
>> +       status = "okay";
>> +};
>> +
>> +&pwm2 {
>> +       status = "okay";
>> +};
>> +
>> +&saradc {
>> +       vref-supply = <&vcca1v8_s3>;
>> +       status = "okay";
>> +};
>> +
>> +&sdmmc {
>> +       bus-width = <4>;
>> +       cap-sd-highspeed;
>> +       cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
>> +       disable-wp;
>> +       max-frequency = <150000000>;
>> +       pinctrl-names = "default";
>> +       pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
>> +       status = "okay";
>> +};
>> +
>> +&sdhci {
>> +       bus-width = <8>;
>> +       mmc-hs200-1_8v;
>> +       non-removable;
>> +       status = "okay";
>> +};
>> +
>> +&spi1 {
>> +       status = "okay";
>> +
>> +       flash@0 {
>> +               compatible = "jedec,spi-nor";
>> +               reg = <0>;
>> +               spi-max-frequency = <10000000>;
>> +       };
>> +};
>> +
>> +&tcphy0 {
>> +       status = "okay";
>> +};
>> +
>> +&tcphy1 {
>> +       status = "okay";
>> +};
>> +
>> +&tsadc {
>> +       /* tshut mode 0:CRU 1:GPIO */
>> +       rockchip,hw-tshut-mode = <1>;
>> +       /* tshut polarity 0:LOW 1:HIGH */
>> +       rockchip,hw-tshut-polarity = <1>;
>> +       status = "okay";
>> +};
>> +
>> +&u2phy0 {
>> +       status = "okay";
>> +
>> +       u2phy0_otg: otg-port {
>> +               status = "okay";
>> +       };
>> +
>> +       u2phy0_host: host-port {
>> +               phy-supply = <&vcc5v0_host>;
>> +               status = "okay";
>> +       };
>> +};
>> +
>> +&u2phy1 {
>> +       status = "okay";
>> +
>> +       u2phy1_otg: otg-port {
>> +               status = "okay";
>> +       };
>> +
>> +       u2phy1_host: host-port {
>> +               phy-supply = <&vcc5v0_host>;
>> +               status = "okay";
>> +       };
>> +};
>> +
>> +&uart0 {
>> +       pinctrl-names = "default";
>> +       pinctrl-0 = <&uart0_xfer &uart0_cts>;
>> +       status = "okay";
>> +};
>> +
>> +&uart2 {
>> +       status = "okay";
>> +};
>> +
>> +&usb_host0_ehci {
>> +       status = "okay";
>> +};
>> +
>> +&usb_host0_ohci {
>> +       status = "okay";
>> +};
>> +
>> +&usb_host1_ehci {
>> +       status = "okay";
>> +};
>> +
>> +&usb_host1_ohci {
>> +       status = "okay";
>> +};
>> +
>> +&usbdrd3_0 {
>> +       status = "okay";
>> +};
>> +
>> +&usbdrd_dwc3_0 {
>> +       status = "okay";
>> +       dr_mode = "otg";
>> +};
>> +
>> +&usbdrd3_1 {
>> +       status = "okay";
>> +};
>> +
>> +&usbdrd_dwc3_1 {
>> +       status = "okay";
>> +       dr_mode = "host";
>> +};
>> +
>> +&vopb {
>> +       status = "okay";
>> +};
>> +
>> +&vopb_mmu {
>> +       status = "okay";
>> +};
>> +
>> +&vopl {
>> +       status = "okay";
>> +};
>> +
>> +&vopl_mmu {
>> +       status = "okay";
>> +};
>> --
>> 2.24.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
