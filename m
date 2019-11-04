Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D8EEDD7C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 12:09:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtcTCcm8/+ppT+yl8DhOOxuFN9ZjE22kC+IaJFaVhSw=; b=P4HsYFngiuGpcz
	SOUDSeFt/PQVgIDXQiu7hAHhcOMHze/46r2LzMvmh53Vn4ebKc0iaM9DyOf6ODC+0VvDAi35Xddf/
	2dTHwUaEcTTMAfzFo/q70ue0tYuW1l6jW5ExoWb83vrIzn/3B08BfbJZMHWPVP+bOGwrH3hyWqEvA
	Ju6JqK5ZvmQIknwN92PAdvPWnXf/5q4muTF5IHHOjEqcHLJk/gez6//nVBChqc03Sa4Qxm7EZ5MmA
	Xl07avItM3KqYDWsQFK1frO9axClIOCLcPCZ5wXBTa6s04gVBZd5/lA6tgicH7kMfvu4EBaPdyy2D
	MoFHoIBGku++QqBt0SDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRaEH-0004HJ-4M; Mon, 04 Nov 2019 11:09:01 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRaCg-000369-Rr; Mon, 04 Nov 2019 11:07:24 +0000
X-UUID: e2b071e5405d473b89ee1c8030eb423d-20191104
X-UUID: e2b071e5405d473b89ee1c8030eb423d-20191104
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1228601311; Mon, 04 Nov 2019 03:07:24 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 02:57:15 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 18:57:15 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 4 Nov 2019 18:57:14 +0800
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <andriy.shevchenko@linux.intel.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <sakari.ailus@linux.intel.com>, 
 <drinkcat@chromium.org>, <tfiga@chromium.org>, <matthias.bgg@gmail.com>,
 <bingbu.cao@intel.com>
Subject: [V5, 1/2] media: dt-bindings: media: i2c: Document OV02A10 bindings
Date: Mon, 4 Nov 2019 18:57:12 +0800
Message-ID: <20191104105713.24311-2-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20191104105713.24311-1-dongchun.zhu@mediatek.com>
References: <20191104105713.24311-1-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_030722_985255_3A3045FD 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 shengnan.wang@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 louis.kuo@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device tree bindings documentation for Omnivision OV02A10 image sensor.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
---
 .../devicetree/bindings/media/i2c/ov02a10.txt      | 54 ++++++++++++++++++++++
 MAINTAINERS                                        |  7 +++
 2 files changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov02a10.txt

diff --git a/Documentation/devicetree/bindings/media/i2c/ov02a10.txt b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
new file mode 100644
index 0000000..38dd8db
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
@@ -0,0 +1,54 @@
+* Omnivision OV02A10 MIPI CSI-2 sensor
+
+Required Properties:
+- compatible: shall be "ovti,ov02a10"
+- clocks: reference to the eclk input clock
+- clock-names: shall be "eclk"
+- dovdd-supply: Digital I/O voltage supply, 1.8 volts
+- avdd-supply: Analog voltage supply, 2.8 volts
+- dvdd-supply: Digital core voltage supply, 1.8 volts
+- powerdown-gpios: reference to the GPIO connected to the powerdown pin,
+		   if any. This is an active low signal to the OV02A10.
+- reset-gpios: reference to the GPIO connected to the reset pin, if any.
+	       This is an active high signal to the OV02A10.
+
+Optional Properties:
+- rotation: as defined in
+	    Documentation/devicetree/bindings/media/video-interfaces.txt,
+	    valid values are 0 (sensor mounted upright; the default) and
+	    180 (sensor mounted upside down).
+
+The device node shall contain one 'port' child node with an
+'endpoint' subnode for its digital output video port,
+in accordance with the video interface bindings defined in
+Documentation/devicetree/bindings/media/video-interfaces.txt.
+
+Example:
+&i2c4 {
+	ov02a10: camera-sensor@3d {
+		compatible = "ovti,ov02a10";
+		reg = <0x3d>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&camera_pins_cam1_mclk_on>;
+
+		clocks = <&topckgen CLK_TOP_MUX_CAMTG2>,
+			<&topckgen CLK_TOP_UNIVP_192M_D8>;
+		clock-names = "eclk", "freq_mux";
+		clock-frequency = <24000000>;
+
+		dovdd-supply = <&mt6358_vcamio_reg>;
+		avdd-supply = <&mt6358_vcama1_reg>;
+		dvdd-supply = <&mt6358_vcn18_reg>;
+		powerdown-gpios = <&pio 107 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&pio 109 GPIO_ACTIVE_HIGH>;
+		rotation = <180>;
+
+		port {
+			/* MIPI CSI-2 bus endpoint */
+			ov02a10_core: endpoint {
+				remote-endpoint = <&ov02a10_0>;
+				link-frequencies = /bits/ 64 <390000000>;
+			};
+		};
+	};
+};
diff --git a/MAINTAINERS b/MAINTAINERS
index 296de2b..ca503fc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11949,6 +11949,13 @@ T:	git git://linuxtv.org/media_tree.git
 S:	Maintained
 F:	drivers/media/i2c/ov13858.c
 
+OMNIVISION OV02A10 SENSOR DRIVER
+M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
+L:	linux-media@vger.kernel.org
+T:	git git://linuxtv.org/media_tree.git
+S:	Maintained
+F:	Documentation/devicetree/bindings/media/i2c/ov02a10.txt
+
 OMNIVISION OV2680 SENSOR DRIVER
 M:	Rui Miguel Silva <rmfrfs@gmail.com>
 L:	linux-media@vger.kernel.org
-- 
2.9.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
