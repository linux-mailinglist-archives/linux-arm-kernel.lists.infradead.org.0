Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465BA109A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 16:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IOSpiYJp7+9jmWfgfcG7H/FunVCibyliDZjJLUd7cy0=; b=du9/K8grEf5Yj5GZsXakU3vLh
	izLnjfTBInUrqLxWzPmG+UogsXSpGrfffzI/C8smDBYE9ee4HDkVKeHAEK3oVIF0UBR7G7olqZi/f
	A0ZAq10hak8PQUg+pvp5J5XnG11O1KcMvO9uIrqlXxX7iCPx6VFpCiCKf38kj6lKrDVJuKyPZwx+T
	ztqcsnhRjb2SNmrpfSEldnVxC/xU6AlSG6vX1y3o4oPAfeRfW79SICiAIr5AF8aPRW8/V9a1Wxfbj
	MyrUb3nGs+IAvyOs56pN1VePEvF8DVRCTNCN+xVwAo7c+37XIMUAeNHbfaR9ADPpv8QBahLi/RdvJ
	2Ivk1TeUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLqbH-00074t-Bt; Wed, 01 May 2019 14:52:47 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLqbA-00074W-QR; Wed, 01 May 2019 14:52:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5756AA78;
 Wed,  1 May 2019 07:52:40 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BFA973F719;
 Wed,  1 May 2019 07:52:38 -0700 (PDT)
Subject: Re: [DO NOT MERGE] [PATCH 2/2] arm64: rockchip: rk3399: nanopc-t4:
 Enable FriendlyELEC HD702E eDP panel
To: Jagan Teki <jagan@amarulasolutions.com>
References: <20190501121448.3812-1-jagan@amarulasolutions.com>
 <20190501121448.3812-2-jagan@amarulasolutions.com>
 <cc16498b-71f8-04ce-44d1-25417fd64757@arm.com>
 <CAMty3ZBdko3+p6SoKYH-Mwism-Qnp3F5u7JV8YQTHzNP8A5kEg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1a1f6b09-11cc-fa38-ac32-aa0f8865aaea@arm.com>
Date: Wed, 1 May 2019 15:52:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMty3ZBdko3+p6SoKYH-Mwism-Qnp3F5u7JV8YQTHzNP8A5kEg@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_075240_870653_228C3372 
X-CRM114-Status: GOOD (  28.23  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/05/2019 15:09, Jagan Teki wrote:
> On Wed, May 1, 2019 at 6:17 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 01/05/2019 13:14, Jagan Teki wrote:
>>> FriendlyELEC HD702E is one of optional LCD panel for
>>> NanoPC T4 eDP interface.
>>>
>>> It features 800x1280 resolutions, with built in GT9271 captive
>>> touchscreen and adjustable backlight via PWM.
>>>
>>> eDP panel connections are:
>>> - VCC3V3_SYS: 3.3V panel power supply
>>> - GPIO4_C2: PWM0_BL pin
>>> - GPIO4_D5_LCD_BL_EN: Backlight enable pin
>>> - VCC12V0_SYS: 12V backlight power supply
>>> - Touchscreen connected via I2C4
>>> - GPIO1_C4_TP_INT: touchscreen interrupt pin
>>> - GPIO1_B5_TP_RST: touchscreen reset pin
>>>
>>> Add support for it.
>>>
>>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>>> ---
>>> Note: we need to disable hdmi-cec pinctrl to work with
>>> edp-hpd since both share same pin, otherwise we can
>>> encounter below error during bootup
>>> [    1.047726] rockchip-pinctrl pinctrl: pin gpio4-23 already requested by ff940000.hdmi; cannot claim for ff970000.edp
>>> [    1.048655] rockchip-pinctrl pinctrl: pin-151 (ff970000.edp) status -22
>>> [    1.049235] rockchip-pinctrl pinctrl: could not request pin 151 (gpio4-23) from group edp-hpd  on device rockchip-pinctrl
>>> [    1.050191] rockchip-dp ff970000.edp: Error applying setting, reverse things back
>>> [    1.050867] rockchip-dp: probe of ff970000.edp failed with error -22
>>
>> Hmm, AFAICS that pin is exclusively wired to the HDMI connector and not
>> used for the eDP interface, so really it's the fault of rk3399.dtsi for
>> trying to claim it unconditionally. Ideally we'd pull those pinctrl
>> properties out into the board DTs which do actually need them, but the
>> quick and easy approach would be to add some "/delete-property/ ..."
>> workarounds to the &edp node here.
> 
> Thought that initially, but the same pin shared between HDMI CEC and
> eDP hotplug with different bit function to enable.
> 
> gpio4c7_sel
> GPIO4C[7] iomux select
> 2'b00: gpio
> 2'b01: hdmi_cecinout
> 2'b10: edp_hotplug
> 2'b11: reserved
> 
> GPIO4_C7/HDMI_CECINOUT/EDP_HOTPLUG is the shared pin, which is
> available in any nanopc-t4 as well in rk3399 datasheet, look like it's
> an SoC pin that driver hotplug to eDP and ie same reason is pinmux in
> rk3399.dtsi.
> 
> I event removed edp_hpd pinctrl from edp node in rk3399.dtsi, but
> display not appear on the screen and observed edp bridge issue on
> host.

Ah, I see - from a quick scan through the drivers it looks the 
"force-hpd" property already exists as the solution for that. Either way 
I don't think it would be safe to rely on the EDP_HOTPLUG pinctrl 
appearing to work, given that the physical pin is hard-wired to the HDMI 
connector - presumably if you tried to use the eDP display while a TV is 
plugged in and periodically sending CEC messages, all kinds of 
shenanigans might ensue.

> [    1.052191] rockchip-drm display-subsystem: bound ff8f0000.vop (ops
> vop_component_ops)
> [    1.054460] rockchip-drm display-subsystem: bound ff900000.vop (ops
> vop_component_ops)
> [    1.055214] rockchip-dp ff970000.edp: no DP phy configured
> [    1.056088] rockchip-drm display-subsystem: bound ff970000.edp (ops
> rockchip_dp_component_ops)
> [    1.056852] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
> [    1.057449] [drm] No driver support for vblank timestamp query.
> [    1.174379] [drm:analogix_dp_bridge_enable] *ERROR* failed to get
> hpd single ret = -110
> [    1.174408] rockchip-dp ff970000.edp: failed to set bridge, retry: 0
> [    1.285524] [drm:analogix_dp_bridge_enable] *ERROR* failed to get
> hpd single ret = -110
> [    1.285539] rockchip-dp ff970000.edp: failed to set bridge, retry: 1
> [    1.355241] dwmmc_rockchip fe310000.dwmmc: Successfully tuned phase to 212
> [    1.358757] mmc0: new ultra high speed SDR104 SDIO card at address 0001
> [    1.397049] [drm:analogix_dp_bridge_enable] *ERROR* failed to get
> hpd single ret = -110
> [    1.397069] rockchip-dp ff970000.edp: failed to set bridge, retry: 2
> [    1.485582] dwmmc_rockchip fe320000.dwmmc: Successfully tuned phase to 220
> [    1.485590] mmc1: new ultra high speed SDR104 SDHC card at address 084e
> [    1.486246] mmcblk1: mmc1:084e R04GS 3.71 GiB
> [    1.488032]  mmcblk1: p1
> [    1.509088] [drm:analogix_dp_bridge_enable] *ERROR* failed to get
> hpd single ret = -110
> [    1.509119] rockchip-dp ff970000.edp: failed to set bridge, retry: 3
> [    1.620938] [drm:analogix_dp_bridge_enable] *ERROR* failed to get
> hpd single ret = -110
> [    1.620953] rockchip-dp ff970000.edp: failed to set bridge, retry: 4
> [    1.620970] rockchip-dp ff970000.edp: too many times retry set
> bridge, give it up
> [    1.644026] Console: switching to colour frame buffer device 100x80
> 
> 
>>
>>>    .../boot/dts/rockchip/rk3399-nanopc-t4.dts    | 82 +++++++++++++++++++
>>>    1 file changed, 82 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
>>> index 931c3dbf1b7d..b652d960946f 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
>>> @@ -46,6 +46,48 @@
>>>                };
>>>        };
>>>
>>> +     backlight: backlight {
>>> +             compatible = "pwm-backlight";
>>> +             brightness-levels = <
>>> +                       0   1   2   3   4   5   6   7
>>> +                       8   9  10  11  12  13  14  15
>>> +                      16  17  18  19  20  21  22  23
>>> +                      24  25  26  27  28  29  30  31
>>> +                      32  33  34  35  36  37  38  39
>>> +                      40  41  42  43  44  45  46  47
>>> +                      48  49  50  51  52  53  54  55
>>> +                      56  57  58  59  60  61  62  63
>>> +                      64  65  66  67  68  69  70  71
>>> +                      72  73  74  75  76  77  78  79
>>> +                      80  81  82  83  84  85  86  87
>>> +                      88  89  90  91  92  93  94  95
>>> +                      96  97  98  99 100 101 102 103
>>> +                     104 105 106 107 108 109 110 111
>>> +                     112 113 114 115 116 117 118 119
>>> +                     120 121 122 123 124 125 126 127
>>> +                     128 129 130 131 132 133 134 135
>>> +                     136 137 138 139 140 141 142 143
>>> +                     144 145 146 147 148 149 150 151
>>> +                     152 153 154 155 156 157 158 159
>>> +                     160 161 162 163 164 165 166 167
>>> +                     168 169 170 171 172 173 174 175
>>> +                     176 177 178 179 180 181 182 183
>>> +                     184 185 186 187 188 189 190 191
>>> +                     192 193 194 195 196 197 198 199
>>> +                     200 201 202 203 204 205 206 207
>>> +                     208 209 210 211 212 213 214 215
>>> +                     216 217 218 219 220 221 222 223
>>> +                     224 225 226 227 228 229 230 231
>>> +                     232 233 234 235 236 237 238 239
>>> +                     240 241 242 243 244 245 246 247
>>> +                     248 249 250 251 252 253 254 255>;
>>
>> This looks trivial enough that I wonder whether it might still work to
>> just omit it? Not that I know anything about backlights, but I had the
>> impression (from mailing list traffic, I guess) that the driver gained
>> the ability to provide a reasonable default behaviour at some point.
> 
> Unaware about this, would you please pass the thread. on the
> other-hand I can see sapphire-excavator still using the brightness
> levels like this.

It looks like the "default behaviour" thing must have been what ended up 
as commit 88ba95bedb79 ("backlight: pwm_bl: Compute brightness of LED 
linearly to human eye"). Even if that turns out to be unsuitable for 
this particular panel, it seems that the PWM-linear response could now 
be specified much more simply as something like:

	brightness-levels = <0 255>;
	num-interpolated-steps = <256>;

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
