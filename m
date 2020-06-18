Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7317B1FEBB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 08:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0gUFNLaUlWxmalxkcpkGeKmBhifNc69NK9idANp3ew=; b=bY9mP2224FmVWv
	y727lsGuZ8gVNyzh3ji1JeE8J2nX4EjpeTGC8WiF7nHbXvdc+sLdGknRkV5tzsKI6+DBARpZtTCWX
	0WrfmH5YbuKZZXha9zL1qgt225g36T7PdBMSLmyJ6xtKH8Pc3ELahrVWaPVYzjh0Q8xtsLm4n3TO3
	/6jtXUJWc2aq+IsFwKSxi9QkCEDGFnRH1oebVqgSefIxBq1JhKEdANpxg4IM+8i67Rvbfb60UyVdg
	HIubxdtQ8SdB1sM4451WtJqTY/3bJwnuPAhnelQ37v3lwPPmQDb4buGicfm17k53HR6911iy9KA+d
	pdITEutzD4qPLHGPIa9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jloHV-0008Ts-7k; Thu, 18 Jun 2020 06:44:13 +0000
Received: from 195-192-102-148.dyn.cablelink.at ([195.192.102.148]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jloGb-000803-Rs; Thu, 18 Jun 2020 06:43:18 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 2/3] arm64: use PAGE_KERNEL_ROX directly in alloc_insn_page
Date: Thu, 18 Jun 2020 08:43:06 +0200
Message-Id: <20200618064307.32739-3-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618064307.32739-1-hch@lst.de>
References: <20200618064307.32739-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-hyperv@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Dexuan Cui <decui@microsoft.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Jessica Yu <jeyu@kernel.org>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use PAGE_KERNEL_ROX directly instead of allocating RWX and setting the
page read-only just after the allocation.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm64/kernel/probes/kprobes.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index d1c95dcf1d7833..cbe49cd117cfec 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -120,15 +120,9 @@ int __kprobes arch_prepare_kprobe(struct kprobe *p)
 
 void *alloc_insn_page(void)
 {
-	void *page;
-
-	page = vmalloc_exec(PAGE_SIZE);
-	if (page) {
-		set_memory_ro((unsigned long)page, 1);
-		set_vm_flush_reset_perms(page);
-	}
-
-	return page;
+	return __vmalloc_node_range(PAGE_SIZE, 1, VMALLOC_START, VMALLOC_END,
+			GFP_KERNEL, PAGE_KERNEL_ROX, VM_FLUSH_RESET_PERMS,
+			NUMA_NO_NODE, __func__);
 }
 
 /* arm kprobe: install breakpoint in text */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
