Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA33411AA08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 12:39:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5heI+2BUjOvToYtjgppvO6RGuc2StUyDcA8P4E9Q2s4=; b=TbRzN5YimRXCkf
	defmDYdtgSuHEjzmn5E9201u4n3Y6inAfRqQi5VX/sbCKf/h3+qKa496LDSb7x2qCIScVVOtojQdW
	xvQf+bK8JC+6yob0sx/SnQ9fGiuOXFhf4RubI3cZeSPyQz45O6+dJyQsZG2qIjfbPjxNIKQBVI4es
	8Y2nuHs/LNMTs2YVVrNOPTph5tAGJaWFgtnVi3i27fOZ2hB2N+08so+vbus2KH1ZTuXOCr1k1dzmA
	5yqEYC4lB4ogTpNiRZ5rL6Iu3PFUVJoiSSEbm2gGaw4U7USznwClwmVSixAI4U51JtUVi02SEe2dL
	0KqEQVv4cXwoD5yOxuwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if0Kp-0004Ic-5A; Wed, 11 Dec 2019 11:39:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if0Ka-0004GD-9q; Wed, 11 Dec 2019 11:39:01 +0000
X-UUID: 2cf6d0c43332482db5b5d7eb830c44c8-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=uwJzHvE/Vu9p5LA/lBxfWhqMVTs13dhoL20ywQwBvn0=; 
 b=Nb8lCOySEoCniNbriVcycv3GoZjVGHWYuOQrY69rAYbvjpJ3l4Wi27G3umr6RL1jnIAogFoK0/ql3wWZk+zyqAAR0MvwQkY7eF1b+3FMoJssZniCn3v/Z/wuC26VxpNhmL7Q9RIShQhV6/FwUiPoiOVHoytRcbATMlQlGjtFpx4=;
X-UUID: 2cf6d0c43332482db5b5d7eb830c44c8-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1907273434; Wed, 11 Dec 2019 03:38:55 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 03:30:00 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 19:28:30 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 11 Dec 2019 19:28:27 +0800
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <andriy.shevchenko@linux.intel.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <sakari.ailus@linux.intel.com>, 
 <drinkcat@chromium.org>, <tfiga@chromium.org>, <matthias.bgg@gmail.com>,
 <bingbu.cao@intel.com>
Subject: [V6, 1/2] media: dt-bindings: media: i2c: Document OV02A10 bindings
Date: Wed, 11 Dec 2019 19:28:48 +0800
Message-ID: <20191211112849.16705-2-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20191211112849.16705-1-dongchun.zhu@mediatek.com>
References: <20191211112849.16705-1-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_033900_346899_6F6D2147 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Add DT bindings documentation for Omnivision OV02A10 image sensor.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
---
 .../devicetree/bindings/media/i2c/ov02a10.txt      | 54 ++++++++++++++++++++++
 MAINTAINERS                                        |  7 +++
 2 files changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov02a10.txt

diff --git a/Documentation/devicetree/bindings/media/i2c/ov02a10.txt b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
new file mode 100644
index 0000000..18acc4f
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
+	    valid values are 0 (sensor mounted upright) and 180 (sensor
+	    mounted upside down).
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
index bd5847e..92a868c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12130,6 +12130,13 @@ T:	git git://linuxtv.org/media_tree.git
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
