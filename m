Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1511C791C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 20:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFPR1L1y+c6x6rtb5IB60lSR7rKCAd3FJOIwbwWDXoI=; b=K9BmYfsE+ctTN4
	JfO6VGzWf3arVuJhtna60p+8lJciwEO8A46o+zMvmQ2XM4eYSZee+CpTX6QC/uXdEJickz3V/A0Ym
	kbICXWEKM3Q8ViHOTi4dZsQtO25rAE4f6tp24gvWOlcXf/NmDoTYj7wxKMn27468VVMzIXeXaDidB
	ZyCgCJuNMabwUOodGd6/nkSl+K4QZOInm0mq9tCyDVLZIAqA5AfyXea8sS547JgDmzx5pv8er78P9
	3YztUjloxNZbvvyaRgrrGNi/2gq3BProC5Jb1bqepAnTGNUaAKFWCMlkKzkk4duIgLV2QctUd2HsJ
	Bmjj5yhTSMJk1HrEdz4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWOZJ-0002W3-1a; Wed, 06 May 2020 18:14:53 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWOYp-0002IA-7q
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 18:14:24 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 046IEHcu113080;
 Wed, 6 May 2020 13:14:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588788857;
 bh=20L7n6cKqltPv3wfvOhFIcwvOiMLy97rJd2UNg8HT1E=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=qKM3NlF2qKZBetc/pTXOWYjeoXLSZbW827xDp3o7pdGlZGVCL7Q3NjqTzvuy23Luw
 JywQPQZFTGs4ps5gqw8jZ039+A2XwTA733sCwAIgPvRBfls2YsqvQqRbVnazvnX2Xh
 kwQd0CFk8PxXEAM6TqKp5n/QCNPIeRihB+aHkVWw=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 046IEHEV023467
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 6 May 2020 13:14:17 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 6 May
 2020 13:14:17 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 6 May 2020 13:14:17 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 046IEGgc018766;
 Wed, 6 May 2020 13:14:16 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 <devicetree@vger.kernel.org>, Tero Kristo <t-kristo@ti.com>
Subject: [PATCH net-next 1/3] net: ethernet: ti: am65-cpsw-nuss: use
 of_platform_device_create() for mdio
Date: Wed, 6 May 2020 21:13:59 +0300
Message-ID: <20200506181401.28699-2-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506181401.28699-1-grygorii.strashko@ti.com>
References: <20200506181401.28699-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_111423_362063_D47B6A53 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: netdev@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MCU CPSW expected to populate only MDIO device, but follow up patches
will add "compatible" property to the MCU CPSW CPTS node which will cause
creation of CPTS device and MCU CPSW init failure. Hence, switch to use
of_platform_device_create() instead of of_platform_populate() for MDIO
device population.

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/net/ethernet/ti/am65-cpsw-nuss.c | 24 ++++++++++++++++++------
 drivers/net/ethernet/ti/am65-cpsw-nuss.h |  2 ++
 2 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
index bb391286d89e..64c9eba3c32a 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
@@ -2030,10 +2030,21 @@ static int am65_cpsw_nuss_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = of_platform_populate(dev->of_node, NULL, NULL, dev);
-	/* We do not want to force this, as in some cases may not have child */
-	if (ret)
-		dev_warn(dev, "populating child nodes err:%d\n", ret);
+	node = of_get_child_by_name(dev->of_node, "mdio");
+	if (!node) {
+		dev_warn(dev, "MDIO node not found\n");
+	} else if (of_device_is_available(node)) {
+		struct platform_device *mdio_pdev;
+
+		mdio_pdev = of_platform_device_create(node, NULL, dev);
+		if (!mdio_pdev) {
+			ret = -ENODEV;
+			goto err_pm_clear;
+		}
+
+		common->mdio_dev =  &mdio_pdev->dev;
+	}
+	of_node_put(node);
 
 	am65_cpsw_nuss_get_ver(common);
 
@@ -2089,7 +2100,8 @@ static int am65_cpsw_nuss_probe(struct platform_device *pdev)
 	return 0;
 
 err_of_clear:
-	of_platform_depopulate(dev);
+	of_platform_device_destroy(common->mdio_dev, NULL);
+err_pm_clear:
 	pm_runtime_put_sync(dev);
 	pm_runtime_disable(dev);
 	return ret;
@@ -2114,7 +2126,7 @@ static int am65_cpsw_nuss_remove(struct platform_device *pdev)
 	 */
 	am65_cpsw_nuss_cleanup_ndev(common);
 
-	of_platform_depopulate(dev);
+	of_platform_device_destroy(common->mdio_dev, NULL);
 
 	pm_runtime_put_sync(&pdev->dev);
 	pm_runtime_disable(&pdev->dev);
diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.h b/drivers/net/ethernet/ti/am65-cpsw-nuss.h
index b1cddfd05a45..8a6382188cb5 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.h
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.h
@@ -9,6 +9,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/netdevice.h>
+#include <linux/platform_device.h>
 
 struct am65_cpts;
 
@@ -76,6 +77,7 @@ struct am65_cpsw_pdata {
 
 struct am65_cpsw_common {
 	struct device		*dev;
+	struct device		*mdio_dev;
 	const struct am65_cpsw_pdata *pdata;
 
 	void __iomem		*ss_base;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
