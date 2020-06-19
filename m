Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 720742005E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDNy4Wnx2hQRHcKzmqZBVLQkAnt9keKvx+QzC+Lr3+0=; b=mPtLm65L6XFTsO
	clPjNzzY9yQHKzBmhd3dVMfQlDg+dW8r/RxkPaPtYZFun466hUwscXbo0wfg7/43IdohDjAjxaaHX
	6vfapTsEs1hFAiybMP0nGVX8Y35MM5kzkaFT4Iu26tjfzHpO2LlzCzPVRzeZ3OQQR77/C7lTP6lct
	3p3gREdTDQcFYUWRPjmJ/lVBDmQAQSbOkcEYRnRYqGj71sM5qsUxZtKqMiu3BZ1PzUPKhcaW4sTlu
	o6becEYUZPHQcX6hO/HZrqlt+6aFrBlK+NbG7SWK1tNdEtcTo0/xy9lJJ1nLnb+/czBLEKq+uB6gL
	vD2BLWYQksQKjTMKS6mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDXX-0005NC-ED; Fri, 19 Jun 2020 09:42:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDXL-0005ME-3M; Fri, 19 Jun 2020 09:42:16 +0000
X-UUID: bae763d8d5284383a1462e4494f386ac-20200619
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=h/UQEjXf6uvMc+oxKD1tqte0usDqTFwha7l55rvLaKo=; 
 b=QswppJNE8Ds+KTlNb4GTUjbx8Mwd1ZIxbpmoFoyOHYUXyHOIIwYqL8ynRW3GxH8zBjnuM1YgwGjf2KhNut+MBfyImRbeDnJ+Nu4q3pXCydo/Qn8JShmRu1SXVeq8e7lY5vcKREp3tjDwhWm4UpXbkVuHh53LoF+F7EkzZwf1AmA=;
X-UUID: bae763d8d5284383a1462e4494f386ac-20200619
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 717118113; Fri, 19 Jun 2020 01:42:57 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 02:42:05 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 17:42:01 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 19 Jun 2020 17:42:01 +0800
From: Neal Liu <neal.liu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: devapc: add bindings for devapc-mt6873
Date: Fri, 19 Jun 2020 17:41:59 +0800
Message-ID: <1592559720-8482-2-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1592559720-8482-1-git-send-email-neal.liu@mediatek.com>
References: <1592559720-8482-1-git-send-email-neal.liu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_024215_150512_34716A72 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Neal Liu <neal.liu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bindings for MT6873 devapc.

Signed-off-by: Neal Liu <neal.liu@mediatek.com>
---
 .../soc/mediatek/devapc/devapc-mt6873.yaml         |   61 ++++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.yaml

diff --git a/Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.yaml b/Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.yaml
new file mode 100644
index 0000000..1deb7f6
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/mediatek/devapc/devapc-mt6873.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# # Copyright 2020 MediaTek Inc.
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/soc/mediatek/devapc/devapc-mt6873.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: MediaTek MT6873 Device Access Permission Control driver
+
+description: |
+  MediaTek MT6873 bus frabric provides TrustZone security support and data
+  protection to prevent slaves from being accessed by unexpected masters.
+  The security violations are logged and sent to the processor for further
+  analysis and countermeasures.
+
+maintainers:
+  - Neal Liu <neal.liu@mediatek.com>
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt6873-devapc
+
+  reg:
+    description: The base address of devapc register bank
+    maxItems: 5
+
+  interrupts:
+    description: A single interrupt specifier
+    maxItems: 1
+
+  clocks:
+    description: Contains module clock source and clock names
+    maxItems: 1
+
+  clock-names:
+    description: Names of the clocks list in clocks property
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/mt8183-clk.h>
+    devapc: devapc@10207000 {
+            compatible = "mediatek,mt6873-devapc";
+            reg = <0 0x10207000 0 0x1000>,
+                  <0 0x10274000 0 0x1000>,
+                  <0 0x10275000 0 0x1000>,
+                  <0 0x11020000 0 0x1000>,
+                  <0 0x1020e000 0 0x1000>;
+            interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&infracfg CLK_INFRA_DEVICE_APC>;
+            clock-names = "devapc-infra-clock";
+    };
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
