Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 802611F9815
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+WZyE39eseLFbbid5MZ62RxrebkhA4u+ZCH8j9Ai9hA=; b=Dj2lvLeM8Sy6SIiYj6ddPNoNkY
	9wx/1QUULsFA2hixhKoz7BLjuTIyt00ZbGUYC3EruEwHAkOzvQme/V+xYNbSjt2AoeXxJJR/u/Y3q
	zdjCxq2heU0IWXtcQiAo9nkbRwltNm36SDBen0geY+fH1bh//Iz5bwCSmltCyH9fk0GKKGNZfsH0J
	ihSB0Yy756doH3bTMupluuJHcBSib99cCsTLPbobdbhaLqOOrLw66+Kqo/AlfoHtc40+vH0RgmxA2
	RyUGPal+HIWt+zJ4W4lRIJU2Emri7m76zkjPrvrZShJxJqwitTFF6JykDStHjIukLXbEUA9tVjgVJ
	V5Ze10uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkoyD-0002pa-4o; Mon, 15 Jun 2020 13:16:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkoxf-0002Sl-B5
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:15:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6C2031B;
 Mon, 15 Jun 2020 06:15:38 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.79.186])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2D45C3F6CF;
 Mon, 15 Jun 2020 06:15:34 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC V2 2/2] arm64/mm: Enable THP migration
Date: Mon, 15 Jun 2020 18:45:18 +0530
Message-Id: <1592226918-26378-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592226918-26378-1-git-send-email-anshuman.khandual@arm.com>
References: <1592226918-26378-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_061539_489873_C578DE5E 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 catalin.marinas@arm.com, Suzuki Poulose <suzuki.poulose@arm.com>,
 linux-kernel@vger.kernel.org, ziy@nvidia.com, Marc Zyngier <maz@kernel.org>,
 will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In certain page migration situations, a THP page can be migrated without
being split into it's constituent subpages. This saves time required to
split a THP and put it back together when required. But it also saves an
wider address range translation covered by a single TLB entry, reducing
future page fault costs.

A previous patch changed platform THP helpers per generic memory semantics,
clearing the path for THP migration support. This adds two more THP helpers
required to create PMD migration swap entries. Now just enable HP migration
via ARCH_ENABLE_THP_MIGRATION.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Suzuki Poulose <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/Kconfig               |  4 ++++
 arch/arm64/include/asm/pgtable.h | 10 ++++++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 31380da53689..01d432dc813e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1874,6 +1874,10 @@ config ARCH_ENABLE_HUGEPAGE_MIGRATION
 	def_bool y
 	depends on HUGETLB_PAGE && MIGRATION
 
+config ARCH_ENABLE_THP_MIGRATION
+	def_bool y
+	depends on TRANSPARENT_HUGEPAGE
+
 menu "Power management options"
 
 source "kernel/power/Kconfig"
diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 560be593a8dc..892c30129cd2 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -907,6 +907,16 @@ static inline pmd_t pmdp_establish(struct vm_area_struct *vma,
 #define __pte_to_swp_entry(pte)	((swp_entry_t) { pte_val(pte) })
 #define __swp_entry_to_pte(swp)	((pte_t) { (swp).val })
 
+#ifdef CONFIG_ARCH_ENABLE_THP_MIGRATION
+#define __pmd_to_swp_entry(pmd)		((swp_entry_t) { pmd_val(pmd) })
+
+/*
+ * pmd_present() must return false for a swap PMD entry.
+ * Just explicitly clear PMD_TABLE_BIT while converting.
+ */
+#define __swp_entry_to_pmd(swp)		__pmd((swp).val & ~PMD_TABLE_BIT)
+#endif /* CONFIG_ARCH_ENABLE_THP_MIGRATION */
+
 /*
  * Ensure that there are not more swap files than can be encoded in the kernel
  * PTEs.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
