Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F08762F9CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 11:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xiDWjYQfMrbO1Do8xlRul1k8th6+KOUlVvv4Ovlj5ec=; b=c1/
	MVXHyxHfm3eFzpdLPUgfCt5XF5oPi31u+CoHrvlcYbH37ysbvgVVxC8rvwCMKCrd7fQQ/gxHijtV3
	Qvd81ZWcvVv+ilIf/LXpkB6IUilpsIAqIsqJMU9Qv0HuG44pXvHSy6xrcbIYxBv18AtdMtMdZvo43
	kjUZ2KmVgbDi4m1o0c+7ddYFssRfBTly4krrM7/5lp5eVGDTnTGzQAPh5an4v6BtnUafxLKvrZ71y
	J9EhMfW8SpyGKLWoD2q8hXYRSn7PjYVMfVvHtJ+GFCJzHRXFBgZ8QiT9xcAMa7OmdpjKIJLw6k2F1
	47ObFNYaYwYWCwLZngdBRWUKBzzPHqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWHdG-0003N7-Fm; Thu, 30 May 2019 09:45:58 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWHct-00031p-JU
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 09:45:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C388720129F;
 Thu, 30 May 2019 11:45:31 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 989072000B3;
 Thu, 30 May 2019 11:45:22 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2FF044029F;
 Thu, 30 May 2019 17:45:11 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 andrew.smirnov@gmail.com, manivannan.sadhasivam@linaro.org,
 bruno.thomsen@gmail.com, aisheng.dong@nxp.com, ping.bai@nxp.com,
 leoyang.li@nxp.com, l.stach@pengutronix.de, pankaj.bansal@nxp.com,
 bhaskar.upadhaya@nxp.com, pramod.kumar_1@nxp.com, vabhav.sharma@nxp.com,
 leonard.crestez@nxp.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: arm: imx: Add the soc binding for i.MX8MN
Date: Thu, 30 May 2019 17:47:04 +0800
Message-Id: <20190530094706.865-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_024536_373329_368CF7A2 
X-CRM114-Status: UNSURE (   5.86  )
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
X-Mailman-Version: 2.1.21
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

From: Anson Huang <Anson.Huang@nxp.com>

This patch adds the soc & board binding for i.MX8MN.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 407138e..b1a5231 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -171,6 +171,12 @@ properties:
           - const: compulab,cl-som-imx7
           - const: fsl,imx7d
 
+      - description: i.MX8MN based Boards
+        items:
+          - enum:
+              - fsl,imx8mn-ddr4-evk            # i.MX8MN DDR4 EVK Board
+          - const: fsl,imx8mn
+
       - description: i.MX8MM based Boards
         items:
           - enum:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
