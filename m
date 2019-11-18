Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E14C10082D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 16:25:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K15o3I1tuIw6iJDPJsbsxWpuZyeC1/DTPRMxUH2f2QU=; b=FLhMXR+gBSG7Gg
	8pIWYW7SbDYgkhW7xcjMZh8bXAn2cnbFEzD3je8aigSjGBvWcHydHAjgv4Y89h0yZlPcY/jSg9FFQ
	BjPocVCmpJgeOlC8XnSi8IeF1CUpH68gHsm8GWLw6ZjPnnybdItqoIgza4Dhxh+fDvnb3wdNZyapV
	nWOIg3/q73HFtZ8Eri588z17MnkTGJDE2rXlBS9XeingiRJh+kDhIWvHvelyh5mMJ3gKA3xkl2o9L
	RE7YPZ7FODnT/o0gt5IGqW7LfsnR3SysekStATbXpGOrY1IyZFH/sjiXMLtY3rUoUofdWw4430QN8
	u6vaxfYaMgdnAur1Vl8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWiu4-0006zh-MV; Mon, 18 Nov 2019 15:25:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWitr-0006xX-VM; Mon, 18 Nov 2019 15:25:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 9907428E105
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v3 4/4] dt-bindings: display: add IMX MIPI DSI host controller
 doc
Date: Mon, 18 Nov 2019 17:25:18 +0200
Message-Id: <20191118152518.3374263-5-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118152518.3374263-1-adrian.ratiu@collabora.com>
References: <20191118152518.3374263-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_072512_140526_B58F97C2 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Martyn Welch <martyn.welch@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-imx@nxp.com, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.com>
Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 .../bindings/display/imx/mipi-dsi.txt         | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/imx/mipi-dsi.txt

diff --git a/Documentation/devicetree/bindings/display/imx/mipi-dsi.txt b/Documentation/devicetree/bindings/display/imx/mipi-dsi.txt
new file mode 100644
index 000000000000..3f05c32ef963
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/mipi-dsi.txt
@@ -0,0 +1,56 @@
+Freescale i.MX6 DW MIPI DSI Host Controller
+===========================================
+
+The DSI host controller is a Synopsys DesignWare MIPI DSI v1.01 IP
+with a companion PHY IP.
+
+These DT bindings follow the Synopsys DW MIPI DSI bindings defined in
+Documentation/devicetree/bindings/display/bridge/dw_mipi_dsi.txt with
+the following device-specific properties.
+
+Required properties:
+
+- #address-cells: Should be <1>.
+- #size-cells: Should be <0>.
+- compatible: "fsl,imx6q-mipi-dsi", "snps,dw-mipi-dsi".
+- reg: See dw_mipi_dsi.txt.
+- interrupts: The controller's CPU interrupt.
+- clocks, clock-names: Phandles to the controller's pll reference
+  clock(ref) and APB clock(pclk), as described in [1].
+- ports: a port node with endpoint definitions as defined in [2].
+- gpr: Should be <&gpr>.
+       Phandle to the iomuxc-gpr region containing the multiplexer
+       control register.
+
+[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
+[2] Documentation/devicetree/bindings/media/video-interfaces.txt
+
+Example:
+
+	mipi_dsi: mipi@21e0000 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "fsl,imx6q-mipi-dsi", "snps,dw-mipi-dsi";
+		reg = <0x021e0000 0x4000>;
+		interrupts = <0 102 IRQ_TYPE_LEVEL_HIGH>;
+		gpr = <&gpr>;
+		clocks = <&clks IMX6QDL_CLK_MIPI_CORE_CFG>,
+			 <&clks IMX6QDL_CLK_MIPI_IPG>;
+		clock-names = "ref", "pclk";
+		status = "okay";
+
+		ports {
+			port@0 {
+				reg = <0>;
+				mipi_mux_0: endpoint {
+					remote-endpoint = <&ipu1_di0_mipi>;
+				};
+			};
+			port@1 {
+				reg = <1>;
+				mipi_mux_1: endpoint {
+					remote-endpoint = <&ipu1_di1_mipi>;
+				};
+			};
+		};
+        };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
