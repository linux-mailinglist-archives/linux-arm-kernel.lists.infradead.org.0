Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BAD8506E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IkdDJzclW+kvMm9Yltk/+Wf4lCqjIsrop8vrugMCc7c=; b=nkHKRXOybx4X00
	ltTKoNDZ/18NrVYCNrvQE9eEF07OdTXyOsFDbGcPPmU2jVvyZbmU4FmdJEILuAKrJQgwvPtRT/ShW
	UXNMPdS4w2CltmGdXqIUuBBojktguUHhyWIOajqzDExoFYk+oluQeEGfJtKWVrl4KbEi8q9m9SsyY
	nmDrkFVDiwzUrMOPne45tAqTw6BcCAzJ7Ja83K4m+dXJm2Bt6YxwiTXOCZ0ABf2zdryGtxa6IiR75
	vrdYSV/eHqMLlVZ+JOnSIF5kSN1/EiE/VW9yvoU/5V/A0r7890Chdy3oBxpZFYAf+8IkaOCLvypok
	g/fnpV9uDh0GCMrFmbwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOKN-0008La-Fz; Wed, 07 Aug 2019 15:58:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOI9-0006Ph-28
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:55:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DFA8D1570;
 Wed,  7 Aug 2019 08:55:56 -0700 (PDT)
Received: from capper-ampere.manchester.arm.com
 (capper-ampere.manchester.arm.com [10.32.98.74])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id ABB1F3F706;
 Wed,  7 Aug 2019 08:55:55 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 08/12] arm64: mm: Separate out vmemmap
Date: Wed,  7 Aug 2019 16:55:20 +0100
Message-Id: <20190807155524.5112-9-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190807155524.5112-1-steve.capper@arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_085557_209990_A5F53739 
X-CRM114-Status: GOOD (  13.53  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, Steve Capper <steve.capper@arm.com>, maz@kernel.org,
 will@kernel.org
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
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/pgtable.h | 4 ++--
 arch/arm64/mm/init.c             | 5 +++++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index d274ea9a5f86..0eedf8664ecc 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -23,8 +23,6 @@
 #define VMALLOC_START		(MODULES_END)
 #define VMALLOC_END		(- PUD_SIZE - VMEMMAP_SIZE - SZ_64K)
 
-#define vmemmap			((struct page *)VMEMMAP_START - (memstart_addr >> PAGE_SHIFT))
-
 #define FIRST_USER_ADDRESS	0UL
 
 #ifndef __ASSEMBLY__
@@ -35,6 +33,8 @@
 #include <linux/mm_types.h>
 #include <linux/sched.h>
 
+extern struct page *vmemmap;
+
 extern void __pte_error(const char *file, int line, unsigned long val);
 extern void __pmd_error(const char *file, int line, unsigned long val);
 extern void __pud_error(const char *file, int line, unsigned long val);
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index e752f46d430e..2940221e5519 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -53,6 +53,9 @@ EXPORT_SYMBOL(memstart_addr);
 s64 physvirt_offset __ro_after_init;
 EXPORT_SYMBOL(physvirt_offset);
 
+struct page *vmemmap __ro_after_init;
+EXPORT_SYMBOL(vmemmap);
+
 phys_addr_t arm64_dma_phys_limit __ro_after_init;
 
 #ifdef CONFIG_KEXEC_CORE
@@ -320,6 +323,8 @@ void __init arm64_memblock_init(void)
 
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
