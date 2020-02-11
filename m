Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE49158E72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:27:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eBHizjeYDDpw9uIp6DRa72iv0oLFNFzaOZ2J4PTKmus=; b=THugWHeqpibX5MNk9rULVAYbBp
	Z/mrGYZyGGgNo8no9ItaXIem+oi+d3XENCY+bZLcDZeOZ3PAiN2NuqjhfzPAmgDcPTxtqv8FZaLP4
	C9ifWFSVDwIaWuNeRF4xlknqeUANaZ7yYpG0QygPTAOcFfUVMDwq7td42CiCEOqna5L5eyXnUI3vQ
	9O8HvOKDqFD3beyXfK6qs8aSpvAa1n63ARhUEnrv/EqFnt9uKl8bzioBoa3q5V4nuliswAFg5pF+6
	ShUlrNmWHaz4JDIH2Qxdr1F1/vh7C+65jwTe3AbEbjLNHCd/i6v5c6iNsrP2zwWEQdn/E5HjQoDhC
	Q+jCblJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Ucz-0003bK-6e; Tue, 11 Feb 2020 12:26:57 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Ucb-0003SU-DN
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:26:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C1CB6B0B7;
 Tue, 11 Feb 2020 12:26:31 +0000 (UTC)
From: Nikolay Borisov <nborisov@suse.com>
To: mripard@kernel.org,
	bjorn.andersson@linaro.org
Subject: [PATCH v2 3/3] dt-bindings: hwlock: Document A64 hwspinlock bindings
Date: Tue, 11 Feb 2020 14:26:24 +0200
Message-Id: <20200211122624.16484-4-nborisov@suse.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211122624.16484-1-nborisov@suse.com>
References: <20200211122624.16484-1-nborisov@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_042633_603843_AA39B97E 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 .../allwinner,sun50i-a64-hwspinlock.yaml      | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml

diff --git a/Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml
new file mode 100644
index 000000000000..46bfff2541d6
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml
@@ -0,0 +1,47 @@
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
