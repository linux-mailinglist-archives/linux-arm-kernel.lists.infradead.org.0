Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0FFC1025
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 10:02:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JZ1//NHkNY6XBxTPVYdK1+3Ooe9kRKqfDx9MqFVywt8=; b=fZT
	/53pL4gcgpzwELaVl9pXqk4uhP5hGJgHAEaRgar0PWrbvq2pV/9FdzgvGgvLHBIaJVynPI+LWdgpD
	NU1ZR6lw3M3F1d7rckzu2NPl8KYTJk3k62zOsrsg5MaROdqk+GbVlUhJF3IBMqSBTgaZuatBiBTJK
	G156NWatcBEHrbmrsL2Z+SfzgeeaYXUpSrNdqk8UHzrSRHfrDcXRRo38wXPaV3sNrQffjKVrSUAcK
	HYFU13vCABcme+uiPDAXcsWStB/oZUJ1R/F8KGr0044Ul4+e8JbAo1QGqb8fbYCMZ2j0Ay89DR7E8
	OQ+lH6F2K0UR74/kdh6g0TaJ7u//jlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE7gh-0003iZ-La; Sat, 28 Sep 2019 08:02:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE7gX-0003hk-U9
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 08:02:35 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47C502075C;
 Sat, 28 Sep 2019 08:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569657753;
 bh=7r4x/xOBVKIryWPeO1cbNSCirEK4o0T+ejZK1ZnMUG8=;
 h=From:To:Cc:Subject:Date:From;
 b=n0p1q46eN85Ic/K8oKeWP3PROrk6h3rnwGiUuKFyROku4hqcdrjA/CMfDbkS24Yxu
 HNDfkbahjcs73EZuzcblH9xf7qgDoIGj20gsu7eHiJmKhGbdPtuT8n1BLQ4+FAWfRs
 ypYn2MG9AOXzt/PWtIo+PPNIyscPjQgUK1HW52uI=
From: Mike Rapoport <rppt@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v4] arm64: use generic free_initrd_mem()
Date: Sat, 28 Sep 2019 11:02:26 +0300
Message-Id: <1569657746-31672-1-git-send-email-rppt@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_010233_995516_D1582DB6 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mike Rapoport <rppt@linux.ibm.com>, Laura Abbott <labbott@redhat.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Anshuman Khandual <anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

arm64 calls memblock_free() for the initrd area in its implementation of
free_initrd_mem(), but this call has no actual effect that late in the boot
process. By the time initrd is freed, all the reserved memory is managed by
the page allocator and the memblock.reserved is unused, so the only purpose
of the memblock_free() call is to keep track of initrd memory for debugging
and accounting.

Without the memblock_free() call the only difference between arm64 and the
generic versions of free_initrd_mem() is the memory poisoning.

Move memblock_free() call to the generic code, enable it there
for the architectures that define ARCH_KEEP_MEMBLOCK and use the generic
implementation of free_initrd_mem() on arm64.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---

v4:
* memblock_free() aligned area around the initrd

v3:
* fix powerpc build

v2:
* add memblock_free() to the generic free_initrd_mem()
* rebase on the current upstream


 arch/arm64/mm/init.c | 12 ------------
 init/initramfs.c     |  8 ++++++++
 2 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 45c00a5..87a0e3b 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -580,18 +580,6 @@ void free_initmem(void)
 	unmap_kernel_range((u64)__init_begin, (u64)(__init_end - __init_begin));
 }
 
-#ifdef CONFIG_BLK_DEV_INITRD
-void __init free_initrd_mem(unsigned long start, unsigned long end)
-{
-	unsigned long aligned_start, aligned_end;
-
-	aligned_start = __virt_to_phys(start) & PAGE_MASK;
-	aligned_end = PAGE_ALIGN(__virt_to_phys(end));
-	memblock_free(aligned_start, aligned_end - aligned_start);
-	free_reserved_area((void *)start, (void *)end, 0, "initrd");
-}
-#endif
-
 /*
  * Dump out memory limit information on panic.
  */
diff --git a/init/initramfs.c b/init/initramfs.c
index c47dad0..8ec1be4 100644
--- a/init/initramfs.c
+++ b/init/initramfs.c
@@ -10,6 +10,7 @@
 #include <linux/syscalls.h>
 #include <linux/utime.h>
 #include <linux/file.h>
+#include <linux/memblock.h>
 
 static ssize_t __init xwrite(int fd, const char *p, size_t count)
 {
@@ -529,6 +530,13 @@ extern unsigned long __initramfs_size;
 
 void __weak free_initrd_mem(unsigned long start, unsigned long end)
 {
+#ifdef CONFIG_ARCH_KEEP_MEMBLOCK
+	unsigned long aligned_start = ALIGN_DOWN(start, PAGE_SIZE);
+	unsigned long aligned_end = ALIGN(end, PAGE_SIZE);
+
+	memblock_free(__pa(aligned_start), aligned_end - aligned_start);
+#endif
+
 	free_reserved_area((void *)start, (void *)end, POISON_FREE_INITMEM,
 			"initrd");
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
