Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A8B9A5C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 04:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScuCAZj+a9Dt8qCFokaE+O7TJXw9+Hu4YEeM4ypcKBE=; b=pE0iioB0WKYOAS
	kJsTG3vo1WjI04U0SGN0Gu5dlknbbZpyHd+S+sZElPkU9RtWb9T0WeXhH46DwarreGMDIjfsKvpfI
	EflElGFtMLKik9IbQlc/xYCopERMNlGFu8nPSa3jVECVOrsAdyxwqA2j/3SJLNG7EIJTCVl3VqHw1
	2r/jfic4LAgUydMJJHCefwfusBT+3ldxR/anRS152cwRLB8mORda6UfCHkVRdvlcySp0HTQ+IKYUc
	JmTWczx3l8a8TdSTfbURenRN99IgnzbsNiCQzOKGnh/a2o7MSjw/5WNOx7CVYHFsAbOhHbmcbNLuS
	zjt3eHFmewdD2AjuJcBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0zc2-0006Q3-6c; Fri, 23 Aug 2019 02:47:38 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0zbU-0006B4-14
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 02:47:05 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 145D1C2CB34D28AC549A;
 Fri, 23 Aug 2019 10:46:55 +0800 (CST)
Received: from HGHY4L002753561.china.huawei.com (10.133.215.186) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Fri, 23 Aug 2019 10:46:47 +0800
From: Zhen Lei <thunder.leizhen@huawei.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>, John Garry
 <john.garry@huawei.com>, Robin Murphy <robin.murphy@arm.com>, Will Deacon
 <will@kernel.org>, Joerg Roedel <joro@8bytes.org>, iommu
 <iommu@lists.linux-foundation.org>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v3 1/2] iommu/arm-smmu-v3: don't add a master into smmu_domain
 before it's ready
Date: Fri, 23 Aug 2019 10:45:50 +0800
Message-ID: <20190823024551.24448-2-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190823024551.24448-1-thunder.leizhen@huawei.com>
References: <20190823024551.24448-1-thunder.leizhen@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.215.186]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_194704_677422_9E3A824B 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Zhen Lei <thunder.leizhen@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Once a master has been added into smmu_domain->devices, it may immediately
be scaned in arm_smmu_unmap()-->arm_smmu_atc_inv_domain(). From a logical
point of view, the master should be added into smmu_domain after it has
completely initialized.

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 drivers/iommu/arm-smmu-v3.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index c5c93e48b4dbdf7..e0dcc5d27291f8b 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -1958,10 +1958,6 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 
 	master->domain = smmu_domain;
 
-	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
-	list_add(&master->domain_head, &smmu_domain->devices);
-	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
-
 	if (smmu_domain->stage != ARM_SMMU_DOMAIN_BYPASS)
 		arm_smmu_enable_ats(master);
 
@@ -1969,6 +1965,10 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 		arm_smmu_write_ctx_desc(smmu, &smmu_domain->s1_cfg);
 
 	arm_smmu_install_ste_for_dev(master);
+
+	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
+	list_add(&master->domain_head, &smmu_domain->devices);
+	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
 out_unlock:
 	mutex_unlock(&smmu_domain->init_mutex);
 	return ret;
-- 
1.8.3



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
