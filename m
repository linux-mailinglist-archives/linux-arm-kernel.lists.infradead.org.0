Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E76121D796A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxOtazCh6sQ/5iM/ofhdjVTToHTjQCPTYLUJdUtiAfc=; b=ZvNoXqL5UfS1kJ
	QSeIETMsaHZGw9W6vFyljqQ+ai/p4Njz36DkqSh6jYJdGZG6KfDAacOFsxN/b0NNncxlAegfPkLT8
	4nSoB0PM2NRf1WfHUqWBh9GHtXzK7guDJdMVTHh/pJT8xE89qQZ2k0y7SKGpr91ZAdK+3SQtwjHFS
	RA3yJ71FvC/xbcLg2wDpa0p+x2Beufrp2AabiecKUXbcVHzGj9IQj6Z8nQww/seftlLTl79zRZYC7
	oR9w2gnSwEML0UVjH4LRJlvgGbssaIjdKxKtZEPmHgJ3o6FppOu6cMvXgR2ZYQRnU74Smhsnzp8+c
	F0Zc0UUPpKmAwrlrCsCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafaL-0001ht-24; Mon, 18 May 2020 13:13:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafaC-0001gp-B8
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 13:13:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 45039101E;
 Mon, 18 May 2020 06:13:26 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.29.34])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F09183F305;
 Mon, 18 May 2020 06:13:23 -0700 (PDT)
Date: Mon, 18 May 2020 14:13:17 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 3/6] arm64: scs: Use 'scs_sp' register alias for x18
Message-ID: <20200518131317.GA2787@C02TD0UTHF1T.local>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-4-will@kernel.org>
 <20200518115547.GC1957@C02TD0UTHF1T.local>
 <20200518130335.GC32394@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518130335.GC32394@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_061328_429930_90D9B804 
X-CRM114-Status: GOOD (  24.04  )
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Sami Tolvanen <samitolvanen@google.com>, kernel-team@android.com,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 02:03:36PM +0100, Will Deacon wrote:
> On Mon, May 18, 2020 at 12:55:47PM +0100, Mark Rutland wrote:
> > On Fri, May 15, 2020 at 06:27:53PM +0100, Will Deacon wrote:
> > > x18 holds the SCS stack pointer value, so introduce a register alias to
> > > make this easier to read in assembly code.
> > > 
> > > Signed-off-by: Will Deacon <will@kernel.org>
> > 
> > I scanned through arm64 for all instances of x18, and it looks like
> > you've covered all the relevant uses here. In kvm we save/restore x18 a
> > bunch becasue it might be a platform register, but we do that
> > unconditionally and without knowledge of what it contains, so I think
> > that's fine to leave as-is. Therefore:
> > 
> > Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> > 
> > As an aside, the comment in entry-ftrace.S is now stale where it says
> > that x18 is safe to clobber. I can send a patch to clean that up, unless
> > you want to do that yourself.
> 
> Thanks, I'll fix that up (see below). Also, apologies for typo'ing your
> email address when I sent this out on Friday.

No worries; I'd already forgotten!

> 
> Will
> 
> --->8
> 
> From 7e86208cd6541c1229bc1fcd206596308d1727f8 Mon Sep 17 00:00:00 2001
> From: Will Deacon <will@kernel.org>
> Date: Mon, 18 May 2020 14:01:01 +0100
> Subject: [PATCH] arm64: entry-ftrace.S: Update comment to indicate that x18 is
>  live
> 
> The Shadow Call Stack pointer is held in x18, so update the ftrace
> entry comment to indicate that it cannot be safely clobbered.
> 
> Reported-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/kernel/entry-ftrace.S | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/entry-ftrace.S b/arch/arm64/kernel/entry-ftrace.S
> index 833d48c9acb5..a338f40e64d3 100644
> --- a/arch/arm64/kernel/entry-ftrace.S
> +++ b/arch/arm64/kernel/entry-ftrace.S
> @@ -23,8 +23,9 @@
>   *
>   * ... where <entry> is either ftrace_caller or ftrace_regs_caller.
>   *
> - * Each instrumented function follows the AAPCS, so here x0-x8 and x19-x30 are
> - * live, and x9-x18 are safe to clobber.
> + * Each instrumented function follows the AAPCS, so here x0-x8 and x18-x30 are
> + * live (x18 holds the Shadow Call Stack pointer), and x9-x17 are safe to
> + * clobber.

I'd have called out x18 a bit more specifically:

| Each instrumented function follows the AAPCS, so here x0-x8 and x19-x30 are
| live, x18 is potentially live with a shadow call stack pointer, and
| x9-x17 are safe to clobber.

... but either way this looks good; thanks!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
