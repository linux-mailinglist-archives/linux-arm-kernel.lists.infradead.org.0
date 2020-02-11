Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C45159146
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 15:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FAbktpBclMVosEVnmuvO8pxuB4U59gmUpVLffeGv+A=; b=ebvjgntPQuz8qL
	MzRHzMr/ra1FSOO0CMKk1YO/WxGcuUuSY4VoMFEio4W0ABeUHtB+E7F1m/Xubv1iMP5YfJFSHhQIA
	AgawBvAsrHfpHHQA4+58Db9wBEHFc2ZNwfLnXZwW7tykIh2xcU71X/UgqgdaP5FMHPYZdbeqFJvtC
	hlJiEdoZPZb7v1afm7Cf4uj+WeexPDJOlKC6jRuYG8nDbwrgtgKUjlzVCo/w6hifoAEV2rOSxulhv
	PUzyenomRYYnzna3kQWAT0oH0JMg/uZYTaDMkL2pa9pZ0m/vF4VJBnH41VLag19OpUrkzVOqLI94D
	wa1RRGzG55h7GM/npUcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1W5h-00022b-9n; Tue, 11 Feb 2020 14:00:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1W5W-000219-5F
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 14:00:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6210A30E;
 Tue, 11 Feb 2020 06:00:28 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4917E3F68F; Tue, 11 Feb 2020 06:00:27 -0800 (PST)
Date: Tue, 11 Feb 2020 14:00:25 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andrea Arcangeli <aarcange@redhat.com>
Subject: Re: [PATCH 2/2] arm64: tlb: skip tlbi broadcast for single threaded
 TLB flushes
Message-ID: <20200211140025.GB153117@arrakis.emea.arm.com>
References: <20200203201745.29986-1-aarcange@redhat.com>
 <20200203201745.29986-3-aarcange@redhat.com>
 <20200210175106.GA27215@arrakis.emea.arm.com>
 <20200210201411.GC3699@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210201411.GC3699@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_060030_247255_839262BC 
X-CRM114-Status: GOOD (  22.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Rafael Aquini <aquini@redhat.com>, Jon Masters <jcm@jonmasters.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Mark Salter <msalter@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrea,

On Mon, Feb 10, 2020 at 03:14:11PM -0500, Andrea Arcangeli wrote:
> On Mon, Feb 10, 2020 at 05:51:06PM +0000, Catalin Marinas wrote:
> > It may be better if you used mm_cpumask to mark wherever an mm ever ran
> > than relying on mm_users.
> 
> Agreed.
> 
> If we can use mm_cpumask to track where the mm ever run, then if I'm
> not mistaken we could optimize also multithreaded processes in the
> same way: if only one thread is running frequently and the others are
> frequently sleeping, we could issue a single tlbi broadcast (modulo
> invalidates of small virtual ranges).

Possibly, though not sure how you'd detect such scenario.

> In the meantime the below should be enough to address the concern you
> raised of the proof of concept RFC patch.
> 
> I already experimented with mm_users == 1 earlier and it doesn't
> change the benchmark results for the "best case" below.
> 
> (untested)
> 
> diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
> index 772bbc45b867..a2d53b301f22 100644
> --- a/arch/arm64/include/asm/tlbflush.h
> +++ b/arch/arm64/include/asm/tlbflush.h
[...]
> @@ -212,7 +215,8 @@ static inline void flush_tlb_page(struct vm_area_struct *vma,
>  	unsigned long addr = __TLBI_VADDR(uaddr, ASID(mm));
>  
>  	/* avoid TLB-i broadcast to remote NUMA nodes if it's a local flush */
> -	if (current->mm == mm && atomic_read(&mm->mm_users) <= 1) {
> +	if (current->mm == mm && atomic_read(&mm->mm_users) <= 1 &&
> +	    (system_uses_ttbr0_pan() || atomic_read(&mm->mm_count) == 1)) {
>  		int cpu = get_cpu();
>  
>  		cpumask_setall(mm_cpumask(mm));

I think there is another race here. IIUC, the assumption you make is
that when mm_users <= 1 && mm_count == 1, the only active user of this
pgd/ASID is on the CPU doing the TLBI. This is not the case for
try_to_unmap() where the above condition may be true but the active
thread on a different CPU won't notice the local TLBI.

> > That's a pretty artificial test and it is indeed improved by this patch.
> > However, it would be nice to have some real-world scenarios where this
> > matters.
[...]
> Still your question if it'll make a difference in practice is a good
> one and I don't have a sure answer yet. I suppose before doing more
> benchmarking it's better to make a new version of this that uses
> mm_cpumask to track where the asid was ever loaded as you suggested,
> so that it will also optimize away tlbi broadcasts from multithreaded
> processes where only one thread is running frequently?

I was actually curious what triggered this patch series, whether you've
seen a real use-case where the TLBI was a bottleneck.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
