Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD852E43E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 08:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1Gpc5cX+LgKWbcEL1eMu8WFHJwsD/tJbNnRkUBRllXg=; b=Zn6
	jFy174V5hXEvKbnHaKGUCdKc07mlPKzDCHzqZKcqoBUxSE1CN97rSfgFGapwRUNYaG4W217gpTEN+
	SD8V8Eaps+uRkQa3nQ1Qhry37D0IzU2CLt4F8IyoFNYqgj1ZgAnnBMd5OhES/57S4uhFUCCjV7Tuq
	Jb/j6VV377COXjqlwYUnyZoGDCfAYYRNZQ64OufR5mDaxVUbTpe2beB+99yKz3Cg6xrT7TDhc7oHC
	014IVi9svweiJi7G9v8DuLnW3AMhZduqUU/3hAwyfnxuJiPPJI+D+sGk2aPd4tYnwABii0k8dxGs6
	1CuWEZDLgb1cUTYNHBi5Dyr4y3SQ8yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNtZa-0001Uu-R3; Fri, 25 Oct 2019 06:59:46 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNtZQ-0001U0-6q
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 06:59:37 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 51A0E2008F3;
 Fri, 25 Oct 2019 08:59:33 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0A94B200438;
 Fri, 25 Oct 2019 08:59:28 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 432B2402BC;
 Fri, 25 Oct 2019 14:59:21 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, daniel.baluta@nxp.com, aisheng.dong@nxp.com,
 abel.vesa@nxp.com, leonard.crestez@nxp.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] soc: imx8: Using existing serial_number instead of UID
Date: Fri, 25 Oct 2019 14:56:22 +0800
Message-Id: <1571986583-21138-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_235936_414197_1CD0B318 
X-CRM114-Status: GOOD (  10.70  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The soc_device_attribute structure already contains a serial_number
attribute to show SoC's unique ID, just use it to show SoC's unique
ID instead of creating a new file called soc_uid.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/soc/imx/soc-imx8.c | 23 +++++++++--------------
 1 file changed, 9 insertions(+), 14 deletions(-)

diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index b9831576..fcbf745 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -29,14 +29,6 @@ struct imx8_soc_data {
 
 static u64 soc_uid;
 
-static ssize_t soc_uid_show(struct device *dev,
-			    struct device_attribute *attr, char *buf)
-{
-	return sprintf(buf, "%016llX\n", soc_uid);
-}
-
-static DEVICE_ATTR_RO(soc_uid);
-
 static u32 __init imx8mq_soc_revision(void)
 {
 	struct device_node *np;
@@ -174,22 +166,25 @@ static int __init imx8_soc_init(void)
 		goto free_soc;
 	}
 
+	soc_dev_attr->serial_number = kasprintf(GFP_KERNEL, "%016llX", soc_uid);
+	if (!soc_dev_attr->serial_number) {
+		ret = -ENOMEM;
+		goto free_rev;
+	}
+
 	soc_dev = soc_device_register(soc_dev_attr);
 	if (IS_ERR(soc_dev)) {
 		ret = PTR_ERR(soc_dev);
-		goto free_rev;
+		goto free_serial_number;
 	}
 
-	ret = device_create_file(soc_device_to_device(soc_dev),
-				 &dev_attr_soc_uid);
-	if (ret)
-		goto free_rev;
-
 	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
 		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
 
 	return 0;
 
+free_serial_number:
+	kfree(soc_dev_attr->serial_number);
 free_rev:
 	if (strcmp(soc_dev_attr->revision, "unknown"))
 		kfree(soc_dev_attr->revision);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
