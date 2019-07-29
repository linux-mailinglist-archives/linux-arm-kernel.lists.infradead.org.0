Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E945791B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 19:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yIrIlg1FCupJm/O9USCRDaNZ84Q67RXevZfkpHDukfg=; b=OMF
	nOcOrQoft+pbGDFeWgizPwHLSN+lXfwEDNvyw2aWYski4Mx3RX9zvzwnZJLYNLP46i1xV8CwpetkO
	fFWNjhUtvX1IKE5RsdMUwsrVLB9JFNaAjatk0fZPOOLtHj+iM8kc1NMLoDCIw3LfOnVMiQoF0uwii
	hqBmIW5kC3t22FZcfEeUHNaYVxVHSSZUVrlhF01hO4zufUCrpPIi77etw3kc3l0TV7qZqZPQAsxWZ
	+35AGLBq8oIm/ZKNNuazmWXQdZzqDyf3lhuOZJUW/GT017pXthhNflwJEP8Ahc3ipaklLJWo1beAw
	8CB2fDtUp2aRtKVFN8WGl2xtDEuPEMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs95i-0001vZ-2j; Mon, 29 Jul 2019 17:05:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs95V-0001v4-OD
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 17:05:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A695337;
 Mon, 29 Jul 2019 10:05:27 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E20AF3F694;
 Mon, 29 Jul 2019 10:05:26 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: io: Relax implicit barriers in default I/O accessors
Date: Mon, 29 Jul 2019 18:05:18 +0100
Message-Id: <20190729170518.14271-1-will@kernel.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_100529_878092_52E4D964 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: catalin.marinas@arm.com, Will Deacon <will.deacon@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

The arm64 implementation of the default I/O accessors requires barrier
instructions to satisfy the memory ordering requirements documented in
memory-barriers.txt [1], which are largely derived from the behaviour of
I/O accesses on x86.

Of particular interest are the requirements that a write to a device
must be ordered against prior writes to memory, and a read from a device
must be ordered against subsequent reads from memory. We satisfy these
requirements using various flavours of DSB: the most expensive barrier
we have, since it implies completion of prior accesses. This was deemed
necessary when we first implemented the accessors, since accesses to
different endpoints could propagate independently and therefore the only
way to enforce order is to rely on completion guarantees [2].

Since then, the Armv8 memory model has been retrospectively strengthened
to require "other-multi-copy atomicity", a property that requires memory
accesses from an observer to become visible to all other observers
simultaneously [3]. In other words, propagation of accesses is limited
to transitioning from locally observed to globally observed. It recently
became apparent that this change also has a subtle impact on our I/O
accessors for shared peripherals, allowing us to use the cheaper DMB
instruction instead.

As a concrete example, consider the following:

	memcpy(dma_buffer, data, bufsz);
	writel(DMA_START, dev->ctrl_reg);

A DMB ST instruction between the final write to the DMA buffer and the
write to the control register will ensure that the writes to the DMA
buffer are observed before the write to the control register by all
observers. Put another way, if an observer can see the write to the
control register, it can also see the writes to memory. This has always
been the case and is not sufficient to provide the ordering required by
Linux, since there is no guarantee that the master interface of the
DMA-capable device has observed either of the accesses. However, in an
other-multi-copy atomic world, we can infer two things:

  1. A write arriving at an endpoint shared between multiple CPUs is
     visible to all CPUs

  2. A write that is visible to all CPUs is also visible to all other
     observers in the shareability domain

Pieced together, this allows us to use DMB OSHST for our default I/O
write accessors and DMB OSHLD for our default I/O read accessors (the
outer-shareability is for handling non-cacheable mappings) for shared
devices. Memory-mapped, DMA-capable peripherals that are private to a
CPU (i.e. inaccessible to other CPUs) still require the DSB, however
these are few and far between and typically require special treatment
anyway which is outside of the scope of the portable driver API (e.g.
GIC, page-table walker, SPE profiler).

Note that our mandatory barriers remain as DSBs, since there are cases
where they are used to flush the store buffer of the CPU, e.g. when
publishing page table updates to the SMMU.

[1] https://git.kernel.org/linus/4614bbdee357
[2] https://www.youtube.com/watch?v=i6DayghhA8Q
[3] https://www.cl.cam.ac.uk/~pes20/armv8-mca/

Signed-off-by: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/include/asm/io.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/io.h b/arch/arm64/include/asm/io.h
index 7ed92626949d..b0a3d5b85d4f 100644
--- a/arch/arm64/include/asm/io.h
+++ b/arch/arm64/include/asm/io.h
@@ -97,7 +97,7 @@ static inline u64 __raw_readq(const volatile void __iomem *addr)
 ({									\
 	unsigned long tmp;						\
 									\
-	rmb();								\
+	dma_rmb();								\
 									\
 	/*								\
 	 * Create a dummy control dependency from the IO read to any	\
@@ -111,7 +111,7 @@ static inline u64 __raw_readq(const volatile void __iomem *addr)
 })
 
 #define __io_par(v)		__iormb(v)
-#define __iowmb()		wmb()
+#define __iowmb()		dma_wmb()
 
 /*
  * Relaxed I/O memory access primitives. These follow the Device memory
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
