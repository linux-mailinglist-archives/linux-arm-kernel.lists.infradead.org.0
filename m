Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2FFBACE3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 05:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4tdHI7tGx8z37nifDoBcQCfMFIhFfF2owEuB+6QYkFE=; b=EGNjjfiUp4xHS9
	1TAmWhj+/ne6aRyH6jpWnUaAb5EcLnQQTS+kmrOoJ8OJzQwU/LNureCszqQz468QrHm2raEuower1
	cEKwuZ+XfzGDbOO5j57bjE/XBVbXfnyEwTTOkJ6aKpESB85AcAPjdbGYREmFI3aVW8Z2dtZo4Eal1
	keCoY7EEjvmAi9uP+xmMQcG+fhf/LzJ/mq9mlxeowWZBY+n/JDLMfgmNAl00Uf9NjahuxamO0MGDY
	qVI+VCbo7B33QKz++zy9caMeRwoxileBSdOJ2Nh1FXe9OAaT8ly3BbVQh/zWbsj/nBM13nRWwOVuf
	z7RS+RcOZuaI5E69PKDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCF8v-0003zc-DT; Mon, 23 Sep 2019 03:36:05 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCF8U-0003yf-T3
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 03:35:40 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8N3ZTQw018961;
 Sun, 22 Sep 2019 22:35:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1569209729;
 bh=CK7Tj5abq6c+xAJH4X8i6J3Dd9NAOC2+6qEO0WXjPTo=;
 h=From:To:CC:Subject:Date;
 b=DrBNd/Ukod9taX8Ytj2ZqgcbA1ohTR227GVJilPAWjEOsF7lx38gaoXR4ZlHYalwt
 sKrq5XYPsoCIE5zOuowTYM0MAYCFc9q8oePYUzD2v9sRQ/ys+nd7BoZysCVpOv0+9z
 ajXLJ/ahdPjNKyARxyl2S6OU3jQDlokOtac7HIeM=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8N3ZTb9039704
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 22 Sep 2019 22:35:29 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sun, 22
 Sep 2019 22:35:24 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sun, 22 Sep 2019 22:35:29 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8N3ZRGT024663;
 Sun, 22 Sep 2019 22:35:27 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>
Subject: [PATCH] soc: ti: ti_sci_pm_domains: Store device id in platform device
Date: Mon, 23 Sep 2019 09:04:39 +0530
Message-ID: <20190923033439.20070-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_203539_023910_B000BCF5 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Device ID that is passed from power-domains is used by peripheral
drivers for communicating with sysfw. Instead of individual drivers
traversing power-domains entry in DT node, store the device ID in
platform_device so that drivers can directly access it.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 drivers/soc/ti/ti_sci_pm_domains.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/ti/ti_sci_pm_domains.c b/drivers/soc/ti/ti_sci_pm_domains.c
index 8c2a2f23982c..a124ac409124 100644
--- a/drivers/soc/ti/ti_sci_pm_domains.c
+++ b/drivers/soc/ti/ti_sci_pm_domains.c
@@ -116,6 +116,7 @@ static int ti_sci_pd_attach_dev(struct generic_pm_domain *domain,
 	struct of_phandle_args pd_args;
 	struct ti_sci_pm_domain *ti_sci_genpd = genpd_to_ti_sci_pd(domain);
 	const struct ti_sci_handle *ti_sci = ti_sci_genpd->ti_sci;
+	struct platform_device *pdev = to_platform_device(dev);
 	struct ti_sci_genpd_dev_data *sci_dev_data;
 	struct generic_pm_domain_data *genpd_data;
 	int idx, ret = 0;
@@ -129,6 +130,7 @@ static int ti_sci_pd_attach_dev(struct generic_pm_domain *domain,
 		return -EINVAL;
 
 	idx = pd_args.args[0];
+	pdev->id = idx;
 
 	/*
 	 * Check the validity of the requested idx, if the index is not valid
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
