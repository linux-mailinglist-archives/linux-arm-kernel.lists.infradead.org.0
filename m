Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6E96328F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 10:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hr8VbVop86hMAukiZxfVZxRjwkDnV73WN70JQE5rDeU=; b=T41dBCb7JOvO56
	VOIF0tsUzSXNQOWASZfbNzEL5dDRz+6zmIP3hkasAe6tcrSA4yTUS9oq+Ag95Ic6ctr1KRbSB2RMA
	DNXo6dQrCPaFeihDrdZTAJpDY6SDfvuYYWGSU98H6wqZ1GIbLkF+wjxCpDPKjfheHhDrMrFweXaxW
	o6Di4LC/mbNPI7Q17dLbOJAVcPc1Ehuyd9A8wws7FzqXaJKzs2wG17HLIKGpgvfjkjfxULJkkD2pw
	B+iiOkEG5uplO2btgcUfpCsJsWJ3LofGWQm/NOe9qmAAvY4WBtP3LQ5l+o41w35/MAtPNow/t/Avq
	6vh3V1ePXNm2RWVdsRsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkl6H-00054i-B9; Tue, 09 Jul 2019 08:03:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkl5o-0004s8-5x
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 08:03:17 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2554D214AF;
 Tue,  9 Jul 2019 08:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562659394;
 bh=4h1slV9pnqJH/rMLYpW8VWFuid3BTsn6hQfIGxSGH7s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ast2bcDaol/o2l77DZNWhKqIV8d19g7TV+vXqo6wutx0XSI/WVX5UTBgvPLDPIwa/
 H/J3yQT1yiCZ5nymdU1dL9LOVkMnz9L756SrwIQLn1Jz9XgF+esLaiPzLd2g2Y1qJc
 9SfkI6MvUKAdoDcNd/yS0PDlmCCTbeA79lZH9clc=
Date: Tue, 9 Jul 2019 09:03:09 +0100
From: Will Deacon <will@kernel.org>
To: Jon Masters <jcm@jonmasters.org>
Subject: Re: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
Message-ID: <20190709080308.uueqgxuycfp5y2db@willie-the-truck>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
 <20190617170328.GJ30800@fuggles.cambridge.arm.com>
 <e8fe8faa-72ef-8185-1a9d-dc1bbe0ae15d@jp.fujitsu.com>
 <20190627102724.vif6zh6zfqktpmjx@willie-the-truck>
 <5999ed84-72d0-9d42-bf7d-b8d56eaa4d4a@jp.fujitsu.com>
 <675313fe-007b-c850-d730-a629b82ccfc8@jonmasters.org>
 <d0879ecc-78c6-b66f-3525-aa1ce175178f@jonmasters.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d0879ecc-78c6-b66f-3525-aa1ce175178f@jonmasters.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_010316_256390_642A0BA9 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "indou.takao@fujitsu.com" <indou.takao@fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 08, 2019 at 08:29:26PM -0400, Jon Masters wrote:
> On 7/8/19 8:25 PM, Jon Masters wrote:
> > On 7/2/19 10:45 PM, qi.fuli@fujitsu.com wrote:
> > 
> >> However, we found that with the increase of that the TLB flash was called,
> >> the noise was also increasing. Here we understood that the cause of this 
> >> issue is the implementation of Linux's TLB flush for arm64, especially use of 
> >> TLBI-is instruction which is a broadcast to all processor core on the system. 
> > 
> > Are you saying that for a microbenchmark in which very large numbers of
> > threads are created and destroyed rapidly there are a large number of
> > associated tlb range flushes which always use broadcast TLBIs?
> > 
> > If that's the case, and the hardware doesn't do any ASID filtering and
> > each TLBI results in a DVM to every PE, would it make sense to look at
> > whether there are ways to improve batching/switch to an IPI approach
> > rather than relying on broadcasts, as a more generic solution?
> 
> What I meant was a heuristic to do this automatically, rather than via a
> command line.

One of my main initial objections to this patch [1] still applies to that
approach, though, which is that I don't want the maintenance headache of
maintaining two very different TLB invalidation schemes in the kernel.
Dynamically switching between them is arguably worse. If "jitter" is such a
big deal, then I don't think changing our TLBI mechanism even helps on a
system that has broadcast cache maintenance (including for the I-side) as
well as shared levels of cache further from the CPUs -- it just happens to
solve the case of a spinning mprotect(), well yeah, maybe don't do that if
your hardware can't handle it gracefully.

What I would be interested in seeing is an evaluation of a real workload
that suffers due to our mmu_gather/tlb_flush implementation on arm64 so that
we can understand where the problem lies and whether or not we can do
something to address it. But "jitter is bad, use IPIs" isn't helpful at all.

Will

[1] https://lkml.kernel.org/r/20190617170328.GJ30800@fuggles.cambridge.arm.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
