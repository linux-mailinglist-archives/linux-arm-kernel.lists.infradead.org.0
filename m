Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFF8E8211
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 08:21:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPNHE6zrBuvDf/0nzx7/7s1S2SS+MIJjPl6bnWsWnyk=; b=ufjF2YJmESD33B
	pFXoz6p/HKFkSJZvOwkcfFCInpz1JL8e5swl7rlgW+bLSRgpSNwl+snPj7e861qR9HrXfq0Vhljc1
	33OvSzYc91Btr8Mekm42PVydm9/8JKi2zo3T0ICkTpZ0XiTl5uOeIibVEGjmkX7FzK6wenDFGyP5B
	dSvuT/Ho4MVVJ5cWyOTBCTPpLkaETy7Q11wzn0pARMeHWAtRKoJIQYJ4HzB9cPzvyVSIKBGdfL1XA
	qIRFiES7SLBSa0Ln+X//+PI+vU+0bKU1qp7GH84TkQupAG2DxWCNFNQRSyGywkQRKnScNxXhsTicr
	sMT5z5KTJnxBB8Vh4mAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLok-0003JL-FM; Tue, 29 Oct 2019 07:21:26 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLns-0002cB-9a
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 07:20:33 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 453D89AEB92ADC6E058B;
 Tue, 29 Oct 2019 15:20:27 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Tue, 29 Oct 2019 15:20:17 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <maz@kernel.org>, <eric.auger@redhat.com>, <james.morse@arm.com>,
 <julien.thierry.kdev@gmail.com>, <suzuki.poulose@arm.com>
Subject: [PATCH 3/3] KVM: arm/arm64: vgic: Don't rely on the wrong pending
 table
Date: Tue, 29 Oct 2019 15:19:19 +0800
Message-ID: <20191029071919.177-4-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
In-Reply-To: <20191029071919.177-1-yuzenghui@huawei.com>
References: <20191029071919.177-1-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_002032_553696_F4200297 
X-CRM114-Status: GOOD (  12.54  )
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
Cc: Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's possible that two LPIs locate in the same "byte_offset" but target
two different vcpus, where their pending status are indicated by two
different pending tables.  In such a scenario, using last_byte_offset
optimization will lead KVM relying on the wrong pending table entry.
Let us use last_ptr instead, which can be treated as a byte index into
a pending table and also, can be vcpu specific.

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---

If this patch has done the right thing, we can even add the:

Fixes: 280771252c1b ("KVM: arm64: vgic-v3: KVM_DEV_ARM_VGIC_SAVE_PENDING_TABLES")

But to be honest, I'm not clear about what has this patch actually fixed.
Pending tables should contain all zeros before we flush vgic_irq's pending
status into guest's RAM (thinking that guest should never write anything
into it). So the pending table entry we've read from the guest memory
seems always be zero. And we will always do the right thing even if we
rely on the wrong pending table entry.

I think I must have some misunderstanding here... Please fix me.

 virt/kvm/arm/vgic/vgic-v3.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic-v3.c b/virt/kvm/arm/vgic/vgic-v3.c
index 5ef93e5041e1..7cd2e2f81513 100644
--- a/virt/kvm/arm/vgic/vgic-v3.c
+++ b/virt/kvm/arm/vgic/vgic-v3.c
@@ -363,8 +363,8 @@ int vgic_v3_lpi_sync_pending_status(struct kvm *kvm, struct vgic_irq *irq)
 int vgic_v3_save_pending_tables(struct kvm *kvm)
 {
 	struct vgic_dist *dist = &kvm->arch.vgic;
-	int last_byte_offset = -1;
 	struct vgic_irq *irq;
+	gpa_t last_ptr = -1;
 	int ret;
 	u8 val;
 
@@ -384,11 +384,11 @@ int vgic_v3_save_pending_tables(struct kvm *kvm)
 		bit_nr = irq->intid % BITS_PER_BYTE;
 		ptr = pendbase + byte_offset;
 
-		if (byte_offset != last_byte_offset) {
+		if (ptr != last_ptr) {
 			ret = kvm_read_guest_lock(kvm, ptr, &val, 1);
 			if (ret)
 				return ret;
-			last_byte_offset = byte_offset;
+			last_ptr = ptr;
 		}
 
 		stored = val & (1U << bit_nr);
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
