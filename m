Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25827607FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nLxRpeYbs3NhqOTYeSFtt4K/Vl85it7dq2dr/GkLLYY=; b=DM+
	C37wLVP4d9cQ02Ld6KOOmqFgLRHd4DRcZNIyMkNrW+nRAq83aEAsiS0xeE3G+Ct5NgRZLK5nvvBbl
	5rTFPCTNrJuHAlnAWRnBFiwYhJLHqXQsky25rerV1KaKM1TYb4aIv4squ4WILptcjeC7JpTdtVcWe
	YWd0/CZuZVb4CRFjxkvJG2I0ArEidOVtAG7jfqJZQZtzRa0KVES9vJOcBk/PYf0Y7806dMVSeyWDt
	t9OqY3B2DljyNlW9uPlxot/eEi+/8fVEdULPkifRUio9jqFZ03ZJ4s04oFaSW/bLCjIfGmg2bT360
	nQowetv/RuNXUgbOHmwG6zarEEvaNsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPLH-0007Lz-AY; Fri, 05 Jul 2019 14:37:39 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPK0-000661-2R
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pYi5md312Oismo4x9q7nwU7tKukeHB73bTHtkyMB08Y=; b=KGtzLysdat4lLms4LSgduF0YI
 R1X18f/lo7YbyC/urCTMuWVDleyJdd8wun2CL9Zz9jGM4NuO6aYHYZjVtrw++nERGSR0dx7sPLEpY
 keKzKtBd8BgZf1jDU6CrwXSz34BHKK7ZTjq7q5m6kGqLZ9HSQLkVW9DmffEE2fITOKPhsduI0MaOP
 u0dUqWIQ53Dr45orODL6Rbzop0RESmQBIk8cCmqN5kMIj1zfF9TIHeFXG++w1t+KVC87w5XMczln0
 ytHQILYvo3bb5hAlQ0se8CWprIWaPTO6iC49gLd14xKlqoczjdV6/8BSijXqXs2FI8buaJuogwBQe
 +e8eChXsA==;
Received: from inva021.nxp.com ([92.121.34.21])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjK7p-0007VH-7l
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 09:03:27 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BCC04200BE1;
 Fri,  5 Jul 2019 11:03:17 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 05681200E68;
 Fri,  5 Jul 2019 11:03:10 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B7C75402DF;
 Fri,  5 Jul 2019 17:03:00 +0800 (SGT)
From: Anson.Huang@nxp.com
To: p.zabel@pengutronix.de, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, leonard.crestez@nxp.com, viresh.kumar@linaro.org,
 daniel.baluta@nxp.com, ping.bai@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V4 1/2] dt-bindings: reset: imx7: Add support for i.MX8MM
Date: Fri,  5 Jul 2019 16:54:05 +0800
Message-Id: <20190705085406.22483-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_100325_318092_3F82F3B1 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

From: Anson Huang <Anson.Huang@nxp.com>

i.MX8MM can reuse i.MX8MQ's reset driver, update the compatible
property and related info to support i.MX8MM.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V3:
	- Add comments to those reset indices to indicate which are NOT supported on i.MX8MM.
---
 .../devicetree/bindings/reset/fsl,imx7-src.txt     |  6 +++--
 include/dt-bindings/reset/imx8mq-reset.h           | 28 +++++++++++-----------
 2 files changed, 18 insertions(+), 16 deletions(-)

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
diff --git a/include/dt-bindings/reset/imx8mq-reset.h b/include/dt-bindings/reset/imx8mq-reset.h
index 57c5924..f17ef2a 100644
--- a/include/dt-bindings/reset/imx8mq-reset.h
+++ b/include/dt-bindings/reset/imx8mq-reset.h
@@ -38,26 +38,26 @@
 #define IMX8MQ_RESET_PCIEPHY_PERST		27
 #define IMX8MQ_RESET_PCIE_CTRL_APPS_EN		28
 #define IMX8MQ_RESET_PCIE_CTRL_APPS_TURNOFF	29
-#define IMX8MQ_RESET_HDMI_PHY_APB_RESET		30
+#define IMX8MQ_RESET_HDMI_PHY_APB_RESET		30	/* i.MX8MM does NOT support */
 #define IMX8MQ_RESET_DISP_RESET			31
 #define IMX8MQ_RESET_GPU_RESET			32
 #define IMX8MQ_RESET_VPU_RESET			33
-#define IMX8MQ_RESET_PCIEPHY2			34
-#define IMX8MQ_RESET_PCIEPHY2_PERST		35
-#define IMX8MQ_RESET_PCIE2_CTRL_APPS_EN		36
-#define IMX8MQ_RESET_PCIE2_CTRL_APPS_TURNOFF	37
-#define IMX8MQ_RESET_MIPI_CSI1_CORE_RESET	38
-#define IMX8MQ_RESET_MIPI_CSI1_PHY_REF_RESET	39
-#define IMX8MQ_RESET_MIPI_CSI1_ESC_RESET	40
-#define IMX8MQ_RESET_MIPI_CSI2_CORE_RESET	41
-#define IMX8MQ_RESET_MIPI_CSI2_PHY_REF_RESET	42
-#define IMX8MQ_RESET_MIPI_CSI2_ESC_RESET	43
+#define IMX8MQ_RESET_PCIEPHY2			34	/* i.MX8MM does NOT support */
+#define IMX8MQ_RESET_PCIEPHY2_PERST		35	/* i.MX8MM does NOT support */
+#define IMX8MQ_RESET_PCIE2_CTRL_APPS_EN		36	/* i.MX8MM does NOT support */
+#define IMX8MQ_RESET_PCIE2_CTRL_APPS_TURNOFF	37	/* i.MX8MM does NOT support */
+#define IMX8MQ_RESET_MIPI_CSI1_CORE_RESET	38	/* i.MX8MM does NOT support */
+#define IMX8MQ_RESET_MIPI_CSI1_PHY_REF_RESET	39	/* i.MX8MM does NOT support */
+#define IMX8MQ_RESET_MIPI_CSI1_ESC_RESET	40	/* i.MX8MM does NOT support */
+#define IMX8MQ_RESET_MIPI_CSI2_CORE_RESET	41	/* i.MX8MM does NOT support */
+#define IMX8MQ_RESET_MIPI_CSI2_PHY_REF_RESET	42	/* i.MX8MM does NOT support */
+#define IMX8MQ_RESET_MIPI_CSI2_ESC_RESET	43	/* i.MX8MM does NOT support */
 #define IMX8MQ_RESET_DDRC1_PRST			44
 #define IMX8MQ_RESET_DDRC1_CORE_RESET		45
 #define IMX8MQ_RESET_DDRC1_PHY_RESET		46
-#define IMX8MQ_RESET_DDRC2_PRST			47
-#define IMX8MQ_RESET_DDRC2_CORE_RESET		48
-#define IMX8MQ_RESET_DDRC2_PHY_RESET		49
+#define IMX8MQ_RESET_DDRC2_PRST			47	/* i.MX8MM does NOT support */
+#define IMX8MQ_RESET_DDRC2_CORE_RESET		48	/* i.MX8MM does NOT support */
+#define IMX8MQ_RESET_DDRC2_PHY_RESET		49	/* i.MX8MM does NOT support */
 
 #define IMX8MQ_RESET_NUM			50
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
