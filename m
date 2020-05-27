Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141111E3C85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 10:48:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVaOpzjHnAkEQbYK7XPRwMWF9ziW7BGYQ2A3D7UzWPA=; b=QlX+35uznqcx38
	cI+2GYXNrHIteXhxdi3LAeLFbm9ljq3bzkPzjFnjaonPU8BhJaE8kjuST3krSs6hI3c/FWQwooScu
	F3QsGcLUKt/0RgTt3BNglEcRtQTZvEhLF/XgBlDgCYfniXapZ6fhXJoTIN6OhX+zw0iuVjCkJ2WOI
	tD/+pt+nzqH2hnlkULpJeegv62uyWoE61Cr+BvbwbEKF5jpdEp/ctH7Fk0jRtvI4hjAqXSRwWBsmF
	ohrIIO8HE+1dBxckzEkExQsDmkQWrjuA1G5PQ95ieTV4EwiCiHOUFplOHCttCXiJFis7MtpPBY3yy
	flvimT4qq5cXWf91fXuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrk3-0003uy-60; Wed, 27 May 2020 08:48:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrjq-0003uL-5z
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 08:48:39 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA3B3206F1;
 Wed, 27 May 2020 08:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590569317;
 bh=Q/aCgvXYnhIV/zS1zEnKIiMcEYgyqLm3vqJD8QEW+Uw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bBPkA3eh2/6svHrv6yvUT/rx+pC9jqcqQgpL6jbrJxi9QEDdEsxX6YMfDZkRdGIQe
 inJ1VjPrC7uUFqTc24Ym6GhmQx07q3xi2MkgLAcOlv8fqjomZZuo+Bl6UKyj8F/Oep
 93d7zcAxJIPUR9obCUw9hVAl2vib5He8/tmoqU2E=
Date: Wed, 27 May 2020 09:48:32 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v4 15/26] arm64: mte: Allow user control of the tag check
 mode via prctl()
Message-ID: <20200527084831.GA11111@willie-the-truck>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-16-catalin.marinas@arm.com>
 <20200527074658.GB9887@willie-the-truck>
 <20200527083218.GS5031@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527083218.GS5031@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_014838_301701_DF30370D 
X-CRM114-Status: GOOD (  24.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 09:32:20AM +0100, Dave Martin wrote:
> On Wed, May 27, 2020 at 08:46:59AM +0100, Will Deacon wrote:
> > On Fri, May 15, 2020 at 06:16:01PM +0100, Catalin Marinas wrote:
> > > By default, even if PROT_MTE is set on a memory range, there is no tag
> > > check fault reporting (SIGSEGV). Introduce a set of option to the
> > > exiting prctl(PR_SET_TAGGED_ADDR_CTRL) to allow user control of the tag
> > > check fault mode:
> > > 
> > >   PR_MTE_TCF_NONE  - no reporting (default)
> > >   PR_MTE_TCF_SYNC  - synchronous tag check fault reporting
> > >   PR_MTE_TCF_ASYNC - asynchronous tag check fault reporting
> > > 
> > > These options translate into the corresponding SCTLR_EL1.TCF0 bitfield,
> > > context-switched by the kernel. Note that uaccess done by the kernel is
> > > not checked and cannot be configured by the user.
> > > 
> > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > > Cc: Will Deacon <will@kernel.org>
> > > ---
> > > 
> > > Notes:
> > >     v3:
> > >     - Use SCTLR_EL1_TCF0_NONE instead of 0 for consistency.
> > >     - Move mte_thread_switch() in this patch from an earlier one. In
> > >       addition, it is called after the dsb() in __switch_to() so that any
> > >       asynchronous tag check faults have been registered in the TFSR_EL1
> > >       registers (to be added with the in-kernel MTE support.
> > >     
> > >     v2:
> > >     - Handle SCTLR_EL1_TCF0_NONE explicitly for consistency with PR_MTE_TCF_NONE.
> > >     - Fix SCTLR_EL1 register setting in flush_mte_state() (thanks to Peter
> > >       Collingbourne).
> > >     - Added ISB to update_sctlr_el1_tcf0() since, with the latest
> > >       architecture update/fix, the TCF0 field is used by the uaccess
> > >       routines.
> > > 
> > >  arch/arm64/include/asm/mte.h       | 14 ++++++
> > >  arch/arm64/include/asm/processor.h |  3 ++
> > >  arch/arm64/kernel/mte.c            | 77 ++++++++++++++++++++++++++++++
> > >  arch/arm64/kernel/process.c        | 26 ++++++++--
> > >  include/uapi/linux/prctl.h         |  6 +++
> > >  5 files changed, 123 insertions(+), 3 deletions(-)
> > 
> > Dave is working on man pages for prctl() (and I think also ptrace). I think
> > it would be /very/ useful for us to have some RFC patches on top of his work
> > adding documentation for the MTE interactions, as we found some other minor
> > issues/inconsistencies as a direct result of writing and reviewing the man
> > page for our existing interfaces.
> 
> I have a local draft for the address tagging and MTE prctls already btw.
> I hadn't posted them yet so as to focus on nailing the "easy" stuff down
> ;)
> 
> If I have time I'll try and get them posted today so that people can
> take a look before next week.

Oh, great! I wasn't meaning that you should be the one doing it, but if
you're already drafted them that's really good. Might make sense for them to
appear as RFC patches at the end of this series, to be honest, so the next
posting (v5) can all be reviewed together.

But I'll leave that up to you and Catalin to figure out.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
