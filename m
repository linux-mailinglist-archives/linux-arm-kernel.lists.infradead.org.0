Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC9015A856
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 12:54:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rfmX7m4zfKhWzzoH8ccdN1EMrkK2spPStWDY3k7c25M=; b=deG2B6kNFAHeN0NJctSlJi8/ml
	7CTQm2RLkJmJt09kpWW3wn8i0Uq99kRFHpWZ0idbkHR2LldFXJnEHYEYplSIAWqSEa7I0Yd8XdAC5
	+qdHcDXJ8MR5qzhuwevVwQXZzbTlR6zSFmz/B2vECXQbqky2NzZ1Fqwtko/22aXyww8lEi5kUVFQd
	A/tms6o2B7nrVrY3buczcA/CWWGbMLs8M8qoc3oBpOzSl7zZu5SxkO42BWn9YrxW7K4Xr+FGQTTk1
	pQ7PRuKtZe51XcpNvXRtEfT9IssyCBwjL8JoCLUub+Lo3BY8sih4NM1LDpBm+h+FPaOJZanXb4UoN
	GlagBiaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qb9-0004bL-Fd; Wed, 12 Feb 2020 11:54:31 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qb1-0004au-Sq
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 11:54:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B0389AC5C;
 Wed, 12 Feb 2020 11:54:21 +0000 (UTC)
From: Nikolay Borisov <nborisov@suse.com>
To: mripard@kernel.org,
	bjorn.andersson@linaro.org
Subject: [PATCH v3] dt-bindings: hwlock: Document A64 hwspinlock bindings
Date: Wed, 12 Feb 2020 13:54:19 +0200
Message-Id: <20200212115419.29038-1-nborisov@suse.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211122624.16484-4-nborisov@suse.com>
References: <20200211122624.16484-4-nborisov@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_035424_074558_5D31EF74 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Nikolay Borisov <nborisov@suse.com>, devicetree@vger.kernel.org,
 wens@csie.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add binding for the hwspinlock found on Allwinner A64 SoC.

Signed-off-by: Nikolay Borisov <nborisov@suse.com>
---

V3: Added #include directive. This makes the patch pass schema validation.

 .../allwinner,sun50i-a64-hwspinlock.yaml      | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml

diff --git a/Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml
new file mode 100644
index 000000000000..54270c8bb351
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwlock/allwinner,sun50i-a64-hwspinlock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A64 SoC Hardware Spinlock bindings
+
+maintainers:
+  - Nikolay Borisov <nborisov@suse.com>
+
+properties:
+  "#hwlock-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun50i-a64-hwspinlock
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+required:
+  - "#hwlock-cells"
+  - compatible
+  - reg
+  - clocks
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sun50i-a64-ccu.h>
+    #include <dt-bindings/reset/sun50i-a64-ccu.h>
+    hwspinlock@1c18000 {
+        compatible = "allwinner,sun50i-a64-hwspinlock";
+        #hwlock-cells = <1>;
+        reg = <0x01c18000 0x1000>;
+        clocks = <&ccu CLK_BUS_SPINLOCK>;
+        resets = <&ccu RST_BUS_SPINLOCK>;
+    };
+
+...
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
