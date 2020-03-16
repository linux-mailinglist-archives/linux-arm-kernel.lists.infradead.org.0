Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDB5186CD3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 15:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edgohWQ3khjXvf8vyW4vFkIYt7fcb0oDw2Uxt5tMsM0=; b=UC9fJjsclU1DGV
	qwkSGMySbB9K008Dpr5HEoTQ5raNjFrkzwtIywdaDy7UeJ92r52u9nYqNcIv/EOsNgPpCIvb0PlYj
	/+5B9xa+bNnUL6ai2DSBd76SxvXxRwSxsb2TwGr0NzqkQUDbnXlCAvrFXDNQu3BX1xTAGn9yeWmxZ
	/iByH8mJH/R5AhWzW/1heX0baMuq5656tF3Ijxiz6UnZQYdrSb8UKTjqMT20sjesYSHZnD9jCeQOU
	5ewlXdhaWEXIRKPfzWYYvsBWphYoZ67MPk/GUP5eUWPKBi6n8xinRkTKTudelQml8dthM5ygge+7E
	3BRAgqrOjCtHTXF2A+Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqQq-0004oA-3t; Mon, 16 Mar 2020 14:09:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqQh-0004nH-Dl
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 14:09:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8FD771FB;
 Mon, 16 Mar 2020 07:09:17 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3C00A3F52E;
 Mon, 16 Mar 2020 07:09:16 -0700 (PDT)
Date: Mon, 16 Mar 2020 14:09:07 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Andrea Arcangeli <aarcange@redhat.com>
Subject: Re: [PATCH 3/3] arm64: tlb: skip tlbi broadcast
Message-ID: <20200316140906.GA6220@lakrids.cambridge.arm.com>
References: <20200223192520.20808-1-aarcange@redhat.com>
 <20200223192520.20808-4-aarcange@redhat.com>
 <20200309112242.GB2487@mbp> <20200314031609.GB2250@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200314031609.GB2250@redhat.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_070919_553857_9DBB1EF6 
X-CRM114-Status: GOOD (  26.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: QI Fuli <qi.fuli@fujitsu.com>, Rafael Aquini <aquini@redhat.com>,
 Jon Masters <jcm@jonmasters.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Mark Salter <msalter@redhat.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrea,

On Fri, Mar 13, 2020 at 11:16:09PM -0400, Andrea Arcangeli wrote:
> On Mon, Mar 09, 2020 at 11:22:42AM +0000, Catalin Marinas wrote:
> > One concern I have is the ordering between TTBR0_EL1 update in
> > cpu_do_switch_mm() and the nr_active_mm, both on a different CPU. We
> > only have an ISB for context synchronisation on that CPU but I don't
> > think the architecture guarantees any relation between sysreg access and
> > the memory update. We have a DSB but that's further down in switch_to().
> 
> There are several cpu_do_switch_mm updating TTBR0_EL1 and nr_active_mm
> updates that can happen on different CPUs simultaneously. It's hard to
> see exactly which one you refer to.
> 
> Overall the idea here is that even if a speculative tlb lookup happens
> in between those updates while the "mm" is going away and
> atomic_dec(&mm->nr_active_mm) is being called on the mm, it doesn't
> matter because no userland software can use such stale tlb anymore
> until local_flush_tlb_asid() gets rid of it.

I think you're focussing on the use of the end-to-end translations by
architecturally executed instructions, while Catalin is describing
problems resulting from the use of intermediate translations by
speculative walks.

The concern here is that speculation can result in intermediate walk
entries in the TLB being used to continue page table walks, and these
walks can have side-effects regardless of whether the resulting entires
are consumed by architecturally executed instructions.

For example, say we free a PMD page for which there is a stale
intermediate entry in a TLB, and that page gets reallocated for
arbitrary date. A speculative walk can consume that data as-if it were a
PMD, and depending on the value it sees a number of things can happen.
If the value happens to point at MMIO, the MMU might read from that MMIO
with side-effects. If the value happens to contain an architecturally
invalid configuration the result can be CONSTRAINED UNPREDICTABLE and
not limited to the corresponding ASID.

Even if the resulting end-to-end translation is never architecturally
consumed there are potential problems here, and I think that this series
is assuming stronger-than-architected behaviour from the MMU and page
table walks.

> This concern is still a corollary of the previous paragraph: it's
> still about stale tlb entries being left in an asid that can't ever be
> used through the current asid.

I'm not certain if the architecture generally allows or forbids walks to
be continued for an ASID that is not live in a TTBR, but there are cases
where that is possible, so I don't think the above accurately captures
the situation. Stale intermediate entries can certainly be consumed in
some cases.

> > TLB. All the architecture spec states is that the software must first
> > clear the entry followed by TLBI (the break-before-make rules).
> 
> The "break" in "break-before-make" is still guaranteed or it wouldn't
> boot: however it's not implemented with the tlbi broadcast anymore.
>
> The break is implemented by enforcing no stale tlb entry of such asid
> exists in the TLB while any userland code runs.

I understand the point you're making, but please don't overload the
terminology. Break-Before-Make is a well-defined term which refers to a
specific sequence which includes TLB invalidation, and the above is not
a break per that definition.

> X86 specs supposed an OS would allocate a TSS per-process and you
> would do a context switch by using a task gate. I recall the first
> Linux version I used had a TSS per process as envisioned by the
> specs. Later the TSS become per-CPU and the esp0 pointer was updated
> instead (native_load_sp0) and the stack was switched by hand.
> 
> I guess reading the specs may result confusing after such a software
> change, that doesn't mean the software shouldn't optimize things
> behind the specs if it's safe to do and it's not explicitly forbidden.

I think the important thing is that this is not necessarily safe. The
architecture currently states that a Break-Before-Make sequence is
necessary, and this series does not follow that.

AFAICT, this series relies on:

* An ISB completing prior page table walks when updating TTBR. I don't
  believe this is necessarily the case, given how things work for an
  EL1->EL2 transition where there can be ongoing EL1 walks.

* Walks never being initiated for `inactive` contexts within the current
  translation regime. e.g. while ASID x is installed, never starting a
  walk for ASID y. I can imagine that the architecture may permit a form
  of this starting with intermediate walk entries in the TLBs.

Before we can say whether this series is safe, we'd need to have a
better description of how a PE may use `inactive` values for an
in-context translation regime. 

I've asked for some clarification on these points.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
