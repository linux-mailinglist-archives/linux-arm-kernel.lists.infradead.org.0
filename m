Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FA81A9589
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hXJlOZTduhY8qIbxVOUDPaR97yz/+L7/4KAHLFVn2Ng=; b=AvX910YJMgn3v4UBsw8UcQSNFc
	ji9pfY1uoUFE/Lv3gf8Z0mzCRkWnLmVO6k72V6B+Qj+Dx9qhQt9Qde8mMp757omjllly79qqYGG9A
	w5kZyGyx5CU/tFG5Sec2cFpYwArcs4SJ07AEZ2mYAVO57+Vlzhzv9fmTuplNGMOi6KxjXN+Gvd0ti
	BBGZK4ZuWa+6ZYclYIR2yldC6Z9Z+4x7vpqFLKm8ZZuIujHHB0Td9/FBpSw0GmHyV8fEjaYOR6leu
	j3y3kep8x9cgfs95c9ufEnLRVj9wF6GMsS9FV51TJ0OtxMU3AvqeotfNNwWesybrWXBmvpmiwQg+R
	11lyTN2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOd3A-00030h-Dj; Wed, 15 Apr 2020 08:05:36 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOd0q-0006NM-5W
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:03:14 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AE110200349;
 Wed, 15 Apr 2020 10:03:06 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A0B89200790;
 Wed, 15 Apr 2020 10:03:06 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 0994F202B0;
 Wed, 15 Apr 2020 10:03:06 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v3 02/13] Documentation: mfd: Add DT bindings for i.MX Mix
Date: Wed, 15 Apr 2020 11:02:42 +0300
Message-Id: <1586937773-5836-3-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_010312_397925_376D6CD2 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Documnent the i.MX Mix with its devicetree properties.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 .../devicetree/bindings/mfd/fsl,imx-mix.yaml       | 34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/fsl,imx-mix.yaml

diff --git a/Documentation/devicetree/bindings/mfd/fsl,imx-mix.yaml b/Documentation/devicetree/bindings/mfd/fsl,imx-mix.yaml
new file mode 100644
index 00000000..8b1870e
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/fsl,imx-mix.yaml
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/fsl,imx-mix.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX mix
+
+description: |
+  i.MX mix is a conglomerate of different GPRs that are
+  usually dedicated to one subsystem. These GPRs can be
+  further split between different types of drivers, once
+  the MFD populates all the devices based on its devicetree
+  subnodes.
+
+maintainers:
+  - Abel Vesa <abel.vesa@nxp.com>
+
+properties:
+  reg:
+    maxItems: 1
+  compatible:
+    const: fsl,imx8mp-mix
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    audiomix: mix@30e20000 {
+       compatible = "fsl,imx8mp-mix";
+       reg = <0x30e20000 0x10000>;
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
