Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0644F5EC96
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 21:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kO5y08yR+WHxwxlP9AXMAuT4mDpf6a+WZ+3XAz+7xLo=; b=MPf8jI0etUFFj3
	N96CkLvZ+3WB2uCRaz2ANphbx4izUZtaNQa7p2y2pOTdow/dC6JItBWnliWvsfWV+unCaWpqEzfsn
	kNfG4G2VeNzuiAQlXUx4u64Vgd3SrHA/irNlnd/QmMxilJHmyP74n19FiyXJHWQsOYGXdq4AboTIk
	7I7INHYT/j0auKurt3padLsJ6xaPL8kYYJ65/XUb+zthH/IJj+ir/BKJ7PybAmeJNlHDxUImp5u5h
	2l1lZjIU5DjcXyKxOMs94JkJjTpzS9cgpnOwRG3tNovqCQcGxwkNuAa/kNRhml4/s2rfK99JLpvWH
	VYzFfI9/pU7ovwdGXGng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikhC-0006ED-Ki; Wed, 03 Jul 2019 19:13:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hikeM-00046D-6p; Wed, 03 Jul 2019 19:10:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id D4D5128ABC9
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v7 10/14] dt-bindings: Document the Rockchip ISP1 bindings
Date: Wed,  3 Jul 2019 16:09:06 -0300
Message-Id: <20190703190910.32633-11-helen.koike@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703190910.32633-1-helen.koike@collabora.com>
References: <20190703190910.32633-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_121038_707286_F719B406 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 eddie.cai.linux@gmail.com, kernel@collabora.com, heiko@sntech.de,
 Rob Herring <robh@kernel.org>, jacob2.chen@rock-chips.com,
 jeffy.chen@rock-chips.com, zyc@rock-chips.com, linux-kernel@vger.kernel.org,
 tfiga@chromium.org, Helen Koike <helen.koike@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 zhengsq@rock-chips.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jacob Chen <jacob2.chen@rock-chips.com>

Add DT bindings documentation for Rockchip ISP1

Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
Reviewed-by: Rob Herring <robh@kernel.org>
[update for upstream]
Signed-off-by: Helen Koike <helen.koike@collabora.com>

---

Changes in v7:
- update document with new design and tested example

 .../bindings/media/rockchip-isp1.txt          | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-isp1.txt

diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.txt b/Documentation/devicetree/bindings/media/rockchip-isp1.txt
new file mode 100644
index 000000000000..a97fef0f189f
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rockchip-isp1.txt
@@ -0,0 +1,71 @@
+Rockchip SoC Image Signal Processing unit v1
+----------------------------------------------
+
+Rockchip ISP1 is the Camera interface for the Rockchip series of SoCs
+which contains image processing, scaling, and compression funcitons.
+
+Required properties:
+- compatible: value should be one of the following
+	"rockchip,rk3288-cif-isp";
+	"rockchip,rk3399-cif-isp";
+- reg : offset and length of the register set for the device.
+- interrupts: should contain ISP interrupt.
+- clocks: phandle to the required clocks.
+- clock-names: required clock name.
+- iommus: required a iommu node.
+- phys: the phandle for the PHY port
+- phy-names: must contain "dphy"
+
+port node
+-------------------
+
+The device node should contain one 'ports' child node, with children 'port'
+with child 'endpoint'.
+nodes, according to the bindings defined in Documentation/devicetree/bindings/
+media/video-interfaces.txt.
+
+- endpoint(mipi):
+	- remote-endpoint: Connecting to Rockchip MIPI-DPHY,
+		which is defined in rockchip-mipi-dphy.txt.
+
+The port node must contain at least one endpoint, either parallel or mipi.
+It could have multiple endpoints, but please note the hardware don't support
+two sensors work at a time, they are supposed to work asynchronously.
+
+Device node example
+-------------------
+
+	isp0: isp0@ff910000 {
+		compatible = "rockchip,rk3399-cif-isp";
+		reg = <0x0 0xff910000 0x0 0x4000>;
+		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru SCLK_ISP0>,
+			 <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
+			 <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
+		clock-names = "clk_isp",
+			      "aclk_isp", "aclk_isp_wrap",
+			      "hclk_isp", "hclk_isp_wrap";
+		power-domains = <&power RK3399_PD_ISP0>;
+		iommus = <&isp0_mmu>;
+		phys = <&dphy>;
+		phy-names = "dphy";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				mipi_in_wcam: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&wcam_out>;
+					data-lanes = <1 2>;
+				};
+
+				mipi_in_ucam: endpoint@1 {
+					reg = <1>;
+					remote-endpoint = <&ucam_out>;
+					data-lanes = <1>;
+				};
+			};
+		};
+	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
