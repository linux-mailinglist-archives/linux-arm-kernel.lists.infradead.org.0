Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D0D3CB02
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CjoG1nbcm2YtoqIuBc9+klhEyFJjswygKpjVuIxsnGI=; b=M0U
	M4faTgOJQ/kQdWsZxHlgs+GX0J71y2a7UYz52CDuh44n7wyzXswEnBaF1Pahje7fjBQ1OTCKe8o0Y
	dkEV+Qqst6hp5fjrzti2iupqiNNHnt9mmafnHSSxjs1f9wJ0gs+dFY1calvIopPqc2zkt8+ZlnGRW
	P4kg4l58Tx14AvYiaqBtwFQ4Gz9XE/cxPCZYQz3Kwxvmr49vIztvw1kVqM6MG4H8GV8k0J5w0FjUE
	xci5rRivjIrxkprg1OHiWcBFy4uDQ0IkeRJFKv85+nLarWb76we0aYtBEcLfNUhnH8SFOtoTLnvFD
	SLSvYmnkw5JwLW3mHII47Ko3Q/Hrvyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafko-0006EQ-3i; Tue, 11 Jun 2019 12:19:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hafkZ-0006Cf-RS
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:19:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49D20346;
 Tue, 11 Jun 2019 05:19:36 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C81FF3F557;
 Tue, 11 Jun 2019 05:21:17 -0700 (PDT)
From: Will Deacon <will.deacon@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: tlbflush: Ensure start/end of address range are
 aligned to stride
Date: Tue, 11 Jun 2019 13:19:28 +0100
Message-Id: <20190611121928.19253-1-will.deacon@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_051939_940140_0A776243 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 guohanjun@huawei.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 3d65b6bbc01e ("arm64: tlbi: Set MAX_TLBI_OPS to
PTRS_PER_PTE"), we resort to per-ASID invalidation when attempting to
perform more than PTRS_PER_PTE invalidation instructions in a single
call to __flush_tlb_range(). Whilst this is beneficial, the mmu_gather
code does not ensure that the end address of the range is rounded-up
to the stride when freeing intermediate page tables in pXX_free_tlb(),
which defeats our range checking.

Align the bounds passed into __flush_tlb_range().

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Reported-by: Hanjun Guo <guohanjun@huawei.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/include/asm/tlbflush.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index 3a1870228946..dff8f9ea5754 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -195,6 +195,9 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
 	unsigned long asid = ASID(vma->vm_mm);
 	unsigned long addr;
 
+	start = round_down(start, stride);
+	end = round_up(end, stride);
+
 	if ((end - start) >= (MAX_TLBI_OPS * stride)) {
 		flush_tlb_mm(vma->vm_mm);
 		return;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
