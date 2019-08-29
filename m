Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC7CA14CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 11:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mkvj98pb/4Wi5X85Epm0aUpk98v0avXFTz5TLGm6ft8=; b=ek6r/j6401oYfO
	DP9D4bTqYPW8VbqBD/Q2m6XuX5Vxglcsm21i2YPjoZFFaxH02wuC3wi38rZvvWGcZMramyQ1aT4LL
	F+ROKMzRLkXTpGTmPByuVMPyM95Wfft8fp2nKPUBuwSYLCMXKW13kMkwS8efElCL42hL9t6WI5hcD
	Iks+5qCksxp5KNbKVEk1B3NwILlHSYi92G4trezwlSNhs3lyW5GoLJT+tKwswdXa5UCp3WiN0e5bG
	/T1ksPOn7ha9JgLuFHignPIvIi+UOICCnJMJ60y+lBqXvsAa8RZvvPHfNz/IjvluHb+mPYh5wnP+K
	THIgtnHUaMFFxplNBULQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3GfL-0001UM-S3; Thu, 29 Aug 2019 09:24:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ge4-0000co-V4; Thu, 29 Aug 2019 09:23:11 +0000
X-UUID: b34ad91b1a2d40cc9a0e1e38fa37205d-20190829
X-UUID: b34ad91b1a2d40cc9a0e1e38fa37205d-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 706074893; Thu, 29 Aug 2019 01:23:13 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 02:23:11 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 17:23:09 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 17:23:08 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Biju Das <biju.das@bp.renesas.com>
Subject: [PATCH next v11 03/11] dt-bindings: usb: add binding for USB GPIO
 based connection detection driver
Date: Thu, 29 Aug 2019 17:22:30 +0800
Message-ID: <1567070558-29417-4-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1567070558-29417-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1567070558-29417-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: B59DAFD410BA8AF279F9E0A9B2672EA1E00E8BAC821020BD5225B94C965F85A12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_022308_998340_46CDC566 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
v11 changes:
 1. add Reviewed-by Linus
 2. change compatible as "gpio-usb-b-connector", and remove label
    in example suggested by Rob

v9~v10 no changes

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
 .../devicetree/bindings/usb/usb-conn-gpio.txt | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/usb-conn-gpio.txt

diff --git a/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt b/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
new file mode 100644
index 000000000000..3d05ae56cb0d
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
@@ -0,0 +1,30 @@
+USB GPIO Based Connection Detection
+
+This is typically used to switch dual role mode from the USB ID pin connected
+to an input GPIO, and also used to enable/disable device mode from the USB
+Vbus pin connected to an input GPIO.
+
+Required properties:
+- compatible : should include "gpio-usb-b-connector" and "usb-b-connector".
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
+		compatible = "gpio-usb-b-connector", "usb-b-connector";
+		type = "micro";
+		id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
+		vbus-supply = <&usb_p0_vbus>;
+	};
+};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
