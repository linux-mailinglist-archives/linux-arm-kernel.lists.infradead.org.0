Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B3850992
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 13:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v34lVj22C/9ysKLOP5dxSVFRLYtaSHVC6EpzspBfJ0w=; b=Dq608IMN7Jphag
	WD244La0SZPnJ9eSMximRIejE1dyVoEaiR6g2ZY/MqnqwjwS4PZMhtgk8sYDcSlw3vUs3kX+K8g5N
	M/0tCgt6b2Mqg4sPljAWKcDOBxPQXSHOZJHdrEXTyI1zZ1r1rBA6lRo9POoy/OdBjmY4PGQYuAoR8
	VWkUrBrkWmyu7Y9jOojJak7Cl2wMFcJ401amrCPYgLkc/m738OZSHqO6gUrPtiJt3dJcAhIqUMYwd
	eTeWdKWQFAqkZ1cu8U0lc0ysGGJmAcU+itIjGVOV6L3Em2x6aqt4zDHTmZ6j7BA36DU4A/OCoZTtw
	hGyTNCszfommA+MoIiVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfMxJ-0000bn-Tk; Mon, 24 Jun 2019 11:16:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfMxD-0000at-08
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 11:16:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4ED1020449;
 Mon, 24 Jun 2019 11:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561374966;
 bh=LFqck4CeV3jBrl7Yqgi21ZqUHc7BseQ2I38AyrN4b3s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XSvX2o0P97KVpBlCPX61upv01HnSc9kZCztiFA3NLNpGco45CIh/rZ67XWlja2EVr
 vksn2UCldeO7t0n/lzFgMDLAb+ugyZ8v5hdUSmooKB4SZEXomTxQOY3AJWcU1Zq7VW
 ethUEz3+FgM9Le+Eh4bevMMllLhxj6571CK2n9Jk=
Date: Mon, 24 Jun 2019 12:16:01 +0100
From: Will Deacon <will@kernel.org>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH 0/4] arm64: wire up VM_FLUSH_RESET_PERMS
Message-ID: <20190624111600.b7e5kkfvuszj6522@willie-the-truck>
References: <20190523102256.29168-1-ard.biesheuvel@arm.com>
 <20190528100413.GA20809@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528100413.GA20809@fuggles.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_041607_061867_B6D08BC8 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Nadav Amit <namit@vmware.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 11:04:20AM +0100, Will Deacon wrote:
> On Thu, May 23, 2019 at 11:22:52AM +0100, Ard Biesheuvel wrote:
> > Wire up the code introduced in v5.2 to manage the permissions
> > of executable vmalloc regions (and their linear aliases) more
> > strictly.
> > 
> > One of the things that came up in the internal discussion is
> > whether non-x86 architectures have any benefit at all from the
> > lazy vunmap feature, and whether it would perhaps be better to
> > implement eager vunmap instead.
> > 
> > Cc: Nadav Amit <namit@vmware.com>
> > Cc: Rick Edgecombe <rick.p.edgecombe@intel.com>
> > Cc: Peter Zijlstra <peterz@infradead.org>
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: Will Deacon <will.deacon@arm.com>
> > Cc: Masami Hiramatsu <mhiramat@kernel.org>
> > Cc: James Morse <james.morse@arm.com>
> > 
> > Ard Biesheuvel (4):
> >   arm64: module: create module allocations without exec permissions
> >   arm64/mm: wire up CONFIG_ARCH_HAS_SET_DIRECT_MAP
> >   arm64/kprobes: set VM_FLUSH_RESET_PERMS on kprobe instruction pages
> >   arm64: bpf: do not allocate executable memory
> > 
> >  arch/arm64/Kconfig                  |  1 +
> >  arch/arm64/include/asm/cacheflush.h |  3 ++
> >  arch/arm64/kernel/module.c          |  4 +-
> >  arch/arm64/kernel/probes/kprobes.c  |  4 +-
> >  arch/arm64/mm/pageattr.c            | 48 ++++++++++++++++----
> >  arch/arm64/net/bpf_jit_comp.c       |  2 +-
> >  mm/vmalloc.c                        | 11 -----
> >  7 files changed, 50 insertions(+), 23 deletions(-)
> 
> Thanks, this all looks good to me. I can get pick this up for 5.2 if
> Rick's fixes [1] land soon enough.

Bah, I missed these landing in -rc5 and I think it's a bit too late for
us to take this for 5.2. now particularly with our limited ability to
fix any late regressions that might arise.

In which case, Catalin, please can you take these for 5.3? You might run
into some testing failures with for-next/core due to the late of Rick's
fixes, but linux-next should be alright and I don't think you'll get any
conflicts.

Acked-by: Will Deacon <will@kernel.org>

Ard: are you ok with that?

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
