Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6BA8B6C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0s7nNZ+FzT2GzDiOUXG9nnbUs/GXWndYPJF1CXDwsM=; b=SSN+KCfcpQOvfY
	5efN282CFo4s71q2XewbfTur5EG43JGU0onRQk2IoesBPcA5OCZmA5HJNiTQPdHWC7ot/STRmfH68
	oLySaQNdJ72nv9Qm6cb/jVlsV4vKXzEQkf2Z2x+2ATLgEfjRBqjHW6zjFg2L7qBZNgVzbgGiDnvAP
	bFbonH6FDsLwAgwcvU/ADBGOmOcjXumcQjqRoxLWfb4FsMVy3U/ZJIa2NaV8PqkhYAHTMZ0OtnwBP
	n/TiwOVjzQlDvpDUWcLHxu/M2rmnZteZewYopXs3bylYzLcl7tSlpqx9LwgEwky5MEJaXhtA1NepB
	qjpDUAD2mVIrWpXxz3LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUyy-0001Ng-Ro; Tue, 13 Aug 2019 11:28:52 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUxl-0000Nf-KC; Tue, 13 Aug 2019 11:27:40 +0000
X-UUID: 2b8051ab3e56415189423b4cf624795c-20190813
X-UUID: 2b8051ab3e56415189423b4cf624795c-20190813
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1041102896; Tue, 13 Aug 2019 03:27:26 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 13 Aug 2019 04:27:26 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 13 Aug 2019 19:27:19 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 13 Aug 2019 19:27:22 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Biju Das <biju.das@bp.renesas.com>
Subject: [PATCH next v9 03/11] dt-bindings: usb: add binding for USB GPIO
 based connection detection driver
Date: Tue, 13 Aug 2019 19:27:06 +0800
Message-ID: <1565695634-9711-4-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1565695634-9711-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1565695634-9711-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: E03EBA038E1275BFC1EB911BB3F120C24BD75ADB3CE4BCA941B2E8BC00FAE8BF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_042737_786512_A7B87123 
X-CRM114-Status: GOOD (  12.87  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, linux-mediatek@lists.infradead.org,
 Min Guo <min.guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Nagarjuna Kristam <nkristam@nvidia.com>, Adam
 Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's used to support dual role switch via GPIO when use Type-B
receptacle, typically the USB ID pin is connected to an input
GPIO, and also used to enable/disable device when the USB Vbus
pin is connected to an input GPIO.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v9 no changes

v8 changes:
 1. rename the title
 2. change the compatible as "linux,usb-conn-gpio" instead of
    "linux,typeb-conn-gpio"

v7 changes:
 1. add description for device only mode

v6 changes:
 1. remove status and port nodes in example
 2. make vbus-supply as optional property

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
 .../devicetree/bindings/usb/usb-conn-gpio.txt | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/usb-conn-gpio.txt

diff --git a/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt b/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
new file mode 100644
index 000000000000..d4d107fedc22
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
@@ -0,0 +1,31 @@
+USB GPIO Based Connection Detection
+
+This is typically used to switch dual role mode from the USB ID pin connected
+to an input GPIO, and also used to enable/disable device mode from the USB
+Vbus pin connected to an input GPIO.
+
+Required properties:
+- compatible : should include "linux,usb-conn-gpio" and "usb-b-connector".
+- id-gpios, vbus-gpios : input gpios, either one of them must be present,
+	and both can be present as well.
+	see connector/usb-connector.txt
+
+Optional properties:
+- vbus-supply : can be present if needed when supports dual role mode.
+	see connector/usb-connector.txt
+
+- Sub-nodes:
+	- port : can be present.
+		see graph.txt
+
+Example:
+
+&mtu3 {
+	connector {
+		compatible = "linux,usb-conn-gpio", "usb-b-connector";
+		label = "micro-USB";
+		type = "micro";
+		id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
+		vbus-supply = <&usb_p0_vbus>;
+	};
+};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
