Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4C3E9369
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 00:18:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bTRCyX2uzytWf/DRxNLPu530y7PY2AXjd0fNh+f60SQ=; b=jMR
	5tsJxYa9f9CktmR03xtgGgzVvjcMoCulXY9sQCiQmKStTDsSBpgGn1b0LMtreurf33vARCum0nBab
	Hp1bp7mwJVXxxUixIGB1NHBqtWFINmxyPFV/tdVtmyApxu2eZ10zLWBBPDaqf5nuRzrHVsHamuHKL
	/12LR+ImUSwubOTw3vT66lGpi0khmpx9QJXB7lshibezeh5g+zCtX8rE3Z7AFouTUHywt9UNaRvFP
	YpEPE5Qa0s4A1Y8tzn8e67sMGdNikrlptDcpudJ8nJkm5BqYVKLnepq2Z369KbS/YavRMwhu1cZxx
	R/3oU96n0TMWUVDHwEhiUrFxEdnceMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPakT-0006oQ-3v; Tue, 29 Oct 2019 23:18:01 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPakH-0006nk-2p
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 23:17:51 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D55D9200096;
 Wed, 30 Oct 2019 00:17:40 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C7A67200035;
 Wed, 30 Oct 2019 00:17:40 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 4BEA3205C7;
 Wed, 30 Oct 2019 00:17:40 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2] soc: imx8mq: Read SOC revision from TF-A
Date: Wed, 30 Oct 2019 01:17:39 +0200
Message-Id: <681dff4de9d3d0cb045b0a5883b02c04bbd2486f.1572391028.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_161749_261721_2DE8ED90 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SOC revision on older imx8mq is not available in fuses so on anything
other than B1 current code just reports "unknown".

TF-A already handles this by parsing the ROM and exposes the value
through a SMC call. Call this instead of reimplementing the workaround
in the kernel itself.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

---
Changes since v1:
* Add ifdef to fix build on ARM older than v7 (kbuild robot)
Link to v1: https://patchwork.kernel.org/patch/11183813/

Alternatively a CONFIG_IMX8M_SOC config option could be created which
depends on HAVE_ARM_SMCCC but that also requires defconfig changes.

 drivers/soc/imx/soc-imx8.c | 32 +++++++++++++++++++++++++++++---
 1 file changed, 29 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index fcbf745a9971..6a2916664438 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -7,17 +7,20 @@
 #include <linux/io.h>
 #include <linux/of_address.h>
 #include <linux/slab.h>
 #include <linux/sys_soc.h>
 #include <linux/platform_device.h>
+#include <linux/arm-smccc.h>
 #include <linux/of.h>
 
 #define REV_B1				0x21
 
 #define IMX8MQ_SW_INFO_B1		0x40
 #define IMX8MQ_SW_MAGIC_B1		0xff0055aa
 
+#define IMX_SIP_GET_SOC_INFO		0xc2000006
+
 #define OCOTP_UID_LOW			0x410
 #define OCOTP_UID_HIGH			0x420
 
 /* Same as ANADIG_DIGPROG_IMX7D */
 #define ANADIG_DIGPROG_IMX8MM	0x800
@@ -27,10 +30,26 @@ struct imx8_soc_data {
 	u32 (*soc_revision)(void);
 };
 
 static u64 soc_uid;
 
+#ifdef CONFIG_HAVE_ARM_SMCCC
+static u32 imx8mq_soc_revision_from_atf(void)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(IMX_SIP_GET_SOC_INFO, 0, 0, 0, 0, 0, 0, 0, &res);
+
+	if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
+		return 0;
+	else
+		return res.a0 & 0xff;
+}
+#else
+static u32 imx8mq_soc_revision_from_atf(void) { return 0; };
+#endif
+
 static u32 __init imx8mq_soc_revision(void)
 {
 	struct device_node *np;
 	void __iomem *ocotp_base;
 	u32 magic;
@@ -41,13 +60,20 @@ static u32 __init imx8mq_soc_revision(void)
 		goto out;
 
 	ocotp_base = of_iomap(np, 0);
 	WARN_ON(!ocotp_base);
 
-	magic = readl_relaxed(ocotp_base + IMX8MQ_SW_INFO_B1);
-	if (magic == IMX8MQ_SW_MAGIC_B1)
-		rev = REV_B1;
+	/*
+	 * SOC revision on older imx8mq is not available in fuses so query
+	 * the value from ATF instead.
+	 */
+	rev = imx8mq_soc_revision_from_atf();
+	if (!rev) {
+		magic = readl_relaxed(ocotp_base + IMX8MQ_SW_INFO_B1);
+		if (magic == IMX8MQ_SW_MAGIC_B1)
+			rev = REV_B1;
+	}
 
 	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
 	soc_uid <<= 32;
 	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
