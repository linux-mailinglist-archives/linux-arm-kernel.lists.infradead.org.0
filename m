Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E40891A06E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 07:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hE+wQQesrIo0qVhx9OZAxzpQtqHEF8oF8Vd2c5+dpg0=; b=ixFh3fks/blfkf
	u5dqAwJ12rabCPFJ2D0O/pMTERnlvKf/ol8scBu4avsooE6uiIcA4y4um7W3XNFZ95vXC1+ZBXPBS
	5xDpKnzPW6G1X+aivZuJTawTcp6SzA9nIZIj+YUOado5+2Hvjhick1rL5JgE5/NN5ftW8DK8YOW9Z
	lHmXCMjb57UfbjjpgrZuNkeUQ5diuacL2zq5PkVI/ch7T7QmcX4Xl23U28PpHi7ttbceDkls0giYP
	8H7a9Pg9yirULZjQQdCC4++bwAcs6chxHxPIrxGRUtvGtXv4lJitRTODEEaSdYSW9OKNCMwVKazE0
	ULpO0oD8CIZ+7fvV8aUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLhGZ-0004DJ-0C; Tue, 07 Apr 2020 05:59:19 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLhGA-00044q-DB
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 05:58:56 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 678CC580307;
 Tue,  7 Apr 2020 01:58:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 07 Apr 2020 01:58:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=luaDFvJ4QP7HzTgY7DFCyyfDI0
 BXcg59edPeu9moQnE=; b=iWAedFWIY7AyUqXyEMCmfDoc8Nak2DLftjwUhJLLQk
 KNRmOJFxDfJQelE4tQso8nqPqTCL31xTtxABsBPSsUcMfpIKe1bykpddaAqUbthw
 /vl/Z9Jq9bNHA24yGTdB69hoCYVyLgtsVsk7fePlLWGZWDXCGTMZdXa8TOgiK85V
 pd9dsCtIU1YBudJZhbVYYjac0Y5fLIArn6ezaAN9xQZ8SgqJ9uqFjcLMOMc8sYIz
 pRYAU02EllzACZNByxAtfsQAs/LYL+tVt3ON7SLv7vLHKb1/P6OhdK+5WTx2v1+/
 ZC3VWm3Fjv58Przl49QI2qupSTk3MVYS9A+WJ432J4eA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=luaDFvJ4QP7HzTgY7
 DFCyyfDI0BXcg59edPeu9moQnE=; b=HU2zYuIb3dTywfn6VPUoR6iQ4DvjVfA6a
 HM+TF/HO7pF27scVLRt1zH0A/0lI70UatZoD3GNQUy243gLrac3W2iCay50Ov+YT
 K27RqrE9PzGeydBTzz+TX34aCWjfjGqUSjOQiuF3Yrf8V7jEkGczMYXQUOxhp6dF
 /iBC2Hhu8aP65ZgX5Ldf7ZPKt3kIkaApsciNqonHlE920OwyE2Qfa78gcday7Qwp
 YgfzosNZnOFO2keUO9YaeEk0bycSC7uosnwKgi/xES5kl3cwi1NmXCK05r9Zp5xc
 7DftnpnfR8u1zPQkjZwM8FokfE80X/uvWlbHtWuIxC34zO2n7eDSQ==
X-ME-Sender: <xms:lBaMXql_AK8NiqoqaaeLDZYYzQWffz2wIKyiEM7Yw5BBFWfrk_F9yA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeggdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghirhes
 rghlihhsthgrihhrvdefrdhmvgeqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdroh
 hrghenucfkphepjeefrdelfedrkeegrddvtdeknecuvehluhhsthgvrhfuihiivgeptden
 ucfrrghrrghmpehmrghilhhfrhhomheprghlihhsthgrihhrsegrlhhishhtrghirhdvfe
 drmhgv
X-ME-Proxy: <xmx:lBaMXqBF7Q_unFFUXTNyMVF3JuktDwLWCQ_9obH00fUJqGWQx1og_w>
 <xmx:lBaMXgsRucZ3VE9D9WFeHAiyxWkz-QH1boPQTPKGfsc80MYKdVyEsQ>
 <xmx:lBaMXkuKECeRlmoFykZo8892QfqB5oSg-NiZ2_-VMXo7cF22NI8HZw>
 <xmx:mBaMXnCjFgTFBSbWfIFyKYlmRZ3ZfVedIjjlZJfkBnVEJqixEVUmBA>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 869D6328005A;
 Tue,  7 Apr 2020 01:58:43 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [PATCH v2 1/3] dt-bindings: net: bluetooth: Add rtl8723bs-bluetooth
Date: Mon,  6 Apr 2020 22:58:35 -0700
Message-Id: <20200407055837.3508017-1-alistair@alistair23.me>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_225854_582022_EFE48A22 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Alistair Francis <alistair@alistair23.me>,
 linux-arm-kernel@lists.infradead.org, alistair23@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vasily Khoruzhick <anarsoul@gmail.com>

Add binding document for bluetooth part of RTL8723BS/RTL8723CS

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Alistair Francis <alistair@alistair23.me>
---
v2:
 - Update bindings based on upstream feedback
 - Add RTL8822CS
 - Remove unused/unsupported fields
 - Remove firmware-postfix field
 - Small formatting changes

 .../bindings/net/realtek,rtl8723bs-bt.yaml    | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml

diff --git a/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml b/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml
new file mode 100644
index 000000000000..a03ce1bbc56f
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/realtek,rtl8723bs-bt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RTL8723BS/RTL8723CS/RTL8822CS Bluetooth Device Tree Bindings
+
+maintainers:
+  - Vasily Khoruzhick <anarsoul@gmail.com>
+  - Alistair Francis <alistair@alistair23.me>
+
+description:
+  RTL8723CS/RTL8723CS/RTL8822CS is WiFi + BT chip. WiFi part is connected over
+  SDIO, while BT is connected over serial. It speaks H5 protocol with few
+  extra commands to upload firmware and change module speed.
+
+properties:
+  compatible:
+    oneOf:
+      - "realtek,rtl8723bs-bt"
+      - "realtek,rtl8723cs-bt"
+      - "realtek,rtl8822cs-bt"
+
+  device-wake-gpios:
+    maxItems: 1
+    description:
+      GPIO specifier, used to wakeup the BT module
+
+  enable-gpios:
+    maxItems: 1
+    description:
+      GPIO specifier, used to enable the BT module
+
+  host-wake-gpios:
+    maxItems: 1
+    desciption:
+      GPIO specifier, used to wakeup the host processor
+
+required:
+  - compatible
+
+examples:
+  - |
+    &uart1 {
+        pinctrl-names = "default";
+        pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+        uart-has-rtscts = <1>;
+
+        bluetooth {
+            compatible = "realtek,rtl8723bs-bt";
+            device-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
+            host-wakeup-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+        };
+    };
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
