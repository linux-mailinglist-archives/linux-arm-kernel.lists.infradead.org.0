Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CDA185509
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 08:18:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Spt7Wx+Kd/Y6KX+0ekvinaL/EG+WCVfQqnsT9YKcUYg=; b=MrP
	cVDQoinN+k2+xakUt7oPleLj7PcNYLE23eLD4lsYgX6IK+BhDTgFZ5TZPoewCJzrpb3SUJzTHjMuD
	Evoo1uZlvBOxgyuBEuuYW6Z6y7QeKqb6SW/bBq3zUfvIwQeoT1pqEMRViGfskTb+IR6jbqQ3XY+/c
	sBmAozAN9kmIiKFWCagf1LdiCm6L6ApufxkXw4aP7uCANe2I547FnDFWg1mgmEaa3ShqcaOG3uX4r
	mJ+juJj8kf/H9/GXNAEHqOW0QVWI3Ui2DVQi+FPoV8iE/PIRDSSSd6NW7PX9HPhIU+eaV3JKP2f7s
	y74khwZ7XjTh4MbiqRgQNifIRUn3Ckw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD13b-0004Us-NQ; Sat, 14 Mar 2020 07:18:03 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD13R-0004UN-12
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 07:17:54 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6951520155F;
 Sat, 14 Mar 2020 08:17:49 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 12B13201561;
 Sat, 14 Mar 2020 08:17:45 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8931D402A5;
 Sat, 14 Mar 2020 15:17:39 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: srinivas.kandagatla@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] nvmem: mxs-ocotp: Use devm_add_action_or_reset() for cleanup
Date: Sat, 14 Mar 2020 15:11:11 +0800
Message-Id: <1584169871-418-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_001753_209235_6D677544 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_add_action_or_reset() for cleanup to call clk_unprepare(),
which can simplify the error handling in .probe, and .remove callback
can be dropped.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/nvmem/mxs-ocotp.c | 30 +++++++++++-------------------
 1 file changed, 11 insertions(+), 19 deletions(-)

diff --git a/drivers/nvmem/mxs-ocotp.c b/drivers/nvmem/mxs-ocotp.c
index 8e4898d..588ab56 100644
--- a/drivers/nvmem/mxs-ocotp.c
+++ b/drivers/nvmem/mxs-ocotp.c
@@ -130,6 +130,11 @@ static const struct of_device_id mxs_ocotp_match[] = {
 };
 MODULE_DEVICE_TABLE(of, mxs_ocotp_match);
 
+static void mxs_ocotp_action(void *data)
+{
+	clk_unprepare(data);
+}
+
 static int mxs_ocotp_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -160,39 +165,26 @@ static int mxs_ocotp_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	ret = devm_add_action_or_reset(&pdev->dev, mxs_ocotp_action, otp->clk);
+	if (ret)
+		return ret;
+
 	data = match->data;
 
 	ocotp_config.size = data->size;
 	ocotp_config.priv = otp;
 	ocotp_config.dev = dev;
 	otp->nvmem = devm_nvmem_register(dev, &ocotp_config);
-	if (IS_ERR(otp->nvmem)) {
-		ret = PTR_ERR(otp->nvmem);
-		goto err_clk;
-	}
+	if (IS_ERR(otp->nvmem))
+		return PTR_ERR(otp->nvmem);
 
 	platform_set_drvdata(pdev, otp);
 
 	return 0;
-
-err_clk:
-	clk_unprepare(otp->clk);
-
-	return ret;
-}
-
-static int mxs_ocotp_remove(struct platform_device *pdev)
-{
-	struct mxs_ocotp *otp = platform_get_drvdata(pdev);
-
-	clk_unprepare(otp->clk);
-
-	return 0;
 }
 
 static struct platform_driver mxs_ocotp_driver = {
 	.probe = mxs_ocotp_probe,
-	.remove = mxs_ocotp_remove,
 	.driver = {
 		.name = "mxs-ocotp",
 		.of_match_table = mxs_ocotp_match,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
