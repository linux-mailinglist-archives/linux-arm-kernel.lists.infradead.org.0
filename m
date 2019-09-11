Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D231FAFD70
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 15:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7TZqzURiLYayqv5mrLSn/+2vSGVikqJTsZYtzCEx1o=; b=WzRrDA3vnNxE9G
	kMUEBg1mYh9EnJbChmCoRPAAhesqwGrPtS4jY3Gcw85TpN6cQ3VaxRbivypwt4KIDremahmI9nTFS
	pKKR2NaSO/ChHmjNoV0U6zHIH7vct+HkheS39VaxOqerqpiCtGaBW7zWl+H/4k62FF7xYlsiybaRh
	q5EwGIBQy8OUcz3km/rCo0c71adqhQ6UTY1lRti7/GVBwdFgM73Lbl/kzCkzcjwPBpGGBx1sEuSxD
	4HmSURaj5xqEidDDjXSHIlHvSVU+VXU6ijWxff1O+vw+/JOrqItHnXqam8ts/LRDD0QW7iDQKDWvW
	EkdYVnXJQ9Z5r4ULGn8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i82PP-0002Mn-UO; Wed, 11 Sep 2019 13:11:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i82Ow-0002LP-PT; Wed, 11 Sep 2019 13:11:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0C341000;
 Wed, 11 Sep 2019 06:11:13 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 568163F67D;
 Wed, 11 Sep 2019 06:11:13 -0700 (PDT)
Date: Wed, 11 Sep 2019 14:11:11 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 6/6] arm64: dts: khadas-vim3: add commented support for
 PCIe
Message-ID: <20190911131111.GX9720@e119886-lin.cambridge.arm.com>
References: <1567950178-4466-1-git-send-email-narmstrong@baylibre.com>
 <1567950178-4466-7-git-send-email-narmstrong@baylibre.com>
 <20190911125035.GU9720@e119886-lin.cambridge.arm.com>
 <bf7b735d-e682-52db-ea8c-4ccd786f0ed9@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf7b735d-e682-52db-ea8c-4ccd786f0ed9@baylibre.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_061114_913628_5C42713D 
X-CRM114-Status: GOOD (  24.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: lorenzo.pieralisi@arm.com, khilman@baylibre.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, repk@triplefau.lt, maz@kernel.org,
 bhelgaas@google.com, linux-amlogic@lists.infradead.org, yue.wang@Amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 02:58:18PM +0200, Neil Armstrong wrote:
> On 11/09/2019 14:50, Andrew Murray wrote:
> > On Sun, Sep 08, 2019 at 01:42:58PM +0000, Neil Armstrong wrote:
> >> The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
> >> lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
> >> an USB3.0 Type A connector and a M.2 Key M slot.
> >> The PHY driving these differential lines is shared between
> >> the USB3.0 controller and the PCIe Controller, thus only
> >> a single controller can use it.
> >>
> >> The needed DT configuration when the MCU is configured to mux
> >> the PCIe/USB3.0 differential lines to the M.2 Key M slot is
> >> added commented and may uncommented to disable USB3.0 from the
> > 
> > *and may be*
> > 
> >> USB Complex and enable the PCIe controller.
> >>
> >> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> >> ---
> >>  .../amlogic/meson-g12b-a311d-khadas-vim3.dts  | 22 +++++++++++++++++++
> >>  .../amlogic/meson-g12b-s922x-khadas-vim3.dts  | 22 +++++++++++++++++++
> >>  .../boot/dts/amlogic/meson-khadas-vim3.dtsi   |  4 ++++
> >>  .../dts/amlogic/meson-sm1-khadas-vim3l.dts    | 22 +++++++++++++++++++
> >>  4 files changed, 70 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
> >> index 3a6a1e0c1e32..0577b1435cbb 100644
> >> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
> >> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
> >> @@ -14,3 +14,25 @@
> >>  / {
> >>  	compatible = "khadas,vim3", "amlogic,a311d", "amlogic,g12b";
> >>  };
> >> +
> >> +/*
> >> + * The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
> >> + * lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
> >> + * an USB3.0 Type A connector and a M.2 Key M slot.
> >> + * The PHY driving these differential lines is shared between
> >> + * the USB3.0 controller and the PCIe Controller, thus only
> >> + * a single controller can use it.
> >> + * If the MCU is configured to mux the PCIe/USB3.0 differential lines
> >> + * to the M.2 Key M slot, uncomment the following block to disable
> >> + * USB3.0 from the USB Complex and enable the PCIe controller.
> >> + */
> >> +/*
> >> +&pcie {
> >> +	status = "okay";
> >> +};
> >> +
> >> +&usb {
> >> +	phys = <&usb2_phy0>, <&usb2_phy1>;
> >> +	phy-names = "usb2-phy0", "usb2-phy1";
> >> +};
> > 
> > I assume there is no way other way to determine from the hardware which way
> > the mux is set?
> 
> No, it would be simpler :-/ The MUX is on-board and the MCU drives the MUX selection.
> 
> You can look at the https://dl.khadas.com/Hardware/VIM3/Schematic/VIM3_V11_Sch.pdf
> The PCIE_EN signal is driven by the STM8S MCU.

Ah I see.

> 
> > 
> > Otherwise phy_g12a_usb3_pcie_xlate could determine the hardware mode, and
> > reject the phy instance with the wrong mode. Thus resulting in either the
> > PCI or USB to fail their probe. And avoiding the need to modify the DT on
> > boot.
> 
> Yep, it would have been simpler this way. Maybe a board vendor will set a gpio ?
> who knows, but for actual boards it's static or with 0ohm resistors, and for the
> VIM3 we only know by asking the MCU.
> 
> Maybe we could add a fake PHY as a MCU MFD subdevice, wrapping calls to the
> right PHY. But for now the MCU has no upstream driver anyway.

OK

Thanks,

Andrew Murray

> 
> Neil
> 
> > 
> > Thanks,
> > 
> > Andrew Murray
> > 
> >> + */
> >> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts
> >> index b73deb282120..1ef5c2f04f67 100644
> >> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts
> >> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts
> >> @@ -14,3 +14,25 @@
> >>  / {
> >>  	compatible = "khadas,vim3", "amlogic,s922x", "amlogic,g12b";
> >>  };
> >> +
> >> +/*
> >> + * The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
> >> + * lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
> >> + * an USB3.0 Type A connector and a M.2 Key M slot.
> >> + * The PHY driving these differential lines is shared between
> >> + * the USB3.0 controller and the PCIe Controller, thus only
> >> + * a single controller can use it.
> >> + * If the MCU is configured to mux the PCIe/USB3.0 differential lines
> >> + * to the M.2 Key M slot, uncomment the following block to disable
> >> + * USB3.0 from the USB Complex and enable the PCIe controller.
> >> + */
> >> +/*
> >> +&pcie {
> >> +	status = "okay";
> >> +};
> >> +
> >> +&usb {
> >> +	phys = <&usb2_phy0>, <&usb2_phy1>;
> >> +	phy-names = "usb2-phy0", "usb2-phy1";
> >> +};
> >> + */
> >> diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> >> index 8647da7d6609..eac5720dc15f 100644
> >> --- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> >> +++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> >> @@ -246,6 +246,10 @@
> >>  	linux,rc-map-name = "rc-khadas";
> >>  };
> >>  
> >> +&pcie {
> >> +	reset-gpios = <&gpio GPIOA_8 GPIO_ACTIVE_LOW>;
> >> +};
> >> +
> >>  &pwm_ef {
> >>          status = "okay";
> >>          pinctrl-0 = <&pwm_e_pins>;
> >> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
> >> index 5233bd7cacfb..d9c7cbedce53 100644
> >> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
> >> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
> >> @@ -68,3 +68,25 @@
> >>  	clock-names = "clkin1";
> >>  	status = "okay";
> >>  };
> >> +
> >> +/*
> >> + * The VIM3 on-board  MCU can mux the PCIe/USB3.0 shared differential
> >> + * lines using a FUSB340TMX USB 3.1 SuperSpeed Data Switch between
> >> + * an USB3.0 Type A connector and a M.2 Key M slot.
> >> + * The PHY driving these differential lines is shared between
> >> + * the USB3.0 controller and the PCIe Controller, thus only
> >> + * a single controller can use it.
> >> + * If the MCU is configured to mux the PCIe/USB3.0 differential lines
> >> + * to the M.2 Key M slot, uncomment the following block to disable
> >> + * USB3.0 from the USB Complex and enable the PCIe controller.
> >> + */
> >> +/*
> >> +&pcie {
> >> +	status = "okay";
> >> +};
> >> +
> >> +&usb {
> >> +	phys = <&usb2_phy0>, <&usb2_phy1>;
> >> +	phy-names = "usb2-phy0", "usb2-phy1";
> >> +};
> >> + */
> >> -- 
> >> 2.17.1
> >>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
