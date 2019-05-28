Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2752C3E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 12:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ss2kHIWm3A6kQelloIwFHNSX99cxIMZKh7rDDEnkBcU=; b=q5SCOr+oofoHpk
	GXJ1/5AZmQF4Ejz0XSK9uSk2fUSmqrre/b+EzsX25WGHoaEgJikRXS5i80qNs29KzmP+Y2zst0ZbE
	17SqAUZga/snq+W/raYiQa5In8iCFQ5ldosYmFL6SFLCjZE71Mr/HAYWyD/fsSYFc+RbSQq4JfaMi
	ls1YiT9yY6l4GjrWWmpkkZiIt2RtMRyrXtedl8bVCMIl69TKJkHv5OSq1qay3DjsoJ++hVu2RA9f6
	SbFzY7jwcVKfnsWT0tvnaD9vnLU+odRADckOcM+et/OKrRdqPUvCvmyzh5BfV+BDBQ6SkzrahXAK8
	OfTgJWUhi9huTUJOgqGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVYy6-0003nS-4e; Tue, 28 May 2019 10:04:30 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVYxy-0003mZ-Q0
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 10:04:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 473B9341;
 Tue, 28 May 2019 03:04:20 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 56DCD3F59C;
 Tue, 28 May 2019 03:04:18 -0700 (PDT)
Date: Tue, 28 May 2019 11:04:13 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@arm.com>
Subject: Re: [PATCH 0/4] arm64: wire up VM_FLUSH_RESET_PERMS
Message-ID: <20190528100413.GA20809@fuggles.cambridge.arm.com>
References: <20190523102256.29168-1-ard.biesheuvel@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523102256.29168-1-ard.biesheuvel@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_030422_851393_7E397677 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Nadav Amit <namit@vmware.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 11:22:52AM +0100, Ard Biesheuvel wrote:
> Wire up the code introduced in v5.2 to manage the permissions
> of executable vmalloc regions (and their linear aliases) more
> strictly.
> 
> One of the things that came up in the internal discussion is
> whether non-x86 architectures have any benefit at all from the
> lazy vunmap feature, and whether it would perhaps be better to
> implement eager vunmap instead.
> 
> Cc: Nadav Amit <namit@vmware.com>
> Cc: Rick Edgecombe <rick.p.edgecombe@intel.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Masami Hiramatsu <mhiramat@kernel.org>
> Cc: James Morse <james.morse@arm.com>
> 
> Ard Biesheuvel (4):
>   arm64: module: create module allocations without exec permissions
>   arm64/mm: wire up CONFIG_ARCH_HAS_SET_DIRECT_MAP
>   arm64/kprobes: set VM_FLUSH_RESET_PERMS on kprobe instruction pages
>   arm64: bpf: do not allocate executable memory
> 
>  arch/arm64/Kconfig                  |  1 +
>  arch/arm64/include/asm/cacheflush.h |  3 ++
>  arch/arm64/kernel/module.c          |  4 +-
>  arch/arm64/kernel/probes/kprobes.c  |  4 +-
>  arch/arm64/mm/pageattr.c            | 48 ++++++++++++++++----
>  arch/arm64/net/bpf_jit_comp.c       |  2 +-
>  mm/vmalloc.c                        | 11 -----
>  7 files changed, 50 insertions(+), 23 deletions(-)

Thanks, this all looks good to me. I can get pick this up for 5.2 if
Rick's fixes [1] land soon enough.

Cheers,

Will

[1] https://lore.kernel.org/lkml/20190527211058.2729-1-rick.p.edgecombe@intel.com/T/#u

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
