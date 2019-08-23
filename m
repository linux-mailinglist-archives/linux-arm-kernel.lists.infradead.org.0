Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 243609A5C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 04:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUwxB/BKOrgPvw0fnVhwhKk51oCfD1dSp4RJs6gUi54=; b=ICb5O5NStIm1uR
	T88X1XDxXaQ8cmpy7CURhfr0UV/AKr/0Go+vrJ+lpDxGTL92PqYRtltIu4H9im/MgWIN2g2kJTM+g
	skkUdL/mcLwHHuS/IZbGlmZVYnzc+bz+fc86Hdh5QweycrnzkDKaPg49gpL5Rq/p+m5hbnT6HFIa+
	05H08BFIQE1j9rnTHYTeSMVlvRxWamyJ8N4I80DmLH7LYXZv+ySysvXs6LPkE2G+Ns0zH9wg2Omha
	QlWgNeRg6rOwSDkbnLv/Z/Rzn4gj5u2C7GddtyOPexn+8OswTw1SkLgRgTxFMSbEVhEFDsszNG0sE
	737PEBTg1zGGLHnGjnXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0zbh-0006Ea-Vb; Fri, 23 Aug 2019 02:47:18 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0zbU-0006B3-15
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 02:47:05 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1DF7C88E4DAE3FF3267F;
 Fri, 23 Aug 2019 10:46:55 +0800 (CST)
Received: from HGHY4L002753561.china.huawei.com (10.133.215.186) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Fri, 23 Aug 2019 10:46:48 +0800
From: Zhen Lei <thunder.leizhen@huawei.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>, John Garry
 <john.garry@huawei.com>, Robin Murphy <robin.murphy@arm.com>, Will Deacon
 <will@kernel.org>, Joerg Roedel <joro@8bytes.org>, iommu
 <iommu@lists.linux-foundation.org>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v3 2/2] iommu/arm-smmu-v3: change the lock type of
 arm_smmu_domain.devices_lock
Date: Fri, 23 Aug 2019 10:45:51 +0800
Message-ID: <20190823024551.24448-3-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190823024551.24448-1-thunder.leizhen@huawei.com>
References: <20190823024551.24448-1-thunder.leizhen@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.215.186]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_194704_275271_4B4EDF01 
X-CRM114-Status: GOOD (  11.15  )
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

A master add into or remove from smmu_domain->devices only happened in
arm_smmu_attach_dev()/arm_smmu_detach_dev(), the frequency of these
operations is very low. But we traverse smmu_domain->devices list in
arm_smmu_atc_inv_domain() are frequent. So change the protection from
spinlock to rwlock can improve concurrency, especially for the smmu
domain without ATS masters.

By the way, the cmdq has its own lock, so this change is safe.

Here is the performance data tested on my board:
Before:
Jobs: 24 (f=24): [0.1% done] [9798M/0K /s] [2392K/0  iops] [09h:59m:13s]
Jobs: 24 (f=24): [0.1% done] [9782M/0K /s] [2388K/0  iops] [09h:59m:12s]
Jobs: 24 (f=24): [0.2% done] [9825M/0K /s] [2399K/0  iops] [09h:59m:11s]
Jobs: 24 (f=24): [0.2% done] [9836M/0K /s] [2401K/0  iops] [09h:59m:10s]

After:
Jobs: 24 (f=24): [0.1% done] [10996M/0K /s] [2685K/0  iops] [09h:59m:13s]
Jobs: 24 (f=24): [0.1% done] [10817M/0K /s] [2641K/0  iops] [09h:59m:12s]
Jobs: 24 (f=24): [0.2% done] [11083M/0K /s] [2706K/0  iops] [09h:59m:11s]
Jobs: 24 (f=24): [0.2% done] [10603M/0K /s] [2589K/0  iops] [09h:59m:10s]

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
Suggested-by: Will Deacon <will@kernel.org>
---
 drivers/iommu/arm-smmu-v3.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index e0dcc5d27291f8b..eded2e7a5a0c444 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -641,7 +641,7 @@ struct arm_smmu_domain {
 	struct iommu_domain		domain;
 
 	struct list_head		devices;
-	spinlock_t			devices_lock;
+	rwlock_t			devices_lock;
 };
 
 struct arm_smmu_option_prop {
@@ -1536,10 +1536,10 @@ static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
 
 	arm_smmu_atc_inv_to_cmd(ssid, iova, size, &cmd);
 
-	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
+	read_lock_irqsave(&smmu_domain->devices_lock, flags);
 	list_for_each_entry(master, &smmu_domain->devices, domain_head)
 		ret |= arm_smmu_atc_inv_master(master, &cmd);
-	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
+	read_unlock_irqrestore(&smmu_domain->devices_lock, flags);
 
 	return ret ? -ETIMEDOUT : 0;
 }
@@ -1648,7 +1648,7 @@ static struct iommu_domain *arm_smmu_domain_alloc(unsigned type)
 
 	mutex_init(&smmu_domain->init_mutex);
 	INIT_LIST_HEAD(&smmu_domain->devices);
-	spin_lock_init(&smmu_domain->devices_lock);
+	rwlock_init(&smmu_domain->devices_lock);
 
 	return &smmu_domain->domain;
 }
@@ -1911,9 +1911,9 @@ static void arm_smmu_detach_dev(struct arm_smmu_master *master)
 	if (!smmu_domain)
 		return;
 
-	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
+	write_lock_irqsave(&smmu_domain->devices_lock, flags);
 	list_del(&master->domain_head);
-	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
+	write_unlock_irqrestore(&smmu_domain->devices_lock, flags);
 
 	master->domain = NULL;
 	arm_smmu_install_ste_for_dev(master);
@@ -1966,9 +1966,9 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 
 	arm_smmu_install_ste_for_dev(master);
 
-	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
+	write_lock_irqsave(&smmu_domain->devices_lock, flags);
 	list_add(&master->domain_head, &smmu_domain->devices);
-	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
+	write_unlock_irqrestore(&smmu_domain->devices_lock, flags);
 out_unlock:
 	mutex_unlock(&smmu_domain->init_mutex);
 	return ret;
-- 
1.8.3



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
