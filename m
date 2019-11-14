Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FADFC967
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 16:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x27WDP75r8gkx7BxyCU060FOPraq7fj/vy8pfMBbDwA=; b=a14w8gd/VwzKjT
	orToVhsg62l2ePPfEN7/6KR7fH6g7kJePFWIvWddKXe2kV7mN3HyEVfJnFF4eYHhtbpFi6tmTAzHj
	33tKF0cRsWoeRkduEsb2YQ7/INCnF9iFo5qU0/wv0m76OifIARXTcW/AQbR8l/M68SCq9cTC9U7ua
	2Jl1VhX3lNYnygA9quKDMu7+3Xz72g9gifk6g73IkZp3O2sQAez3zpgHZU8vaAu8qnAgUWSz63ztG
	fKphOQ8OonXEsbjad+fq1AR03v1vEVcX2+YduiqY9sHfScP1kjXmAOrr3B+48KX8X7oAQZ/w59ZeX
	PxlGEgQluZ8jthQMadjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGcJ-0008UD-4s; Thu, 14 Nov 2019 15:01:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGbN-0006RB-4L
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 15:00:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84A00328;
 Thu, 14 Nov 2019 07:00:04 -0800 (PST)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 663033F52E;
 Thu, 14 Nov 2019 07:00:03 -0800 (PST)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/5] KVM: arm/arm64: Don't invoke defacto-CnP on first run
Date: Thu, 14 Nov 2019 14:59:18 +0000
Message-Id: <20191114145918.235339-6-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191114145918.235339-1-suzuki.poulose@arm.com>
References: <20191114145918.235339-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_070005_266253_7E836F7F 
X-CRM114-Status: GOOD (  10.71  )
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, maz@kernel.org,
 linux-kernel@vger.kernel.org, james.morse@arm.com, catalin.marinas@arm.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

When KVM finds itself switching between two vCPUs of the same VM
on one physical CPU it has to invalidate the TLB for this VMID
to avoid unintended sharing of TLB entries between vCPU.

This is done by tracking the 'last_vcpu_ran' as a percpu variable
for each vm.

kvm_arch_init_vm() is careful to initialise these to an impossible
vcpu id, but we never check for this. The first time
vm_arch_vcpu_load() is called on a new physical CPU, we will fail
the last_ran check and invalidate the TLB.

Now that we have an errata workaround in this path, it means we
trigger the workaround whenever a guest is migrated to a new CPU.

Check for the impossible vcpu id, and skip defacto-CnP.

Signed-off-by: James Morse <james.morse@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 virt/kvm/arm/arm.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index ac9e017df7c9..6f729739cf6f 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -366,7 +366,7 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 	 * We might get preempted before the vCPU actually runs, but
 	 * over-invalidation doesn't affect correctness.
 	 */
-	if (*last_ran != vcpu->vcpu_id) {
+	if (*last_ran != -1 && *last_ran != vcpu->vcpu_id) {
 		kvm_call_hyp(__kvm_tlb_flush_local_vmid, vcpu);
 
 		/*
@@ -374,9 +374,8 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 		 *  conditions for Cortex-A77 erratum 1542418.
 		 */
 		kvm_workaround_1542418_vmid_rollover();
-
-		*last_ran = vcpu->vcpu_id;
 	}
+	*last_ran = vcpu->vcpu_id;
 
 	vcpu->cpu = cpu;
 	vcpu->arch.host_cpu_context = &cpu_data->host_ctxt;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
