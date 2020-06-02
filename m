Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869DE1EB720
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltpEymmzd5p2x27PGFt8SCH/YNlnTz44yfPnRYBzGuM=; b=TrvHrnkHNAqMDN
	nUk/8KiRozE91YWMa+0lO89u6GiuUYofRr2oaj/Ch17FzSEu7I2htukMYOGz4hhY+m4Tk5XajY+VI
	z+vUSbgtju3EYlJtdlCjBgwHSoYQzECTscsygP65kHhYiQy6M0QiU3j5CDb8dmr9Utdo53RsT268x
	qIHXGY1lHZ9Ft7Sg+TeZ7KSQ5GGYR+vZdkIVx7itPTudE3XhzhPrY7YfUTygEduND0sq2o/sr0MkJ
	j/GFDIyHEJnrxQEVhHgStfkc0fwKY0fQU0q2VkUnjDGiZv26hy/auGugg1vCNBVtH4w9ylruHbG42
	CqI073eaJKhUn9K8hx4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg24t-0006SN-Mj; Tue, 02 Jun 2020 08:15:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg24i-0004z6-Oj; Tue, 02 Jun 2020 08:15:10 +0000
X-UUID: 1f61be47b7c84ee1a0bf9dc199cbe9a8-20200602
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=MbF+LRzExa+XY/pBtDs6ophTBP7J5P1UhRlTOBIVSUM=; 
 b=efQKRy60hw1KplC6/kQqXKjW66LqR+aLwMJt0z4mRRe2AMeRx3rmM+pK2/5CNRH9pMm1IgOKlaxbjLuHq/udbLfw5UJxWOX2EQH6ogPsECB31MnJ+uEF6KMQVAEUXRj2Bi6dBJ7cULhsSC1YQTk4zc5TOjGn8mVI+1q7SQyr78k=;
X-UUID: 1f61be47b7c84ee1a0bf9dc199cbe9a8-20200602
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 532629394; Tue, 02 Jun 2020 00:15:02 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 2 Jun 2020 01:15:00 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 2 Jun 2020 16:14:59 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 2 Jun 2020 16:14:58 +0800
From: Neal Liu <neal.liu@mediatek.com>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Wang <sean.wang@kernel.org>, Arnd Bergmann <arnd@arndb.de>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [PATCH v6 1/2] dt-bindings: rng: add bindings for sec-rng
Date: Tue, 2 Jun 2020 16:14:37 +0800
Message-ID: <1591085678-22764-2-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
References: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_011508_845320_5C93CD05 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 lkml <linux-kernel@vger.kernel.org>, Crystal Guo <Crystal.Guo@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 Neal Liu <neal.liu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bindings for ARM TrustZone based Security Random
Number Generator.

Signed-off-by: Neal Liu <neal.liu@mediatek.com>
---
 Documentation/devicetree/bindings/rng/sec-rng.yaml |   53 ++++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rng/sec-rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/sec-rng.yaml b/Documentation/devicetree/bindings/rng/sec-rng.yaml
new file mode 100644
index 0000000..7f4ae50
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/sec-rng.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# # Copyright 2020 MediaTek Inc.
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/rng/sec-rng.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Security Random Number Generator
+
+description: |
+  sec-rng is a security random number generator which provides a generic
+  interface to get hardware rnd from Secure state. The Secure state can be
+  Arm Trusted Firmware(ATF), Trusted Execution Environment(TEE), or even
+  EL2 hypervisor.
+
+maintainer:
+  - Neal Liu <neal.liu@mediatek.com>
+
+properties:
+  compatible:
+    enum:
+      - arm,sec-rng
+
+  method:
+    description: The method of calling to Secure state
+    enum:
+      - smc
+      - hvc
+
+  method-fid:
+    description: The function number within the SMC and HVC function identifier
+    maxItems: 1
+
+  quality:
+    description: Estimation of true entropy in RNG's bitstream per 1024 bits
+    maxItems: 1
+
+required:
+  - compatible
+  - methods
+  - method-fid
+  - quality
+
+additionalProperties: false
+
+examples:
+  - |
+    hwrng: hwrng {
+            compatible = "arm,sec-rng";
+            method = "smc";
+            method-fid = /bits/ 16 <0x26a>;
+            quality = /bits/ 16 <900>;
+    };
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
