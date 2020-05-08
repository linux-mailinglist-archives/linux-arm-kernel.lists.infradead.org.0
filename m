Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BBB1CA7C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 12:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVEoskjctk/IDshZa1vpM4t2U44V3HNnjyMGf4qJwZ8=; b=k0zgYOzqIZSBd9
	Ygqy78gZdC0ouNyV1KCJtdWL/vPri7u8Nrecjs1PNXuA05xTq71r6jGtM36JkU3c1CFUE/hiCZgW5
	KnkwJqabKeAz5YvFZrL3UCvi/oJc8sonzXBp/P8kRYNkNOvmWeEWz3udX/veOSJbyDUWFBvQ9cfm4
	XTSYpbkOgYhAlW86i6TykVrPolDZDp4n5HXlxW6ij/PwbD27K6t68RhcGlorKFyC8ycC0qbb2CArd
	XcNSaOfo1aCO0iuut8kbzPiqzfVqfEsBFie2cvhk+6gGNQg4gC6R+UUF6Qj8zdslm17O8fe5aFSw6
	xyG8xPWC6/2OBh47Er1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWzp9-00026b-TL; Fri, 08 May 2020 10:01:43 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWzon-0001vd-6O
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 10:01:22 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 048A1HIP061942;
 Fri, 8 May 2020 05:01:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588932077;
 bh=RIUkpt4DL+5cJti/bMPN0PAJfAChu+0yumIxupm7myA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=rU+9HmOffAh16pvrL63+5NahROtsYrqWYN7ojCjMb3z1k5zrTuQpxQBkFXfOTz0C3
 LTsFqrkFFt9YxjSmj+WHCf42nJRzHfpM6tnVz8pBeF97vb5j8loAunl/KvZlv4m9IA
 gQH+yLE5WaRtHVArZOmzz2aUjBVIFXXlgIw+dPxs=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 048A1HQd071408;
 Fri, 8 May 2020 05:01:17 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 8 May
 2020 05:01:17 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 8 May 2020 05:01:17 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 048A1FhR055804;
 Fri, 8 May 2020 05:01:16 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Santosh Shilimkar <ssantosh@kernel.org>, Tero Kristo <t-kristo@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>,
 <devicetree@vger.kernel.org>
Subject: [PATCH v3 1/2] dt-bindings: soc: ti: add binding for k3 platforms
 chipid module
Date: Fri, 8 May 2020 13:00:59 +0300
Message-ID: <20200508100100.20740-2-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200508100100.20740-1-grygorii.strashko@ti.com>
References: <20200508100100.20740-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_030121_318650_02CDE7A9 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT binding for Texas Instruments K3 Multicore SoC platforms chipid
module which is represented by CTRLMMR_xxx_JTAGID register and contains
information about SoC id and revision.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
Reviewed-by: Tero Kristo <t-kristo@ti.com>
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
