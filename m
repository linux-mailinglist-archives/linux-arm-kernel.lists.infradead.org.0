Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1CB12B1DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 07:37:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsJirPsHO08jfX7Uz2jEdlRwEuH/Wx3MDIB1bWd4OpY=; b=JY2sMsqu6tg3Ko
	z2E80FRpVh2c0dC6NHbJc0AAOGm2dJ27yfsYw7CjcCSDZPsBseS0wgAzFQMsskiXSlK/MWg/8o5w6
	JmBikXy4EOUAk1zn1Cq6XRW+SOS+EUMmmKOHlYqdLkutIqQyaR8brZ/NiCwsMIhXOKOX3NNhS3aq2
	fvCkjydaJXm0rNXaIDTEuZbNkMpRYqyxngD5PAzrBsJdaoWvRxd7yaPrntA4/xJvAKMdZVCMmWmV3
	FkqTnZE/MLKP3YmZ/R+cQ4Ca6mBlYRqlkxeWF+jLr2DQx3yyKHUIXTAWsRfNe9HyFvLXhh3+96aT0
	/GgJ3unCjZ1dMyBrwYFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikjFk-0007tE-MU; Fri, 27 Dec 2019 06:37:40 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikjF8-0007c3-Jq; Fri, 27 Dec 2019 06:37:04 +0000
Received: from droid10.amlogic.com (10.18.11.213) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.1591.10; Fri, 27 Dec 2019
 14:37:17 +0800
From: Hanjie Lin <hanjie.lin@amlogic.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Rob Herring <robh@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH v3 1/6] dt-bindings: phy: Add Amlogic A1 USB2 PHY Bindings
Date: Fri, 27 Dec 2019 14:36:41 +0800
Message-ID: <1577428606-69855-2-git-send-email-hanjie.lin@amlogic.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1577428606-69855-1-git-send-email-hanjie.lin@amlogic.com>
References: <1577428606-69855-1-git-send-email-hanjie.lin@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.18.11.213]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_223702_646736_FFB89A5E 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-usb@vger.kernel.org, Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the Amlogic A1 Family USB2 PHY Bindings

It supports Host mode only.

Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
Signed-off-by: Yue Wang <yue.wang@amlogic.com>
---
 .../bindings/phy/amlogic,meson-a1-usb2-phy.yaml    | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson-a1-usb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-a1-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson-a1-usb2-phy.yaml
new file mode 100644
index 00000000..2b2c526
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson-a1-usb2-phy.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 Amlogic, Inc
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/amlogic,meson-a1-usb2-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic A1 USB2 PHY
+
+maintainers:
+  - Yue Wang <yue.wang@amlogic.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-a1-usb2-phy
+
+  reg:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: phy
+
+  "#phy-cells":
+    const: 0
+
+  power-domains:
+     maxItems: 1
+     description:
+       a phandle to respective power domain node as described by generic
+       PM domain bindings (see power/power_domain.txt for more information).
+
+required:
+  - compatible
+  - reg
+  - resets
+  - reset-names
+  - "#phy-cells"
+  - power-domains
+
+examples:
+  - |
+    usb2_phy1: phy@40000 {
+      status = "okay";
+      compatible = "amlogic,a1-usb2-phy";
+      reg = <0x0 0x40000 0x0 0x2000>;
+      resets = <&reset RESET_USBPHY>;
+      reset-names = "phy";
+      #phy-cells = <0>;
+      power-domains = <&pwrc PWRC_USB_ID>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
