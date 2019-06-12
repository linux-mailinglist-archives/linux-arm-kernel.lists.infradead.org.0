Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D50C041ABD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 05:35:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xvVQRdc0DRktNuRYSCL7PAU72HiNdZGi7KQPBimXYmQ=; b=KIi42CopWjePffYl5O3xiVRZyO
	bUFo1O8hLLXYd1EftEv6VUStoht4TFjyx7m4gpSQajj38MDhDrF8VK/1y6OcRyhdDq28AFrHwoG5g
	ABGArmMHl3lNm+M3l8YjMBlOBG2Q52eDfKXhsJAqj8ulVc6HmdV/U8VRGu8CEZBZu9Fc0n4r0uzKi
	CxiduBLXkPXFuETMNhoPF5AYPEtjzrggluzC+cpbIzjMwrWvaVJzmZdAB79dZUMY1HgPiAoUGmWCK
	xzdUmyRY0TLAik7qSUeEeeOrhrxk5xrGnnfuSdBeTb9mNNryYd5lQ10K2XHC+KWv8Q7ZXHwE08lwR
	ktTWQOUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hau2W-0006wP-Ua; Wed, 12 Jun 2019 03:35:09 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hau21-0006n4-TB
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 03:34:39 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B62A31A0C2E;
 Wed, 12 Jun 2019 05:34:36 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 35E181A00CD;
 Wed, 12 Jun 2019 05:34:32 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 57791402DD;
 Wed, 12 Jun 2019 11:34:26 +0800 (SGT)
From: Anson.Huang@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, leonard.crestez@nxp.com, viresh.kumar@linaro.org,
 abel.vesa@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] soc: imx8: Use existing of_root directly
Date: Wed, 12 Jun 2019 11:36:20 +0800
Message-Id: <20190612033620.3556-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612033620.3556-1-Anson.Huang@nxp.com>
References: <20190612033620.3556-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_203438_078585_6458E6C4 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

From: Anson Huang <Anson.Huang@nxp.com>

There is common of_root for reference, no need to find it
from DT again, use of_root directly to make driver simple.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/soc/imx/soc-imx8.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index 86b925a..a632083 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -100,7 +100,6 @@ static int __init imx8_soc_init(void)
 {
 	struct soc_device_attribute *soc_dev_attr;
 	struct soc_device *soc_dev;
-	struct device_node *root;
 	const struct of_device_id *id;
 	u32 soc_rev = 0;
 	const struct imx8_soc_data *data;
@@ -112,12 +111,11 @@ static int __init imx8_soc_init(void)
 
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
@@ -145,8 +143,6 @@ static int __init imx8_soc_init(void)
 		goto free_rev;
 	}
 
-	of_node_put(root);
-
 	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
 		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
 
@@ -156,7 +152,6 @@ static int __init imx8_soc_init(void)
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
