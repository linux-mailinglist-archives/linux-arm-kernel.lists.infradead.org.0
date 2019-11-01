Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DE0EC785
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 18:29:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F7cHJnLXVjwbps8Y6FGq+FdSQiwNijek4SlLGv7AWFc=; b=UA49Yt4I3aFKRR
	VY1LqoLhWc6FpzKnCq1q0sQOwIZEBYspOovHjvVnSf3ReJWUzNuQy6h69pSYOIQ8i4R59rmnHNvaz
	ltP9QNFmi2jnM6BlEhmpxwTZKUOLhEohKTAfKJ0+4palnRLUFOktvYXkc/7NQLatIDfFujpwe2moI
	OGdgL5Ys7EMvhrI2m+AEegSFhwBDSDBbNeD5oxNgh0cC7D1GCp3EOsqeJOq4foh2q1/F28udDyjMd
	v+FZqCUIo+YYjfFBzjfCp0usHxVbiBKiw2i1Z8QROM2rSKul6BSxQ5zoQH4TO9TzwxzBB7xnx7CZh
	bum6JGtHoyYdqMHsyApQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQajQ-00014O-Vw; Fri, 01 Nov 2019 17:29:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQajK-00013x-2l
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 17:28:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 539D62085B;
 Fri,  1 Nov 2019 17:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572629337;
 bh=m02R3EnPw9HBK/yXEyfNbqhE61yOKQTOoNAaAEoR/Gk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2qDebQSS7mENXOUn9hv2TqOTWqQRgqiHFhwkM+1ALr14M42QYl5GXSdhetj/+RkYb
 T/wGe+xO/pj4RHWtB+LmtZBZ8Spnkggoa83J0JCy1qsgzdw6jJsdnaZKOZuisqMLFH
 MdvA/QV78Sp0FTsyeMo3TE2ejfHYxgR7m8uAMzzk=
Date: Fri, 1 Nov 2019 17:28:51 +0000
From: Will Deacon <will@kernel.org>
To: "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>
Subject: Re: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
Message-ID: <20191101172851.GC3983@willie-the-truck>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
 <93009dbd-b31c-7364-86d2-21f0fac36676@jp.fujitsu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <93009dbd-b31c-7364-86d2-21f0fac36676@jp.fujitsu.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_102858_165810_044E87DD 
X-CRM114-Status: GOOD (  27.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jon Masters <jcm@jonmasters.org>, Jonathan Corbet <corbet@lwn.net>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "maeda.naoaki@fujitsu.com" <maeda.naoaki@fujitsu.com>,
 "misono.tomohiro@fujitsu.com" <misono.tomohiro@fujitsu.com>,
 Itaru Kitayama <itaru.kitayama@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "indou.takao@fujitsu.com" <indou.takao@fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[please note that my email address has changed and the old one doesn't work
 any more]

On Fri, Nov 01, 2019 at 09:56:05AM +0000, qi.fuli@fujitsu.com wrote:
> First of all thanks for the comments for the patch.
> 
> I'm still struggling with this problem to find out the solution.
> As a result of an investigation on this problem, after all, I think it 
> is necessary to improve TLB flush mechanism of the kernel to fix this 
> problem completely.
> 
> So, I'd like to restart a discussion. At first, I summarize this problem 
> to recall what was the problem and then I want to discuss how to fix it.
> 
> Summary of the problem:
> A few months ago I proposed patches to solve a performance problem due 
> to TLB flush.[1]
> 
> A problem is that TLB flush on a core affects all other cores even if 
> all other cores do not need actual flush, and it causes performance 
> degradation.
> 
> In this thread, I explained that:
> * I found a performance problem which is caused by TLBI-is instruction.
> * The problem occurs like this:
>   1) On a core, OS tries to flush TLB using TLBI-is instruction
>   2) TLBI-is instruction causes a broadcast to all other cores, and
>   each core received hard-wired signal
>   3) Each core check if there are TLB entries which have the specified 
> ASID/VA

For those following along at home, my understanding is that this "check"
effectively stalls the pipeline as though it is being performed in software.

Some questions:

Does this mean a malicious virtual machine can effectively DoS the system?
What about a malicious application calling mprotect()?

Do all broadcast TLBI instructions cause this expensive check, or are
some significantly slower than others?

>   4) This check causes performance degradation
> * We ran FWQ[2] and detected OS jitter due to this problem, this noise
>   is serious for HPC usage.
> 
> The noise means here a difference between maximum time and minimum time 
> which the same work takes.
> 
> How to fix:
> I think the cause is TLB flush by TLBI-is because the instruction 
> affects cores that are not related to its flush.

Does broadcast I-cache maintenance cause the same problem?

> So the previous patch I posted is
> * Use mm_cpumask in mm_struct to find appropriate CPUs for TLB flush
> * Exec TLBI instead of TLBI-is only to CPUs specified by mm_cpumask
>   (This is the same behavior as arm32 and x86)
> 
> And after the discussion about this patch, I got the following comments.
> 1) This patch switches the behavior (original flush by TLBI-is and new 
> flush by TLBI) by boot parameter, this implementation is not acceptable 
> due to bad maintainability.
> 2) Even if this patch fixes this problem, it may cause another 
> performance problem.
> 
> I'd like to start over the implementation by considering these points.
> For the second comment above, I will run a benchmark test to analyze the 
> impact on performance.
> Please let me know if there are other points I should take into 
> consideration.

I think it's worth bearing in mind that I have little sympathy for the
problem that you are seeing. As far as I can tell, you've done the
following:

  1. You designed a CPU micro-architecture that stalls whenever it receives
     a TLB invalidation request.

  2. You integrated said CPU design into a system where broadcast TLB
     invalidation is not filtered and therefore stalls every CPU every
     time that /any/ TLB invalidation is broadcast.

  3. You deployed a mixture of Linux and jitter-sensitive software on
     this system, and now you're failing to meet your performance
     requirements.

Have I got that right?

If so, given that your CPU design isn't widely available, nobody else
appears to have made this mistake and jitter hasn't been reported as an
issue for any other systems, it's very unlikely that we're going to make
invasive upstream kernel changes to support you. I'm sorry, but all I can
suggest is that you check that your micro-architecture and performance
requirements are aligned with the design of Linux *before* building another
machine like this in future.

I hate to be blunt, but I also don't want to waste your time.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
