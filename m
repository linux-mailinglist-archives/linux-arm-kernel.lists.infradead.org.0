Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C854E5A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Du+3OgHA0B8JAkYQMKa6ANAli06RaY0iF01K5Jnz82g=; b=RbwoxzvRiY4g12
	W4qaoDyIxb/VDSRIbofRqxiJe0MctjvCcKzBCdlfUHa8FkjJK1fn/e4ScKaYtAAhsr1DK/EydhTiT
	1JJ3VLRAX1JL7+1M8+OhoYyMxzdIwDB/c9PrKbV+lcwlAqdvyRZ9ZJIfhTI9feENBma+mYpkadI7M
	CDbLxEEB37WGksoXrJLrChcA93wDDObWCgiN/8KplpzAnNzNpWaly14Hl4/MzPKL/MyBJ0kmyltdY
	VrCbHyqDC3jl8wDqNdB+NA7jahWPJp+e8AEYKe9tz68Vk0twU1doryhEkwBCwIDYLUM28KoU1iVRI
	FCoT5OfUG2p7DR/FOKjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGXt-0008Nc-MM; Fri, 21 Jun 2019 10:13:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG29-0000bm-Av
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:40:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3301814FF;
 Fri, 21 Jun 2019 02:40:37 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D3A863F246;
 Fri, 21 Jun 2019 02:40:35 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 54/59] KVM: arm64: nv: Add nested GICv3 tracepoints
Date: Fri, 21 Jun 2019 10:38:38 +0100
Message-Id: <20190621093843.220980-55-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_024037_521789_5B182412 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christoffer Dall <christoffer.dall@arm.com>

Adding tracepoints to be able to peek into the shadow LRs used when
running a guest guest.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 virt/kvm/arm/vgic/vgic-nested-trace.h | 137 ++++++++++++++++++++++++++
 virt/kvm/arm/vgic/vgic-v3-nested.c    |  12 ++-
 2 files changed, 148 insertions(+), 1 deletion(-)
 create mode 100644 virt/kvm/arm/vgic/vgic-nested-trace.h

diff --git a/virt/kvm/arm/vgic/vgic-nested-trace.h b/virt/kvm/arm/vgic/vgic-nested-trace.h
new file mode 100644
index 000000000000..69f4ec031e7c
--- /dev/null
+++ b/virt/kvm/arm/vgic/vgic-nested-trace.h
@@ -0,0 +1,137 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#if !defined(_TRACE_VGIC_NESTED_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_VGIC_NESTED_H
+
+#include <linux/tracepoint.h>
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM kvm
+
+#define SLR_ENTRY_VALS(x)							\
+	" ",									\
+	!!(__entry->lrs[x] & ICH_LR_HW),		   			\
+	!!(__entry->lrs[x] & ICH_LR_PENDING_BIT),	   			\
+	!!(__entry->lrs[x] & ICH_LR_ACTIVE_BIT),	   			\
+	__entry->lrs[x] & ICH_LR_VIRTUAL_ID_MASK,				\
+	(__entry->lrs[x] & ICH_LR_PHYS_ID_MASK) >> ICH_LR_PHYS_ID_SHIFT,	\
+	(__entry->orig_lrs[x] & ICH_LR_PHYS_ID_MASK) >> ICH_LR_PHYS_ID_SHIFT
+
+TRACE_EVENT(vgic_create_shadow_lrs,
+	TP_PROTO(struct kvm_vcpu *vcpu, int nr_lr, u64 *lrs, u64 *orig_lrs),
+	TP_ARGS(vcpu, nr_lr, lrs, orig_lrs),
+
+	TP_STRUCT__entry(
+		__field(	int,	nr_lr			)
+		__array(	u64,	lrs,		16	)
+		__array(	u64,	orig_lrs,	16	)
+	),
+
+	TP_fast_assign(
+		__entry->nr_lr		= nr_lr;
+		memcpy(__entry->lrs, lrs, 16 * sizeof(u64));
+		memcpy(__entry->orig_lrs, orig_lrs, 16 * sizeof(u64));
+	),
+
+	TP_printk("nr_lr: %d\n"
+		  "%50sLR[ 0]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[ 1]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[ 2]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[ 3]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[ 4]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[ 5]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[ 6]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[ 7]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[ 8]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[ 9]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[10]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[11]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[12]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[13]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[14]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)\n"
+		  "%50sLR[15]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu (%5llu)",
+		  __entry->nr_lr,
+		  SLR_ENTRY_VALS(0), SLR_ENTRY_VALS(1), SLR_ENTRY_VALS(2),
+		  SLR_ENTRY_VALS(3), SLR_ENTRY_VALS(4), SLR_ENTRY_VALS(5),
+		  SLR_ENTRY_VALS(6), SLR_ENTRY_VALS(7), SLR_ENTRY_VALS(8),
+		  SLR_ENTRY_VALS(9), SLR_ENTRY_VALS(10), SLR_ENTRY_VALS(11),
+		  SLR_ENTRY_VALS(12), SLR_ENTRY_VALS(13), SLR_ENTRY_VALS(14),
+		  SLR_ENTRY_VALS(15))
+);
+
+#define LR_ENTRY_VALS(x)							\
+	" ",									\
+	!!(__entry->lrs[x] & ICH_LR_HW),		   			\
+	!!(__entry->lrs[x] & ICH_LR_PENDING_BIT),	   			\
+	!!(__entry->lrs[x] & ICH_LR_ACTIVE_BIT),	   			\
+	__entry->lrs[x] & ICH_LR_VIRTUAL_ID_MASK,				\
+	(__entry->lrs[x] & ICH_LR_PHYS_ID_MASK) >> ICH_LR_PHYS_ID_SHIFT
+
+TRACE_EVENT(vgic_put_nested,
+	TP_PROTO(struct kvm_vcpu *vcpu, int nr_lr, u64 *lrs),
+	TP_ARGS(vcpu, nr_lr, lrs),
+
+	TP_STRUCT__entry(
+		__field(	int,	nr_lr			)
+		__array(	u64,	lrs,		16	)
+	),
+
+	TP_fast_assign(
+		__entry->nr_lr		= nr_lr;
+		memcpy(__entry->lrs, lrs, 16 * sizeof(u64));
+	),
+
+	TP_printk("nr_lr: %d\n"
+		  "%50sLR[ 0]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[ 1]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[ 2]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[ 3]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[ 4]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[ 5]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[ 6]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[ 7]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[ 8]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[ 9]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[10]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[11]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[12]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[13]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[14]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu\n"
+		  "%50sLR[15]: HW: %d P: %d: A: %d vINTID: %5llu pINTID: %5llu",
+		  __entry->nr_lr,
+		  LR_ENTRY_VALS(0), LR_ENTRY_VALS(1), LR_ENTRY_VALS(2),
+		  LR_ENTRY_VALS(3), LR_ENTRY_VALS(4), LR_ENTRY_VALS(5),
+		  LR_ENTRY_VALS(6), LR_ENTRY_VALS(7), LR_ENTRY_VALS(8),
+		  LR_ENTRY_VALS(9), LR_ENTRY_VALS(10), LR_ENTRY_VALS(11),
+		  LR_ENTRY_VALS(12), LR_ENTRY_VALS(13), LR_ENTRY_VALS(14),
+		  LR_ENTRY_VALS(15))
+);
+
+TRACE_EVENT(vgic_nested_hw_emulate,
+	TP_PROTO(int lr, u64 lr_val, u32 l1_intid),
+	TP_ARGS(lr, lr_val, l1_intid),
+
+	TP_STRUCT__entry(
+		__field(	int,	lr		)
+		__field(	u64,	lr_val		)
+		__field(	u32,	l1_intid	)
+	),
+
+	TP_fast_assign(
+		__entry->lr		= lr;
+		__entry->lr_val		= lr_val;
+		__entry->l1_intid	= l1_intid;
+	),
+
+	TP_printk("lr: %d LR %llx L1 INTID: %u\n",
+		  __entry->lr, __entry->lr_val, __entry->l1_intid)
+);
+
+#endif /* _TRACE_VGIC_NESTED_H */
+
+#undef TRACE_INCLUDE_PATH
+#define TRACE_INCLUDE_PATH ../../../virt/kvm/arm/vgic
+#undef TRACE_INCLUDE_FILE
+#define TRACE_INCLUDE_FILE vgic-nested-trace
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>
diff --git a/virt/kvm/arm/vgic/vgic-v3-nested.c b/virt/kvm/arm/vgic/vgic-v3-nested.c
index 7c5f82ae68e0..ec838b7be6dc 100644
--- a/virt/kvm/arm/vgic/vgic-v3-nested.c
+++ b/virt/kvm/arm/vgic/vgic-v3-nested.c
@@ -13,6 +13,9 @@
 
 #include "vgic.h"
 
+#define CREATE_TRACE_POINTS
+#include "vgic-nested-trace.h"
+
 static inline struct vgic_v3_cpu_if *vcpu_nested_if(struct kvm_vcpu *vcpu)
 {
 	return &vcpu->arch.vgic_cpu.nested_vgic_v3;
@@ -118,6 +121,8 @@ static void vgic_v3_create_shadow_lr(struct kvm_vcpu *vcpu)
 		s_cpu_if->vgic_lr[i] = lr;
 	}
 
+	trace_vgic_create_shadow_lrs(vcpu, kvm_vgic_global_state.nr_lr,
+				     s_cpu_if->vgic_lr, cpu_if->vgic_lr);
 	s_cpu_if->used_lrs = kvm_vgic_global_state.nr_lr;
 }
 
@@ -162,8 +167,10 @@ void vgic_v3_sync_nested(struct kvm_vcpu *vcpu)
 			continue; /* oh well, the guest hyp is broken */
 
 		lr = __gic_v3_get_lr(i);
-		if (!(lr & ICH_LR_STATE))
+		if (!(lr & ICH_LR_STATE)) {
+			trace_vgic_nested_hw_emulate(i, lr, l1_irq);
 			irq->active = false;
+		}
 
 		vgic_put_irq(vcpu->kvm, irq);
 	}
@@ -194,6 +201,9 @@ void vgic_v3_put_nested(struct kvm_vcpu *vcpu)
 
 	__vgic_v3_save_state(vcpu_shadow_if(vcpu));
 
+	trace_vgic_put_nested(vcpu, kvm_vgic_global_state.nr_lr,
+			      vcpu_shadow_if(vcpu)->vgic_lr);
+
 	/*
 	 * Translate the shadow state HW fields back to the virtual ones
 	 * before copying the shadow struct back to the nested one.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
