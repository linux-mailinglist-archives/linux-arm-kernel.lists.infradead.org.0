Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF9919C735
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 18:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1F6Kv42p1FZkh//6IFhTAMh7LDadCTgQAQTkH8nnmI=; b=XBnfkt6B155fr9
	Rsx8cToX2Tv+kJQXnQIHIzf8FSlbmcWyuUyO0313su2ob7YAnP5bTty2Sz0SVpafGsE0JRufAA+Pp
	MBNCQTYlPmAbE5h+bXH9KfE3RujL5qxRyZ5rS5b3z1aC5RiCrx724ncZFw3mQdE5cc+OwextQR99H
	TPinEWoGSsNFksVL9gfvuNUgaCeA96e71auWNLa6H+M6im4S/sYzGVHo6cHU9RLwPwBDOZthBVSLC
	UMComik2MKp3sOAdNUwpwubabl0EjCJc5mVsMPONBm12fbpdB7YNX2MOhDE0smP6bhrJqpTlyOu6z
	LtHOASTptUCNO/MPddtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK2ru-0007ba-8p; Thu, 02 Apr 2020 16:39:02 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK2rk-0007bD-EF; Thu, 02 Apr 2020 16:38:52 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 7F0B03056DE;
 Thu,  2 Apr 2020 18:38:49 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 423372B0DE293; Thu,  2 Apr 2020 18:38:49 +0200 (CEST)
Date: Thu, 2 Apr 2020 18:38:49 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [RFC PATCH v5 4/8] mm: tlb: Pass struct mmu_gather to
 flush_pmd_tlb_range
Message-ID: <20200402163849.GM20713@hirez.programming.kicks-ass.net>
References: <20200331142927.1237-1-yezhenyu2@huawei.com>
 <20200331142927.1237-5-yezhenyu2@huawei.com>
 <20200331151331.GS20730@hirez.programming.kicks-ass.net>
 <fe12101e-8efe-22ad-0258-e6aeafc798cc@huawei.com>
 <20200401122004.GE20713@hirez.programming.kicks-ass.net>
 <53675fb9-21c7-5309-07b8-1bbc1e775f9b@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53675fb9-21c7-5309-07b8-1bbc1e775f9b@huawei.com>
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, corbet@lwn.net, maz@kernel.org, steven.price@arm.com,
 arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de, suzuki.poulose@arm.com,
 npiggin@gmail.com, zhangshaokun@hisilicon.com, broonie@kernel.org,
 rostedt@goodmis.org, prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 xiexiangyou@huawei.com, tony.luck@intel.com, vgupta@synopsys.com,
 linux-kernel@vger.kernel.org, aneesh.kumar@linux.ibm.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 07:24:04PM +0800, Zhenyu Ye wrote:
> Thanks for your detailed explanation.  I notice that you used
> `tlb_end_vma` replace `flush_tlb_range`, which will call `tlb_flush`,
> then finally call `flush_tlb_range` in generic code.  However, some
> architectures define tlb_end_vma|tlb_flush|flush_tlb_range themselves,
> so this may cause problems.
> 
> For example, in s390, it defines:
> 
> #define tlb_end_vma(tlb, vma)			do { } while (0)
> 
> And it doesn't define it's own flush_pmd_tlb_range().  So there will be
> a mistake if we changed flush_pmd_tlb_range() using tlb_end_vma().
> 
> Is this really a problem or something I understand wrong ?

If tlb_end_vma() is a no-op, then tlb_finish_mmu() will do:
tlb_flush_mmu() -> tlb_flush_mmu_tlbonly() -> tlb_flush()

And s390 has tlb_flush().

If tlb_end_vma() is not a no-op and it calls tlb_flush_mmu_tlbonly(),
then tlb_finish_mmu()'s invocation of tlb_flush_mmu_tlbonly() will
terniate early due o no flags set.

IOW, it should all just work.


FYI the whole tlb_{start,end}_vma() thing is a only needed when the
architecture doesn't implement tlb_flush() and instead default to using
flush_tlb_range(), at which point we need to provide a 'fake' vma.

At the time I audited all architectures and they only look at VM_EXEC
(to do $I invalidation) and VM_HUGETLB (for pmd level invalidations),
but I forgot which architectures that were.

But that is all legacy code; eventually we'll get all archs a native
tlb_flush() and this can go away.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
