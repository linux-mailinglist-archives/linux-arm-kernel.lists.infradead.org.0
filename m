Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58331FF3C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkW6BNFiZmVch13uoeYrJJiLjr7Rywf7i75RsF7wgSg=; b=eB3DGAQgEF9Wo5
	SZSC/cbFcRQGxtkemh5nd9oLDaQdsINoJpyIRecZM4Gf8GtKvVzt1EtNbAXbncGR5FpCzTX0BrtV8
	jBbUc1aBEYwwZDyibq+Xf/qLeC0+J0i6m1tAsdmttSeof8wmn7WjPdFAjEJC42KcsHzYGkSMaecFN
	mFI8x1PiBdcBRN5dQMzGCLSqBP+aMEjJdj6krg064gVnX214Eh/wvf+2YNY1op2CFUeFaYr9Qib6a
	KakZFrQE3JDTTdkdxJuVMwQzRv2IMKSW4e1Ryrx/PYQk7w1etmy+2e9CRhS//yliiROJ91cDfq3jE
	bLhHp4sIXZqSHi/TNxyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jluwF-00016T-PI; Thu, 18 Jun 2020 13:50:43 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jluw6-00015P-Mx
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:50:36 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0D7846736F; Thu, 18 Jun 2020 15:50:28 +0200 (CEST)
Date: Thu, 18 Jun 2020 15:50:27 +0200
From: Christoph Hellwig <hch@lst.de>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 2/3] arm64: use PAGE_KERNEL_ROX directly in alloc_insn_page
Message-ID: <20200618135027.GA23534@lst.de>
References: <20200618064307.32739-1-hch@lst.de>
 <20200618064307.32739-3-hch@lst.de>
 <90234f58-e83a-7f20-62a7-80a4e81cde95@redhat.com>
 <20200618103506.GH576905@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618103506.GH576905@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_065034_898262_0690E263 
X-CRM114-Status: GOOD (  20.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-hyperv@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Dexuan Cui <decui@microsoft.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-mm@kvack.org,
 Jessica Yu <jeyu@kernel.org>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 12:35:06PM +0200, Peter Zijlstra wrote:
> On Thu, Jun 18, 2020 at 10:55:58AM +0200, David Hildenbrand wrote:
> > On 18.06.20 08:43, Christoph Hellwig wrote:
> > > Use PAGE_KERNEL_ROX directly instead of allocating RWX and setting the
> > > page read-only just after the allocation.
> > > 
> > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > > ---
> > >  arch/arm64/kernel/probes/kprobes.c | 12 +++---------
> > >  1 file changed, 3 insertions(+), 9 deletions(-)
> > > 
> > > diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
> > > index d1c95dcf1d7833..cbe49cd117cfec 100644
> > > --- a/arch/arm64/kernel/probes/kprobes.c
> > > +++ b/arch/arm64/kernel/probes/kprobes.c
> > > @@ -120,15 +120,9 @@ int __kprobes arch_prepare_kprobe(struct kprobe *p)
> > >  
> > >  void *alloc_insn_page(void)
> > >  {
> > > -	void *page;
> > > -
> > > -	page = vmalloc_exec(PAGE_SIZE);
> > > -	if (page) {
> > > -		set_memory_ro((unsigned long)page, 1);
> > > -		set_vm_flush_reset_perms(page);
> > > -	}
> > > -
> > > -	return page;
> > > +	return __vmalloc_node_range(PAGE_SIZE, 1, VMALLOC_START, VMALLOC_END,
> > > +			GFP_KERNEL, PAGE_KERNEL_ROX, VM_FLUSH_RESET_PERMS,
> > > +			NUMA_NO_NODE, __func__);
> > 
> > I do wonder if something like vmalloc_prot(size, prot) would make this
> > (and the other two users) easier to read.
> > 
> > So instead of ripping out vmalloc_exec(), converting it into
> > vmalloc_prot() instead.
> > 
> > Did you consider that?
> 
> For x86 Christoph did module_alloc_prot(), which is in his more
> extensive set of patches addressing this. I suspect that would be the
> right thing for ARM64 as well.

Yes.  The somewhat hacky way I added it cause problems for UML, so I
instead plan to do a series converting all architectures over to
module_alloc_prot, plus lots of other cleanups in the area that I
noticed.

I don't think vmalloc_prot is a good idea per se, as there only few
potential users, and I don't want too many vmalloc APIs.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
