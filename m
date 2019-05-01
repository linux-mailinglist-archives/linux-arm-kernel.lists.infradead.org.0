Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BE8108D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 16:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JpQn/ox204fYKOqG9Zbwk7CcYavYdsn1CEWGd5u2cU4=; b=VPk4PC+6KHwDUg
	vwQxtqXqO4ZMOK3b9VPfg41D0g+D/HKte2gLGlRNooLInUq87uP+L/htqU30U9huyQBYg9907+J7h
	+H+YxiVdWjRfcxw/ghOsfz0YxKpEcJEj6ENTIpSvLHu6Suo9OPlU6wbSynRUIotvIcVkqyftuBvC3
	FLEbFYeDe9Q5v9tKyZWhRvAVIpGKfcovT4gCr+mhduKXIix4XGTniRjmVwKsW919cNMxQ2lAWCUAp
	HgnTv2X08v9h5mfP0sXoZUon9SK0B4zq1+OOo5ImSPy/OkB928+hcPEkY6+ck8+e5f20nS1HIr+Vr
	7gaiUoE2+JOV9dxATeCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLpw3-0005oi-JN; Wed, 01 May 2019 14:10:11 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLpvt-0005Dm-3I
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 14:10:03 +0000
Received: by mail-io1-xd44.google.com with SMTP id a23so14927729iot.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 07:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nB5mo0PzD9+ciKHE3nzQsu/xBNhXLuJh3fQvApZ4eDE=;
 b=bbCwLAC8NXEO1MlCMIaPy05mv66RouPcb+bvkijVpS+pzk5BLMIHVOtFkqZcoAPTA4
 6ga9XjzjJ1sOuJ49EW+AI/eNAGSgIIkq1S10/GNVx8ke9aJUbIjcO98Y5Kb8NR6cOrWL
 bjwz8AnzWjfQMhg2dn5RtOw3PplDq7u4QwDmg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nB5mo0PzD9+ciKHE3nzQsu/xBNhXLuJh3fQvApZ4eDE=;
 b=HqIsE9HaEqzehD9cqxQ+UAGgN6LTE9ynsQhnlIhHwANeOYM/do/noz9gCUrckkVd+G
 Ha0Gu32VHrrnwFLr8as0OnhaZLvJXBeI/vcuoQqzQZnkI4km0GKT8yLq0YuOe1ssK12Q
 qsHFKfvL07zAjo6BlrOMalMhEgTg+CRt1OLFbUtdG1a+sF0NLleo4yN3vkKMGtJvlgtd
 jKwzwe/l9tH+hyHeleyHQWS6k+/ECbCLk+5U8HCXCmFOywkzHrUaxKTRhDnn0x1wmeF7
 GtZgv9jnzzpDcVknrpuyyixGBBuSBS4LSr75dqQLQ1+0nXe1Jxh2kG6TSJhkdop+CYGC
 5CEQ==
X-Gm-Message-State: APjAAAUW6aFQOzxUwtxSeSCOJxrxnJXM4hWoRGUSgMaRT0iHgsYI2QYf
 sPA0R1yT00M4a9tEhpbaJ5jCxBV9Ydatp7Uj3uOk4g==
X-Google-Smtp-Source: APXvYqwJw2QwrXIxZJq4e669u8UmLxc5NF8gdYbnL+eL3xI7LbmEUaDO3+S4myUwXwutRlCDThcxZxJk+wimJdIMuHs=
X-Received: by 2002:a5d:8d18:: with SMTP id p24mr2089671ioj.267.1556719799202; 
 Wed, 01 May 2019 07:09:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190501121448.3812-1-jagan@amarulasolutions.com>
 <20190501121448.3812-2-jagan@amarulasolutions.com>
 <cc16498b-71f8-04ce-44d1-25417fd64757@arm.com>
In-Reply-To: <cc16498b-71f8-04ce-44d1-25417fd64757@arm.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 1 May 2019 19:39:46 +0530
Message-ID: <CAMty3ZBdko3+p6SoKYH-Mwism-Qnp3F5u7JV8YQTHzNP8A5kEg@mail.gmail.com>
Subject: Re: [DO NOT MERGE] [PATCH 2/2] arm64: rockchip: rk3399: nanopc-t4:
 Enable FriendlyELEC HD702E eDP panel
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_071001_332258_860E7A2C 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 1, 2019 at 6:17 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 01/05/2019 13:14, Jagan Teki wrote:
> > FriendlyELEC HD702E is one of optional LCD panel for
> > NanoPC T4 eDP interface.
> >
> > It features 800x1280 resolutions, with built in GT9271 captive
> > touchscreen and adjustable backlight via PWM.
> >
> > eDP panel connections are:
> > - VCC3V3_SYS: 3.3V panel power supply
> > - GPIO4_C2: PWM0_BL pin
> > - GPIO4_D5_LCD_BL_EN: Backlight enable pin
> > - VCC12V0_SYS: 12V backlight power supply
> > - Touchscreen connected via I2C4
> > - GPIO1_C4_TP_INT: touchscreen interrupt pin
> > - GPIO1_B5_TP_RST: touchscreen reset pin
> >
> > Add support for it.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Note: we need to disable hdmi-cec pinctrl to work with
> > edp-hpd since both share same pin, otherwise we can
> > encounter below error during bootup
> > [    1.047726] rockchip-pinctrl pinctrl: pin gpio4-23 already requested by ff940000.hdmi; cannot claim for ff970000.edp
> > [    1.048655] rockchip-pinctrl pinctrl: pin-151 (ff970000.edp) status -22
> > [    1.049235] rockchip-pinctrl pinctrl: could not request pin 151 (gpio4-23) from group edp-hpd  on device rockchip-pinctrl
> > [    1.050191] rockchip-dp ff970000.edp: Error applying setting, reverse things back
> > [    1.050867] rockchip-dp: probe of ff970000.edp failed with error -22
>
> Hmm, AFAICS that pin is exclusively wired to the HDMI connector and not
> used for the eDP interface, so really it's the fault of rk3399.dtsi for
> trying to claim it unconditionally. Ideally we'd pull those pinctrl
> properties out into the board DTs which do actually need them, but the
> quick and easy approach would be to add some "/delete-property/ ..."
> workarounds to the &edp node here.

Thought that initially, but the same pin shared between HDMI CEC and
eDP hotplug with different bit function to enable.

gpio4c7_sel
GPIO4C[7] iomux select
2'b00: gpio
2'b01: hdmi_cecinout
2'b10: edp_hotplug
2'b11: reserved

GPIO4_C7/HDMI_CECINOUT/EDP_HOTPLUG is the shared pin, which is
available in any nanopc-t4 as well in rk3399 datasheet, look like it's
an SoC pin that driver hotplug to eDP and ie same reason is pinmux in
rk3399.dtsi.

I event removed edp_hpd pinctrl from edp node in rk3399.dtsi, but
display not appear on the screen and observed edp bridge issue on
host.

[    1.052191] rockchip-drm display-subsystem: bound ff8f0000.vop (ops
vop_component_ops)
[    1.054460] rockchip-drm display-subsystem: bound ff900000.vop (ops
vop_component_ops)
[    1.055214] rockchip-dp ff970000.edp: no DP phy configured
[    1.056088] rockchip-drm display-subsystem: bound ff970000.edp (ops
rockchip_dp_component_ops)
[    1.056852] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[    1.057449] [drm] No driver support for vblank timestamp query.
[    1.174379] [drm:analogix_dp_bridge_enable] *ERROR* failed to get
hpd single ret = -110
[    1.174408] rockchip-dp ff970000.edp: failed to set bridge, retry: 0
[    1.285524] [drm:analogix_dp_bridge_enable] *ERROR* failed to get
hpd single ret = -110
[    1.285539] rockchip-dp ff970000.edp: failed to set bridge, retry: 1
[    1.355241] dwmmc_rockchip fe310000.dwmmc: Successfully tuned phase to 212
[    1.358757] mmc0: new ultra high speed SDR104 SDIO card at address 0001
[    1.397049] [drm:analogix_dp_bridge_enable] *ERROR* failed to get
hpd single ret = -110
[    1.397069] rockchip-dp ff970000.edp: failed to set bridge, retry: 2
[    1.485582] dwmmc_rockchip fe320000.dwmmc: Successfully tuned phase to 220
[    1.485590] mmc1: new ultra high speed SDR104 SDHC card at address 084e
[    1.486246] mmcblk1: mmc1:084e R04GS 3.71 GiB
[    1.488032]  mmcblk1: p1
[    1.509088] [drm:analogix_dp_bridge_enable] *ERROR* failed to get
hpd single ret = -110
[    1.509119] rockchip-dp ff970000.edp: failed to set bridge, retry: 3
[    1.620938] [drm:analogix_dp_bridge_enable] *ERROR* failed to get
hpd single ret = -110
[    1.620953] rockchip-dp ff970000.edp: failed to set bridge, retry: 4
[    1.620970] rockchip-dp ff970000.edp: too many times retry set
bridge, give it up
[    1.644026] Console: switching to colour frame buffer device 100x80


>
> >   .../boot/dts/rockchip/rk3399-nanopc-t4.dts    | 82 +++++++++++++++++++
> >   1 file changed, 82 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> > index 931c3dbf1b7d..b652d960946f 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> > @@ -46,6 +46,48 @@
> >               };
> >       };
> >
> > +     backlight: backlight {
> > +             compatible = "pwm-backlight";
> > +             brightness-levels = <
> > +                       0   1   2   3   4   5   6   7
> > +                       8   9  10  11  12  13  14  15
> > +                      16  17  18  19  20  21  22  23
> > +                      24  25  26  27  28  29  30  31
> > +                      32  33  34  35  36  37  38  39
> > +                      40  41  42  43  44  45  46  47
> > +                      48  49  50  51  52  53  54  55
> > +                      56  57  58  59  60  61  62  63
> > +                      64  65  66  67  68  69  70  71
> > +                      72  73  74  75  76  77  78  79
> > +                      80  81  82  83  84  85  86  87
> > +                      88  89  90  91  92  93  94  95
> > +                      96  97  98  99 100 101 102 103
> > +                     104 105 106 107 108 109 110 111
> > +                     112 113 114 115 116 117 118 119
> > +                     120 121 122 123 124 125 126 127
> > +                     128 129 130 131 132 133 134 135
> > +                     136 137 138 139 140 141 142 143
> > +                     144 145 146 147 148 149 150 151
> > +                     152 153 154 155 156 157 158 159
> > +                     160 161 162 163 164 165 166 167
> > +                     168 169 170 171 172 173 174 175
> > +                     176 177 178 179 180 181 182 183
> > +                     184 185 186 187 188 189 190 191
> > +                     192 193 194 195 196 197 198 199
> > +                     200 201 202 203 204 205 206 207
> > +                     208 209 210 211 212 213 214 215
> > +                     216 217 218 219 220 221 222 223
> > +                     224 225 226 227 228 229 230 231
> > +                     232 233 234 235 236 237 238 239
> > +                     240 241 242 243 244 245 246 247
> > +                     248 249 250 251 252 253 254 255>;
>
> This looks trivial enough that I wonder whether it might still work to
> just omit it? Not that I know anything about backlights, but I had the
> impression (from mailing list traffic, I guess) that the driver gained
> the ability to provide a reasonable default behaviour at some point.

Unaware about this, would you please pass the thread. on the
other-hand I can see sapphire-excavator still using the brightness
levels like this.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
