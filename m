Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BB96F8BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/eccYf/RCv8GNv6xW6i9rksgI+VzdNyAqCprktC4E9w=; b=WCx5nPDyzKhPI9
	jN22QINNuMLtquWAyM+z9GXwvqggQN9lKDStavU64ece6ncfqUVSipuVy4iHDw5I9OJUaVY1IJcdw
	hK1RyUoYtDabpFR2uNrbzHsUZtKJKnq+iutaXaPASUUSOlKCVziX6qo3ivvge8068cBE93nGxEKnW
	YSM74iVOG4oHTAYtnu5fj7w+ZR58/dVhqcuCUEkYehHUxfdtZ1Pj0BqqEH056naNzhwCHgxWFF+Xi
	y0r1kXvmq7Tuu1HI2mPRR/xulLhtoh/zb7IfNr6iri/Ukyi2waW8pUZjQQAq4jbnHcf94UKZ5t68W
	9NNaVZtlxkLDuMHiKqnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpQam-0004BQ-7j; Mon, 22 Jul 2019 05:10:32 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpQZ8-0003Nj-Vk
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 05:08:52 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6M58nuU094958;
 Mon, 22 Jul 2019 00:08:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563772129;
 bh=AbtY8JySac7W79JQs2/YYJr5mQ/nCHhQkZITZqIwon4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=UkPKYr4Jd5HGuKNLRWLpVQZH5sU0/aFU/1puxWtiECi0ym7KjrQmFraZZZvRkVEQa
 aA0VDCxCF/5VizWfwo6GSED7cdHg1pHgk6KxFNclPQJqZyy2jQnXiP3St36TJRatfS
 vqQL7aPn9824DUznz4ou+8olb347RZi2izUDOMKE=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6M58nGH056951
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Jul 2019 00:08:49 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 00:08:49 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 00:08:49 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6M58bwO039856;
 Mon, 22 Jul 2019 00:08:47 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 3/5] soc: ti: ti_sci_pm_domains: Add support for exclusive
 and shared access
Date: Mon, 22 Jul 2019 10:37:55 +0530
Message-ID: <20190722050757.29893-4-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722050757.29893-1-lokeshvutla@ti.com>
References: <20190722050757.29893-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_220851_222769_141E3DD2 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TISCI protocol supports for enabling the device either with exclusive
permissions for the requesting host or with sharing across the hosts.
There are certain devices which are exclusive to Linux context and
there are certain devices that are shared across different host contexts.
So add support for getting this information from DT by increasing
the power-domain cells to 2.

For keeping the DT backward compatibility intact, defaulting the
device permissions to set the exclusive flag set. In this case the
power-domain-cells is 1.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 drivers/soc/ti/ti_sci_pm_domains.c | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/ti/ti_sci_pm_domains.c b/drivers/soc/ti/ti_sci_pm_domains.c
index 97817dd7ba24..8c2a2f23982c 100644
--- a/drivers/soc/ti/ti_sci_pm_domains.c
+++ b/drivers/soc/ti/ti_sci_pm_domains.c
@@ -15,15 +15,19 @@
 #include <linux/pm_domain.h>
 #include <linux/slab.h>
 #include <linux/soc/ti/ti_sci_protocol.h>
+#include <dt-bindings/soc/ti,sci_pm_domain.h>
 
 /**
  * struct ti_sci_genpd_dev_data: holds data needed for every device attached
  *				 to this genpd
  * @idx: index of the device that identifies it with the system
  *	 control processor.
+ * @exclusive: Permissions for exclusive request or shared request of the
+ *	       device.
  */
 struct ti_sci_genpd_dev_data {
 	int idx;
+	u8 exclusive;
 };
 
 /**
@@ -55,6 +59,14 @@ static int ti_sci_dev_id(struct device *dev)
 	return sci_dev_data->idx;
 }
 
+static u8 is_ti_sci_dev_exclusive(struct device *dev)
+{
+	struct generic_pm_domain_data *genpd_data = dev_gpd_data(dev);
+	struct ti_sci_genpd_dev_data *sci_dev_data = genpd_data->data;
+
+	return sci_dev_data->exclusive;
+}
+
 /**
  * ti_sci_dev_to_sci_handle(): get pointer to ti_sci_handle
  * @dev: pointer to device associated with this genpd
@@ -79,7 +91,10 @@ static int ti_sci_dev_start(struct device *dev)
 	const struct ti_sci_handle *ti_sci = ti_sci_dev_to_sci_handle(dev);
 	int idx = ti_sci_dev_id(dev);
 
-	return ti_sci->ops.dev_ops.get_device(ti_sci, idx);
+	if (is_ti_sci_dev_exclusive(dev))
+		return ti_sci->ops.dev_ops.get_device_exclusive(ti_sci, idx);
+	else
+		return ti_sci->ops.dev_ops.get_device(ti_sci, idx);
 }
 
 /**
@@ -110,7 +125,7 @@ static int ti_sci_pd_attach_dev(struct generic_pm_domain *domain,
 	if (ret < 0)
 		return ret;
 
-	if (pd_args.args_count != 1)
+	if (pd_args.args_count != 1 && pd_args.args_count != 2)
 		return -EINVAL;
 
 	idx = pd_args.args[0];
@@ -128,6 +143,10 @@ static int ti_sci_pd_attach_dev(struct generic_pm_domain *domain,
 		return -ENOMEM;
 
 	sci_dev_data->idx = idx;
+	/* Enable the exclusive permissions by default */
+	sci_dev_data->exclusive = TI_SCI_PD_EXCLUSIVE;
+	if (pd_args.args_count == 2)
+		sci_dev_data->exclusive = pd_args.args[1] & 0x1;
 
 	genpd_data = dev_gpd_data(dev);
 	genpd_data->data = sci_dev_data;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
