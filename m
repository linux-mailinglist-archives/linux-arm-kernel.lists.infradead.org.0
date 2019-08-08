Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A43E85A6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 08:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccn9qlFvKVZoI6mHtsyE9QzMRaAKDI0F800ZI2DVtBA=; b=mMFEXt8q4u+6of
	V9sDu8kT1iBFZXDTpmvMG6hhg66j3I+UBP3beeVoQYG87TIQVfdt5M49IHh5qoJIhdqu/RCdlvZDD
	KkCi2ufP42HSrXDIWk/PMh+3H/+pFEvueXZ4QDlWhG1T7m7uG9QXgAFY1FW+D0S/DZJu9Txl/0Cv9
	9EPBr7Of5fTsEG3YR6NdZ65Dk19G6+Ce6GZWjPMVadnAqPww5wCQhdk8Ibcd3lj74u4afYiZBm4Y5
	40nHqCTzwqYeKJoXThpKJmhU9f2g7kxmackl17r3rgGYoFvDzQIbz3PO8z6Rd8ffIObwB4B94veZV
	vjeprT/+VCsk9X/0czlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvblw-0003ic-J8; Thu, 08 Aug 2019 06:19:36 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvblf-0003gw-NC; Thu, 08 Aug 2019 06:19:22 +0000
X-Originating-IP: 79.86.19.127
Received: from alex.numericable.fr (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 3FDAC20003;
 Thu,  8 Aug 2019 06:19:07 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v6 01/14] mm, fs: Move randomize_stack_top from fs to mm
Date: Thu,  8 Aug 2019 02:17:43 -0400
Message-Id: <20190808061756.19712-2-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808061756.19712-1-alex@ghiti.fr>
References: <20190808061756.19712-1-alex@ghiti.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_231920_065288_782996F9 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Alexandre Ghiti <alex@ghiti.fr>, linux-mm@kvack.org,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 Paul Burton <paul.burton@mips.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 James Hogan <jhogan@kernel.org>, linux-riscv@lists.infradead.org,
 linux-mips@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This preparatory commit moves this function so that further introduction
of generic topdown mmap layout is contained only in mm/util.c.

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
Acked-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
---
 fs/binfmt_elf.c    | 20 --------------------
 include/linux/mm.h |  2 ++
 mm/util.c          | 22 ++++++++++++++++++++++
 3 files changed, 24 insertions(+), 20 deletions(-)

diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
index d4e11b2e04f6..cec3b4146440 100644
--- a/fs/binfmt_elf.c
+++ b/fs/binfmt_elf.c
@@ -670,26 +670,6 @@ static unsigned long load_elf_interp(struct elfhdr *interp_elf_ex,
  * libraries.  There is no binary dependent code anywhere else.
  */
 
-#ifndef STACK_RND_MASK
-#define STACK_RND_MASK (0x7ff >> (PAGE_SHIFT - 12))	/* 8MB of VA */
-#endif
-
-static unsigned long randomize_stack_top(unsigned long stack_top)
-{
-	unsigned long random_variable = 0;
-
-	if (current->flags & PF_RANDOMIZE) {
-		random_variable = get_random_long();
-		random_variable &= STACK_RND_MASK;
-		random_variable <<= PAGE_SHIFT;
-	}
-#ifdef CONFIG_STACK_GROWSUP
-	return PAGE_ALIGN(stack_top) + random_variable;
-#else
-	return PAGE_ALIGN(stack_top) - random_variable;
-#endif
-}
-
 static int load_elf_binary(struct linux_binprm *bprm)
 {
 	struct file *interpreter = NULL; /* to shut gcc up */
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 0334ca97c584..ae0e5d241eb8 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2351,6 +2351,8 @@ extern int install_special_mapping(struct mm_struct *mm,
 				   unsigned long addr, unsigned long len,
 				   unsigned long flags, struct page **pages);
 
+unsigned long randomize_stack_top(unsigned long stack_top);
+
 extern unsigned long get_unmapped_area(struct file *, unsigned long, unsigned long, unsigned long, unsigned long);
 
 extern unsigned long mmap_region(struct file *file, unsigned long addr,
diff --git a/mm/util.c b/mm/util.c
index e6351a80f248..15a4fb0f5473 100644
--- a/mm/util.c
+++ b/mm/util.c
@@ -16,6 +16,8 @@
 #include <linux/hugetlb.h>
 #include <linux/vmalloc.h>
 #include <linux/userfaultfd_k.h>
+#include <linux/elf.h>
+#include <linux/random.h>
 
 #include <linux/uaccess.h>
 
@@ -293,6 +295,26 @@ int vma_is_stack_for_current(struct vm_area_struct *vma)
 	return (vma->vm_start <= KSTK_ESP(t) && vma->vm_end >= KSTK_ESP(t));
 }
 
+#ifndef STACK_RND_MASK
+#define STACK_RND_MASK (0x7ff >> (PAGE_SHIFT - 12))     /* 8MB of VA */
+#endif
+
+unsigned long randomize_stack_top(unsigned long stack_top)
+{
+	unsigned long random_variable = 0;
+
+	if (current->flags & PF_RANDOMIZE) {
+		random_variable = get_random_long();
+		random_variable &= STACK_RND_MASK;
+		random_variable <<= PAGE_SHIFT;
+	}
+#ifdef CONFIG_STACK_GROWSUP
+	return PAGE_ALIGN(stack_top) + random_variable;
+#else
+	return PAGE_ALIGN(stack_top) - random_variable;
+#endif
+}
+
 #if defined(CONFIG_MMU) && !defined(HAVE_ARCH_PICK_MMAP_LAYOUT)
 void arch_pick_mmap_layout(struct mm_struct *mm, struct rlimit *rlim_stack)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
