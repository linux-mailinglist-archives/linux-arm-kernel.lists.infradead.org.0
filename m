Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44D21C611B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 21:34:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfcxAuMtFW1FdXWFQY7qA8m6XLP4pnO+jXB3OzUgkQE=; b=quZhW3RC1tUYCi
	BShstOKgSnFanonjg0I/po89frbtnD3Xb8Iln0DFS7bfmFdq8YrAXgCv+pptHykTxGCioymazq2Ct
	t2c9w86c3UW32ax2yG6VyAxsbMlg9OXQiJ8SJ6tZ4iJjFfBUsd7qj1kap7MA4+ZBndRXwSD5bVTSn
	HzlD9CltdIR2zwsAAw7DHLQ51rwPdLQlcfaOUQrKSJRgt2JaLkiDpvmGNSJ/T3fOWCFSrwG/1XInJ
	j4H5f24iinGksSZ73M3TUrHuG+6eFFjTEBuqL7iB8HWU2S8KD0+qUdkjDM08MOcdk4ixMJJnh8iiO
	1amLhzdbP+5R/dNVlxww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW3L5-0005gp-9C; Tue, 05 May 2020 19:34:47 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW3Kl-0005aJ-OT
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 19:34:29 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 045JYQRu030585;
 Tue, 5 May 2020 14:34:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588707266;
 bh=Vh2zPhW1Qrp8akdwIMS1wgw3zeKMLQGJLfuKxWRmKm4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=hU2B0HWg3j+X8+mmNNzuYqS2yc/xhgrM18VKtwiXtbJCb7gUk3tutSU+bLjO6Yt4a
 mjTSlDB8BzRgg7u5/hDDl6xmSxufaafrkIgHhkEqydPaYRxsrkpzQqT3myj0MLrNNo
 V57NpYMOmvgSrifvy+j+dFrMnR0C7hgSyth6h/nM=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 045JYQaE067174
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 5 May 2020 14:34:26 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 May
 2020 14:34:26 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 May 2020 14:34:25 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 045JYP7C010464;
 Tue, 5 May 2020 14:34:25 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: soc: ti: add binding for k3 platforms
 chipid module
Date: Tue, 5 May 2020 22:34:16 +0300
Message-ID: <20200505193417.2112-2-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505193417.2112-1-grygorii.strashko@ti.com>
References: <20200505193417.2112-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_123427_895723_DC8F1DE6 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT binding for Texas Instruments K3 Multicore SoC platforms chipid
module which is represented by CTRLMMR_xxx_JTAGID register and contains
information about SoC id and revision.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 .../bindings/soc/ti/k3-socinfo.yaml           | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml

diff --git a/Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml b/Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
new file mode 100644
index 000000000000..a1a8423b2e2e
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/ti/k3-socinfo.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments K3 Multicore SoC platforms chipid module
+
+maintainers:
+  - Tero Kristo <t-kristo@ti.com>
+  - Nishanth Menon <nm@ti.com>
+
+description: |
+  Texas Instruments (ARM64) K3 Multicore SoC platforms chipid module is
+  represented by CTRLMMR_xxx_JTAGID register which contains information about
+  SoC id and revision.
+
+properties:
+  $nodename:
+    pattern: "^chipid@[0-9a-f]+$"
+
+  compatible:
+    items:
+      - const: ti,am654-chipid
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    chipid@43000014 {
+        compatible = "ti,am654-chipid";
+        reg = <0x43000014 0x4>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
