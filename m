Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F251597C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:10:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d6ks1hF1ecaAt030kLdO7FOD6c/iX5T8uHFw8hz1EMk=; b=Z0ghhzGVm5LiMH
	Dnga3O/yKLED8yQbBj2WhLGG7wZ0RVN8QKZ5PUrru8xBvyfrzG5W1Y52dEyRBNsg0w/SS+A4tXcdW
	HtMRJTgsCCqfNqgAOn/zf1iZeoCUWRDMtrxkkHke7j99+Bb0upER2BRNLI5A6JTy1l75DCZ7fs+bX
	FiOKUOsgxl6RBJF0Ek5p0HdT3KYmPauOBgTBs8AIfB0ENf8KxxGTZFTb2JJAQK5R72gbFT52AddCD
	+C+7lV1Z3uYfYSzFT8jMIgGCDG3QJY+cjgYqUvN6+hRCMIIMtNwra4TJrPVqrOMQ5GLo8XwjbRvCe
	20mfvDUMd9fg/fAGaqiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Zz4-0004Sr-PU; Tue, 11 Feb 2020 18:10:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZiG-0002iI-QH
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:52:47 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6D2220848;
 Tue, 11 Feb 2020 17:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443563;
 bh=Ft3LS22pw1Kczdq6lr0DMRdJJ3bt2weBSDVOe2zbADY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nhZ5Wq0N2gKx2XcrZ+FaYLw48Lsw4mbJkFYC31jYwpaq16ETNX+cQ7rTCJGTZ567G
 GQ9oWQ+ayDUcBA2+dwCTZdgqgNsulwyXTepqpj9g4kzWSC7K5wwAS7DCiDcBlTIP3+
 5UV/5pcuWDwuBLAdGWO4OuUhVKRMdtC84JT6ufJo=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zg2-004O7k-D6; Tue, 11 Feb 2020 17:50:26 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 56/94] KVM: arm64: nv: Add nested GICv3 tracepoints
Date: Tue, 11 Feb 2020 17:49:00 +0000
Message-Id: <20200211174938.27809-57-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200211174938.27809-1-maz@kernel.org>
References: <20200211174938.27809-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095244_945399_A38F129D 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christoffer Dall <christoffer.dall@arm.com>

Adding tracepoints to be able to peek into the shadow LRs used when
running a guest guest.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/vgic/vgic-nested-trace.h | 137 ++++++++++++++++++++++++++
 virt/kvm/arm/vgic/vgic-v3-nested.c    |  13 ++-
 2 files changed, 149 insertions(+), 1 deletion(-)
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
index 4ba426e2324d..94b1edb67011 100644
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
@@ -119,6 +122,9 @@ static void vgic_v3_create_shadow_lr(struct kvm_vcpu *vcpu)
 		used_lrs = i + 1;
 	}
 
+	trace_vgic_create_shadow_lrs(vcpu, kvm_vgic_global_state.nr_lr,
+				     s_cpu_if->vgic_lr, cpu_if->vgic_lr);
+
 	s_cpu_if->used_lrs = used_lrs;
 }
 
@@ -163,8 +169,10 @@ void vgic_v3_sync_nested(struct kvm_vcpu *vcpu)
 			continue; /* oh well, the guest hyp is broken */
 
 		lr = __gic_v3_get_lr(i);
-		if (!(lr & ICH_LR_STATE))
+		if (!(lr & ICH_LR_STATE)) {
+			trace_vgic_nested_hw_emulate(i, lr, l1_irq);
 			irq->active = false;
+		}
 
 		vgic_put_irq(vcpu->kvm, irq);
 	}
@@ -195,6 +203,9 @@ void vgic_v3_put_nested(struct kvm_vcpu *vcpu)
 
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
