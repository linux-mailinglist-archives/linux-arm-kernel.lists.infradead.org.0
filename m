Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3D41D2EC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 13:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rcMeqrRBPZlye358HO7THhvmbn3EAe25SjPnsC4eMns=; b=Oqf
	uE/s56Rw2y+C26tFLKrK7NdIm5WVnTVRepnKT3b5Rsrw4i+ekegAkTbtIVs7o1FGPLJa91ThWtOBP
	U5whZtgx/3Qry5yA5dmPMYHG626QQlMGHEGBvhdJwc5Qdj1bT4Lzd86dlzOgF4VCv8hD+1Hi1rg9j
	/iO+BoQkfDLkwM/qsl+6o4A7nL9NmRTTjU7VAv0xVcbwEgYDaqNggyUlXKOcsIGwKnoAABt16IfOl
	rPkNNUzTWQDZWWpzRcdSAcnEk3pCzzha+hHsIaog8Oq+gRT7iKNP09Wzmuogt7wZ+TdWoR7r2hu+P
	3GGBTzoXmKBCP/rZC0YJj0ceApv3+vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZCO6-0005Qa-Fk; Thu, 14 May 2020 11:50:54 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZCNx-0005Jv-DR
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 11:50:47 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7E9E91A0300;
 Thu, 14 May 2020 13:50:43 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8992A1A02D1;
 Thu, 14 May 2020 13:50:38 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 3CCD540245;
 Thu, 14 May 2020 19:50:32 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: pwm: Convert mxs pwm to json-schema
Date: Thu, 14 May 2020 19:41:10 +0800
Message-Id: <1589456470-2658-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_045045_588351_DDA8A6F7 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the mxs pwm binding to DT schema format using json-schema.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 Documentation/devicetree/bindings/pwm/mxs-pwm.txt  | 17 ---------
 Documentation/devicetree/bindings/pwm/mxs-pwm.yaml | 43 ++++++++++++++++++++++
 2 files changed, 43 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pwm/mxs-pwm.txt
 create mode 100644 Documentation/devicetree/bindings/pwm/mxs-pwm.yaml

diff --git a/Documentation/devicetree/bindings/pwm/mxs-pwm.txt b/Documentation/devicetree/bindings/pwm/mxs-pwm.txt
deleted file mode 100644
index a1b8a48..0000000
--- a/Documentation/devicetree/bindings/pwm/mxs-pwm.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Freescale MXS PWM controller
-
-Required properties:
-- compatible: should be "fsl,imx23-pwm"
-- reg: physical base address and length of the controller's registers
-- #pwm-cells: should be 3. See pwm.yaml in this directory for a description of
-  the cells format.
-- fsl,pwm-number: the number of PWM devices
-
-Example:
-
-pwm: pwm@80064000 {
-	compatible = "fsl,imx28-pwm", "fsl,imx23-pwm";
-	reg = <0x80064000 0x2000>;
-	#pwm-cells = <3>;
-	fsl,pwm-number = <8>;
-};
diff --git a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
new file mode 100644
index 0000000..da68f4a
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/mxs-pwm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale MXS PWM controller
+
+maintainers:
+  - Shawn Guo <shawn.guo@linaro.org>
+  - Anson Huang <anson.huang@nxp.com>
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx23-pwm
+
+  reg:
+    maxItems: 1
+
+  "#pwm-cells":
+    const: 3
+
+  fsl,pwm-number:
+    $ref: '/schemas/types.yaml#/definitions/uint32'
+    description: u32 value representing the number of PWM devices
+
+required:
+  - compatible
+  - reg
+  - "#pwm-cells"
+  - fsl,pwm-number
+
+additionalProperties: false
+
+examples:
+  - |
+    pwm@80064000 {
+        compatible = "fsl,imx23-pwm";
+        reg = <0x80064000 0x2000>;
+        #pwm-cells = <3>;
+        fsl,pwm-number = <8>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
