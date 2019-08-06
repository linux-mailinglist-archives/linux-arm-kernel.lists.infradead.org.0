Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12538301E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:57:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hR8zZyPqbP/Ah6uD4QJc0dKY7JYA5tHGGaLAD5irwtA=; b=UAjcgfegQqdMdvzxaowyhLmbDy
	8HzTDnaB9f4A/YGKhbX8rWZv3ZewXH34DhelpIG9mVgCamFKxrzZzirpDAtQTfkLjIO3tBgZMfUUC
	hPX5j+/k8FMFk27gVSTaGtrgTaiuCt7G8axk4EUkkGLyGQpKrFQeJNoZQOoOfM5/lCTmXnsVKrC+c
	ORXvQEuVKhNiwSM4PFhfLIDPmHCGiLwrSoD8sCASKo+sxxOlUD3Jf4iicQY21gCzFBzsBZgMHppMO
	ApwlXBWd/YWka64VVf6USUGB/Fk3iH8HvZIo/kbAKpWKKEPbZefmyMF7pntNkttDyuWp1J4vM+36D
	Jb3TVaqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hux9B-0000YL-Ih; Tue, 06 Aug 2019 10:56:53 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hux8N-0000Pq-Th
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:56:05 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 872FE1A05E6;
 Tue,  6 Aug 2019 12:55:59 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7045E1A05CE;
 Tue,  6 Aug 2019 12:55:59 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 7D3F4205DD;
 Tue,  6 Aug 2019 12:55:58 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: [RFCv3 1/3] dt-bindings: interconnect: Add bindings for imx
Date: Tue,  6 Aug 2019 13:55:52 +0300
Message-Id: <90561b14af66655ca859d387b3808a84641eea4e.1565088423.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1565088423.git.leonard.crestez@nxp.com>
References: <cover.1565088423.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1565088423.git.leonard.crestez@nxp.com>
References: <cover.1565088423.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_035604_099061_0A061E14 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Anson Huang <Anson.Huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-pm@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 .../devicetree/bindings/interconnect/imx.yaml | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interconnect/imx.yaml

diff --git a/Documentation/devicetree/bindings/interconnect/imx.yaml b/Documentation/devicetree/bindings/interconnect/imx.yaml
new file mode 100644
index 000000000000..c6f173b38f4f
--- /dev/null
+++ b/Documentation/devicetree/bindings/interconnect/imx.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interconnect/imx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic i.MX interconnect device
+
+maintainers:
+  - Leonard Crestez <leonard.crestez@nxp.com>
+
+properties:
+  compatible:
+    contains:
+      enum:
+        - fsl,imx8mm-interconnect
+  "#interconnect-cells":
+    const: 1
+  devfreq-names:
+    description: Names of devfreq instances for adjustable nodes
+  devfreq:
+    description: List of phandle pointing to devfreq instances
+
+required:
+  - compatible
+  - "#interconnect-cells"
+  - "devfreq-names"
+  - "devfreq"
+
+examples:
+  - |
+    #include <dt-bindings/interconnect/imx8mm.h>
+    icc: interconnect {
+        compatible = "fsl,imx8mm-interconnect";
+        #interconnect-cells = <1>;
+        devfreq-names = "dram", "noc", "axi";
+        devfreq = <&ddrc>, <&noc>, <&pl301_main>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
