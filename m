Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D215F612
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NKZdeVuU8+sov950klsh8illxMw3KGVdEvkIBgFT7d8=; b=e5P
	FYshJ5K06B3Fj1mGxsvVQPQTSjCiefjy5CRKlobKXzZYD0Lui/V0Qt02RSCod7May8IbXBwKMN6r6
	CSP3ClNK6tT51qIpxaBv5XxapqKflpKq6FFRJR+k1WXLHyAgQqI54duT+jmJM2jmtgQoBzcAlaNvi
	1MGjTdHQ/3c0olgxiqtKjmZitJebQr9xTH4y+MO/01GtKFum3V09B31kOG/Iib9ivJJKROglNckmi
	6m54+1av4bm5ONEBMUwLaHJUpwznYHBVN9wlaQCUZKBvZ4FyNFVplF6xarLaHmauq1xGlGniMeJBT
	FWrOF0P5Xq7rBIGZGoTmEgkh+WH94hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyRO-0005iH-Jl; Thu, 04 Jul 2019 09:54:10 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyQg-0005Fd-Bn
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:53:28 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E7D1A2001B6;
 Thu,  4 Jul 2019 11:53:24 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CEEB62005A0;
 Thu,  4 Jul 2019 11:53:17 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 08E22402DF;
 Thu,  4 Jul 2019 17:53:08 +0800 (SGT)
From: Anson.Huang@nxp.com
To: p.zabel@pengutronix.de, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, leonard.crestez@nxp.com, ping.bai@nxp.com,
 daniel.baluta@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 1/2] dt-bindings: reset: imx7: Add support for i.MX8MM
Date: Thu,  4 Jul 2019 17:44:15 +0800
Message-Id: <20190704094416.4757-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_025326_979785_A506C62A 
X-CRM114-Status: UNSURE (   8.09  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

i.MX8MM can reuse i.MX8MQ's reset driver, update the compatible
property and related info to support i.MX8MM.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V2:
	- Add separate line for i.MX8MM in case anything different later for i.MX8MM.
---
 Documentation/devicetree/bindings/reset/fsl,imx7-src.txt | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
index 13e0951..c2489e4 100644
--- a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
+++ b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
@@ -8,6 +8,7 @@ Required properties:
 - compatible:
 	- For i.MX7 SoCs should be "fsl,imx7d-src", "syscon"
 	- For i.MX8MQ SoCs should be "fsl,imx8mq-src", "syscon"
+	- For i.MX8MM SoCs should be "fsl,imx8mm-src", "fsl,imx8mq-src", "syscon"
 - reg: should be register base and length as documented in the
   datasheet
 - interrupts: Should contain SRC interrupt
@@ -46,5 +47,6 @@ Example:
 
 
 For list of all valid reset indices see
-<dt-bindings/reset/imx7-reset.h> for i.MX7 and
-<dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ
+<dt-bindings/reset/imx7-reset.h> for i.MX7,
+<dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ and
+<dt-bindings/reset/imx8mq-reset.h> for i.MX8MM
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
