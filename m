Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4888E198A67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 05:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oDR+NTgolGXxFKgoLcnIRnZEG6IBC+nof8vwW+S7qrk=; b=UBXwgWRuhQsZ+o
	JM3fq/XGT8JMliyRgo9Q/3cvXYuoBhYgyWSAVANhbjw7A/zx+OVWqswiFIQekSrNy+7i9l3cB/3j5
	BuzgLIZTsPcIpTXLblKQNU4tWAgsPBz4vviaS8LSax8cxnp3adfWbZ/6ZaZmwtC313u7ISQTldHJn
	mEeH+w5PA4M5Ah3sGJxiSguQPMJ3O4Iq42FZBE8uf+bPgtNfMJNtQckN/7uLYDuQ3eGpdh0hpuQFs
	f9yJVITLUXwnDI6qr5+oXpacexe37m12SxvSZBrlWaujHYfnBRV8Tv1YI8Q/YJpFYAtjjeEO1a7x3
	VlfsZfyzB1259cwYV8wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ7LB-00025b-KW; Tue, 31 Mar 2020 03:13:25 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ7L1-00024O-Kr
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 03:13:17 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D69B58F96A35E84F5A46;
 Tue, 31 Mar 2020 11:12:59 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.487.0; Tue, 31 Mar 2020 11:12:52 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <kvmarm@lists.cs.columbia.edu>
Subject: [PATCH] KVM: arm64: vgic-v3: Clear pending bit in guest memory after
 synchronization
Date: Tue, 31 Mar 2020 11:12:45 +0800
Message-ID: <20200331031245.1562-1-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_201315_852263_532689DF 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: suzuki.poulose@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 eric.auger@redhat.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, andre.przywara@arm.com,
 Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When LPI support is enabled at redistributor level, VGIC will potentially
load the correspond LPI penging table and sync it into the pending_latch.
To avoid keeping the 'consumed' pending bits lying around in guest memory
(though they're not used), let's clear them after synchronization.

The similar work had been done in vgic_v3_lpi_sync_pending_status().

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 virt/kvm/arm/vgic/vgic-its.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
index d53d34a33e35..905760bfa404 100644
--- a/virt/kvm/arm/vgic/vgic-its.c
+++ b/virt/kvm/arm/vgic/vgic-its.c
@@ -435,6 +435,7 @@ static int its_sync_lpi_pending_table(struct kvm_vcpu *vcpu)
 
 	for (i = 0; i < nr_irqs; i++) {
 		int byte_offset, bit_nr;
+		bool status;
 
 		byte_offset = intids[i] / BITS_PER_BYTE;
 		bit_nr = intids[i] % BITS_PER_BYTE;
@@ -447,22 +448,32 @@ static int its_sync_lpi_pending_table(struct kvm_vcpu *vcpu)
 			ret = kvm_read_guest_lock(vcpu->kvm,
 						  pendbase + byte_offset,
 						  &pendmask, 1);
-			if (ret) {
-				kfree(intids);
-				return ret;
-			}
+			if (ret)
+				goto out;
 			last_byte_offset = byte_offset;
 		}
 
+		status = pendmask & (1 << bit_nr);
+
 		irq = vgic_get_irq(vcpu->kvm, NULL, intids[i]);
 		raw_spin_lock_irqsave(&irq->irq_lock, flags);
-		irq->pending_latch = pendmask & (1U << bit_nr);
+		irq->pending_latch = status;
 		vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
 		vgic_put_irq(vcpu->kvm, irq);
+
+		if (status) {
+			/* clear consumed data */
+			pendmask &= ~(1 << bit_nr);
+			ret = kvm_write_guest_lock(vcpu->kvm,
+						   pendbase + byte_offset,
+						   &pendmask, 1);
+			if (ret)
+				goto out;
+		}
 	}
 
+out:
 	kfree(intids);
-
 	return ret;
 }
 
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
