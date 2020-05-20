Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF151DBAC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EmeP9KBV3LPGEMU1HMrMrE/DhPLToVBCoWJGEQLO4GE=; b=nOaAxruC4BPonC
	OXypP+K6EKXBxOwW+ejE7/OxfqvN3sBdEKY4hhyRMUrKz5VX47BaQw6zVAnhis5oCPvhj4y3nILFr
	93+lTMpWPLqC4nebYYBB0FrzP2EDxH1biECgCZ68GrstmG1ysUTUf77idbH57C6pyAwW2/fIgH/8u
	JbrvzF9EAtwtxc1NCLxnGM7OAn9sIIyO3SfQCfR7zYU6/ghodq80DYRZNqMEx2G/gTA3Dfo5Yo8lH
	EbrJWis9BXvOa0xZbmkM7vvmTl3w/YKXEAnD7jtO+7c6/v5MnmIPCGONZcmRn0HU8VjIlvdh4GamE
	PGquO2xMddLOqUCHRM9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSCW-0003WO-OS; Wed, 20 May 2020 17:08:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSCN-0003VQ-KA
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:08:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E73D130E;
 Wed, 20 May 2020 10:08:05 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EBC813F305;
 Wed, 20 May 2020 10:08:02 -0700 (PDT)
Date: Wed, 20 May 2020 18:08:00 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [RFC PATCH v3 2/2] arm64: tlb: Use the TLBI RANGE feature in arm64
Message-ID: <20200520170759.GE18302@gaia>
References: <20200414112835.1121-1-yezhenyu2@huawei.com>
 <20200414112835.1121-3-yezhenyu2@huawei.com>
 <20200514152840.GC1907@gaia>
 <54468aae-dbb1-66bd-c633-82fc75936206@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54468aae-dbb1-66bd-c633-82fc75936206@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_100807_748192_20085622 
X-CRM114-Status: GOOD (  27.52  )
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
Cc: linux-arch@vger.kernel.org, suzuki.poulose@arm.com, maz@kernel.org,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com, steven.price@arm.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, guohanjun@huawei.com, olof@lixom.net,
 kuhn.chenqun@huawei.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 08:21:02PM +0800, Zhenyu Ye wrote:
> On 2020/5/14 23:28, Catalin Marinas wrote:
> > On Tue, Apr 14, 2020 at 07:28:35PM +0800, Zhenyu Ye wrote:
> >> +		}
> >> +		scale++;
> >> +		range_size >>= TLB_RANGE_MASK_SHIFT;
> >> +	}
> > 
> > So, you start from scale 0 and increment it until you reach the maximum.
> > I think (haven't done the maths on paper) you could also start from the
> > top with something like scale = ilog2(range_size) / 5. Not sure it's
> > significantly better though, maybe avoiding the loop 3 times if your
> > range is 2MB (which happens with huge pages).
> 
> This optimization is only effective when the range is a multiple of 256KB
> (when the page size is 4KB), and I'm worried about the performance
> of ilog2().  I traced the __flush_tlb_range() last year and found that in
> most cases the range is less than 256K (see details in [1]).

THP or hugetlbfs would exercise bigger strides but I guess it depends on
the use-case. ilog2() should be reduced to a few instructions on arm64
AFAICT (haven't tried but it should use the CLZ instruction).

> > Anyway, I think it would be more efficient if we combine the
> > __flush_tlb_range() and the _directly one into the same function with a
> > single loop for both. For example, if the stride is 2MB already, we can
> > handle this with a single classic TLBI without all the calculations for
> > the range operation. The hardware may also handle this better since the
> > software already told it there can be only one entry in that 2MB range.
> > So each loop iteration could figure which operation to use based on
> > cpucaps, TLBI range ops, stride and reduce range_size accordingly.
> 
> Summarize your suggestion in one sentence: use 'stride' to optimize the
> preformance of TLBI.  This can also be done by dividing into two functions,
> and this should indeed be taken into account in the TLBI RANGE feature.
> 
> But if we figure which operation to use based on cpucaps in each loop
> iteration, then cpus_have_const_cap() will be called frequently, which
> may affect performance of TLBI.  In my opinion, we should do as few
> judgments as possible in the loop, so judge the cpucaps outside the
> loop maybe a good choice.

cpus_have_const_cap() is a static label, so should be patched with a
branch or nop. My point was that in the classic __flush_tlb_range()
loop, instead of an addr += stride we could have something more dynamic
depending on whether the CPU supports range TLBI ops or not. But we
would indeed have more (static) branches in the loop, so possibly some
performance degradation.

If the code looks ok, I'd favour this and we can look at the
optimisation later. But I can't really tell how the code would look
without attempting to merge the two.

Anyway, a first step would be to to add the the range and stride to the
decision (i.e. (end-start)/stride > 1) before jumping to the range
operations. You can avoid the additional checks in the new TLBI
functions since we know we have at least two (huge)pages.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
