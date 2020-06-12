Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175091F7F37
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 00:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2XXJpATBeFH5FjopAyDWdIH7R5dQEqnQViPMcA8vrOA=; b=JjAL7VtUUrlE0H
	cwThuL1T8a7VA3fj0VtOkCKJZvQA05mPDFvL5UAjIm0gKKq7/T1Ktm9qY6OwIKFuTucTH4+Pv9lFs
	hWmiwvlCeLM31uZqQCwGXH+CrDQIp3XvSWRUbpotmIlNQDc5997yKUYo3nS2pDyUS0lXXhBCf+dVX
	cgt9p+RY2rM7lQhyltF20BdBEvh9ELEaaVJ7Nw62qxhBpm1FmPcftlg6kMr9vLlg7QTNkSDg718UG
	PU65FF3LMyBwzaenhV3bhST2ZwAaAuK7EGMnZzssvA3SFrtIo2974OZp5MrZBreW/s6k39Cq63q0K
	ihpojCrFGh/kRe/JMVVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjsVK-0003ot-Vx; Fri, 12 Jun 2020 22:50:30 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjsUO-0001br-R8
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 22:49:35 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05CMnUbT121066;
 Fri, 12 Jun 2020 17:49:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592002170;
 bh=bNsry0vaH4LJP2i3TLuNDpE56+9ye4tE5chXV1/nxh0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=JNzY4WDoBVWJQ7w6WsbuN70cg0DpIsHxWcnV9K7+pPicXuCzI6q16PEH3kDgqRt89
 oatV8csvpcgUV5N2B3gT2Gtf0pf4/1N7u35AQOTewe9sJToivT0ZJJ6hqo8DA4Dbex
 YnvhiilXphRrOjjSG05BLshAIix96NxgSGwT3xKo=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05CMnUiW046039;
 Fri, 12 Jun 2020 17:49:30 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 12
 Jun 2020 17:49:29 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 12 Jun 2020 17:49:29 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com
 [10.247.120.73])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05CMnTl2112276;
 Fri, 12 Jun 2020 17:49:29 -0500
Received: from localhost ([10.250.48.148])
 by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 05CMnTMi062177;
 Fri, 12 Jun 2020 17:49:29 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v3 3/6] dt-bindings: remoteproc: Add common TI SCI rproc
 bindings
Date: Fri, 12 Jun 2020 17:49:11 -0500
Message-ID: <20200612224914.7634-4-s-anna@ti.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200612224914.7634-1-s-anna@ti.com>
References: <20200612224914.7634-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_154932_959735_27810DF5 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.19.142 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a bindings document that lists the common TI SCI properties
used by the K3 R5F and DSP remoteproc devices.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v3: New Patch refactoring out the common ti-sci-proc properties

 .../bindings/remoteproc/ti,k3-sci-proc.yaml   | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-sci-proc.yaml

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-sci-proc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-sci-proc.yaml
new file mode 100644
index 000000000000..883b6e9b5282
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-sci-proc.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/remoteproc/ti,k3-sci-proc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common TI K3 remote processor device bindings
+
+maintainers:
+  - Suman Anna <s-anna@ti.com>
+
+description: |
+  The TI K3 family of SoCs usually have one or more remote processor sub-systems
+  like the dual-core R5F sub-system or a C66x or C71x DSP processor subsystem.
+  The device management of these remote processors is managed by a dedicated
+  System Processor, and the communication with that processor is managed through
+  the TI-SCI protocol.
+
+  Each remote processor device node should define a common set of properties
+  that allows the System Processor firmware to perform the device management
+  such as powering the IPs, asserting/deasserting the resets for each of these
+  processors.
+
+properties:
+  ti,sci:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Should be a phandle to the TI-SCI System Controller node
+
+  ti,sci-dev-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Should contain the TI-SCI device id corresponding to the remote processor
+      core. Please refer to the corresponding System Controller documentation
+      for valid values.
+
+  ti,sci-proc-ids:
+    description: Should contain a single tuple of <proc_id host_id>.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32-array
+      - maxItems: 1
+        items:
+          items:
+            - description: TI-SCI processor id for the remote processor device
+            - description: TI-SCI host id to which processor control
+                           ownership should be transferred to
+
+required:
+  - ti,sci
+  - ti,sci-dev-id
+  - ti,sci-proc-ids
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
