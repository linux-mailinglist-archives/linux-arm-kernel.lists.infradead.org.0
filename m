Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B83519BFA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lb1Y8ZbA/GzV6ZcvRDRMeXcpslneQ4ZvEstgH7WMRPE=; b=oOiSHsKyV0F8uM
	D3GF5PZoU7yaJIDnzKei72kC6bpd0mhun4snbdeBuR/P4SPmYikmK5VlW1zIEAK+67OAIzE2/aJAr
	49abdYh2BhZyL0Wev8cjScXLo+rgErPbjp5JUiogAZ7bH02C1rTFVz2bD7B27nIxI2+oHsTVZ+Cq6
	daDZxdQZqRTM37bmztDPe3Y45pifejPwLLQxR1n9c3sBK0Fe8hYSjZtvZT7lC8VxXXXjcp8r4BnnW
	FMSTj3+7zN96YchRzKN65HidnAkXsvJlt+D6cqpcCm2zczDHTnV82GgIcDa1+d+6FiSWknrIVXq1q
	4kQxF7PEgvoURti+wxmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP391-0004PX-6R; Fri, 10 May 2019 10:52:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP38s-0004P2-Q6; Fri, 10 May 2019 10:52:45 +0000
X-UUID: 30c735ff41764845b9d268fb03d62726-20190510
X-UUID: 30c735ff41764845b9d268fb03d62726-20190510
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1400839241; Fri, 10 May 2019 02:52:33 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 03:52:31 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 18:52:17 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 10 May 2019 18:52:17 +0800
Message-ID: <1557485537.29634.27.camel@mtksdccf07>
Subject: Re: [PATCH 1/8] arm64: dts: mt8183: add thermal zone node
From: Michael Kao <michael.kao@mediatek.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Date: Fri, 10 May 2019 18:52:17 +0800
In-Reply-To: <1557318215.29634.7.camel@mtksdccf07>
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-2-git-send-email-michael.kao@mediatek.com>
 <CAJMQK-isJf6f+OubbCdoXs8L2cup=rm3Z8Mr7Q26QshMP-0wxA@mail.gmail.com>
 <20190503164651.GB40515@google.com>
 <c6cf6170-331d-8ffc-d272-e5d8ee648eda@linaro.org>
 <1557318215.29634.7.camel@mtksdccf07>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: A4A157953A4D2C6FE6E207CD9DAB29D1F5B9618804D49103BC12AA9BB5CBB1172000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_035242_848378_494BC126 
X-CRM114-Status: GOOD (  30.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, jamesjj.liao@mediatek.com,
 devicetree@vger.kernel.org, louis.yu@mediatek.com, roger.lu@mediatek.com,
 linux-pm@vger.kernel.org, dawei.chien@mediatek.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, fan.chen@mediatek.com,
 Matthias Kaehlcke <mka@chromium.org>, linux-mediatek@lists.infradead.org,
 hsinyi@chromium.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-05-08 at 20:23 +0800, Michael Kao wrote:
> On Mon, 2019-05-06 at 12:43 +0200, Daniel Lezcano wrote:
> > On 03/05/2019 18:46, Matthias Kaehlcke wrote:
> > > Hi,
> > > 
> > > On Fri, May 03, 2019 at 04:03:58PM +0800, Hsin-Yi Wang wrote:
> > >> On Thu, May 2, 2019 at 10:43 AM michael.kao <michael.kao@mediatek.com> wrote:
> > >>>
> > >>> Add thermal zone node to Mediatek MT8183 dts file.
> > >>>
> > >>> Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> > >>> ---
> > >>>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 64 ++++++++++++++++++++++++++++++++
> > >>>  1 file changed, 64 insertions(+)
> > >>>
> > >>> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > >>> index 926df75..b92116f 100644
> > >>> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > >>> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > >>> @@ -334,6 +334,67 @@
> > >>>                         status = "disabled";
> > >>>                 };
> > >>>
> > >>> +               thermal: thermal@1100b000 {
> > >>> +                       #thermal-sensor-cells = <1>;
> > >>> +                       compatible = "mediatek,mt8183-thermal";
> > >>> +                       reg = <0 0x1100b000 0 0x1000>;
> > >>> +                       interrupts = <0 76 IRQ_TYPE_LEVEL_LOW>;
> > >>> +                       clocks = <&infracfg CLK_INFRA_THERM>,
> > >>> +                                <&infracfg CLK_INFRA_AUXADC>;
> > >>> +                       clock-names = "therm", "auxadc";
> > >>> +                       resets = <&infracfg  MT8183_INFRACFG_AO_THERM_SW_RST>;
> > >>> +                       mediatek,auxadc = <&auxadc>;
> > >>> +                       mediatek,apmixedsys = <&apmixedsys>;
> > >>> +                       mediatek,hw-reset-temp = <117000>;
> > >>> +                       nvmem-cells = <&thermal_calibration>;
> > >>> +                       nvmem-cell-names = "calibration-data";
> > >>> +               };
> > >>> +
> > >>> +               thermal-zones {
> > >>> +                       cpu_thermal: cpu_thermal {
> > >>> +                               polling-delay-passive = <1000>;
> > >>> +                               polling-delay = <1000>;
> > >>> +
> > >>> +                               thermal-sensors = <&thermal 0>;
> > >>> +                               sustainable-power = <1500>;
> > >>> +                       };
> > >>> +
> > >>> +                       tzts1: tzts1 {
> > >>> +                               polling-delay-passive = <1000>;
> > >>> +                               polling-delay = <1000>;
> > >>> +                               thermal-sensors = <&thermal 1>;
> > >> Is sustainable-power required for tzts? Though it's an optional
> > >> property, kernel would have warning:
> > >> [    0.631556] thermal thermal_zone1: power_allocator:
> > >> sustainable_power will be estimated
> > >> [    0.639586] thermal thermal_zone2: power_allocator:
> > >> sustainable_power will be estimated
> > >> [    0.647611] thermal thermal_zone3: power_allocator:
> > >> sustainable_power will be estimated
> > >> [    0.655635] thermal thermal_zone4: power_allocator:
> > >> sustainable_power will be estimated
> > >> [    0.663658] thermal thermal_zone5: power_allocator:
> > >> sustainable_power will be estimated
> > >> if no sustainable-power assigned.
> > > 
> > > The property is indeed optional, if it isn't specified IPA will use
> > > the sum of the minimum power of all 'power actors' of the zone as
> > > estimate (see estimate_sustainable_power()). This may lead to overly
> > > agressive throttling, since the nominal sustainable power will always
> > > be <= the requested power.
> > > 
> > > In my understanding the sustainable power may varies between devices,
> > > even for the same SoC. One could have all the hardware crammed into a
> > > tiny plastic enclosure (e.g. ASUS Chromebit), another might have a
> > > laptop form factor and a metal enclosure (e.g. ASUS C201). Both
> > > examples are based on an Rockchip rk3288, but they have completely
> > > different thermal behavior, and would likely have different values for
> > > 'sustainable-power'.
> > > 
> > > In this sense I tend to consider 'sustainable-power' more a device,
> > > than a SoC property. You could specify a 'reasonable' value as a
> > > starting point, but it will likely not be optimal for all or even most
> > > devices. The warning might even be useful for device makers by
> > > indicating them that there is room for tweaking.
> > 
> > 
> > The sustainable power is the power dissipated by the devices belonging
> > to the thermal zone at the given trip temperature.
> > 
> > With the power numbers and the cooling devices, the IPA will change the
> > states of the cooling devices to leverage the dissipated power to the
> > sustainable power.
> > 
> > The contribution is the cooling effect of the cooling device.
> > 
> > However, the IPA is limited to one thermal zone and the cooling device
> > is the cpu cooling device. There is the devfreq cooling device but as
> > the graphic driver is not upstream, it is found in the android tree only
> > for the moment.
> > 
> > As you mentioned the sustainable power can vary depending on the form
> > factor and the production process for the same SoC (they can go to
> > higher frequencies thus dissipate more power). That is the reason why we
> > split the DT per SoC and we override the values on a per SoC version basis.
> > 
> > You can have a look the rk3399.dtsi and their variant for experimental
> > board (*-rock960.dts) and the chromebook version (*-gru-kevin.dts).
> > 
> > Do you want a empiric procedure to find out the sustainable power ?
> > 
> > 
> > 
> OK, I will add the cooling map. But the tzts1 ~ tzts6 don't need to binding cooler.
> The "cpu_thermal" is max value of tzts1 ~tzts6. And cpu_thermal bind
> cooler with IPA. tzts1~6 don't need to add cooler. So, do I just add
> cooling map without any binding any cooling-cell?
> 
> I think thermal framework will add estimated sustainable power. Maybe I
> should add by myself. What's procedure do you recommend to find
> sustainable power?
> 
The tzts1~6 are just thermal sensor in the 8183 SoC,
The purpose of adding the six thermal is to support svs driver to read
thermal sensor in the SoC.
https://patchwork.kernel.org/patch/10923289/

The IPA cooling SoC will be applied by cpu_thermal which is the max
sensor value of tzts1~6.
In Document/devicetree/binding/thermal/thermal.txt, I find the statement
that the trip and cooling-map is required for thermal zone.
If we don't set trip and cooling map, it will set disable mode
"tz->mode = THERMAL_DEVICE_DISABLED"
in the drivers/thermal/of-thermal.c
But it still work to read the temperature of thermal zone.
And we don't need to let these thermal zone to bind cooler.
So, we use these way to provide temperature node for svs to read
temperature by thermal_zone_get_zone_by_name only.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
