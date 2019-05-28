Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470EB2CB53
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+oIrE1BL/Z5nPpq9ow3/CPzsn0nLXVchKBk6pMNCE8=; b=NmBva8V08KNxNF
	RogDvtoDxhyc8aWxQxDsHFtlUogI6phM8ANYPrA5OBeRCevJAK5mUyW8m7pX9BsQR2YmciK/bkLzw
	r/6ZDWa0Nu3T7559mxkZ/FYo0eLjRFRRcGtS2/EP4PyPa7IgGk/GWFYfGPUrooDZBr36oYGffRO6y
	IFtXxsH8XgntxxcVEavQLfmuGq4CYo/GmF4+y95XmL4gOG9sFeXGSKFLekKhyVdS5wjIQrFagrG24
	Tf8AJK/qSxaJ2H1GyaLWlBdMlwCCkfKya483584USXlABircsiU2VWUiXCKsvuNG3nkIYzV5sSopy
	AoB7RPNtxP5L3jaaMIsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVeiz-0006jO-Tg; Tue, 28 May 2019 16:13:17 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVegx-0004n4-Mw
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:11:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 779F6341;
 Tue, 28 May 2019 09:11:11 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.12.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A789F3F59C;
 Tue, 28 May 2019 09:11:03 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 09/12] arm64: mm: Separate out vmemmap
Date: Tue, 28 May 2019 17:10:23 +0100
Message-Id: <20190528161026.13193-10-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161026.13193-1-steve.capper@arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091111_868767_2BB404C9 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

vmemmap is a preprocessor definition that depends on a variable,
memstart_addr. In a later patch we will need to expand the size of
the VMEMMAP region and optionally modify vmemmap depending upon
whether or not hardware support is available for 52-bit virtual
addresses.

This patch changes vmemmap to be a variable. As the old definition
depended on a variable load, this should not affect performance
noticeably.

Signed-off-by: Steve Capper <steve.capper@arm.com>
---
 arch/arm64/include/asm/pgtable.h | 4 ++--
 arch/arm64/mm/init.c             | 5 +++++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index d0ab784304e9..60c52c1da61a 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -34,8 +34,6 @@
 #define VMALLOC_START		(MODULES_END)
 #define VMALLOC_END		(- PUD_SIZE - VMEMMAP_SIZE - SZ_64K)
 
-#define vmemmap			((struct page *)VMEMMAP_START - (memstart_addr >> PAGE_SHIFT))
-
 #define FIRST_USER_ADDRESS	0UL
 
 #ifndef __ASSEMBLY__
@@ -46,6 +44,8 @@
 #include <linux/mm_types.h>
 #include <linux/sched.h>
 
+extern struct page *vmemmap;
+
 extern void __pte_error(const char *file, int line, unsigned long val);
 extern void __pmd_error(const char *file, int line, unsigned long val);
 extern void __pud_error(const char *file, int line, unsigned long val);
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index d89341df2d0e..6844365c0a51 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -64,6 +64,9 @@ EXPORT_SYMBOL(memstart_addr);
 s64 physvirt_offset __ro_after_init;
 EXPORT_SYMBOL(physvirt_offset);
 
+struct page *vmemmap __ro_after_init;
+EXPORT_SYMBOL(vmemmap);
+
 phys_addr_t arm64_dma_phys_limit __ro_after_init;
 
 #ifdef CONFIG_KEXEC_CORE
@@ -330,6 +333,8 @@ void __init arm64_memblock_init(void)
 
 	physvirt_offset = PHYS_OFFSET - PAGE_OFFSET;
 
+	vmemmap = ((struct page *)VMEMMAP_START - (memstart_addr >> PAGE_SHIFT));
+
 	/*
 	 * Remove the memory that we will not be able to cover with the
 	 * linear mapping. Take care not to clip the kernel which may be
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
