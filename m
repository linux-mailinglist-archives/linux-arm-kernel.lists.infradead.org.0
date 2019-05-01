Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E75D11068A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTvpHHrxpw8UyFk37cEa3ecFoAcaQ18uRrMjyya08Hk=; b=m0sHljJZp1NwUE
	j6W7oDgD5r2KKgw/Slvk5/b8f5fN3eU5m+x2XXGud0vEAq9oVlIlLl8W1zW6hAEJa4f8mvLA3F5aM
	w/+VMMJBWBpDyuLWMwiKXfwr8KK2o9LIm9s2fKcEBRiVAdLX3LuRVpMhAmhH3py48+lYSwEF9lEvU
	LPdHaVLvS3n4WceNMW5q/Gu8fPTOPxljFrWE79qRGEYIpgUCrxWo9PA2Atmmn5M9y5qUmx4wXhQiG
	+03cU/LmT/ZQkEcrrAEk1CekvXON5yc8peWEnGrMADQeUnN1b5vc90dH4e5MOYRjoU2tFG7YOPc4M
	5uV6O0OTrAzRAwdxKvyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlr2-0005fb-0D; Wed, 01 May 2019 09:48:44 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlql-0005X6-89
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:48:28 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C4F005DC777B751C2BF8;
 Wed,  1 May 2019 17:48:14 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Wed, 1 May 2019 17:48:07 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <linux-kernel@vger.kernel.org>, <kvm@vger.kernel.org>
Subject: [PATCH 1/5] KVM: arm/arm64: Introduce helpers for page table enties
 with contiguous bit
Date: Wed, 1 May 2019 09:44:23 +0000
Message-ID: <1556703867-22396-2-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
In-Reply-To: <1556703867-22396-1-git-send-email-yuzenghui@huawei.com>
References: <1556703867-22396-1-git-send-email-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_024827_510700_91CD973C 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
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

Introduce helpers to manipulate stage2 page table entries - set contiguous
bit in the entry and say whether this entry points to a contiguous block.

The helpers are introduced in preparation for supporting contiguous
hugepages at stage2.

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 arch/arm/include/asm/kvm_mmu.h   | 22 ++++++++++++++++++++++
 arch/arm64/include/asm/kvm_mmu.h | 20 ++++++++++++++++++++
 2 files changed, 42 insertions(+)

diff --git a/arch/arm/include/asm/kvm_mmu.h b/arch/arm/include/asm/kvm_mmu.h
index 31de4ab..80d73ae 100644
--- a/arch/arm/include/asm/kvm_mmu.h
+++ b/arch/arm/include/asm/kvm_mmu.h
@@ -143,6 +143,28 @@ static inline bool kvm_s2pud_young(pud_t pud)
 	return false;
 }
 
+static inline pte_t kvm_s2pte_mkcont(pte_t pte)
+{
+	BUG();
+	return pte;
+}
+
+static inline bool kvm_s2pte_cont(pte_t pte)
+{
+	return false;
+}
+
+static inline pmd_t kvm_s2pmd_mkcont(pmd_t pmd)
+{
+	BUG();
+	return pmd;
+}
+
+static inline bool kvm_s2pmd_cont(pmd_t pmd)
+{
+	return false;
+}
+
 static inline pte_t kvm_s2pte_mkwrite(pte_t pte)
 {
 	pte_val(pte) |= L_PTE_S2_RDWR;
diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index ebeefcf..4afdad9 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -295,6 +295,26 @@ static inline bool kvm_s2pud_young(pud_t pud)
 	return pud_young(pud);
 }
 
+static inline pte_t kvm_s2pte_mkcont(pte_t pte)
+{
+	return pte_mkcont(pte);
+}
+
+static inline bool kvm_s2pte_cont(pte_t pte)
+{
+	return pte_cont(pte);
+}
+
+static inline pmd_t kvm_s2pmd_mkcont(pmd_t pmd)
+{
+	return pmd_mkcont(pmd);
+}
+
+static inline bool kvm_s2pmd_cont(pmd_t pmd)
+{
+	return !!(pmd_val(pmd) & PMD_SECT_CONT);
+}
+
 #define hyp_pte_table_empty(ptep) kvm_page_empty(ptep)
 
 #ifdef __PAGETABLE_PMD_FOLDED
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
