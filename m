Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3626A1597DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:13:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2sHBjTRyBCYhpPa/dR2xDdJMLcGVlLQitxNH8NPyyE=; b=KG76gM2e/aLdDN
	e/5SitS9ZJDQZ9X5RksMEJzMJxw5PWtjg5a64bK94GdMXmXccrii/m3IguMoxQuaAdkTh63NagY2z
	P8FGJ77/vM3yfVuQmk+WhG5qZfKLsIhuSIwKmVprBC/uba3fN8XG9pLOe7r/1TJEgU6UD1zVRelSL
	P03TLqHb8ovMQUifTrnae4iUal5C+bIwp1yTThspiXoJ74KRmyVlNkZ6UrFTzvUSc+Mhclz0qN9GG
	MG6fjLtwIbzFTE+N7fS9NyE+rBnRi8wADiVd8r4x1J2jbv6a+S5VnEbnr4G466OmEbsJoZ+CyNC7m
	UMZWNpf6sdzG/J5WxKNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a2K-0008Jb-H3; Tue, 11 Feb 2020 18:13:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZiZ-0002yI-IP
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:53:05 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD4DB206D7;
 Tue, 11 Feb 2020 17:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443582;
 bh=+RRWW/hkjQ++uwcIqUV7epI4LDYcCn4wfi9/FkAslBs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xzyBktmCt/WDU5W1GAQeUg6EGjoO+QxNysTaWznPdDJllLNvJIxpIC/3ChIqvqLX8
 uDkZNKD388DUg1VD3BmTFDVDLDjBI2Vq6QwzWqYs1cnVE1cH6LYySjcI1SS6ndGU/v
 RL1q330SYVfqEev6CBt/n1536bYbdog7YEta5f2A=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1ZgA-004O7k-3C; Tue, 11 Feb 2020 17:50:34 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 69/94] arm64: KVM: Use TTL hint in when invalidating
 stage-2 translations
Date: Tue, 11 Feb 2020 17:49:13 +0000
Message-Id: <20200211174938.27809-70-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095303_725648_CAF96989 
X-CRM114-Status: GOOD (  12.89  )
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

Since we always have a precide idea of the level we're dealing with
when invalidating TLBs, we can provide it to as a hint to our
invalidation helper.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/include/asm/stage2_pgtable.h   |  9 +++++++++
 arch/arm64/include/asm/stage2_pgtable.h |  9 +++++++++
 virt/kvm/arm/mmu.c                      | 27 +++++++++++++------------
 3 files changed, 32 insertions(+), 13 deletions(-)

diff --git a/arch/arm/include/asm/stage2_pgtable.h b/arch/arm/include/asm/stage2_pgtable.h
index aaceec7855ec..d54ad534da20 100644
--- a/arch/arm/include/asm/stage2_pgtable.h
+++ b/arch/arm/include/asm/stage2_pgtable.h
@@ -72,4 +72,13 @@ static inline bool kvm_stage2_has_pmd(struct kvm *kvm)
 	return true;
 }
 
+/*
+ * The ARMv8.4-TTL extension doesn't apply to AArch32, so the below is
+ * only to keep things compiling.
+ */
+#define S2_NO_LEVEL_HINT	0
+#define S2_PUD_LEVEL		S2_NO_LEVEL_HINT
+#define S2_PMD_LEVEL		S2_NO_LEVEL_HINT
+#define S2_PTE_LEVEL		S2_NO_LEVEL_HINT
+
 #endif	/* __ARM_S2_PGTABLE_H_ */
diff --git a/arch/arm64/include/asm/stage2_pgtable.h b/arch/arm64/include/asm/stage2_pgtable.h
index 326aac658b9d..7ed5c1a769a9 100644
--- a/arch/arm64/include/asm/stage2_pgtable.h
+++ b/arch/arm64/include/asm/stage2_pgtable.h
@@ -230,4 +230,13 @@ stage2_pgd_addr_end(struct kvm *kvm, phys_addr_t addr, phys_addr_t end)
 	return (boundary - 1 < end - 1) ? boundary : end;
 }
 
+/*
+ * Level values for the ARMv8.4-TTL extension, mapping PUD/PMD/PTE and
+ * the architectural page-table level.
+ */
+#define S2_NO_LEVEL_HINT	0
+#define S2_PUD_LEVEL		1
+#define S2_PMD_LEVEL		2
+#define S2_PTE_LEVEL		3
+
 #endif	/* __ARM64_S2_PGTABLE_H_ */
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 67752c2a615f..f6ea17f55712 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -74,9 +74,10 @@ void kvm_flush_remote_tlbs(struct kvm *kvm)
 	}
 }
 
-static void kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa)
+static void kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa,
+				   int level)
 {
-	kvm_call_hyp(__kvm_tlb_flush_vmid_ipa, mmu, ipa, 0);
+	kvm_call_hyp(__kvm_tlb_flush_vmid_ipa, mmu, ipa, level);
 }
 
 /*
@@ -118,7 +119,7 @@ static void stage2_dissolve_pmd(struct kvm_s2_mmu *mmu, phys_addr_t addr, pmd_t
 		return;
 
 	pmd_clear(pmd);
-	kvm_tlb_flush_vmid_ipa(mmu, addr);
+	kvm_tlb_flush_vmid_ipa(mmu, addr, S2_PMD_LEVEL);
 	put_page(virt_to_page(pmd));
 }
 
@@ -138,7 +139,7 @@ static void stage2_dissolve_pud(struct kvm_s2_mmu *mmu, phys_addr_t addr, pud_t
 		return;
 
 	stage2_pud_clear(kvm, pudp);
-	kvm_tlb_flush_vmid_ipa(mmu, addr);
+	kvm_tlb_flush_vmid_ipa(mmu, addr, S2_PUD_LEVEL);
 	put_page(virt_to_page(pudp));
 }
 
@@ -180,7 +181,7 @@ static void clear_stage2_pgd_entry(struct kvm_s2_mmu *mmu, pgd_t *pgd, phys_addr
 
 	pud_t *pud_table __maybe_unused = stage2_pud_offset(kvm, pgd, 0UL);
 	stage2_pgd_clear(kvm, pgd);
-	kvm_tlb_flush_vmid_ipa(mmu, addr);
+	kvm_tlb_flush_vmid_ipa(mmu, addr, S2_NO_LEVEL_HINT);
 	stage2_pud_free(kvm, pud_table);
 	put_page(virt_to_page(pgd));
 }
@@ -192,7 +193,7 @@ static void clear_stage2_pud_entry(struct kvm_s2_mmu *mmu, pud_t *pud, phys_addr
 	pmd_t *pmd_table __maybe_unused = stage2_pmd_offset(kvm, pud, 0);
 	VM_BUG_ON(stage2_pud_huge(kvm, *pud));
 	stage2_pud_clear(kvm, pud);
-	kvm_tlb_flush_vmid_ipa(mmu, addr);
+	kvm_tlb_flush_vmid_ipa(mmu, addr, S2_NO_LEVEL_HINT);
 	stage2_pmd_free(kvm, pmd_table);
 	put_page(virt_to_page(pud));
 }
@@ -202,7 +203,7 @@ static void clear_stage2_pmd_entry(struct kvm_s2_mmu *mmu, pmd_t *pmd, phys_addr
 	pte_t *pte_table = pte_offset_kernel(pmd, 0);
 	VM_BUG_ON(pmd_thp_or_huge(*pmd));
 	pmd_clear(pmd);
-	kvm_tlb_flush_vmid_ipa(mmu, addr);
+	kvm_tlb_flush_vmid_ipa(mmu, addr, S2_NO_LEVEL_HINT);
 	free_page((unsigned long)pte_table);
 	put_page(virt_to_page(pmd));
 }
@@ -272,7 +273,7 @@ static void unmap_stage2_ptes(struct kvm_s2_mmu *mmu, pmd_t *pmd,
 			pte_t old_pte = *pte;
 
 			kvm_set_pte(pte, __pte(0));
-			kvm_tlb_flush_vmid_ipa(mmu, addr);
+			kvm_tlb_flush_vmid_ipa(mmu, addr, S2_PTE_LEVEL);
 
 			/* No need to invalidate the cache for device mappings */
 			if (!kvm_is_device_pfn(pte_pfn(old_pte)))
@@ -301,7 +302,7 @@ static void unmap_stage2_pmds(struct kvm_s2_mmu *mmu, pud_t *pud,
 				pmd_t old_pmd = *pmd;
 
 				pmd_clear(pmd);
-				kvm_tlb_flush_vmid_ipa(mmu, addr);
+				kvm_tlb_flush_vmid_ipa(mmu, addr, S2_PMD_LEVEL);
 
 				kvm_flush_dcache_pmd(old_pmd);
 
@@ -331,7 +332,7 @@ static void unmap_stage2_puds(struct kvm_s2_mmu *mmu, pgd_t *pgd,
 				pud_t old_pud = *pud;
 
 				stage2_pud_clear(kvm, pud);
-				kvm_tlb_flush_vmid_ipa(mmu, addr);
+				kvm_tlb_flush_vmid_ipa(mmu, addr, S2_PUD_LEVEL);
 				kvm_flush_dcache_pud(old_pud);
 				put_page(virt_to_page(pud));
 			} else {
@@ -1158,7 +1159,7 @@ static int stage2_set_pmd_huge(struct kvm_s2_mmu *mmu,
 		 */
 		WARN_ON_ONCE(pmd_pfn(old_pmd) != pmd_pfn(*new_pmd));
 		pmd_clear(pmd);
-		kvm_tlb_flush_vmid_ipa(mmu, addr);
+		kvm_tlb_flush_vmid_ipa(mmu, addr, S2_PMD_LEVEL);
 	} else {
 		get_page(virt_to_page(pmd));
 	}
@@ -1200,7 +1201,7 @@ static int stage2_set_pud_huge(struct kvm_s2_mmu *mmu,
 
 		WARN_ON_ONCE(kvm_pud_pfn(old_pud) != kvm_pud_pfn(*new_pudp));
 		stage2_pud_clear(kvm, pudp);
-		kvm_tlb_flush_vmid_ipa(mmu, addr);
+		kvm_tlb_flush_vmid_ipa(mmu, addr, S2_PUD_LEVEL);
 	} else {
 		get_page(virt_to_page(pudp));
 	}
@@ -1349,7 +1350,7 @@ static int stage2_set_pte(struct kvm_s2_mmu *mmu,
 			return 0;
 
 		kvm_set_pte(pte, __pte(0));
-		kvm_tlb_flush_vmid_ipa(mmu, addr);
+		kvm_tlb_flush_vmid_ipa(mmu, addr, S2_PTE_LEVEL);
 	} else {
 		get_page(virt_to_page(pte));
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
