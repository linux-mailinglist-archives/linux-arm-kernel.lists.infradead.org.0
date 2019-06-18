Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C126049DA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=x7j+PY7c2hXCv/6GfMBvkkFrCq5UxFksiHoowPIcakA=; b=mi/
	ee4Ok41HaC3QRFFu9xGA21EFjq11Zbr6qgz+fIwxKCh4ssRHToZ+7CB0o/+22wjVbnh4TvcGApEhH
	YIeBDvTql+iwHL3wov+IkZ4aMuIUt9LqQP1Cycc0hAan1SuhprPkyK918stL0ZlefF8VT38Mg7n7b
	seITCNSImQ9UMfJslxng54jnor/hvd30b6Aott1Ew7dQ+yHyzIsFsIQOEK3oIQUnsuh9vgnmkyrAr
	YQctlF+6lgxEffBKA5UZOxe9DDhoIwozEP/1bac3fYlYk/j86nKNRwVsby8YGPPeaPTAgr9EpaZIw
	CJ2E1nkYUbhkg1C8u6Uh2CfNSwSY0Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAcz-0001RC-PA; Tue, 18 Jun 2019 09:42:09 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAcn-0001PN-Re
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:41:59 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4BFD72003B7;
 Tue, 18 Jun 2019 11:41:55 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2936C200269;
 Tue, 18 Jun 2019 11:41:51 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BEF8A402A0;
 Tue, 18 Jun 2019 17:41:45 +0800 (SGT)
From: Anson.Huang@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, leonard.crestez@nxp.com, abel.vesa@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH RESEND V2] soc: imx8: Use existing of_root directly
Date: Tue, 18 Jun 2019 17:43:38 +0800
Message-Id: <20190618094338.11183-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_024158_032603_433F8778 
X-CRM114-Status: UNSURE (   7.44  )
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

There is common of_root for reference, no need to find it
from DT again, use of_root directly to make driver simple.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/soc/imx/soc-imx8.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index ef2406f..34ab993 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -94,7 +94,6 @@ static int __init imx8_soc_init(void)
 {
 	struct soc_device_attribute *soc_dev_attr;
 	struct soc_device *soc_dev;
-	struct device_node *root;
 	const struct of_device_id *id;
 	u32 soc_rev = 0;
 	const struct imx8_soc_data *data;
@@ -106,12 +105,11 @@ static int __init imx8_soc_init(void)
 
 	soc_dev_attr->family = "Freescale i.MX";
 
-	root = of_find_node_by_path("/");
-	ret = of_property_read_string(root, "model", &soc_dev_attr->machine);
+	ret = of_property_read_string(of_root, "model", &soc_dev_attr->machine);
 	if (ret)
 		goto free_soc;
 
-	id = of_match_node(imx8_soc_match, root);
+	id = of_match_node(imx8_soc_match, of_root);
 	if (!id) {
 		ret = -ENODEV;
 		goto free_soc;
@@ -136,8 +134,6 @@ static int __init imx8_soc_init(void)
 		goto free_rev;
 	}
 
-	of_node_put(root);
-
 	return 0;
 
 free_rev:
@@ -145,7 +141,6 @@ static int __init imx8_soc_init(void)
 		kfree(soc_dev_attr->revision);
 free_soc:
 	kfree(soc_dev_attr);
-	of_node_put(root);
 	return ret;
 }
 device_initcall(imx8_soc_init);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
