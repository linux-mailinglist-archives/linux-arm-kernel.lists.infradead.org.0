Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0959CDC118
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 11:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poShlSfKrrHYik66CWpqybpCbaI+XWcdSCPmpoHFE8I=; b=CfIhxrpfBpHU+m
	7CfCSOCofBsrO4g9tkuMOEFJRy/0BBMG62/bfJbeLvIhQu5iP//zo8sWPi4+8QV3AYfQk3lp1b6ku
	ZMJqW+h4Kf9/coKzEfuQv+Ggn+Hr6+bQjepjfXlqwq/C1JGZJkUC8pZKBf8sKKVRFpqSvvl0/08TN
	R/AXpjH/Oax70FqSM+2EXm04f3H3JS3nOn71cUAzgVnJKOdba6cshCa85JYVjQDmvQjKcaH7JcDlh
	RxfnJRxWGAxXPrVtWvvzuQHwCfQ7pJ6kxF1z02zcjIuLeygQKhm8wBeQInbeofS4z9Y4477gmFeAR
	PpkPyo82+8+UUnKas8tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOdk-0008LF-CI; Fri, 18 Oct 2019 09:33:44 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOdC-0007zG-IS; Fri, 18 Oct 2019 09:33:12 +0000
Received: from droid13.amlogic.com (116.236.93.172) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.1591.10; Fri, 18 Oct 2019
 17:33:00 +0800
From: Jianxin Pan <jianxin.pan@amlogic.com>
To: Kevin Hilman <khilman@baylibre.com>, <linux-amlogic@lists.infradead.org>
Subject: [PATCH v3 1/4] dt-bindings: power: add Amlogic secure power domains
 bindings
Date: Fri, 18 Oct 2019 17:32:44 +0800
Message-ID: <1571391167-79679-2-git-send-email-jianxin.pan@amlogic.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571391167-79679-1-git-send-email-jianxin.pan@amlogic.com>
References: <1571391167-79679-1-git-send-email-jianxin.pan@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [116.236.93.172]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_023310_611666_F8C7ECAE 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-pm@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the bindings for the Amlogic Secure power domains, controlling the
secure power domains.

The bindings targets the Amlogic A1 and C1 compatible SoCs, in which the
power domain registers are in secure world.

Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
---
 .../bindings/power/amlogic,meson-sec-pwrc.yaml     | 42 ++++++++++++++++++++++
 include/dt-bindings/power/meson-a1-power.h         | 32 +++++++++++++++++
 2 files changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
 create mode 100644 include/dt-bindings/power/meson-a1-power.h

diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
new file mode 100644
index 00000000..88d8261
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+# Copyright (c) 2019 Amlogic, Inc
+# Author: Jianxin Pan <jianxin.pan@amlogic.com>
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/power/amlogic,meson-sec-pwrc.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson Secure Power Domains
+
+maintainers:
+  - Jianxin Pan <jianxin.pan@amlogic.com>
+
+description: |+
+  Meson Secure Power Domains used in A1/C1 SoCs.
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-a1-pwrc
+
+  "#power-domain-cells":
+    const: 1
+
+  secure-monitor:
+    description: phandle to the secure-monitor node
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+required:
+  - compatible
+  - "#power-domain-cells"
+  - secure-monitor
+
+examples:
+  - |
+    pwrc: power-controller {
+          compatible = "amlogic,meson-a1-pwrc";
+          #power-domain-cells = <1>;
+          secure-monitor = <&sm>;
+    };
+
+
diff --git a/include/dt-bindings/power/meson-a1-power.h b/include/dt-bindings/power/meson-a1-power.h
new file mode 100644
index 00000000..6cf50bf
--- /dev/null
+++ b/include/dt-bindings/power/meson-a1-power.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: (GPL-2.0+ or MIT) */
+/*
+ * Copyright (c) 2019 Amlogic, Inc.
+ * Author: Jianxin Pan <jianxin.pan@amlogic.com>
+ */
+
+#ifndef _DT_BINDINGS_MESON_A1_POWER_H
+#define _DT_BINDINGS_MESON_A1_POWER_H
+
+#define PWRC_DSPA_ID	8
+#define PWRC_DSPB_ID	9
+#define PWRC_UART_ID	10
+#define PWRC_DMC_ID	11
+#define PWRC_I2C_ID	12
+#define PWRC_PSRAM_ID	13
+#define PWRC_ACODEC_ID	14
+#define PWRC_AUDIO_ID	15
+#define PWRC_OTP_ID	16
+#define PWRC_DMA_ID	17
+#define PWRC_SD_EMMC_ID	18
+#define PWRC_RAMA_ID	19
+#define PWRC_RAMB_ID	20
+#define PWRC_IR_ID	21
+#define PWRC_SPICC_ID	22
+#define PWRC_SPIFC_ID	23
+#define PWRC_USB_ID	24
+#define PWRC_NIC_ID	25
+#define PWRC_PDMIN_ID	26
+#define PWRC_RSA_ID	27
+#define PWRC_MAX_ID	28
+
+#endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
