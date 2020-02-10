Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8581581BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:51:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8YhkJXvCK/VLcbfDCgXexEF9ufdQ6r1RG8S8DQ+58RY=; b=ahtHfB0sCxoFs9
	RSuFRICnvltktt5kaLJnKFLjgLF2uMD1TF1XvxveEkEb1WVdb9mB8N+iNLTT6l/Ef/LoazqRunWuZ
	GtKGwZW9wKAEKdJeWYqsMVGpiwV6d8hwIn81GCxNsgMoIhp1JJJDxeIBVCpMaJ2S2BLgbnsM+xTNd
	NknWZfEqWoUpCu9/1+U0GD4tMXVpR9qfj/bfHmxCLhPtmravWPyx9weRXbmMDe+2AE2q3HlwmZLQ+
	zWaPmmX8VBItsXhqLEXCBcnuyhSm99hmpTomwK2MGRpTOUYDAn/AtDCE5CYQX3ETLzfr8a04Cg3mj
	S7Tex1WbKfj59CyW+Zkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1DDN-0005ZK-8b; Mon, 10 Feb 2020 17:51:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1DDD-0005XI-VV
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:51:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7446F1FB;
 Mon, 10 Feb 2020 09:51:09 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 58A183F68F; Mon, 10 Feb 2020 09:51:08 -0800 (PST)
Date: Mon, 10 Feb 2020 17:51:06 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andrea Arcangeli <aarcange@redhat.com>
Subject: Re: [PATCH 2/2] arm64: tlb: skip tlbi broadcast for single threaded
 TLB flushes
Message-ID: <20200210175106.GA27215@arrakis.emea.arm.com>
References: <20200203201745.29986-1-aarcange@redhat.com>
 <20200203201745.29986-3-aarcange@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203201745.29986-3-aarcange@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_095112_101114_38DE17D5 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Rafael Aquini <aquini@redhat.com>, Jon Masters <jcm@jonmasters.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Mark Salter <msalter@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrea,

Thanks for having a go at this.

On Mon, Feb 03, 2020 at 03:17:45PM -0500, Andrea Arcangeli wrote:
> With multiple NUMA nodes and multiple sockets, the tlbi broadcast
> shall be delivered through the interconnects in turn increasing the
> interconnect traffic and the latency of the tlbi broadcast instruction.

There are better ways to handle this in hardware (snoop filters), so
hopefully those vendors will eventually learn.

> After the local TLB flush this however means the ASID context goes out
> of sync in all CPUs except the local one. This can be tracked in the
> mm_cpumask(mm): if the bit is set it means the asid context is stale
> for that CPU. This results in an extra local ASID TLB flush only if a
> single threaded process is migrated to a different CPU and only after a
> TLB flush. No extra local TLB flush is needed for the common case of
> single threaded processes context scheduling within the same CPU and for
> multithreaded processes.

Relying om mm_users is not sufficient AFAICT. Let's say on CPU0 you have
a kernel thread running with the previous user pgd and ASID set in
ttbr0_el1. The mm_users would still be 1 since only mm_count is
incremented in context_switch(). If the user thread now runs on CPU1, a
local tlbi would only invalidate the TLBs on CPU1. However, CPU0 may
still walk (speculatively) the user page tables.

An example where this matters is a group of small pages converted to a
huge page. If CPU0 already has some TLB entries for small pages in the
group but, not being aware of a TLBI for the ptes in the range, may read
a block pmd entry (huge page) and we end up with a TLB conflict on CPU0
(CPU1 is fine since you do the local tlbi).

There are other examples where this could go wrong as the hardware may
keep intermediate pgtable entries in a walk cache. In the arm64 kernel
we rely on something the architecture calls break-before-make for any
page table updates and these need to be broadcast to other CPUs that may
potentially have an entry in their TLB.

It may be better if you used mm_cpumask to mark wherever an mm ever ran
than relying on mm_users.

> Skipping the tlbi instruction broadcasting is already implemented in
> local_flush_tlb_all(), this patch only extends it to flush_tlb_mm(),
> flush_tlb_range() and flush_tlb_page() too.
> 
> Here's the result of 32 CPUs (ARMv8 Ampere) running mprotect at the same
> time from 32 single threaded processes before the patch:
> 
>  Performance counter stats for './loop' (3 runs):
> 
>                  0      dummy
> 
>           2.121353 +- 0.000387 seconds time elapsed  ( +-  0.02% )
> 
> and with the patch applied:
> 
>  Performance counter stats for './loop' (3 runs):
> 
>                  0      dummy
> 
>          0.1197750 +- 0.0000827 seconds time elapsed  ( +-  0.07% )

That's a pretty artificial test and it is indeed improved by this patch.
However, it would be nice to have some real-world scenarios where this
matters.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
