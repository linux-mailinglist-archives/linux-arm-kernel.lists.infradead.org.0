Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95321294DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 12:11:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynPjLlxE/en6OzZQPByCEu7O/vgnMHo5pzYKr5OX1Vg=; b=Lbl959KN2UZ0PE
	qmurzFDrKyxM9FNLjATd7TZxeb5l6IYsOOKIAEt2196x5hA2RbD1QnWsDr9m0hA6c0lYzBr84w+1j
	K7LeRj9/wh24Na1eJY5iSBtRpXYywbT/IrXSvZAe4gqq9WmOVRqzXQRRaREYtrWvcdPnwmeYUziX8
	Zjps/hs2a56EhLPha/pmjbptFfaT89VHvLLv6u5lpJUeTjkunaotJ9+XgZlmEpknO98UrZvNyYnOB
	b/aj/t7Mzbe6HOr8q0fx/t39n2UUO0P7+reEhdiR8bmm/nZ61xcCoRC1koVLQ51tvEL2MsKgcEE1D
	bEbaePhtsTQSW5uKALiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijLbb-0006vi-JG; Mon, 23 Dec 2019 11:10:31 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijLXE-0002Xs-Ms
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 11:06:05 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBNB5txe067332;
 Mon, 23 Dec 2019 05:05:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1577099155;
 bh=VgdWAAJ3Cz8tiJk/iLF7p/5t+YnecUVQdlQ8kNoKFXU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=UoxeAjlYwCQ2sLKXKo2e9e6TOQhzNiiMKWLsTvljz/X0oleqHX+A9Bl8IJUh1FQnJ
 HBoP/HcHIvF5H/Zn5cGwoRVnF5aTyyomxVrlVGK7jUg4GjQFJK0Ky9eB7hbZ4ZCkQg
 92hWHY1bcsTDib4jaKxFU2nFJDUJbfLbatbKBzpU=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBNB5tJJ041498
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 23 Dec 2019 05:05:55 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 23
 Dec 2019 05:05:55 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 23 Dec 2019 05:05:55 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBNB4eMP025693;
 Mon, 23 Dec 2019 05:05:51 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v8 18/18] soc: ti: k3-ringacc: Allow the driver to be built as
 module
Date: Mon, 23 Dec 2019 13:04:58 +0200
Message-ID: <20191223110458.30766-19-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191223110458.30766-1-peter.ujfalusi@ti.com>
References: <20191223110458.30766-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_030600_954264_05A0878E 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, vigneshr@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ring accelerator driver can be built as module since all depending
functions are exported.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Tested-by: Keerthy <j-keerthy@ti.com>
Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/soc/ti/Kconfig      |  2 +-
 drivers/soc/ti/k3-ringacc.c | 29 ++++++++++++++++++++++++++---
 2 files changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/ti/Kconfig b/drivers/soc/ti/Kconfig
index 4486e055794c..bdce98f68a3e 100644
--- a/drivers/soc/ti/Kconfig
+++ b/drivers/soc/ti/Kconfig
@@ -81,7 +81,7 @@ config TI_SCI_PM_DOMAINS
 	  rootfs may be available.
 
 config TI_K3_RINGACC
-	bool "K3 Ring accelerator Sub System"
+	tristate "K3 Ring accelerator Sub System"
 	depends on ARCH_K3 || COMPILE_TEST
 	depends on TI_SCI_INTA_IRQCHIP
 	help
diff --git a/drivers/soc/ti/k3-ringacc.c b/drivers/soc/ti/k3-ringacc.c
index 5fb2ee2ac978..fd9f35b7c9a6 100644
--- a/drivers/soc/ti/k3-ringacc.c
+++ b/drivers/soc/ti/k3-ringacc.c
@@ -7,7 +7,7 @@
 
 #include <linux/dma-mapping.h>
 #include <linux/io.h>
-#include <linux/init.h>
+#include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/soc/ti/k3-ringacc.h>
@@ -264,6 +264,11 @@ struct k3_ring *k3_ringacc_request_ring(struct k3_ringacc *ringacc,
 
 	mutex_lock(&ringacc->req_lock);
 
+	if (!try_module_get(ringacc->dev->driver->owner)) {
+		mutex_unlock(&ringacc->req_lock);
+		return NULL;
+	}
+
 	if (id == K3_RINGACC_RING_ID_ANY) {
 		/* Request for any general purpose ring */
 		struct ti_sci_resource_desc *gp_rings =
@@ -308,6 +313,7 @@ struct k3_ring *k3_ringacc_request_ring(struct k3_ringacc *ringacc,
 	return &ringacc->rings[id];
 
 error:
+	module_put(ringacc->dev->driver->owner);
 	mutex_unlock(&ringacc->req_lock);
 	return NULL;
 }
@@ -488,6 +494,8 @@ int k3_ringacc_ring_free(struct k3_ring *ring)
 no_init:
 	clear_bit(ring->ring_id, ringacc->rings_inuse);
 
+	module_put(ringacc->dev->driver->owner);
+
 out:
 	mutex_unlock(&ringacc->req_lock);
 	return 0;
@@ -1140,18 +1148,33 @@ static int k3_ringacc_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static int k3_ringacc_remove(struct platform_device *pdev)
+{
+	struct k3_ringacc *ringacc = dev_get_drvdata(&pdev->dev);
+
+	mutex_lock(&k3_ringacc_list_lock);
+	list_del(&ringacc->list);
+	mutex_unlock(&k3_ringacc_list_lock);
+	return 0;
+}
+
 /* Match table for of_platform binding */
 static const struct of_device_id k3_ringacc_of_match[] = {
 	{ .compatible = "ti,am654-navss-ringacc", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, k3_ringacc_of_match);
 
 static struct platform_driver k3_ringacc_driver = {
 	.probe		= k3_ringacc_probe,
+	.remove		= k3_ringacc_remove,
 	.driver		= {
 		.name	= "k3-ringacc",
 		.of_match_table = k3_ringacc_of_match,
-		.suppress_bind_attrs = true,
 	},
 };
-builtin_platform_driver(k3_ringacc_driver);
+module_platform_driver(k3_ringacc_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("TI Ringacc driver for K3 SOCs");
+MODULE_AUTHOR("Grygorii Strashko <grygorii.strashko@ti.com>");
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
