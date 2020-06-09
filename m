Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F08B21F499B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 00:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VkXIRh6MldADf6EYylhxCmZmaGV/UjZASoEj5nJXgY8=; b=dmv
	cRniOyCAlk7iGB4fOweyyeOYFJw0n6XDB46Nt77bLwM7RZwsvQifzNPhUXsgnkfqmuI/Uzx3bB3/E
	8/fB/lZb+hICRGJ0q29X0xL/OyyBiCS6KGhzsKqdf0foE/HX/xeCrsL6r0ILsOnNrKZwCdFDgzQYO
	DPrr64T2Z2y5SfjeGOPb/Wb/HH6HJShrIGqBwFSj3D+Xh19vOTXMPdqQrK+sj0er7Vv1F/E7e7pFZ
	ZY6tyoSkG8fMq9cGCLf1JcAyat6eh051/fQAyHyw5Hg1b+LKJ6c/F1PRKXXgm2wPHKFkK0riCU8Lb
	xcR35gNx+t+AjDqrglrnnVriH5vPEkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jin70-0003Vo-05; Tue, 09 Jun 2020 22:52:54 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jin6r-0003Uf-4q
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 22:52:46 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 39AFA1A0322;
 Wed, 10 Jun 2020 00:52:43 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AC2AC1A031B;
 Wed, 10 Jun 2020 00:52:38 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C2B2B402BF;
 Wed, 10 Jun 2020 06:52:32 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, leonard.crestez@nxp.com, abel.vesa@nxp.com,
 l.stach@pengutronix.de, peng.fan@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2] soc: imx8m: Correct i.MX8MP UID fuse offset
Date: Wed, 10 Jun 2020 06:41:55 +0800
Message-Id: <1591742515-7108-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_155245_330751_E2397B58 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Correct i.MX8MP UID fuse offset according to fuse map:

UID_LOW: 0x420
UID_HIGH: 0x430

Fixes: fc40200ebf82 ("soc: imx: increase build coverage for imx8m soc driver")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- add fix tag.
---
 drivers/soc/imx/soc-imx8m.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c
index 7b0759a..0bc8314 100644
--- a/drivers/soc/imx/soc-imx8m.c
+++ b/drivers/soc/imx/soc-imx8m.c
@@ -22,6 +22,8 @@
 #define OCOTP_UID_LOW			0x410
 #define OCOTP_UID_HIGH			0x420
 
+#define IMX8MP_OCOTP_UID_OFFSET		0x10
+
 /* Same as ANADIG_DIGPROG_IMX7D */
 #define ANADIG_DIGPROG_IMX8MM	0x800
 
@@ -87,6 +89,8 @@ static void __init imx8mm_soc_uid(void)
 {
 	void __iomem *ocotp_base;
 	struct device_node *np;
+	u32 offset = of_machine_is_compatible("fsl,imx8mp") ?
+		     IMX8MP_OCOTP_UID_OFFSET : 0;
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-ocotp");
 	if (!np)
@@ -95,9 +99,9 @@ static void __init imx8mm_soc_uid(void)
 	ocotp_base = of_iomap(np, 0);
 	WARN_ON(!ocotp_base);
 
-	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
+	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH + offset);
 	soc_uid <<= 32;
-	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
+	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW + offset);
 
 	iounmap(ocotp_base);
 	of_node_put(np);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
