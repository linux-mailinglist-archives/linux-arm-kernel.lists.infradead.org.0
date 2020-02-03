Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 951761510E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 21:20:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2J0D5z3hRCYB35b7cibqP1ZZd+alRjGpVIPG1niQloA=; b=srIQN0TYv+79pP
	XO+zyiimnrO4ETlnVbRBOXSgghWSVsQ2GhA8rnzybR3IDv3Ue3HWGRWuoHgJzmfm78BbCveSrLC9A
	A4BAbeGTE8exxBkv3VxopfTU/3bPV1b1j2U57Hrqx9zZds7y4EEB8SNxpXQVzPoFwrc4K3KyJ4XnR
	/fSrTn9lWmjiW9UBE5DwjOIZqHwXSShpZCbTo06v0F9vIGx5OEY2OxwkLROC5CtQiH8MExTqexJ/F
	mbKGxa6sT6d/x0bXXYFuCSUDgyPuDy06CgRorPmp4TJ9m4Z8wD33BD3pR9+uqQJdt31VCwNALI1k+
	ttvg+MXWp0pubLT4JgZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyiCG-00066u-O9; Mon, 03 Feb 2020 20:19:52 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyiC6-00066F-CE
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 20:19:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580761180;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rnGScHbTlJ76sEJ4ZUeqFR3hYk6wSCyUU5+x/f3HazU=;
 b=GjQw6du9zi0GD9Lh+swFwURFcXyCYvt/3UenT5NVXP9+6PXfFzgI/MqE3kYksMj6RfR8Ew
 tZ8gOO8oXIyWhvQ1AYOYRh22OcbT1aMoRx5PvK9vEF+Wrc/rHtxe1kAAtxJ/WsHS0kUYeJ
 ZLCTNRZM3MunGxaQLfEYjSAHyhKmGEw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-8YXHLavUPaS-JWZqlrwJfw-1; Mon, 03 Feb 2020 15:17:50 -0500
X-MC-Unique: 8YXHLavUPaS-JWZqlrwJfw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C42AC1005514;
 Mon,  3 Feb 2020 20:17:48 +0000 (UTC)
Received: from mail (ovpn-120-67.rdu2.redhat.com [10.10.120.67])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D6E210018FF;
 Mon,  3 Feb 2020 20:17:46 +0000 (UTC)
From: Andrea Arcangeli <aarcange@redhat.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Jon Masters <jcm@jonmasters.org>, Rafael Aquini <aquini@redhat.com>,
 Mark Salter <msalter@redhat.com>
Subject: [PATCH 2/2] arm64: tlb: skip tlbi broadcast for single threaded TLB
 flushes
Date: Mon,  3 Feb 2020 15:17:45 -0500
Message-Id: <20200203201745.29986-3-aarcange@redhat.com>
In-Reply-To: <20200203201745.29986-1-aarcange@redhat.com>
References: <20200203201745.29986-1-aarcange@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_121942_632402_51B4E384 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With multiple NUMA nodes and multiple sockets, the tlbi broadcast
shall be delivered through the interconnects in turn increasing the
interconnect traffic and the latency of the tlbi broadcast instruction.

Even within a single NUMA node the latency of the tlbi broadcast
instruction increases almost linearly with the number of CPUs trying to
send tlbi broadcasts at the same time.

When the process is single threaded however we can achieve full SMP
scalability by skipping the tlbi broadcasting. Other arches already
deploy this optimization.

After the local TLB flush this however means the ASID context goes out
of sync in all CPUs except the local one. This can be tracked in the
mm_cpumask(mm): if the bit is set it means the asid context is stale
for that CPU. This results in an extra local ASID TLB flush only if a
single threaded process is migrated to a different CPU and only after a
TLB flush. No extra local TLB flush is needed for the common case of
single threaded processes context scheduling within the same CPU and for
multithreaded processes.

Skipping the tlbi instruction broadcasting is already implemented in
local_flush_tlb_all(), this patch only extends it to flush_tlb_mm(),
flush_tlb_range() and flush_tlb_page() too.

Here's the result of 32 CPUs (ARMv8 Ampere) running mprotect at the same
time from 32 single threaded processes before the patch:

 Performance counter stats for './loop' (3 runs):

                 0      dummy

          2.121353 +- 0.000387 seconds time elapsed  ( +-  0.02% )

and with the patch applied:

 Performance counter stats for './loop' (3 runs):

                 0      dummy

         0.1197750 +- 0.0000827 seconds time elapsed  ( +-  0.07% )

Signed-off-by: Andrea Arcangeli <aarcange@redhat.com>
---
 arch/arm64/include/asm/efi.h         |  2 +-
 arch/arm64/include/asm/mmu.h         |  3 +-
 arch/arm64/include/asm/mmu_context.h | 10 +--
 arch/arm64/include/asm/tlbflush.h    | 91 +++++++++++++++++++++++++++-
 arch/arm64/mm/context.c              | 13 +++-
 5 files changed, 109 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/include/asm/efi.h b/arch/arm64/include/asm/efi.h
index 44531a69d32b..5d9a1433d918 100644
--- a/arch/arm64/include/asm/efi.h
+++ b/arch/arm64/include/asm/efi.h
@@ -131,7 +131,7 @@ static inline void efifb_setup_from_dmi(struct screen_info *si, const char *opt)
 
 static inline void efi_set_pgd(struct mm_struct *mm)
 {
-	__switch_mm(mm);
+	__switch_mm(mm, smp_processor_id());
 
 	if (system_uses_ttbr0_pan()) {
 		if (mm != current->active_mm) {
diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index e4d862420bb4..1f84289d3e44 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -27,7 +27,8 @@ typedef struct {
  * ASID change and therefore doesn't need to reload the counter using
  * atomic64_read.
  */
-#define ASID(mm)	((mm)->context.id.counter & 0xffff)
+#define __ASID(asid)	((asid) & 0xffff)
+#define ASID(mm)	__ASID((mm)->context.id.counter)
 
 extern bool arm64_use_ng_mappings;
 
diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index 3827ff4040a3..5ec264297968 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -210,10 +210,8 @@ enter_lazy_tlb(struct mm_struct *mm, struct task_struct *tsk)
 	update_saved_ttbr0(tsk, &init_mm);
 }
 
-static inline void __switch_mm(struct mm_struct *next)
+static inline void __switch_mm(struct mm_struct *next, unsigned int cpu)
 {
-	unsigned int cpu = smp_processor_id();
-
 	/*
 	 * init_mm.pgd does not contain any user mappings and it is always
 	 * active for kernel addresses in TTBR1. Just set the reserved TTBR0.
@@ -230,8 +228,12 @@ static inline void
 switch_mm(struct mm_struct *prev, struct mm_struct *next,
 	  struct task_struct *tsk)
 {
+	unsigned int cpu = smp_processor_id();
+
 	if (prev != next)
-		__switch_mm(next);
+		__switch_mm(next, cpu);
+	else if (cpumask_test_and_clear_cpu(cpu, mm_cpumask(next)))
+		local_flush_tlb_asid(atomic64_read(&next->context.id));
 
 	/*
 	 * Update the saved TTBR0_EL1 of the scheduled-in task as the previous
diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index bc3949064725..283f97af3fc5 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -136,6 +136,15 @@ static inline void local_flush_tlb_all(void)
 	isb();
 }
 
+static inline void local_flush_tlb_asid(unsigned long asid)
+{
+	asid = __TLBI_VADDR(0, __ASID(asid));
+	dsb(nshst);
+	__tlbi(aside1, asid);
+	__tlbi_user(aside1, asid);
+	dsb(nsh);
+}
+
 static inline void flush_tlb_all(void)
 {
 	dsb(ishst);
@@ -148,6 +157,27 @@ static inline void flush_tlb_mm(struct mm_struct *mm)
 {
 	unsigned long asid = __TLBI_VADDR(0, ASID(mm));
 
+	/* avoid TLB-i broadcast to remote NUMA nodes if it's a local flush */
+	if (current->mm == mm && atomic_read(&mm->mm_users) <= 1) {
+		int cpu = get_cpu();
+
+		cpumask_setall(mm_cpumask(mm));
+		cpumask_clear_cpu(cpu, mm_cpumask(mm));
+
+		smp_mb();
+
+		if (atomic_read(&mm->mm_users) <= 1) {
+			dsb(nshst);
+			__tlbi(aside1, asid);
+			__tlbi_user(aside1, asid);
+			dsb(nsh);
+
+			put_cpu();
+			return;
+		}
+		put_cpu();
+	}
+
 	dsb(ishst);
 	__tlbi(aside1is, asid);
 	__tlbi_user(aside1is, asid);
@@ -167,7 +197,33 @@ static inline void flush_tlb_page_nosync(struct vm_area_struct *vma,
 static inline void flush_tlb_page(struct vm_area_struct *vma,
 				  unsigned long uaddr)
 {
-	flush_tlb_page_nosync(vma, uaddr);
+	struct mm_struct *mm = vma->vm_mm;
+	unsigned long addr = __TLBI_VADDR(uaddr, ASID(mm));
+
+	/* avoid TLB-i broadcast to remote NUMA nodes if it's a local flush */
+	if (current->mm == mm && atomic_read(&mm->mm_users) <= 1) {
+		int cpu = get_cpu();
+
+		cpumask_setall(mm_cpumask(mm));
+		cpumask_clear_cpu(cpu, mm_cpumask(mm));
+
+		smp_mb();
+
+		if (atomic_read(&mm->mm_users) <= 1) {
+			dsb(nshst);
+			__tlbi(vale1, addr);
+			__tlbi_user(vale1, addr);
+			dsb(nsh);
+
+			put_cpu();
+			return;
+		}
+		put_cpu();
+	}
+
+	dsb(ishst);
+	__tlbi(vale1is, addr);
+	__tlbi_user(vale1is, addr);
 	dsb(ish);
 }
 
@@ -181,14 +237,15 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
 				     unsigned long start, unsigned long end,
 				     unsigned long stride, bool last_level)
 {
-	unsigned long asid = ASID(vma->vm_mm);
+	struct mm_struct *mm = vma->vm_mm;
+	unsigned long asid = ASID(mm);
 	unsigned long addr;
 
 	start = round_down(start, stride);
 	end = round_up(end, stride);
 
 	if ((end - start) >= (MAX_TLBI_OPS * stride)) {
-		flush_tlb_mm(vma->vm_mm);
+		flush_tlb_mm(mm);
 		return;
 	}
 
@@ -198,6 +255,34 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
 	start = __TLBI_VADDR(start, asid);
 	end = __TLBI_VADDR(end, asid);
 
+	/* avoid TLB-i broadcast to remote NUMA nodes if it's a local flush */
+	if (current->mm == mm && atomic_read(&mm->mm_users) <= 1) {
+		int cpu = get_cpu();
+
+		cpumask_setall(mm_cpumask(mm));
+		cpumask_clear_cpu(cpu, mm_cpumask(mm));
+
+		smp_mb();
+
+		if (atomic_read(&mm->mm_users) <= 1) {
+			dsb(nshst);
+			for (addr = start; addr < end; addr += stride) {
+				if (last_level) {
+					__tlbi(vale1, addr);
+					__tlbi_user(vale1, addr);
+				} else {
+					__tlbi(vae1, addr);
+					__tlbi_user(vae1, addr);
+				}
+			}
+			dsb(nsh);
+
+			put_cpu();
+			return;
+		}
+		put_cpu();
+	}
+
 	dsb(ishst);
 	for (addr = start; addr < end; addr += stride) {
 		if (last_level) {
diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index 8ef73e89d514..b44459d64dff 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -198,6 +198,7 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 {
 	unsigned long flags;
 	u64 asid, old_active_asid;
+	int need_flush = 0;
 
 	if (system_supports_cnp())
 		cpu_set_reserved_ttbr0();
@@ -233,7 +234,8 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 		atomic64_set(&mm->context.id, asid);
 	}
 
-	if (cpumask_test_and_clear_cpu(cpu, &tlb_flush_pending))
+	need_flush = cpumask_test_and_clear_cpu(cpu, &tlb_flush_pending);
+	if (need_flush)
 		local_flush_tlb_all();
 
 	atomic64_set(&per_cpu(active_asids, cpu), asid);
@@ -241,6 +243,15 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 
 switch_mm_fastpath:
 
+	/*
+	 * Enforce CPU ordering between the mmget() in use_mm() and
+	 * the below cpumask_test_and_clear_cpu().
+	 */
+	smp_mb();
+	if (cpumask_test_and_clear_cpu(cpu, mm_cpumask(mm)) &&
+	    likely(!need_flush))
+		local_flush_tlb_asid(asid);
+
 	arm64_apply_bp_hardening();
 
 	/*


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
