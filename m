Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A38C910A075
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 15:37:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itNV1rTqPqkGgKjTR0cvPp7hDDaTnkbWXxb/GWn/K4s=; b=KukuL9GQCNcuNC
	dIfulDQwGGdJzGWji6ts5gGecMXlee3vwKibwE5RjH/STjo2mzh1LfXJqPXZNUCGfhsIwn+hakIVH
	4UTevPCtjFrXqtyidypGPVBoraDG71DGGmWK+99iPDyDl3DcbAHmGDO6EoEOxmtkr/GYY+QSLS9q9
	tGH9auP9m8OuxNf+MfmYzoXoR2iCK6CIpzn2U7UXDfg70mlR5j8L8JUqmnmIVpcrsQyHE7CmxMhJT
	BQcp23w5pHcnXxpcGBDC7QH59wAWlgx4PxDlKxBjtPazZz1azcZKsrbpqpI/f/HL+F3N2rSb962Ri
	1iP+9Vpx1u7BpEecQ8HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZby7-0005gu-Uo; Tue, 26 Nov 2019 14:37:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZbxh-0005Ho-NY
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 14:37:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1573020656;
 Tue, 26 Nov 2019 14:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574779024;
 bh=1GOQJQR55sXQeEjNnRz1avvc58d8sV4zCuT8LyQZ/Rs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j0X3TsrBziLGJqhV/e3mEWvXCmApDyvMKfe4joOQs9BxecsQaTM8Tkmiqfdfr3ZnY
 u0byS9MAwd2qlsK5qXdW7mE9keBn7/dWIpog72IPhYiD1wH3oW/XzJYGJGHU8TuVvK
 RmnA0y9UHPicrhSSG2pETRoZBzXAH3dDrrJ2jnRs=
Date: Tue, 26 Nov 2019 14:36:58 +0000
From: Will Deacon <will@kernel.org>
To: Matthias Brugger <mbrugger@suse.com>
Subject: Re: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
Message-ID: <20191126143657.GA9395@willie-the-truck>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
 <93009dbd-b31c-7364-86d2-21f0fac36676@jp.fujitsu.com>
 <20191101172851.GC3983@willie-the-truck>
 <adac2265-2e40-bc2f-a6e2-8d6013b9416c@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <adac2265-2e40-bc2f-a6e2-8d6013b9416c@suse.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_063705_820686_78E1F07E 
X-CRM114-Status: GOOD (  34.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "tokamoto@jp.fujitsu.com" <tokamoto@jp.fujitsu.com>,
 "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>, Jon Masters <jcm@jonmasters.org>,
 Jonathan Corbet <corbet@lwn.net>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "maeda.naoaki@fujitsu.com" <maeda.naoaki@fujitsu.com>,
 Robert Richter <rrichter@marvell.com>,
 "misono.tomohiro@fujitsu.com" <misono.tomohiro@fujitsu.com>,
 Itaru Kitayama <itaru.kitayama@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "indou.takao@fujitsu.com" <indou.takao@fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 03:26:48PM +0100, Matthias Brugger wrote:
> On 01/11/2019 18:28, Will Deacon wrote:
> > On Fri, Nov 01, 2019 at 09:56:05AM +0000, qi.fuli@fujitsu.com wrote:
> >> First of all thanks for the comments for the patch.
> >>
> >> I'm still struggling with this problem to find out the solution.
> >> As a result of an investigation on this problem, after all, I think it 
> >> is necessary to improve TLB flush mechanism of the kernel to fix this 
> >> problem completely.
> >>
> >> So, I'd like to restart a discussion. At first, I summarize this problem 
> >> to recall what was the problem and then I want to discuss how to fix it.
> >>
> >> Summary of the problem:
> >> A few months ago I proposed patches to solve a performance problem due 
> >> to TLB flush.[1]
> >>
> >> A problem is that TLB flush on a core affects all other cores even if 
> >> all other cores do not need actual flush, and it causes performance 
> >> degradation.
> >>
> >> In this thread, I explained that:
> >> * I found a performance problem which is caused by TLBI-is instruction.
> >> * The problem occurs like this:
> >>   1) On a core, OS tries to flush TLB using TLBI-is instruction
> >>   2) TLBI-is instruction causes a broadcast to all other cores, and
> >>   each core received hard-wired signal
> >>   3) Each core check if there are TLB entries which have the specified 
> >> ASID/VA
> > 
> > For those following along at home, my understanding is that this "check"
> > effectively stalls the pipeline as though it is being performed in software.
> > 
> > Some questions:
> > 
> > Does this mean a malicious virtual machine can effectively DoS the system?
> > What about a malicious application calling mprotect()?
> > 
> > Do all broadcast TLBI instructions cause this expensive check, or are
> > some significantly slower than others?
> > 
> >>   4) This check causes performance degradation
> >> * We ran FWQ[2] and detected OS jitter due to this problem, this noise
> >>   is serious for HPC usage.
> >>
> >> The noise means here a difference between maximum time and minimum time 
> >> which the same work takes.
> >>
> >> How to fix:
> >> I think the cause is TLB flush by TLBI-is because the instruction 
> >> affects cores that are not related to its flush.
> > 
> > Does broadcast I-cache maintenance cause the same problem?
> > 
> >> So the previous patch I posted is
> >> * Use mm_cpumask in mm_struct to find appropriate CPUs for TLB flush
> >> * Exec TLBI instead of TLBI-is only to CPUs specified by mm_cpumask
> >>   (This is the same behavior as arm32 and x86)
> >>
> >> And after the discussion about this patch, I got the following comments.
> >> 1) This patch switches the behavior (original flush by TLBI-is and new 
> >> flush by TLBI) by boot parameter, this implementation is not acceptable 
> >> due to bad maintainability.
> >> 2) Even if this patch fixes this problem, it may cause another 
> >> performance problem.
> >>
> >> I'd like to start over the implementation by considering these points.
> >> For the second comment above, I will run a benchmark test to analyze the 
> >> impact on performance.
> >> Please let me know if there are other points I should take into 
> >> consideration.
> > 
> > I think it's worth bearing in mind that I have little sympathy for the
> > problem that you are seeing. As far as I can tell, you've done the
> > following:
> > 
> >   1. You designed a CPU micro-architecture that stalls whenever it receives
> >      a TLB invalidation request.
> > 
> >   2. You integrated said CPU design into a system where broadcast TLB
> >      invalidation is not filtered and therefore stalls every CPU every
> >      time that /any/ TLB invalidation is broadcast.
> > 
> >   3. You deployed a mixture of Linux and jitter-sensitive software on
> >      this system, and now you're failing to meet your performance
> >      requirements.
> > 
> > Have I got that right?
> > 
> > If so, given that your CPU design isn't widely available, nobody else
> > appears to have made this mistake and jitter hasn't been reported as an
> > issue for any other systems, it's very unlikely that we're going to make
> > invasive upstream kernel changes to support you. I'm sorry, but all I can
> > suggest is that you check that your micro-architecture and performance
> > requirements are aligned with the design of Linux *before* building another
> > machine like this in future.
> > 
> 
> I just wanted to note that the cover letter states that they have also seen this
> on Thunderx1 and Thunderx2.
> 
> Not sure about other machines, like the Huawei TaiShan 200 series.
> 
> What I want to say, it seems not to be something that only affects Fujitsu but
> also other vendors. So maybe we should consider adding an erratum like the one
> for the repeated TLBI on Qualcomm SoCs.

Careful here -- we're talking about a reported performance issue, not a
correctness one. The "repeated TLBI" sequence is very much a workaround for
the latter.

In the case of TX1/TX2, I can imagine the "let's sit in a loop of mprotect()
calls" scaling poorly, which is what the cover letter is referring to, but
that's not really a workload that we need to optimise for. However, the case
that Fujitsu are reporting seems to go beyond that because of the design of
their CPU micro-architecture, where even just a single TLB invalidation
message stalls all of the other CPUs in the system. I don't have any reason
to believe that particular problem affects other CPU designs.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
