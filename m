Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE5C44393
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DvpejaNT4eBhDns4FxJHLSG+zmWCjPWj3DUJGU1HA+0=; b=U5HR+BVOuAC/E8
	nFHo3NNnf/apQ+ctinRwRfb2KfTsAUb7ZUpIl54fuCw/9GaxhMVGPvViCELEYZSqU3In+Fo3+hP3s
	kMyQxkFXCOuAawwfHbC5O/B5rW4mu3/wtmY6WU8/7j0+z295Xf6bcbL61ViJl004E6RRiw+o3AvsX
	k5tb581Re61dLl+MWGJETzSUGZZl9OzPmwJiQ2MrQltCsHWXJM4Q+PjSa/figIf9yD8w3MUbDmtfX
	Cj28FmfT2DfWi2kNlitMG7EqEvpPnc51G2u3JVUOnj1/C2UkRjWqMkbyLlzDAnqntyXFKePRDd2Uq
	I2tA62mw1OY4IxFiP+Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSdY-00080h-Bn; Thu, 13 Jun 2019 16:31:40 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSZw-00036Y-Gr; Thu, 13 Jun 2019 16:27:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 2E34F27D7A1
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Update DWC3 modules on RK3399 SoCs
Date: Thu, 13 Jun 2019 18:27:45 +0200
Message-Id: <20190613162745.12195-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_092756_843034_D5C41B2D 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 linux-rockchip@lists.infradead.org, Tony Xie <tony.xie@rock-chips.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Randy Li <ayaka@soulik.info>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per binding documentation [1], the DWC3 core should have the "ref",
"bus_early" and "suspend" clocks. As explained in the binding, those
clocks are required for new platforms but not for existing platforms
before commit fe8abf332b8f ("usb: dwc3: support clocks and resets for
DWC3 core").

However, as those clocks are really treated as required, this ends with
having some annoying messages when the "rockchip,rk3399-dwc3" is used:

[    1.724107] dwc3 fe800000.dwc3: Failed to get clk 'ref': -2
[    1.731893] dwc3 fe900000.dwc3: Failed to get clk 'ref': -2
[    2.495937] dwc3 fe800000.dwc3: Failed to get clk 'ref': -2
[    2.647239] dwc3 fe900000.dwc3: Failed to get clk 'ref': -2

In order to remove those annoying messages, update the DWC3 hardware
module node and add all the required clocks. With this change, both, the
glue node and the DWC3 core node, have the clocks defined, but that's
not really a problem and there isn't a side effect on do this. So, we
can get rid of the annoying get clk error messages.

[1] Documentation/devicetree/bindings/usb/dwc3.txt

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 196ac9b78076..a15348d185ce 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -414,6 +414,9 @@
 			compatible = "snps,dwc3";
 			reg = <0x0 0xfe800000 0x0 0x100000>;
 			interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&cru SCLK_USB3OTG0_REF>, <&cru ACLK_USB3OTG0>,
+				 <&cru SCLK_USB3OTG0_SUSPEND>;
+			clock-names = "ref", "bus_early", "suspend";
 			dr_mode = "otg";
 			phys = <&u2phy0_otg>, <&tcphy0_usb3>;
 			phy-names = "usb2-phy", "usb3-phy";
@@ -447,6 +450,9 @@
 			compatible = "snps,dwc3";
 			reg = <0x0 0xfe900000 0x0 0x100000>;
 			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&cru SCLK_USB3OTG1_REF>, <&cru ACLK_USB3OTG1>,
+				 <&cru SCLK_USB3OTG1_SUSPEND>;
+			clock-names = "ref", "bus_early", "suspend";
 			dr_mode = "otg";
 			phys = <&u2phy1_otg>, <&tcphy1_usb3>;
 			phy-names = "usb2-phy", "usb3-phy";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
