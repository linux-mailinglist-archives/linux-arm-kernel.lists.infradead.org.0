Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B147B3577
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 09:22:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=l8Z1BAjenIkRCU4KKSzUCxkxx3lcWo8C+2ni+dQS5ek=; b=daC
	kL3tUBIPB5ncqZfPYgWJkoQ8zxvfJRcaFWRKGC31hSNNNUNM9UuzvGnRG+PTcZE0ZeY0teWLXl5CH
	vp+/3mg0cDa9OAqLtBENE/A1WGoWZ8njDNMyup/uOotWa5tI6D9MKUNS1EFbqjYhinZGvvK387GrV
	e46iIOTL5ggSgWfRugfX3NJ70RtRzrxcK39X3lyA6aei2r8Rv6ncddEcVAKgg8xEKC/xeJqUYNMYh
	HOsnKDD136OEAtTd7PsxVicdAa4jAJ2R9DZQkpDctPRUJJUPHm5O+hkd+QjUIndW+d5LeNjkntust
	NOE3Z1A7ZErkaMpgKSPU8KOp3Pv+l/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9lKj-0004Iv-Vd; Mon, 16 Sep 2019 07:22:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lKR-0004I2-EI
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 07:21:44 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B3580206A4;
 Mon, 16 Sep 2019 07:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568618500;
 bh=ZNzODOxruTg8StFF9gj8UjlKbahmC5vEdHRA5AUlXQs=;
 h=From:To:Cc:Subject:Date:From;
 b=GFEe+YXDq1D7SlleJ3gt0iXMEu0DdY+ZGgYH0brOW8ZMldag9FGK8oSw4SKcEmD19
 LwlwmHRtN8G4K7pvjCIj7HrIVPA91yY7uOqhRhQkx7cmAw6+obkWqf59oZdBulmRtJ
 z5ADC604hp9Q8Vwl/6jGPYZfWJL7Tx8GU0gMh7Wg=
From: Mike Rapoport <rppt@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] arm64: use generic free_initrd_mem()
Date: Mon, 16 Sep 2019 10:21:28 +0300
Message-Id: <1568618488-19055-1-git-send-email-rppt@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_002143_504205_27961FFA 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Mike Rapoport <rppt@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

arm64 calls memblock_free() for the initrd area in its implementation of
free_initrd_mem(), but this call has no actual effect that late in the boot
process. By the time initrd is freed, all the reserved memory is managed by
the page allocator and the memblock.reserved is unused, so there is no
point to update it.

Without the memblock_free() call the only difference between arm64 and the
generic versions of free_initrd_mem() is the memory poisoning. Switching
arm64 to the generic version will enable the poisoning.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---

I've boot tested it on qemu and I've checked that kexec works.

 arch/arm64/mm/init.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index f3c7952..8ad2934 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -567,14 +567,6 @@ void free_initmem(void)
 	unmap_kernel_range((u64)__init_begin, (u64)(__init_end - __init_begin));
 }
 
-#ifdef CONFIG_BLK_DEV_INITRD
-void __init free_initrd_mem(unsigned long start, unsigned long end)
-{
-	free_reserved_area((void *)start, (void *)end, 0, "initrd");
-	memblock_free(__virt_to_phys(start), end - start);
-}
-#endif
-
 /*
  * Dump out memory limit information on panic.
  */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
