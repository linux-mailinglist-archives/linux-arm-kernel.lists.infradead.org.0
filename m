Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 956A5582D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 14:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TgF6KAXrWR3+jkUtLPMqkWRRNvsUEidYZMkWDddxuxg=; b=ec6i0T2FezNbH3jnURKF2WxFAH
	Wx9m0ab4dW50g+jbooCoxItiiouqFVGmsExzrRQ5k5tEPWsb8wBIQTRwNlL/Te/tLMVVOh6Y7siQM
	9kzUZ8+K+9spFZ+Wq50iIaHi6ZMC00NiPN6OCA2GzPPOLdfEuw6PQW1exx68oqYDvB1xgE+wl6JLV
	oleHMDGnkT0230OjBsIPpPeQ0q7PgJYwhHU5wl474dqj/9FD+fAA4rtQrE+CS6hxX7td2yEGe2c0+
	drMa+At6TNJqH9QP5EIc9oyVTZ9+UnpMHbBnW1xlQzzmDGdtQIg4FCNu1Z1SWYzwI8RyBNskHLlnw
	ZzvlohLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgTqP-00021I-5d; Thu, 27 Jun 2019 12:49:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgTpn-0001n4-T7
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 12:49:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13BFD2B;
 Thu, 27 Jun 2019 05:49:03 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C121B3F718;
 Thu, 27 Jun 2019 05:48:59 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [RFC 2/2] arm64/mm: Enable THP migration without split
Date: Thu, 27 Jun 2019 18:18:16 +0530
Message-Id: <1561639696-16361-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561639696-16361-1-git-send-email-anshuman.khandual@arm.com>
References: <1561639696-16361-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_054904_361171_F739CD85 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In certain page migration situations a THP page can be migrated without
being split into it's constituent normal pages. This not only saves time
required to split the THP page later to be put back when required but also
saves an wider address range translation from the existing huge TLB entry
reducing future page fault costs.

The previous patch changed the THP helper functions which now complies with
the generic MM semantics clearing the path for THP migration support. Hence
just enable it.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Suzuki Poulose <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/Kconfig               | 4 ++++
 arch/arm64/include/asm/pgtable.h | 5 +++++
 2 files changed, 9 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0758d89..27bd8c4 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1589,6 +1589,10 @@ config ARCH_ENABLE_HUGEPAGE_MIGRATION
 	def_bool y
 	depends on HUGETLB_PAGE && MIGRATION
 
+config ARCH_ENABLE_THP_MIGRATION
+	def_bool y
+	depends on TRANSPARENT_HUGEPAGE
+
 menu "Power management options"
 
 source "kernel/power/Kconfig"
diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 90d4e24..4860573 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -851,6 +851,11 @@ static inline pmd_t pmdp_establish(struct vm_area_struct *vma,
 #define __pte_to_swp_entry(pte)	((swp_entry_t) { pte_val(pte) })
 #define __swp_entry_to_pte(swp)	((pte_t) { (swp).val })
 
+#ifdef CONFIG_ARCH_ENABLE_THP_MIGRATION
+#define __pmd_to_swp_entry(pmd)        ((swp_entry_t) { pmd_val(pmd) })
+#define __swp_entry_to_pmd(swp)        __pmd((swp).val)
+#endif
+
 /*
  * Ensure that there are not more swap files than can be encoded in the kernel
  * PTEs.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
