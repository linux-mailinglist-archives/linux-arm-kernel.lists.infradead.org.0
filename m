Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E68E11FB85A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 17:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebc7/7I/khonGW81Q4OgWkp5w8egm6A2k9bCDlAsVi4=; b=fQAle5zsh6ecPp
	AmDNaoxYX44hf0la57s8IIPQKcPM5WLeYWkjFjwJK35r+nU029DM2t1KAaRfJAQMWenq1Ht9tYszV
	d4aLj6k2qRj2yY4T5dJr8fllnDsrQdwt7OFBttdhLQxbeVo3/mX767mohd50nbQz28lrd4gjStoiv
	HbqG0FL6hPUQLDGWDjKyeRuzM80HpG9Ds8OQGaDvCWRMcQWpzPc3/fIIv6mChKc6nvco1iFkPqA4i
	B2aeIs14soc2CUxGI/naiK46CDZV00qhGaxq8hKOoaiekFcBSaByMeAoGOJdDjWicZFlBYwWen7kG
	cb2vi+i9n9OykJ0ThoqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDwz-0001Zx-M5; Tue, 16 Jun 2020 15:56:37 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDwq-0001ZP-CR
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 15:56:29 +0000
IronPort-SDR: ZxfAVx06Oh6snQh0H7FuEy1C53GFXYMDLGsgJykROxyoqLu1LlYcNxPtuLWRq3y2hT/Rgj7tWW
 9tYB2Faa4tzg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:56:27 -0700
IronPort-SDR: in4r+TxdBN4FC3FWATQR7/ZxAsXR/nLhuKTUZGFkw0TDMg6ovkftth9h3pL9rvP5mbyQgFtP7o
 G4H98731L5jg==
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="449888089"
Received: from pperycz-mobl.ger.corp.intel.com (HELO
 dalessan-mobl1.ir.intel.com) ([10.213.235.69])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:56:24 -0700
From: Daniele Alessandrelli <daniele.alessandrelli@linux.intel.com>
To: linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 1/7] dt-bindings: mailbox: Add Keem Bay SCMI mailbox bindings
Date: Tue, 16 Jun 2020 16:56:07 +0100
Message-Id: <20200616155613.121242-2-daniele.alessandrelli@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200616155613.121242-1-daniele.alessandrelli@linux.intel.com>
References: <20200616155613.121242-1-daniele.alessandrelli@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_085628_464978_DA068477 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Dinh Nguyen <dinguyen@kernel.org>,
 Paul Murphy <paul.j.murphy@intel.com>, Will Deacon <will@kernel.org>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Paul Murphy <paul.j.murphy@intel.com>

These are the bindings required for the Intel Keem Bay SCMI mailbox
driver.

Reviewed-by: Dinh Nguyen <dinguyen@kernel.org>
Signed-off-by: Paul Murphy <paul.j.murphy@intel.com>
---
 .../mailbox/intel,keembay-scmi-mailbox.yaml   | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/intel,keembay-scmi-mailbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/intel,keembay-scmi-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/intel,keembay-scmi-mailbox.yaml
new file mode 100644
index 000000000000..149294dd8141
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/intel,keembay-scmi-mailbox.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2020 Intel Corporation
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/mailbox/intel,keembay-scmi-mailbox.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Intel Keem Bay SCMI mailbox
+
+maintainers:
+  - Paul Murphy <paul.j.murphy@intel.com>
+
+description: |
+  The Intel Keem Bay SCMI mailbox is used to communicate SCMI messages to the
+  runtime service in BL31 behaving as the SCMI 'SCP'.
+  Refer to ./mailbox.txt for generic information about mailbox device-tree
+  bindings.
+  For more information about SCMI, refer to the bindings described in
+  Documentation/devicetree/bindings/arm/arm,scmi.txt
+
+properties:
+  compatible:
+    enum:
+      - intel,keembay-scmi-mailbox
+
+  "#mbox-cells":
+    const: 1
+
+  memory-region:
+    description:
+      Memory region describing the SCMI shared memory
+
+required:
+  - compatible
+  - "#mbox-cells"
+  - memory-region
+
+examples:
+  - |
+    scmi_mailbox: scmi_mailbox {
+        compatible = "intel,keembay-scmi-mailbox";
+        #mbox-cells = <1>;
+        memory-region = <&scmi_sec_shmem>;
+    };
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
