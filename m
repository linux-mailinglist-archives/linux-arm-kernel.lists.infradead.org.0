Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5B31F37FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:25:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OiHEvKnOSi8XekNspccXlrPPtO4VBR+AxEhRMhUn9Ik=; b=kgxgKlvO1ZIrr7
	lJNSTVc/jkTFuxoN1Y2lMUtTUPIXJHvgUYUQZl3x6nWDqJnztRrAjkxYn6Dy8M87Xgz4xox6uBEXp
	MbacVxbHjHo4rc+l8l314KFyeLMFXvYCmBE/GSO/VYx7LEiCdg74vBYqkbL9f9vEaiIJ69AJC0hiF
	IJghUBH7JGI1b9EVWetJSMNCKIsMvnY87+D7a/QUb/6hQern2WBGlGDt3h9EV3HUiR3QKWmWb6BBR
	Eo44IfOTx1jVUWr1/rOzNr5JvM+Oz7ma7ngf69vTBLcGpH7qwFzxX/XAlmVbvmVai2H2FcXzGaRNT
	JzU6UlS0n6s+zNchq95A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibRC-0003Fk-Pf; Tue, 09 Jun 2020 10:24:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibQw-0003Ew-1y; Tue, 09 Jun 2020 10:24:43 +0000
X-UUID: aaadb62e973143588f8037b3a17e3bfa-20200609
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Pphig5E72pSzrTgo7laaj0FG7wdPeUVc8Qwu7DTlR6Y=; 
 b=g7kdY3Pz8YBtxq3Fk1Gly9EAJn6tm83QMF2FvZwRWykYxBcTr6HmXPOEC7DHBzOMen3aeICCoJDL1hoTyolp+IH8A00DRVNMDuJwbw3cEBGC/LTpuS4yvUH9SfWcS7s1mDXFlhU3wVzuJdbMUgbYmnZgDcPn/fOnHRyNF839ROc=;
X-UUID: aaadb62e973143588f8037b3a17e3bfa-20200609
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1330053644; Tue, 09 Jun 2020 02:24:39 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 03:24:32 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 18:24:30 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 9 Jun 2020 18:24:30 +0800
From: Neal Liu <neal.liu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 1/2] dt-bindings: devapc: add bindings for devapc-mt6873
Date: Tue, 9 Jun 2020 18:24:20 +0800
Message-ID: <1591698261-22639-2-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
References: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 90D7BBE212CB78B6A32409EBD84AF1D7145490B753E88B3BF2C71BDBC1052BBA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_032442_108490_EA9B5126 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 0000000..73a14b8d
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
+maintainer:
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
+additionalProperties: false
+
+examples:
+  - |
+    devapc: devapc@10207000 {
+            compatible = "mediatek,mt6873-devapc";
+            reg = <0 0x10207000 0 0x1000>,
+                  <0 0x10274000 0 0x1000>,
+                  <0 0x10275000 0 0x1000>,
+                  <0 0x11020000 0 0x1000>,
+                  <0 0x1020e000 0 0x1000>;
+            interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH 0>;
+            clocks = <&infracfg CLK_INFRA_DEVICE_APC>;
+            clock-names = "devapc-infra-clock";
+    };
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
