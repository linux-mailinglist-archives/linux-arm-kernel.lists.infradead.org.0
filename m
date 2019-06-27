Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2369658063
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 12:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EH0x0wqtFseEJfJPuMtwNkR1qwF5Wt5TvIJ+1IGzO4g=; b=dEtGwdDszGnMYD
	5xCKIE0PI2IPAwWNh35C/l7pb0bR2uPbwN6aF3dwbOuQxymTek9wcQUvFmUZ4HXDHYuRelvQBJ9Yw
	WqkXIUI79N/NLekljFD0LVLjulojEtBztf/OImjUJJ64JGorj+ez2I4tlC9GNfXguzsKJJDANGNTp
	oPRtGLB/nGKMCg6+QD+DZ3owveoRsWKWtKHU1YMvhVeaS+Xo+Ojd5in2fugxKwI1iXKoPg5bLFxOp
	5fxT137heUfaALOrxIPRcjsMvs9wAwDxOiZLQpPtlVh6ogvJFJVGIbf/SjY5z6DL5fvLkOA7aCvGH
	X+O2N0PU5b7YCZ4KRrUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgRdn-00049v-Vz; Thu, 27 Jun 2019 10:28:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgRcn-0003yG-VC
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 10:27:31 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B78B20828;
 Thu, 27 Jun 2019 10:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561631249;
 bh=dI0kBr+SLvATNvxr645YEW44/eVW59NGalSpB0Dn5ls=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1rqIUjononn+K4NHBL3fy90iZW1bSd5CokZzMxiIOQZKSlwIu+F4uBsCufiV8lLO3
 VW+HU66VkQ9zOzIWmhff5Muq/WyhDGo0C3fqsnMqO8aBXGob0ZfxWdn75U9A+KJQS+
 NHKy6D28h23yl9pRhyiwVgDBL9DoKJtXnEdoMTzo=
Date: Thu, 27 Jun 2019 11:27:25 +0100
From: Will Deacon <will@kernel.org>
To: "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>
Subject: Re: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
Message-ID: <20190627102724.vif6zh6zfqktpmjx@willie-the-truck>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
 <20190617170328.GJ30800@fuggles.cambridge.arm.com>
 <e8fe8faa-72ef-8185-1a9d-dc1bbe0ae15d@jp.fujitsu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e8fe8faa-72ef-8185-1a9d-dc1bbe0ae15d@jp.fujitsu.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_032730_179579_96D67002 
X-CRM114-Status: GOOD (  23.24  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "indou.takao@fujitsu.com" <indou.takao@fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 10:34:02AM +0000, qi.fuli@fujitsu.com wrote:
> On 6/18/19 2:03 AM, Will Deacon wrote:
> > On Mon, Jun 17, 2019 at 11:32:53PM +0900, Takao Indoh wrote:
> >> From: Takao Indoh <indou.takao@fujitsu.com>
> >>
> >> I found a performance issue related on the implementation of Linux's TLB
> >> flush for arm64.
> >>
> >> When I run a single-threaded test program on moderate environment, it
> >> usually takes 39ms to finish its work. However, when I put a small
> >> apprication, which just calls mprotest() continuously, on one of sibling
> >> cores and run it simultaneously, the test program slows down significantly.
> >> It becomes 49ms(125%) on ThunderX2. I also detected the same problem on
> >> ThunderX1 and Fujitsu A64FX.
> > This is a problem for any applications that share hardware resources with
> > each other, so I don't think it's something we should be too concerned about
> > addressing unless there is a practical DoS scenario, which there doesn't
> > appear to be in this case. It may be that the real answer is "don't call
> > mprotect() in a loop".
> I think there has been a misunderstanding, please let me explain.
> This application is just an example using for reproducing the 
> performance issue we found.
> Our original purpose is reducing OS jitter by this series.
> The OS jitter on massively parallel processing systems have been known 
> and studied for many years.
> The 2.5% OS jitter can result in over a factor of 20 slowdown for the 
> same application [1].

I think it's worth pointing out that the system in question was neither
ARM-based nor running Linux, so I'd be cautious in applying the conclusions
of that paper directly to our TLB invalidation code. Furthermore, the noise
being generated in their experiments uses a timer interrupt, which has a
/vastly/ different profile to a DVM message in terms of both system impact
and frequency.

> Though it may be an extreme example, reducing the OS jitter has been an 
> issue in HPC environment.
> 
> [1] Ferreira, Kurt B., Patrick Bridges, and Ron Brightwell. 
> "Characterizing application sensitivity to OS interference using 
> kernel-level noise injection." Proceedings of the 2008 ACM/IEEE 
> conference on Supercomputing. IEEE Press, 2008.
> 
> >> I suppose the root cause of this issue is the implementation of Linux's TLB
> >> flush for arm64, especially use of TLBI-is instruction which is a broadcast
> >> to all processor core on the system. In case of the above situation,
> >> TLBI-is is called by mprotect().
> > On the flip side, Linux is providing the hardware with enough information
> > not to broadcast to cores for which the remote TLBs don't have entries
> > allocated for the ASID being invalidated. I would say that the root cause
> > of the issue is that this filtering is not taking place.
> 
> Do you mean that the filter should be implemented in hardware?

Yes. If you're building a large system and you care about "jitter", then
you either need to partition it in such a way that sources of noise are
contained, or you need to introduce filters to limit their scope. Rewriting
the low-level memory-management parts of the operating system is a red
herring and imposes a needless burden on everybody else without solving
the real problem, which is that contended use of shared resources doesn't
scale.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
