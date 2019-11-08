Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D680F43A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 10:41:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Z0ValP07w8zdyALEuFBN3hMhCwclJym/OD8C/ZOljU=; b=UghHiVdjAbw9Q+
	7cHsXeahn55vI1EntjnHAPp10C3gGm3hineW2NnC+iOi8fTrxxSzBaZmW+cF9sX1RW6fwQ2fRNI5A
	z2/FiZu1rwP4lJDxinFY8TCZ8W6W6J03WE0RC4lV7Z63eEgUNGtvzoN9OjOUXL2+etv5TcOPeHyQD
	Wb+yBJ6V2snPLYIg7hMy8VypRiVuwZTBQg8hHvufqQJOY2NKBZY5i7ZKVT+Z0Ik4y71GR/UGQG5CM
	4fF0ApOuvHzYnZXho6wOQ1Qiavl8jJLNp01EoYqkxKX09BekVI8OlwGf2//47yV4CFbWvqyA8wjHU
	vKRtqwTwlHYff4ttm2sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0lL-0006dY-2m; Fri, 08 Nov 2019 09:41:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0lD-0006cz-EA
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 09:40:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5C0831B;
 Fri,  8 Nov 2019 01:40:53 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E97693F71A; Fri,  8 Nov 2019 01:40:52 -0800 (PST)
Date: Fri, 8 Nov 2019 09:40:50 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steve Capper <Steve.Capper@arm.com>
Subject: Re: [PATCH] arm64: Do not mask out PTE_RDONLY in pte_same()
Message-ID: <20191108094050.GN51202@arrakis.emea.arm.com>
References: <20191106154105.15176-1-catalin.marinas@arm.com>
 <20191107114826.GC11587@willie-the-truck>
 <20191108020854.GA22491@capper-ampere.manchester.arm.com>
 <20191108023702.GA23577@capper-ampere.manchester.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108023702.GA23577@capper-ampere.manchester.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_014055_519734_B0969590 
X-CRM114-Status: GOOD (  22.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: John Stultz <john.stultz@linaro.org>, nd <nd@arm.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 02:37:04AM +0000, Steve Capper wrote:
> On Fri, Nov 08, 2019 at 02:08:56AM +0000, Steve Capper wrote:
> > On Thu, Nov 07, 2019 at 11:48:26AM +0000, Will Deacon wrote:
> > > On Wed, Nov 06, 2019 at 03:41:05PM +0000, Catalin Marinas wrote:
> > > > Following commit 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out
> > > > of set_pte_at()"), the PTE_RDONLY bit is no longer managed by
> > > > set_pte_at() but built into the PAGE_* attribute definitions.
> > > > Consequently, pte_same() must include this bit when checking two PTEs
> > > > for equality.
> > > >
> > > > Remove the arm64-specific pte_same() function, practically reverting
> > > > commit 747a70e60b72 ("arm64: Fix copy-on-write referencing in HugeTLB")
> > > >
> > > > Fixes: 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out of set_pte_at()")
> > > > Cc: <stable@vger.kernel.org> # 4.14.x-
> > > > Cc: Will Deacon <will@kernel.org>
> > > > Cc: Steve Capper <steve.capper@arm.com>
> > > > Reported-by: John Stultz <john.stultz@linaro.org>
> > > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > > > ---
> > > >
> > > > Steve,
> > > >
> > > > Could you please check that the original problem fixed by commit
> > > > 747a70e60b72 no longer exists after reverting it in 4.14 onwards?
> > >
> > > In the meantime, I've pushed this out to for-next/fixes since the CI came
> > > back clean and it fixes John's issue (which I've confirmed locally too).
> > > Interestingly, I'm not at all sure the problem is related to the Mali
> > > driver. Some tracing suggests that the ART JIT thread is stuck on a write
> > > fault, which could be explained by a broken pte_same().
> > >
> > > Steve -- if you could please run the libhugetlbfs test suite as described
> > > in 747a70e60b72 before tomorrow, that would be really great.
> > >
> > 
> > Hey Will, Catalin,
> > Apologies for my late reply, I've been travelling longer than originally
> > planned.
> > 
> > I have tested for-next/fixes (with the pte_same removed), under
> > libhugetlbfs and I have been unable to reproduce the original memory
> > leak that prompted the pte_same logic in the first place. So this patch
> > looks good to me.
> > 
> > Will check this out for 4.14 too now.
> 
> I can confirm that 4.14 with Catalin's patch cherry-picked also passes
> the hugetlbfs cow tests.

Great. Thanks for testing Steve.

The next thing is improving pte_modify() to avoid an unnecessary fault
as we can end up with dirty|write|rdonly pte (and subsequently
ptep_set_access_flags() bailed out earlier due to broken pte_same()).
Anyway, that's not critical now, just minor perf improvement. I'll post
a patch along the lines of https://paste.debian.net/hidden/66246019/.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
