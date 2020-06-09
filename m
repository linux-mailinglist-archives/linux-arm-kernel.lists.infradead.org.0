Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBAB1F385F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFEEAYtg23uR/NEITxHRioCtiZOAbk4jK+oSnyZW4w4=; b=osu8fCtSLKwT7c
	NOpjz5yX50JMOfXg+uHPJHYTVxhuGp4KDP23GPUoq00fEcgyr7NfyxxLaO6NkbIiSBbb3badYz2BZ
	Wj9nF7WFCIwnauk6h45Lu1SQo6/bUVR8U24L8Nd7HzHZM3LR/O2xafaQbYLq07/C4zcXoYTGFPzqL
	xogMz63Q139mIKikASy2PDJ4QyhXjhAUTy2k2f6ZhTFdQaAnXRqdjVz3uZXTcEp1m0NbwMUiOFMRW
	kav4VBzaPoy4NG6YIE8BC3CmafGLCHAgsc1ytcvnpeNqMiWWJbSXwDEFTgCOtts33lGyZmnX9ulEk
	SD1rxwAoTqS0a01Z7iXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibm3-0001v4-T1; Tue, 09 Jun 2020 10:46:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiblP-0001Xp-CT; Tue, 09 Jun 2020 10:45:53 +0000
X-UUID: e98503162cbb4d2585ac5277e67a0188-20200609
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=eY5MvzczwNbrwtKhGEVAhCGRBXkqAd3J0N4ihq/a/Eg=; 
 b=Ixbh/pRi2qVt4/u18b6/pZ6JYYn7wksjI/N+YKre+mLy3rJVXv/8QRu6uKffChwppnwMGrutMzgpt9fAKXVe76sjN8gLYTQ/x+U0h0q0x4v3wfgG3e91o3fKUHSAFWEFPuQXlCLLvR6KzoiGG/0RMVVOri53w8AHZQuzOxYQ7fc=;
X-UUID: e98503162cbb4d2585ac5277e67a0188-20200609
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 455011840; Tue, 09 Jun 2020 02:45:50 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 03:45:43 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 18:45:36 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 9 Jun 2020 18:45:34 +0800
From: Roger Lu <roger.lu@mediatek.com>
To: Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Nicolas Boichat <drinkcat@google.com>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v9 1/4] dt-bindings: power: avs: add mtk svs dt-bindings
Date: Tue, 9 Jun 2020 18:45:31 +0800
Message-ID: <20200609104534.29314-2-roger.lu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200609104534.29314-1-roger.lu@mediatek.com>
References: <20200609104534.29314-1-roger.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_034551_433192_2073138B 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 Angus Lin <Angus.Lin@mediatek.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Roger Lu <roger.lu@mediatek.com>,
 linux-kernel@vger.kernel.org, Xiaoqing Liu <Xiaoqing.Liu@mediatek.com>,
 YT Lee <yt.lee@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, HenryC Chen <HenryC.Chen@mediatek.com>,
 Charles Yang <Charles.Yang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document the binding for enabling mtk svs on MediaTek SoC.

Signed-off-by: Roger Lu <roger.lu@mediatek.com>
---
 .../bindings/power/avs/mtk_svs.yaml           | 141 ++++++++++++++++++
 1 file changed, 141 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/avs/mtk_svs.yaml

diff --git a/Documentation/devicetree/bindings/power/avs/mtk_svs.yaml b/Documentation/devicetree/bindings/power/avs/mtk_svs.yaml
new file mode 100644
index 000000000000..f16f4eb56ee3
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/avs/mtk_svs.yaml
@@ -0,0 +1,141 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/avs/mtk_svs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Introduce SVS engine
+
+maintainers:
+  - Kevin Hilman <khilman@kernel.org>
+  - Nishanth Menon <nm@ti.com>
+
+description: |+
+  The Smart Voltage Scaling(SVS) engine is a piece of hardware
+  which has several controllers(banks) for calculating suitable
+  voltage to different power domains(CPU/GPU/CCI) according to
+  chip process corner, temperatures and other factors. Then DVFS
+  driver could apply SVS bank voltage to PMIC/Buck.
+
+properties:
+  compatible:
+    const: mediatek,mt8183-svs
+
+  reg:
+    description: Address range of the MTK SVS controller.
+    maxItems: 1
+
+  interrupts:
+    description: IRQ for the MTK SVS controller.
+    maxItems: 1
+
+  clocks:
+    description: Main clock for svs controller to work.
+
+  clock-names:
+    const: main
+
+  nvmem-cells:
+    maxItems: 2
+    description:
+      Phandle to the calibration data provided by a nvmem device.
+
+  nvmem-cell-names:
+    items:
+      - const: svs-calibration-data
+      - const: calibration-data
+
+patternProperties:
+  "^svs-(cpu-little|cpu-big|cci|gpu)$":
+    type: object
+    description:
+      Each subnode represents one SVS bank.
+        - svs-cpu-little (SVS bank device node of little CPU)
+        - svs-cpu-big (SVS bank device node of big CPU)
+        - svs-cci (SVS bank device node of CCI)
+        - svs-gpu (SVS bank device node of GPU)
+
+    properties:
+      compatible:
+       enum:
+         - mediatek,mt8183-svs-cpu-little
+         - mediatek,mt8183-svs-cpu-big
+         - mediatek,mt8183-svs-cci
+         - mediatek,mt8183-svs-gpu
+
+      power-domains:
+        description: Phandle to the associated power domain
+        maxItems: 1
+
+      operating-points-v2: true
+
+      vcpu-little-supply:
+        description: PMIC buck of little CPU
+
+      vcpu-big-supply:
+        description: PMIC buck of big CPU
+
+      vcci-supply:
+        description: PMIC buck of CCI
+
+      vgpu-spply:
+        description: PMIC buck of GPU
+
+    required:
+      - compatible
+      - operating-points-v2
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - nvmem-cells
+  - nvmem-cell-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt8183-clk.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/mt8183-power.h>
+
+    svs: svs@1100b000 {
+        compatible = "mediatek,mt8183-svs";
+        reg = <0 0x1100b000 0 0x1000>;
+        interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW>;
+        clocks = <&infracfg CLK_INFRA_THERM>;
+        clock-names = "main";
+        nvmem-cells = <&svs_calibration>, <&thermal_calibration>;
+        nvmem-cell-names = "svs-calibration-data", "calibration-data";
+
+        svs_cpu_little: svs-cpu-little {
+            compatible = "mediatek,mt8183-svs-cpu-little";
+            operating-points-v2 = <&cluster0_opp>;
+            vcpu-little-supply = <&mt6358_vproc12_reg>;
+        };
+
+        svs_cpu_big: svs-cpu-big {
+            compatible = "mediatek,mt8183-svs-cpu-big";
+            operating-points-v2 = <&cluster1_opp>;
+            vcpu-big-supply = <&mt6358_vproc11_reg>;
+        };
+
+        svs_cci: svs-cci {
+            compatible = "mediatek,mt8183-svs-cci";
+            operating-points-v2 = <&cci_opp>;
+            vcci-supply = <&mt6358_vproc12_reg>;
+        };
+
+        svs_gpu: svs-gpu {
+            compatible = "mediatek,mt8183-svs-gpu";
+            power-domains = <&scpsys MT8183_POWER_DOMAIN_MFG_2D>;
+            operating-points-v2 = <&gpu_opp_table>;
+            vgpu-spply = <&mt6358_vgpu_reg>;
+        };
+    };
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
