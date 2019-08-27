Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 875EA9E91A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wkt/WrutcwfnqmgIWMkdZRJGQVFoxqBc9dyxVjX3VNg=; b=HS36MQHjrnTvVbhtOfqUTfJt6E
	Kl6kwLJ+KfCctZt66Ef5g48WXWHHxs2+qSvDtwVnWrEZBC6LWdiiY/xDR8odrNRSuyEZTq0FevplE
	QSFxq10qc8hJPisojzfw/HxjQUDU2Z0KPF7y2NqaKDHjhueyuHdTB1KZ6bhCQiKvlMXLoNmiS4sGO
	wKRtwHdqAJqh0xGyd2E3YNzNpetl6mQNO26c0v2Pz04ot4q660LoakZCXku3+OMA/x3XIvjsac5Ve
	kSIQSBLoEIcbKhox8WEmlPdnFNReio3zaUzIid2687t/w5iCc89yJKfE+B8Cu61x2UITOeJv+f5oB
	cts9Xhng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bPg-00068m-TM; Tue, 27 Aug 2019 13:21:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bMs-0002bB-Fo
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:18:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6051D360;
 Tue, 27 Aug 2019 06:18:37 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 42C143F246;
 Tue, 27 Aug 2019 06:18:36 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/6] Revert "arm64: Remove unnecessary ISBs from set_{pte, pmd,
 pud}"
Date: Tue, 27 Aug 2019 14:18:13 +0100
Message-Id: <20190827131818.14724-2-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190827131818.14724-1-will@kernel.org>
References: <20190827131818.14724-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_061838_715947_BB83118A 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-arch@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, stable@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 24fe1b0efad4fcdd32ce46cffeab297f22581707.

Commit 24fe1b0efad4fcdd ("arm64: Remove unnecessary ISBs from
set_{pte,pmd,pud}") removed ISB instructions immediately following updates
to the page table, on the grounds that they are not required by the
architecture and a DSB alone is sufficient to ensure that subsequent data
accesses use the new translation:

  DDI0487E_a, B2-128:

  | ... no instruction that appears in program order after the DSB
  | instruction can alter any state of the system or perform any part of
  | its functionality until the DSB completes other than:
  |
  | * Being fetched from memory and decoded
  | * Reading the general-purpose, SIMD and floating-point,
  |   Special-purpose, or System registers that are directly or indirectly
  |   read without causing side-effects.

However, the same document also states the following:

  DDI0487E_a, B2-125:

  | DMB and DSB instructions affect reads and writes to the memory system
  | generated by Load/Store instructions and data or unified cache
  | maintenance instructions being executed by the PE. Instruction fetches
  | or accesses caused by a hardware translation table access are not
  | explicit accesses.

which appears to claim that the DSB alone is insufficient.  Unfortunately,
some CPU designers have followed the second clause above, whereas in Linux
we've been relying on the first. This means that our mapping sequence:

	MOV	X0, <valid pte>
	STR	X0, [Xptep]	// Store new PTE to page table
	DSB	ISHST
	LDR	X1, [X2]	// Translates using the new PTE

can actually raise a translation fault on the load instruction because the
translation can be performed speculatively before the page table update and
then marked as "faulting" by the CPU. For user PTEs, this is ok because we
can handle the spurious fault, but for kernel PTEs and intermediate table
entries this results in a panic().

Revert the offending commit to reintroduce the missing barriers.

Cc: <stable@vger.kernel.org>
Fixes: 24fe1b0efad4fcdd ("arm64: Remove unnecessary ISBs from set_{pte,pmd,pud}")
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/pgtable.h | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 5fdcfe237338..feda7294320c 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -220,8 +220,10 @@ static inline void set_pte(pte_t *ptep, pte_t pte)
 	 * Only if the new pte is valid and kernel, otherwise TLB maintenance
 	 * or update_mmu_cache() have the necessary barriers.
 	 */
-	if (pte_valid_not_user(pte))
+	if (pte_valid_not_user(pte)) {
 		dsb(ishst);
+		isb();
+	}
 }
 
 extern void __sync_icache_dcache(pte_t pteval);
@@ -481,8 +483,10 @@ static inline void set_pmd(pmd_t *pmdp, pmd_t pmd)
 
 	WRITE_ONCE(*pmdp, pmd);
 
-	if (pmd_valid(pmd))
+	if (pmd_valid(pmd)) {
 		dsb(ishst);
+		isb();
+	}
 }
 
 static inline void pmd_clear(pmd_t *pmdp)
@@ -540,8 +544,10 @@ static inline void set_pud(pud_t *pudp, pud_t pud)
 
 	WRITE_ONCE(*pudp, pud);
 
-	if (pud_valid(pud))
+	if (pud_valid(pud)) {
 		dsb(ishst);
+		isb();
+	}
 }
 
 static inline void pud_clear(pud_t *pudp)
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
