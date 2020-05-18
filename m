Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C32151D7C0D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 16:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rdMHkjmwk9IqaPzeRvIATrSRi9ONYOXlFkOQ2aWmQlg=; b=OsrfkvA9/zheHHtmwua925Diw/
	xpmTnRzsATpnOQHh16EUpOGuOpGy3n3g8uhi3JV/f1dL+VcjePppFJyKOnRmEZLjhxTO3oar2yME2
	j8gA8rUF9grufq29x/9sjuj7IC+tK41VKB5XL3heZ2+qSXH+uvaildJh1l2cKBxC40gSGHZHgTVap
	UMfIdNHVDwpsd2eyGt4U5GLBoKhkYq8jsUgm/Ltwt+r2/w++Xja4f3xMZ6w9xCurB6JxQb5O68af1
	L+msN1eQmNqPh4BCPYBA1hvVt4WLa0TJ/b7j4AHXHCeEA89xGKtJg1ZUxfphLEuE1oAoEOeihT3/s
	3qMpeu5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahDr-00007C-4b; Mon, 18 May 2020 14:58:31 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahCs-0007sY-3n
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 14:57:33 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DF4281A0B13;
 Mon, 18 May 2020 16:57:28 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6D0791A097E;
 Mon, 18 May 2020 16:57:23 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 138D6402B3;
 Mon, 18 May 2020 22:57:17 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, ping.bai@nxp.com, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] dt-bindings: timer: Convert i.MX SYSCTR to json-schema
Date: Mon, 18 May 2020 22:47:40 +0800
Message-Id: <1589813260-20036-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589813260-20036-1-git-send-email-Anson.Huang@nxp.com>
References: <1589813260-20036-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_075730_440659_E4A23E7A 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the i.MX SYSCTR binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/timer/nxp,sysctr-timer.txt | 25 ----------
 .../bindings/timer/nxp,sysctr-timer.yaml           | 54 ++++++++++++++++++++++
 2 files changed, 54 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
 create mode 100644 Documentation/devicetree/bindings/timer/nxp,sysctr-timer.yaml

diff --git a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
deleted file mode 100644
index d576599..0000000
--- a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-NXP System Counter Module(sys_ctr)
-
-The system counter(sys_ctr) is a programmable system counter which provides
-a shared time base to Cortex A15, A7, A53, A73, etc. it is intended for use in
-applications where the counter is always powered and support multiple,
-unrelated clocks. The compare frame inside can be used for timer purpose.
-
-Required properties:
-
-- compatible :      should be "nxp,sysctr-timer"
-- reg :             Specifies the base physical address and size of the comapre
-                    frame and the counter control, read & compare.
-- interrupts :      should be the first compare frames' interrupt
-- clocks : 	    Specifies the counter clock.
-- clock-names: 	    Specifies the clock's name of this module
-
-Example:
-
-	system_counter: timer@306a0000 {
-		compatible = "nxp,sysctr-timer";
-		reg = <0x306a0000 0x20000>;/* system-counter-rd & compare */
-		clocks = <&clk_8m>;
-		clock-names = "per";
-		interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
-	};
diff --git a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.yaml b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.yaml
new file mode 100644
index 0000000..830211c
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/nxp,sysctr-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP System Counter Module(sys_ctr)
+
+maintainers:
+  - Bai Ping <ping.bai@nxp.com>
+
+description: |
+  The system counter(sys_ctr) is a programmable system counter
+  which provides a shared time base to Cortex A15, A7, A53, A73,
+  etc. it is intended for use in applications where the counter
+  is always powered and support multiple, unrelated clocks. The
+  compare frame inside can be used for timer purpose.
+
+properties:
+  compatible:
+    const: nxp,sysctr-timer
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: per
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    timer@306a0000 {
+        compatible = "nxp,sysctr-timer";
+        reg = <0x306a0000 0x20000>;
+        clocks = <&clk_8m>;
+        clock-names = "per";
+        interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+     };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
