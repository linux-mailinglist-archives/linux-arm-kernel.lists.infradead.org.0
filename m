Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA8B19933B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 12:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbQl7WMYBqsi0daeiKxEo42DOpMXY/4LX6MMqH/K9bk=; b=XKh9Z1JmVEyDqv
	i/PQAuHcs8lpCeqQP8e2VhBze438uDuyRBG0OkbfzIAIXvUoajmiJYVarAHalHDOInofMsN/DywBP
	mWIkuiuNZnsNflkhrCK/G5RskAQyYFY5xt7eQapzvmUDDbXdmHpIECyLzg/ejLO0gu1EO6ubJ/fNK
	9MKKbJhdP0N7JkZJec6/lxuR4xVGEl40yCHvCZqAUtdi3KiXu4EZ5aB6T4R5OZ5AJVr3gXSNM7/xR
	CoZq1NjCP9DSkXuIFwhpKIwRQi2nbuo5uu0ls2k7Z5EDSA+CrXZIetS0pzIsM2wPvz1AjY/CEdcTe
	bmoV5LzSswz+7/D6XpIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJDug-0003ZQ-CG; Tue, 31 Mar 2020 10:14:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJDuV-0003YZ-SI
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 10:14:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A29BB30E;
 Tue, 31 Mar 2020 03:14:18 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6855D3F52E;
 Tue, 31 Mar 2020 03:14:17 -0700 (PDT)
Date: Tue, 31 Mar 2020 11:14:12 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: George Spelvin <lkml@SDF.ORG>
Subject: Re: [RFC PATCH v1 44/50] arm64: ptr auth: Use get_random_u64 instead
 of _bytes
Message-ID: <20200331101412.GA1490@C02TD0UTHF1T.local>
References: <202003281643.02SGhOi3016886@sdf.org>
 <20200330105745.GA1309@C02TD0UTHF1T.local>
 <20200330193237.GC9199@SDF.ORG>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330193237.GC9199@SDF.ORG>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_031420_004341_07683DF1 
X-CRM114-Status: GOOD (  28.83  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 07:32:37PM +0000, George Spelvin wrote:
> Sorry for the delay responding; I had to re-set-up my arm64
> cross-compilation environment.
> 
> On Mon, Mar 30, 2020 at 11:57:45AM +0100, Mark Rutland wrote:
> > On Tue, Dec 10, 2019 at 07:15:55AM -0500, George Spelvin wrote:
> >> Since these are authentication keys, stored in the kernel as long
> >> as they're important, get_random_u64 is fine.  In particular,
> >> get_random_bytes has significant per-call overhead, so five
> >> separate calls is painful.
> > 
> > As I am unaware, how does the cost of get_random_bytes() compare to the
> > cost of get_random_u64()?
> 
> It's approximately 8 times the cost.
> 
> Because get_random_bytes() implements anti-backtracking, it's a minimum 
> of one global lock and one ChaCha20 operation per call.  Even though 
> chacha_block_generic() returns 64 bytes, for anti-backtracking we use 
> 32 of them to generate a new key and discard the remainder.
> 
> get_random_u64() uses the exact same generator, but amortizes the cost by 
> storing the output in a per-CPU buffer which it only has to refill every 
> 64 bytes generated.  7/8 of the time, it's just a fetch from a per-CPU 
> data structure.

I see; thanks for this explanation. It would be helpful to mention the
backtracking distinction explicitly in the commit message, since it
currently only alludes to it in the first sentence.

It's worth noting that the key values *can* be exposed to userspace when
CONFIG_CHECKPOINT_RESTORE is selected. On such kernels, a user could
regenerate and read the keys an arbitrary number of times on a CPU of
their choice. From my limited understanding I presume backtracking may
be a concern there?

> >> This ended up being a more extensive change, since the previous
> >> code was unrolled and 10 calls to get_random_u64() seems excessive.
> >> So the code was rearranged to have smaller object size.
> > 
> > It's not really "unrolled", but rather "not a loop", so I'd prefer to
> > not artifially make it look like one.
> 
> I intended that to mean "not in a loop, but could be".  I guess
> this entire exchange is about the distinction between "could be"
> and "should be".  ;-)
> 
> Yes, I went overboard, and your proposed change below is perfectly
> fine with me.

Great. That's what I'd prefer due to clarity of the code, and I'm not
too concerned by the figures below given it only adds 12 bytes to the
contemporary text size.

Thanks,
Mark.

> > Could you please quantify the size difference when going from
> > get_random_bytes() to get_random_u64(), if that is excessive enough to
> > warrant changing the structure of the code? Otherwise please leave the
> > structure as-is as given it is much easier to reason about -- suggestion
> > below on how to do that neatly.
> 
> Here are the various code sizes:
>    text    data     bss     dec     hex filename
>    1480       0       0    1480     5c8 arch/arm64/kernel/pointer_auth.o.old
>     862       0       0     862     35e arch/arm64/kernel/pointer_auth.o.new
>    1492       0       0    1492     5d4 arch/arm64/kernel/pointer_auth.o.new2
>    1560       0       0    1560     618 arch/arm64/kernel/pointer_auth.o.new3
> 
> "old" is the existing code.  "new" is my restructured code.
> "new2" is your simple change with a __ptrauth_key_init() helper.
> "new3" is with the helper forced noinline.
> 
> I shrank the code significantly, but deciding whether that's a net
> improvement is your perogative.
> 
> I should mention that at the end of my patch series, I added a function 
> (currently called get_random_nonce(), but that's subject to revision) 
> which uses the get_random_u64 internals with the same interface as 
> get_random_bytes().  We could postpone this whole thing until that gets
> a final name and merged.
> 
> 
> (BTW, somehow in my patch a "#include <linux/prctl.h>" needed in the 
> revised <asm/pointer_auth.h> got omitted.  I probably did something stupid 
> like added it in my cross-compilation tree but didn't push it back to my 
> main development tree.  Sorry.)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
