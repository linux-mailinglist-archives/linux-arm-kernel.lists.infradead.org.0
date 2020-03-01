Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E9F174B81
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 06:33:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bl2V9Fz7JJDukwQMxN52955COeWl1Immvb3TBbkHxrQ=; b=hGOo5oX1+MvgNJSBW/UP9z/Eo0
	5CTlbt6ynGOq2SPwJMC1TtEsZ/B77jFTmovZSWnSZnvsh4xkeYSgZ7ZwuKOPV9ag4rbLU7ck1Ki7G
	mo0wo8AnBkMVnRtW3O9yrkjQsGp2dODlp36CKXpnMT+wQozzkUlWPbM8u67lBUFi40U5yHlVMo9lR
	4hBBBrozx0a70iSenIR64ZjNgLfGen4lMNtOYmT5BqaLNWCENFOCxInI837jdM+D/agPHEpxAc0ot
	rITPDQxPsKjv059izQUt5B0+pl27JMVN3m8xSlKJZMFbN0gyiFeJkkPd6rRJ6SmIUSPMy3kq6Zjld
	NTsBoc2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8HDs-00021A-63; Sun, 01 Mar 2020 05:33:04 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8HBd-0008Nj-In
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 05:30:47 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 552BB200A2F;
 Sun,  1 Mar 2020 06:30:44 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C169F200A2D;
 Sun,  1 Mar 2020 06:30:34 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 193B140302;
 Sun,  1 Mar 2020 13:30:24 +0800 (SGT)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: timur@kernel.org, nicoleotsuka@gmail.com, Xiubo.Lee@gmail.com,
 festevam@gmail.com, broonie@kernel.org, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, robh+dt@kernel.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 7/8] ASoC: dt-bindings: fsl_easrc: Add document for EASRC
Date: Sun,  1 Mar 2020 13:24:18 +0800
Message-Id: <2aa0b446c3e2af59e3472d8f7706298691ec4a5c.1583039752.git.shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1583039752.git.shengjiu.wang@nxp.com>
References: <cover.1583039752.git.shengjiu.wang@nxp.com>
In-Reply-To: <cover.1583039752.git.shengjiu.wang@nxp.com>
References: <cover.1583039752.git.shengjiu.wang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_213045_895742_C06B9C77 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

EASRC (Enhanced Asynchronous Sample Rate Converter) is a new
IP module found on i.MX8MN.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 .../devicetree/bindings/sound/fsl,easrc.yaml  | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/fsl,easrc.yaml

diff --git a/Documentation/devicetree/bindings/sound/fsl,easrc.yaml b/Documentation/devicetree/bindings/sound/fsl,easrc.yaml
new file mode 100644
index 000000000000..500af8f0c8f0
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/fsl,easrc.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/fsl,easrc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP Asynchronous Sample Rate Converter (ASRC) Controller
+
+maintainers:
+  - Shengjiu Wang <shengjiu.wang@nxp.com>
+
+properties:
+  $nodename:
+    pattern: "^easrc@.*"
+
+  compatible:
+    oneOf:
+      - items:
+        - enum:
+          - fsl,imx8mn-easrc
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Peripheral clock
+
+  clock-names:
+    items:
+      - const: mem
+
+  dmas:
+    maxItems: 8
+
+  dma-names:
+    oneOf:
+      - items:
+          - const: ctx0_rx
+          - const: ctx0_tx
+          - const: ctx1_rx
+          - const: ctx1_tx
+          - const: ctx2_rx
+          - const: ctx2_tx
+          - const: ctx3_rx
+          - const: ctx3_tx
+
+  fsl,easrc-ram-script-name:
+    $ref: /schemas/types.yaml#/definitions/string
+    description: The coefficient table for the filters
+
+  fsl,asrc-rate:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Defines a mutual sample rate used by DPCM Back Ends
+
+  fsl,asrc-format:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Defines a mutual sample format used by DPCM Back Ends
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - dmas
+  - dma-name
+  - fsl,easrc-ram-script-name
+  - fsl,asrc-rate
+  - fsl,asrc-format
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mn-clock.h>
+
+    easrc: easrc@300C0000 {
+           compatible = "fsl,imx8mn-easrc";
+           reg = <0x0 0x300C0000 0x0 0x10000>;
+           interrupts = <0x0 122 0x4>;
+           clocks = <&clk IMX8MN_CLK_ASRC_ROOT>;
+           clock-names = "mem";
+           dmas = <&sdma2 16 23 0> , <&sdma2 17 23 0>,
+                  <&sdma2 18 23 0> , <&sdma2 19 23 0>,
+                  <&sdma2 20 23 0> , <&sdma2 21 23 0>,
+                  <&sdma2 22 23 0> , <&sdma2 23 23 0>;
+           dma-names = "ctx0_rx", "ctx0_tx",
+                       "ctx1_rx", "ctx1_tx",
+                       "ctx2_rx", "ctx2_tx",
+                       "ctx3_rx", "ctx3_tx";
+           fsl,easrc-ram-script-name = "imx/easrc/easrc-imx8mn.bin";
+           fsl,asrc-rate  = <8000>;
+           fsl,asrc-format = <2>;
+           status = "disabled";
+    };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
