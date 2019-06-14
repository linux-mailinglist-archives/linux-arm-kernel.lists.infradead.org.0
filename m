Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C6C4571C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 10:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BT1TBewHoBX0o2vScWXYuYDF8X4DQ1kIdkY6FwKPYk4=; b=TUWRaF4k4LkpGj3Av/q1GWSS7V
	+DO+8cdoMuPE2ToqhNoOpDQWk54E1MOxh+5kiEYHrPH/qzRoL4CJPZWMMgVL6oltGNYZ10wOxQss6
	/uTY5tbGBc8RUd/xO0yQaPtVaKn3yj4pmXw7k1k9+66LEbGjGAlsXhLzj6myIoQYxwhxBRz3HJHP3
	d57VgFSJ5T9/OTE8VhEa82/vMU51R8BcpSwJx/gJ35wk56qACpt2jYYRIqxYAwPapxyQWJjSvB32M
	QTV8pycE9uC1/kPLALI4QWUR5sy/AUHa9VUVSB3uXMW+o5+Jn9zHLPsUPb33QtNVuZZtMRnG7hP4s
	iF3HQwIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbhNR-0006aN-M0; Fri, 14 Jun 2019 08:16:01 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhMo-0006MC-EB
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 08:15:23 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 315DE2005CB;
 Fri, 14 Jun 2019 10:15:21 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B2A0A2005D2;
 Fri, 14 Jun 2019 10:15:14 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8CE3B4031E;
 Fri, 14 Jun 2019 16:15:06 +0800 (SGT)
From: daniel.baluta@nxp.com
To: shawnguo@kernel.org
Subject: [PATCH 2/2] dt-bindings: arm: fsl: Add DSP IPC binding support
Date: Fri, 14 Jun 2019 16:16:50 +0800
Message-Id: <20190614081650.11880-3-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190614081650.11880-1-daniel.baluta@nxp.com>
References: <20190614081650.11880-1-daniel.baluta@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_011522_612607_439C8780 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: aisheng.dong@nxp.com, mark.rutland@arm.com, daniel.baluta@gmail.com,
 anson.huang@nxp.com, devicetree@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, o.rempel@pengutronix.de,
 robh+dt@kernel.org, linux-imx@nxp.com, daniel.baluta@nxp.com,
 shengjiu.wang@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

DSP IPC is the layer that allows the Host CPU to communicate
with DSP firmware.
DSP is part of some i.MX8 boards (e.g i.MX8QM, i.MX8QXP)

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 .../bindings/arm/freescale/fsl,dsp.yaml       | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml

diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml b/Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml
new file mode 100644
index 000000000000..16d9df1d397b
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/freescale/fsl,dsp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX IPC DSP driver
+
+maintainers:
+  - Daniel Baluta <daniel.baluta@nxp.com>
+
+description: |
+  IPC communication layer between Host CPU and DSP on NXP i.MX8 platforms
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx-dsp
+
+  mboxes:
+    description:
+      List of phandle of 2 MU channels for TXDB, 2 MU channels for RXDB
+      (see mailbox/fsl,mu.txt)
+    maxItems: 1
+
+  mbox-names
+    description:
+      Mailboxes names
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/string"
+      - enum: [ "txdb0", "txdb1", "rxdb0", "rxdb1" ]
+required:
+  - compatible
+  - mboxes
+  - mbox-names
+
+examples:
+  - |
+    dsp {
+      compatbile = "fsl,imx-dsp";
+      mbox-names = "txdb0", "txdb1", "rxdb0", "rxdb1";
+      mboxes = <&lsio_mu13 2 0 &lsio_mu13 2 1 &lsio_mu13 3 0 &lsio_mu13 3 1>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
