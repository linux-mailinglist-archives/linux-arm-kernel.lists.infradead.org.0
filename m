Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 017C5BD7A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 07:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cC2Qbu3I3/geOw8L/HnQImWyjonQZMm1eo0AXqwm2FQ=; b=IQW
	YWxmdIliVkJKbSsrftGeaZ4BqkS5LgRj2IhYOKMdsUOkUIzXkkW8YjwGjJkRd3a9gh0JZlWRos7un
	ES7V+b6n5hZIJgbEhhJDj/gBMjcjUnM+Y5+3w8tionk1V29TebQyVrre6F4Ne3zCsmKAYGIf5M/Nj
	HUzKAOgJCuyuu9XRoQNJQbu9Dls62mujEPOVt/eehkCExM92EXlvyR4rObaMM8Qyh3LbeGJjgAvY4
	cjEfy+jzDb7lP+KrAG/hxaOjCtzBkoR88oYq6zqngqzWK22feI4jo6Noa/AVbMsV2Sx96mIQ8WnGd
	H02jaSxxDV9mH9vNiQnWLMurfI56+9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCzZB-0001RH-T6; Wed, 25 Sep 2019 05:10:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCzYh-0001Qo-G1
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 05:09:48 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E455D21D81;
 Wed, 25 Sep 2019 05:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569388187;
 bh=gHFew4ppnNaOlzmq+kgbBFdU6FZm03u4DtWDendF5Us=;
 h=From:To:Cc:Subject:Date:From;
 b=f5G4ZUOPIOm64T8crHOsnywcoq3HAPlSMotkwsydM/SLxLCl0vTk6I2EPmuHA2Xs4
 Wh+cCQ7jneSwuUBy9O3I1y9h4k0pM4t35UMXD1YyCToWiQN8AHvkf5OPSdRUWR6lZ/
 L4tGbyZW1xVZqUuS4LuRaPg+aNzfd4iYHk+FaLrs=
From: Mike Rapoport <rppt@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3] arm64: use generic free_initrd_mem()
Date: Wed, 25 Sep 2019 08:09:40 +0300
Message-Id: <1569388180-28274-1-git-send-email-rppt@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_220947_553599_E6770590 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
implementaion of free_initrd_mem() on arm64.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---

v3:
* fix powerpc build

v2: 
* add memblock_free() to the generic free_initrd_mem()
* rebase on the current upstream


 arch/arm64/mm/init.c | 12 ------------
 init/initramfs.c     |  5 +++++
 2 files changed, 5 insertions(+), 12 deletions(-)

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
index c47dad0..3d61e13 100644
--- a/init/initramfs.c
+++ b/init/initramfs.c
@@ -10,6 +10,7 @@
 #include <linux/syscalls.h>
 #include <linux/utime.h>
 #include <linux/file.h>
+#include <linux/memblock.h>
 
 static ssize_t __init xwrite(int fd, const char *p, size_t count)
 {
@@ -531,6 +532,10 @@ void __weak free_initrd_mem(unsigned long start, unsigned long end)
 {
 	free_reserved_area((void *)start, (void *)end, POISON_FREE_INITMEM,
 			"initrd");
+
+#ifdef CONFIG_ARCH_KEEP_MEMBLOCK
+	memblock_free(__pa(start), end - start);
+#endif
 }
 
 #ifdef CONFIG_KEXEC_CORE
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
