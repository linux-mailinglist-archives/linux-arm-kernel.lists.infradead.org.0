Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 078821510E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 21:20:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ULXOtiDBkYD3Q2n2hoYx5zzt+F6A5srOdudGZl8i+8E=; b=RxUrNUIBGViQhJ
	CYHDSHt4wG7PKJea3mYHvltInb9lfpZO2f1GCzMieJ/4VVAZYA557NtC/GttcPffYvRD8tNRMCOVo
	ke39qo1EidE9g1gbGHjdj9lEgiDV+ok431yI48lnhdi+uxIIfG47mi17VQJl1/pXGNeo+A2IHqJ+/
	n73ifjCoXPpFsP7BJ2BD5He2YxoeAdqSj3q61LIyXsxi3tPR2KKY/BUL+POQZr7ZVSqgyYxkU27G3
	DcCTRIeiELESyKRLUvdLLF5hIpaKMMjDv/+JBKx4RAPBOC9aZiPHVRAi27j5fh4Lk9aW/IqiRsbb0
	ayTPnjMFs+NPk7ox7Pfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyiCp-0007m6-7L; Mon, 03 Feb 2020 20:20:27 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyiCC-00067r-8z
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 20:19:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580761187;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=RutAFnjTPWJQYvSXakp1wH+YCc3aiDR209+0rmd2tsA=;
 b=hWpFr4CR4uEu//Su776ONKJOIH+WWnlmGLfYTS/nLxppfRm3Sns0YzSTtUM3mz2OGbeeXo
 vPkC1aH+pxCie2imnyR8wy1XxS2ibSLQOeP00OGlwa44w9yxX6jXOi6FVW/Sv/wNWcbP2H
 YFU2ohheXeAFEa214ffRVqpmnhnMUZ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-413-K6SgvcyMNI-hwGVxcb2tDA-1; Mon, 03 Feb 2020 15:17:50 -0500
X-MC-Unique: K6SgvcyMNI-hwGVxcb2tDA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BF651107ACCD;
 Mon,  3 Feb 2020 20:17:48 +0000 (UTC)
Received: from mail (ovpn-120-67.rdu2.redhat.com [10.10.120.67])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F15819C58;
 Mon,  3 Feb 2020 20:17:46 +0000 (UTC)
From: Andrea Arcangeli <aarcange@redhat.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Jon Masters <jcm@jonmasters.org>, Rafael Aquini <aquini@redhat.com>,
 Mark Salter <msalter@redhat.com>
Subject: [RFC] [PATCH 0/2] arm64: tlb: skip tlbi broadcast for single threaded
 TLB flushes
Date: Mon,  3 Feb 2020 15:17:43 -0500
Message-Id: <20200203201745.29986-1-aarcange@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_121948_620181_F1D2146C 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello everyone,

I've been testing the arm64 ARMv8 tlbi broadcast instruction and it
seems it doesn't scale in SMP, which opens the door for using similar
tricks to what alpha, ia64, mips, powerpc, sh, sparc are doing to
optimize TLB flushes for single threaded processes. This should be
even more beneficial in NUMA or multi socket systems where the "ASID"
and "vaddr" information has to cross a longer distance before the tlbi
broadcast instruction can be retired.

This mm_users logic seems non standard across different arches: every
arch does it in its own way. Not only the implementation is different,
but different arches are also trying to optimize different cases
through the mm_users checks in the arch code:

1) avoiding remote TLB flushes with mm_users <= 1

2) avoiding even local TLB flushes during exit_mmap->unmap_vmas when
   mm_users == 0

For now I only tried to implement 1) on arm64, but I'm left wondering
which other arches can achieve 2) and in turn which kernel code could
write to the very userland virtual addresses being unmapped during
exit_mmap, that would strictly require their flushing using the tlb
gather mechanism.

This is just a RFC to know if this is would be a viable optimization.
A basic microbenchmark is included in the commit header of the patch.

Thanks,
Andrea

Andrea Arcangeli (2):
  mm: use_mm: fix for arches checking mm_users to optimize TLB flushes
  arm64: tlb: skip tlbi broadcast for single threaded TLB flushes

 arch/arm64/include/asm/efi.h         |  2 +-
 arch/arm64/include/asm/mmu.h         |  3 +-
 arch/arm64/include/asm/mmu_context.h | 10 +--
 arch/arm64/include/asm/tlbflush.h    | 91 +++++++++++++++++++++++++++-
 arch/arm64/mm/context.c              | 13 +++-
 mm/mmu_context.c                     |  2 +
 6 files changed, 111 insertions(+), 10 deletions(-)

Some examples of the scattered status of 2) follows:

ia64:

==
flush_tlb_mm (struct mm_struct *mm)
{
	if (!mm)
		return;

	set_bit(mm->context, ia64_ctx.flushmap);
	mm->context = 0;

	if (atomic_read(&mm->mm_users) == 0)
		return;		/* happens as a result of exit_mmap() */
[..]
==

sparc:

==
void flush_tlb_all(void)
{
	/*
	 * Don't bother flushing if this address space is about to be
	 * destroyed.
	 */
	if (atomic_read(&current->mm->mm_users) == 0)
		return;
[..]
static void fix_range(struct mm_struct *mm, unsigned long start_addr,
		      unsigned long end_addr, int force)
{
	/*
	 * Don't bother flushing if this address space is about to be
	 * destroyed.
	 */
	if (atomic_read(&mm->mm_users) == 0)
		return;
[..]
==

arc:

==
noinline void local_flush_tlb_mm(struct mm_struct *mm)
{
	/*
	 * Small optimisation courtesy IA64
	 * flush_mm called during fork,exit,munmap etc, multiple times as well.
	 * Only for fork( ) do we need to move parent to a new MMU ctxt,
	 * all other cases are NOPs, hence this check.
	 */
	if (atomic_read(&mm->mm_users) == 0)
		return;
[..]
==


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
