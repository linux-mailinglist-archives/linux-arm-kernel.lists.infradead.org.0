Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB60615ABF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 16:26:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rhoN2lzKZ4uLez5A0Wzzu3itMLrWYyookjYeojnlEE=; b=W4rvjTtyCEK6LL
	AfyK64jmwuSFL9mIeDemD6F/9inPAhsXRASHhRVsHW+XkgdAqnmpsmF8NuPXK/A4WeQadEDir/1wn
	qfU33DuyYbGEAeuUQlgDMlV3z2GZ5NKmFIEoFAvvx7joFLrh/8yscT/ws3imUJSZiSdqCU0PZnOP2
	7US6xNat+i4W7KAIzcH000CA1NZhRRmvS7w0a+ylwYrORG5V1EzIcWxQcq6DSiVbVSa5mHZGlDg7N
	i0mKB6lWtiUeCcUGGCEIcVIwL+ukcXIcV3wmx6G/OLd7m0RtpVso5MeXw649oGMoInGGAsyFMenUl
	5MBShvDUoR/vgVKTJf0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1tuR-0006Ql-Q3; Wed, 12 Feb 2020 15:26:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1tuH-0006PX-GZ
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 15:26:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 58FD9328;
 Wed, 12 Feb 2020 07:26:28 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 0E2063F68F; Wed, 12 Feb 2020 07:26:26 -0800 (PST)
Date: Wed, 12 Feb 2020 15:26:24 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>
Subject: Re: [PATCH 2/2] arm64: tlb: skip tlbi broadcast for single threaded
 TLB flushes
Message-ID: <20200212152624.GA587247@arrakis.emea.arm.com>
References: <20200203201745.29986-1-aarcange@redhat.com>
 <20200203201745.29986-3-aarcange@redhat.com>
 <6e59905d-3e5b-bbd5-d192-9f18a0a152f5@jp.fujitsu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e59905d-3e5b-bbd5-d192-9f18a0a152f5@jp.fujitsu.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_072629_644549_B4F3090E 
X-CRM114-Status: GOOD (  23.02  )
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
Cc: Andrea Arcangeli <aarcange@redhat.com>, Rafael Aquini <aquini@redhat.com>,
 Jon Masters <jcm@jonmasters.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, Mark Salter <msalter@redhat.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 02:13:56PM +0000, qi.fuli@fujitsu.com wrote:
> On 2/4/20 5:17 AM, Andrea Arcangeli wrote:
> > With multiple NUMA nodes and multiple sockets, the tlbi broadcast
> > shall be delivered through the interconnects in turn increasing the
> > interconnect traffic and the latency of the tlbi broadcast instruction.
> > 
> > Even within a single NUMA node the latency of the tlbi broadcast
> > instruction increases almost linearly with the number of CPUs trying to
> > send tlbi broadcasts at the same time.
> > 
> > When the process is single threaded however we can achieve full SMP
> > scalability by skipping the tlbi broadcasting. Other arches already
> > deploy this optimization.
> > 
> > After the local TLB flush this however means the ASID context goes out
> > of sync in all CPUs except the local one. This can be tracked in the
> > mm_cpumask(mm): if the bit is set it means the asid context is stale
> > for that CPU. This results in an extra local ASID TLB flush only if a
> > single threaded process is migrated to a different CPU and only after a
> > TLB flush. No extra local TLB flush is needed for the common case of
> > single threaded processes context scheduling within the same CPU and for
> > multithreaded processes.
> > 
> > Skipping the tlbi instruction broadcasting is already implemented in
> > local_flush_tlb_all(), this patch only extends it to flush_tlb_mm(),
> > flush_tlb_range() and flush_tlb_page() too.
> > 
> > Here's the result of 32 CPUs (ARMv8 Ampere) running mprotect at the same
> > time from 32 single threaded processes before the patch:
> > 
> >   Performance counter stats for './loop' (3 runs):
> > 
> >                   0      dummy
> > 
> >            2.121353 +- 0.000387 seconds time elapsed  ( +-  0.02% )
> > 
> > and with the patch applied:
> > 
> >   Performance counter stats for './loop' (3 runs):
> > 
> >                   0      dummy
> > 
> >           0.1197750 +- 0.0000827 seconds time elapsed  ( +-  0.07% )
> 
> I have tested this patch on thunderX2 with Himeno benchmark[1] with 
> LARGE calculation size. Here are the results.
> 
>    w/o patch:   MFLOPS : 1149.480174
>    w/  patch:   MFLOPS : 1110.653003
> 
> In order to validate the effectivness of the patch, I ran a 
> single-threded program, which calls mprotect() in a loop to issue the 
> tlbi broadcast instruction on a CPU core. At the same time, I ran Himeno 
> benchmark on another CPU core. The results are:
> 
>    w/o patch:   MFLOPS :  860.238792
>    w/  patch:   MFLOPS : 1110.449666
> 
> Though Himeno benchmark is a microbenchmark, I hope it helps.

It doesn't really help. What if you have a two-thread program calling
mprotect() in a loop? IOW, how is this relevant to real-world scenarios?

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
