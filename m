Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AFF48991
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 19:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UdR2fu8GFk94VOPo1BxfOv9Lvwp+D3/HIB/Kujh9/WA=; b=q+qNUcOZMYdm90
	gqWSetWSzt0IhEKL8CP165lr1wgoYbBnbq732gjs4Qi497uYlcuQNq1j/cWCv8ahgcAEbGoS0CzK4
	EGpqigvb0VnRrgIZ1ADF167yLHn8bqEEf/jAPpl42D3n0wEuagglQGbPnRAOuJXtEHoD6rtfLh3UN
	vZmHIDC+jnS9Njq4KjaTa1xv4Kg6V7MilNRT62PqtKOHme4+2vcZzwLyoVhqH/8COesGQQaBqX9eT
	u7TXlduwNyIoqQcIx8HrecdREH51h6UpWm1UZNniJ98G6B8Ncl3GokL2N/zVNaHCIpAjGdujKClWq
	RgKtgRlVdSmqqPLUUlDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcv2o-0002lC-8D; Mon, 17 Jun 2019 17:03:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcv2a-0002kY-AP
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 17:03:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 77CAA28;
 Mon, 17 Jun 2019 10:03:31 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3C2A03F738;
 Mon, 17 Jun 2019 10:03:30 -0700 (PDT)
Date: Mon, 17 Jun 2019 18:03:28 +0100
From: Will Deacon <will.deacon@arm.com>
To: Takao Indoh <indou.takao@jp.fujitsu.com>
Subject: Re: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
Message-ID: <20190617170328.GJ30800@fuggles.cambridge.arm.com>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_100332_453886_5B30F254 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: QI Fuli <qi.fuli@fujitsu.com>, linux-doc@vger.kernel.org,
 peterz@infradead.org, Catalin Marinas <catalin.marinas@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Takao Indoh <indou.takao@fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Takao,

[+Peter Z]

On Mon, Jun 17, 2019 at 11:32:53PM +0900, Takao Indoh wrote:
> From: Takao Indoh <indou.takao@fujitsu.com>
> 
> I found a performance issue related on the implementation of Linux's TLB
> flush for arm64.
> 
> When I run a single-threaded test program on moderate environment, it
> usually takes 39ms to finish its work. However, when I put a small
> apprication, which just calls mprotest() continuously, on one of sibling
> cores and run it simultaneously, the test program slows down significantly.
> It becomes 49ms(125%) on ThunderX2. I also detected the same problem on
> ThunderX1 and Fujitsu A64FX.

This is a problem for any applications that share hardware resources with
each other, so I don't think it's something we should be too concerned about
addressing unless there is a practical DoS scenario, which there doesn't
appear to be in this case. It may be that the real answer is "don't call
mprotect() in a loop".

> I suppose the root cause of this issue is the implementation of Linux's TLB
> flush for arm64, especially use of TLBI-is instruction which is a broadcast
> to all processor core on the system. In case of the above situation,
> TLBI-is is called by mprotect().

On the flip side, Linux is providing the hardware with enough information
not to broadcast to cores for which the remote TLBs don't have entries
allocated for the ASID being invalidated. I would say that the root cause
of the issue is that this filtering is not taking place.

> This is not a problem for small environment, but this causes a significant
> performance noise for large-scale HPC environment, which has more than
> thousand nodes with low latency interconnect.

If you have a system with over a thousand nodes, without snoop filtering
for DVM messages and you expect performance to scale in the face of tight
mprotect() loops then I think you have a problem irrespective of this patch.
What happens if somebody runs I-cache invalidation in a loop?

> To fix this problem, this patch adds new boot parameter
> 'disable_tlbflush_is'.  In the case of flush_tlb_mm() *without* this
> parameter, TLB entry is invalidated by __tlbi(aside1is, asid). By this
> instruction, all CPUs within the same inner shareable domain check if there
> are TLB entries which have this ASID, this causes performance noise. OTOH,
> when this new parameter is specified, TLB entry is invalidated by
> __tlbi(aside1, asid) only on the CPUs specified by mm_cpumask(mm).
> Therefore TLB flush is done on minimal CPUs and performance problem does
> not occur. Actually I confirm the performance problem is fixed by this
> patch.

Other than my comments above, my overall concern with this patch is that
it introduces divergent behaviour for our TLB invalidation flow, which is
undesirable from both maintainability and usability perspectives. If you
wish to change the code, please don't put it behind a command-line option,
but instead improve the code that is already there. However, I suspect that
blowing away the local TLB on every context-switch may have hidden costs
which are only apparent with workloads different from the contrived case
that you're seeking to improve. You also haven't taken into account the
effects of virtualisation, where it's likely that the hypervisor will
upgrade non-shareable operations to inner-shareable ones anyway.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
