Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE7E1C54E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 10:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9IxhD8L8PkHggI7UcfCXsu78pzTxVBaNAPke6mXRH4=; b=JbMeW7+zHNnI3u
	BHleOguUIZqo81H5KL0x7oHqetPaOcocHEVUCmZkqZQzaD3tBuZmIaXgiTzas9yyIgrz1xkQoAtYK
	3C/wPg380Y0OPEvctFURZB1nwS43xV1df6ucvgk79+3y5X4xbmE3Fv8EZRiIVn7SvyfmHN0YOuqsN
	yHhWKyMltRhIeu0IJYsrTbwl2xpsn1gZh8fsvlGZNx/pEmsPMZoGKD3eNKQnuYkwe3xHRZIlukXa5
	y/sghyX+YvXmkex/6Qewkjie3JWNlYPXz73Efi2MFJ+5i+rn+37RoAgwDINUWh0GpsM1xsbn0YMws
	ReTBUJRki8cFDdU9QDXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQT6k-0000Gf-JI; Tue, 14 May 2019 08:48:22 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQT60-0007w8-PX; Tue, 14 May 2019 08:47:39 +0000
X-UUID: 4b5a66960be349c084d6a9afba9c510a-20190514
X-UUID: 4b5a66960be349c084d6a9afba9c510a-20190514
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1269120207; Tue, 14 May 2019 00:47:36 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 01:47:35 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 16:47:30 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 May 2019 16:47:28 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>
Subject: [PATCH v5 2/6] dt-bindings: usb: add binding for Type-B GPIO
 connector driver
Date: Tue, 14 May 2019 16:47:19 +0800
Message-ID: <1557823643-8616-3-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_014737_013296_71739E82 
X-CRM114-Status: GOOD (  12.55  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Adam
 Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's used to support dual role switch via GPIO when use Type-B
receptacle, typically the USB ID pin is connected to an input
GPIO pin

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v5 changes:
 1. treat type-B connector as child device of USB controller's, but not
    as a separate virtual device, suggested by Rob
 2. put connector's port node under connector node, suggested by Rob

v4 no changes

v3 changes:
 1. treat type-B connector as a virtual device, but not child device of
    USB controller's

v2 changes:
  1. new patch to make binding clear suggested by Hans
---
 .../bindings/usb/typeb-conn-gpio.txt          | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt

diff --git a/Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt b/Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt
new file mode 100644
index 000000000000..20dd3499a348
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt
@@ -0,0 +1,42 @@
+USB Type-B GPIO Connector
+
+This is used to switch dual role mode from the USB ID pin connected to
+an input GPIO pin.
+
+Required properties:
+- compatible : should include "linux,typeb-conn-gpio" and "usb-b-connector".
+- id-gpios, vbus-gpios : either one of them must be present, and both
+	can be present as well.
+- vbus-supply : can be present if needed when supports dual role mode or
+	host mode.
+	see connector/usb-connector.txt
+
+Sub-nodes:
+- port : should be present.
+	see graph.txt
+
+Example:
+
+&mtu3 {
+	status = "okay";
+
+	connector {
+		compatible = "linux,typeb-conn-gpio", "usb-b-connector";
+		label = "micro-USB";
+		type = "micro";
+		id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
+		vbus-supply = <&usb_p0_vbus>;
+
+		port {
+			bconn_ep: endpoint@0 {
+				remote-endpoint = <&usb_role_sw>;
+			};
+		};
+	};
+
+	port {
+		usb_role_sw: endpoint@0 {
+			remote-endpoint = <&bconn_ep>;
+		};
+	};
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
