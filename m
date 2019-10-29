Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49176E820F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 08:21:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+PSyspBT7q6QrSNo3Yt5osNMqnOqZZsazold3XbntBk=; b=FUAe5T36NrBCj6
	wBO6ayPVc/s8t4Zh4DVbuuPtTUcZglS7DMU2w8W1FMDP8NU8JEdik8dPMP1G6CchlDa5i4cCPVV2H
	oHG3lMV/PXWRDwiKvSaXVK6wNyKAQZWsMVRT9qHg24fUUfKk9XZhlQENFDML8+iyppKR4RYAVZRum
	NNgeQsDvxaxiwm7jYXP18EipJmH4KTG9YYSdp2GKpps3p/wVucCVv/37qM3bB0f88wfn9H+xN7zil
	8oi5IFuBGijuXpW+mTHilCsIR+OGfIOQGMgPoeYJim+0FJNpiljv1MaXd2bWcNlz1O7mlm+zhW3Gy
	dZKvtFwLI8uRDJ65x/0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLoO-0002q5-PQ; Tue, 29 Oct 2019 07:21:04 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLnq-0002bG-Il
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 07:20:32 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 3C181374D1B2EC7E14A6;
 Tue, 29 Oct 2019 15:20:22 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Tue, 29 Oct 2019 15:20:16 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <maz@kernel.org>, <eric.auger@redhat.com>, <james.morse@arm.com>,
 <julien.thierry.kdev@gmail.com>, <suzuki.poulose@arm.com>
Subject: [PATCH 2/3] KVM: arm/arm64: vgic: Fix some comments typo
Date: Tue, 29 Oct 2019 15:19:18 +0800
Message-ID: <20191029071919.177-3-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
In-Reply-To: <20191029071919.177-1-yuzenghui@huawei.com>
References: <20191029071919.177-1-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_002030_807958_D7F7377E 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

s/vgic_its_save_pending_tables/vgic_v3_save_pending_tables/
s/then/the/

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 include/kvm/arm_vgic.h      | 2 +-
 virt/kvm/arm/vgic/vgic-v3.c | 2 +-
 virt/kvm/arm/vgic/vgic-v4.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
index 0fb240ec0a2a..01f8b3739a09 100644
--- a/include/kvm/arm_vgic.h
+++ b/include/kvm/arm_vgic.h
@@ -240,7 +240,7 @@ struct vgic_dist {
 	 * Contains the attributes and gpa of the LPI configuration table.
 	 * Since we report GICR_TYPER.CommonLPIAff as 0b00, we can share
 	 * one address across all redistributors.
-	 * GICv3 spec: 6.1.2 "LPI Configuration tables"
+	 * GICv3 spec "LPI Configuration tables"
 	 */
 	u64			propbaser;
 
diff --git a/virt/kvm/arm/vgic/vgic-v3.c b/virt/kvm/arm/vgic/vgic-v3.c
index 8d69f007dd0c..5ef93e5041e1 100644
--- a/virt/kvm/arm/vgic/vgic-v3.c
+++ b/virt/kvm/arm/vgic/vgic-v3.c
@@ -357,7 +357,7 @@ int vgic_v3_lpi_sync_pending_status(struct kvm *kvm, struct vgic_irq *irq)
 }
 
 /**
- * vgic_its_save_pending_tables - Save the pending tables into guest RAM
+ * vgic_v3_save_pending_tables - Save the pending tables into guest RAM
  * kvm lock and all vcpu lock must be held
  */
 int vgic_v3_save_pending_tables(struct kvm *kvm)
diff --git a/virt/kvm/arm/vgic/vgic-v4.c b/virt/kvm/arm/vgic/vgic-v4.c
index 477af6aebb97..d864cf8dd212 100644
--- a/virt/kvm/arm/vgic/vgic-v4.c
+++ b/virt/kvm/arm/vgic/vgic-v4.c
@@ -266,7 +266,7 @@ int kvm_vgic_v4_set_forwarding(struct kvm *kvm, int virq,
 
 	mutex_lock(&its->its_lock);
 
-	/* Perform then actual DevID/EventID -> LPI translation. */
+	/* Perform the actual DevID/EventID -> LPI translation. */
 	ret = vgic_its_resolve_lpi(kvm, its, irq_entry->msi.devid,
 				   irq_entry->msi.data, &irq);
 	if (ret)
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
