Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E4291B90
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 05:44:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1gbz68/3PcSUEfzBDPXugIMsKB17FFgussS9b+THQc=; b=cFnLqzyfKQ3Sku
	n0kQ+F8fUooNl2b2VDZ9up36q9jCqiD5EkVtU5q/5bmbgzPfTxDfAzGpTuaOE0EHVwxPdIAf4maqr
	NbeNhRY6QK5teVSvwFkZk+33eDTbdONi11rFlzEGrUqgGrRyQaOEvERd2RQr8DrxvIaYBTE6p7mBe
	aahCl+Ej/DzwuLVD4OLLFLfpG0zwlV6mKxnPC1YPaOI08e4wM4NXLTtHMIfIuPs50Z6MkDnB3Z4x9
	DlGnc2Xps+2qwOYxwKOPTStmv9mzW/5FTCphDXFIMlDVtgekB8SrZqPgUWcwgJ889OBWIJsZ881KM
	xQO5RJ+RilM+UgXkXe1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzYag-0001Qb-KJ; Mon, 19 Aug 2019 03:44:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzYaT-0001PB-KW; Mon, 19 Aug 2019 03:44:07 +0000
X-UUID: 8f51676c6caa4ebd99761b87fc55b738-20190818
X-UUID: 8f51676c6caa4ebd99761b87fc55b738-20190818
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1408238162; Sun, 18 Aug 2019 19:43:58 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 18 Aug 2019 20:43:57 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 11:43:56 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 19 Aug 2019 11:43:54 +0800
From: <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <sakari.ailus@linux.intel.com>, <drinkcat@chromium.org>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <bingbu.cao@intel.com>
Subject: [V3, 1/2] media: dt-bindings: media: i2c: Add bindings for OV02A10
Date: Mon, 19 Aug 2019 11:43:30 +0800
Message-ID: <20190819034331.13098-2-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20190819034331.13098-1-dongchun.zhu@mediatek.com>
References: <20190819034331.13098-1-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_204405_680850_0C135696 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

From: Dongchun Zhu <dongchun.zhu@mediatek.com>

Add device tree binding documentation for the OV02A10 camera sensor.

Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
---
 .../devicetree/bindings/media/i2c/ov02a10.txt      | 54 ++++++++++++++++++++++
 MAINTAINERS                                        |  7 +++
 2 files changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov02a10.txt

diff --git a/Documentation/devicetree/bindings/media/i2c/ov02a10.txt b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
new file mode 100644
index 0000000..4a83a38
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
@@ -0,0 +1,54 @@
+* Omnivision OV02A10 MIPI CSI-2 sensor
+
+Required Properties:
+- compatible: shall be "ovti,ov02a10"
+- clocks: reference to the xvclk input clock
+- clock-names: shall be "xvclk"
+- avdd-supply: Analog voltage supply, 2.8 volts
+- dovdd-supply: Digital I/O voltage supply, 1.8 volts
+- dvdd-supply: Digital core voltage supply, 1.8 volts
+- reset-gpios: reference to the GPIO connected to the reset pin, if any.
+	       This is an active high signal to the OV02A10.
+- powerdown-gpios: reference to the GPIO connected to the powerdown pin,
+		   if any. This is an active low signal to the OV02A10.
+
+Optional Properties:
+- rotation: as defined in
+	    Documentation/devicetree/bindings/media/video-interfaces.txt,
+	    valid values are 0 (sensor mounted upright) and 180 (sensor
+	    mounted upside down).
+
+The device node shall contain one 'port' child node with an
+'endpoint' subnode for its digital output video port,
+in accordance with the video interface bindings defined in
+Documentation/devicetree/bindings/media/video-interfaces.txt.
+The endpoint optional property 'data-lanes' shall be "<1>".
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
+		clock-names = "xvclk", "freq_mux";
+
+		avdd-supply = <&mt6358_vcama1_reg>;
+		dvdd-supply = <&mt6358_vcn18_reg>;
+		dovdd-supply = <&mt6358_vcamio_reg>;
+		reset-gpios = <&pio 109 1>;
+		powerdown-gpios = <&pio 107 1>;
+		rotation = <180>;
+
+		port {
+			/* MIPI CSI-2 bus endpoint */
+			ov02a10_core: endpoint {
+				remote-endpoint = <&ov02a10_0>;
+				data-lanes = <1>;
+			};
+		};
+	};
+};
diff --git a/MAINTAINERS b/MAINTAINERS
index 783569e..41734fb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11816,6 +11816,13 @@ T:	git git://linuxtv.org/media_tree.git
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
