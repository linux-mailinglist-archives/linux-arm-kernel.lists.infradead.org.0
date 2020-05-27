Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A6D1E3FA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRO+r8aQwQ+b13Dg1KMitPSJcxkCfH9P7qJgupNhsiM=; b=r4QCke0DxtCuRj
	uejS4is2MUFiP18yGNjvfvdTFi5IuRZsq+MbTSjUWQCPqpibd3OT4UWs9iMCSeQWAtT87QqfjY604
	eW6l86sgfgNkuNzwmUT24aoXWhxMaYNNnI1HacwqPtPumjZ0fOHMiakcsbN0woPpbT/ClLteYHP98
	B5UfGEitMx2Brb86RYF8vzUxmN6MC7qCxU+gIcsEPEIg25g/G4RhwkSwkgVj37MEO8RoFlcOei+HS
	2hxyNP5zknHEs4jfJ/6fR3Da/vZpS5atCEtMdJHgFoXTbjjYpzvOgNaNpcPAbTKL0oQojrvkgaCsP
	4HCivk+qGF7+UzRg1+VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdu3H-0005Dm-Sp; Wed, 27 May 2020 11:16:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdu33-0005D7-Dj
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:16:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 17E4455D;
 Wed, 27 May 2020 04:16:35 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A609B3F305;
 Wed, 27 May 2020 04:16:33 -0700 (PDT)
Date: Wed, 27 May 2020 12:16:31 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v4 15/26] arm64: mte: Allow user control of the tag check
 mode via prctl()
Message-ID: <20200527111631.GC28101@gaia>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-16-catalin.marinas@arm.com>
 <20200527074658.GB9887@willie-the-truck>
 <20200527083218.GS5031@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527083218.GS5031@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_041637_549183_ECA8F024 
X-CRM114-Status: GOOD (  24.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 09:32:20AM +0100, Dave P Martin wrote:
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

That's great Dave. Thanks!

> If I have time I'll try and get them posted today so that people can
> take a look before next week.

Feel free to post them whenever you can. I'll include them in v5 (likely
to be posted after the merging window).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
