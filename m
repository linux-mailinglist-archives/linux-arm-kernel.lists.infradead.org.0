Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FE042D7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+oIrE1BL/Z5nPpq9ow3/CPzsn0nLXVchKBk6pMNCE8=; b=ntwk0A/UPPTYJ8
	90lm55ZtSBbHEYsBU1Nz0sfCQlkKhLEalF4jB3aqdRvy9w0VXzyUk8o5rnax3s+O+GDO9IBYiMshg
	I/GOfM611f09W+PEEprN2x+hCz4um9P3HYcstPAL+hUuzblZXcohAUY152IAYh5uDEe6Q36ey3K6w
	/VL+JCtycvH6UuhBtPGQAxJhRq0oz13FxphVB+rKQl1DEBXDmqNvqAr13Pf8LS5+qdyK/os1GqKm/
	wJaEk823Z5BkHy3k0qzuH0Mo4iVUnWnXzF5HDiyzVteFnB6JWDB/D1lbe4b/SzDtpsQt6njTNI5Av
	AfwDhrALv9+v/SrBVM2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb74H-0007t5-AO; Wed, 12 Jun 2019 17:29:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb71x-00061c-PX
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:27:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 98EADC7A;
 Wed, 12 Jun 2019 10:27:25 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.13.15])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 521903F246;
 Wed, 12 Jun 2019 10:27:24 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 07/10] arm64: mm: Separate out vmemmap
Date: Wed, 12 Jun 2019 18:26:55 +0100
Message-Id: <20190612172658.28522-8-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190612172658.28522-1-steve.capper@arm.com>
References: <20190612172658.28522-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_102725_904952_8E2B1EDD 
X-CRM114-Status: GOOD (  13.55  )
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
