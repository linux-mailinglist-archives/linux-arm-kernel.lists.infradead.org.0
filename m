Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89A310698
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4nMuH7DNUBqGxNAub1wJnznxGiKXR5S7QdiZQy33Ek=; b=Rm8Jj4mwkvu757
	ZmqLdhDP/c8B80Zck8zoF7BdZ1vKa5gU49s95qyvj0WMCIh2cH0RQKNQfI0iPz6NOUhEVd0KY6ViQ
	3IXDbvgDqVS7MFswwXXvMdOJGwDIjhT3AQ1olrJSA0qkbrf177SLHvZXz6173EnA2M+k5OCqyQoQY
	S2WWVoBZVMsO30GaPr99np8rP6x+C59HnQJ7mLyYljJabE4hY+y6W9US0iU5j7bZs0pj6ysPmceA4
	AuNJMwuG19WnEK5iBZ5qZLmcdNXxKxMdZhM3UJunrsDr6effM/hwrS8z1K0tlSMLjeltG/keaIqGh
	h+aim5+sGGpvlRldNiQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlrv-0006jX-1G; Wed, 01 May 2019 09:49:39 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlr1-0005X5-CV
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:48:50 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id CCCB721BE0C0F1547E36;
 Wed,  1 May 2019 17:48:14 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Wed, 1 May 2019 17:48:08 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <linux-kernel@vger.kernel.org>, <kvm@vger.kernel.org>
Subject: [PATCH 2/5] KVM: arm/arm64: Re-factor building the stage2 page table
 entries
Date: Wed, 1 May 2019 09:44:24 +0000
Message-ID: <1556703867-22396-3-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
In-Reply-To: <1556703867-22396-1-git-send-email-yuzenghui@huawei.com>
References: <1556703867-22396-1-git-send-email-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_024844_589766_1EF6AE0C 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: julien.thierry@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, will.deacon@arm.com, christoffer.dall@arm.com,
 linux@armlinux.org.uk, james.morse@arm.com, Zenghui Yu <yuzenghui@huawei.com>,
 wanghaibin.wang@huawei.com, steve.capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As we're going to support creating CONT_{PTE,PMD}_SIZE huge mappings in
user_mem_abort(), the logic to check vma_pagesize and build page table
entries will become longer, and looks almost the same (but actually they
dont). Refactor this part to make it a bit cleaner.

Add contiguous as a parameter of stage2_build_{pmd,pte}, to indicate
if we're creating contiguous huge mappings.

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 virt/kvm/arm/mmu.c | 81 ++++++++++++++++++++++++++++++++++++++----------------
 1 file changed, 57 insertions(+), 24 deletions(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 27c9583..cf8b035 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1616,6 +1616,56 @@ static void kvm_send_hwpoison_signal(unsigned long address,
 	send_sig_mceerr(BUS_MCEERR_AR, (void __user *)address, lsb, current);
 }
 
+static pud_t stage2_build_pud(kvm_pfn_t pfn, pgprot_t mem_type, bool writable,
+			      bool needs_exec)
+{
+	pud_t new_pud = kvm_pfn_pud(pfn, mem_type);
+
+	new_pud = kvm_pud_mkhuge(new_pud);
+	if (writable)
+		new_pud = kvm_s2pud_mkwrite(new_pud);
+
+	if (needs_exec)
+		new_pud = kvm_s2pud_mkexec(new_pud);
+
+	return new_pud;
+}
+
+static pmd_t stage2_build_pmd(kvm_pfn_t pfn, pgprot_t mem_type, bool writable,
+			      bool needs_exec, bool contiguous)
+{
+	pmd_t new_pmd = kvm_pfn_pmd(pfn, mem_type);
+
+	new_pmd = kvm_pmd_mkhuge(new_pmd);
+	if (writable)
+		new_pmd = kvm_s2pmd_mkwrite(new_pmd);
+
+	if (needs_exec)
+		new_pmd = kvm_s2pmd_mkexec(new_pmd);
+
+	if (contiguous)
+		new_pmd = kvm_s2pmd_mkcont(new_pmd);
+
+	return new_pmd;
+}
+
+static pte_t stage2_build_pte(kvm_pfn_t pfn, pgprot_t mem_type, bool writable,
+			      bool needs_exec, bool contiguous)
+{
+	pte_t new_pte = kvm_pfn_pte(pfn, mem_type);
+
+	if (writable)
+		new_pte = kvm_s2pte_mkwrite(new_pte);
+
+	if (needs_exec)
+		new_pte = kvm_s2pte_mkexec(new_pte);
+
+	if (contiguous)
+		new_pte = kvm_s2pte_mkcont(new_pte);
+
+	return new_pte;
+}
+
 static bool fault_supports_stage2_huge_mapping(struct kvm_memory_slot *memslot,
 					       unsigned long hva,
 					       unsigned long map_size)
@@ -1807,38 +1857,21 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 		(fault_status == FSC_PERM && stage2_is_exec(kvm, fault_ipa));
 
 	if (vma_pagesize == PUD_SIZE) {
-		pud_t new_pud = kvm_pfn_pud(pfn, mem_type);
-
-		new_pud = kvm_pud_mkhuge(new_pud);
-		if (writable)
-			new_pud = kvm_s2pud_mkwrite(new_pud);
-
-		if (needs_exec)
-			new_pud = kvm_s2pud_mkexec(new_pud);
+		pud_t new_pud = stage2_build_pud(pfn, mem_type, writable,
+						 needs_exec);
 
 		ret = stage2_set_pud_huge(kvm, memcache, fault_ipa, &new_pud);
 	} else if (vma_pagesize == PMD_SIZE) {
-		pmd_t new_pmd = kvm_pfn_pmd(pfn, mem_type);
-
-		new_pmd = kvm_pmd_mkhuge(new_pmd);
-
-		if (writable)
-			new_pmd = kvm_s2pmd_mkwrite(new_pmd);
-
-		if (needs_exec)
-			new_pmd = kvm_s2pmd_mkexec(new_pmd);
+		pmd_t new_pmd = stage2_build_pmd(pfn, mem_type, writable,
+						 needs_exec, false);
 
 		ret = stage2_set_pmd_huge(kvm, memcache, fault_ipa, &new_pmd);
 	} else {
-		pte_t new_pte = kvm_pfn_pte(pfn, mem_type);
+		pte_t new_pte = stage2_build_pte(pfn, mem_type, writable,
+						 needs_exec, false);
 
-		if (writable) {
-			new_pte = kvm_s2pte_mkwrite(new_pte);
+		if (writable)
 			mark_page_dirty(kvm, gfn);
-		}
-
-		if (needs_exec)
-			new_pte = kvm_s2pte_mkexec(new_pte);
 
 		ret = stage2_set_pte(kvm, memcache, fault_ipa, &new_pte, flags);
 	}
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
