Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2021FD23C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 02:10:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eNdbhIpRWv56RS3CcEWaJrkHaFlunlT7U9I4OBNp4Ko=; b=u/tfn7DHm0do3ftJtnHRQQaXb
	0ZAIWC6uG06UYxKpWqzjErRXDmWpDyTS5w4jgnrO0daibN34yPrhruZwoeLWvr2WWjVkFKV5qMfNN
	4EnSp6HTgwTHK2wWke86Nx5yilCUnQ9iBXE6u0KX2ybtdldDbGVgnJYEKSmi+rA0C8oAnUAEj2bYJ
	V84dUVryLoIyqCURu2/RRkgTY7JRqWOAKvIVfcGj4atmcZulb/voBRK8yPC43DzE7jc0xvtFEJwSe
	PsqhoNjlY6FEcgGVPooPNlk+d7hFsm3z8HoFKuDAvVpuxuOVAzO+iWHLnOk46s0LztVJNvc2dluX9
	PaQMUB+4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVQ8L-0000w1-4V; Fri, 15 Nov 2019 01:10:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVQ8A-0000vL-V3
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 01:10:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 411DB31B;
 Thu, 14 Nov 2019 17:10:31 -0800 (PST)
Received: from [10.37.9.126] (unknown [10.37.9.126])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EA0783F52E;
 Thu, 14 Nov 2019 17:10:28 -0800 (PST)
Subject: Re: [PATCH 0/5] arm64: Add workaround for Cortex-A77 erratum 1542418
To: will@kernel.org
References: <20191114145918.235339-1-suzuki.poulose@arm.com>
 <20191114163948.GA5158@willie-the-truck>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <14773d6b-96d5-b894-7fc4-17c54f15ee30@arm.com>
Date: Fri, 15 Nov 2019 01:14:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20191114163948.GA5158@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_171035_092582_7C3F830B 
X-CRM114-Status: GOOD (  25.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, maz@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will

On 11/14/2019 04:39 PM, Will Deacon wrote:
> Hi Suzuki,
> 
> On Thu, Nov 14, 2019 at 02:59:13PM +0000, Suzuki K Poulose wrote:
>> This series adds workaround for Arm erratum 1542418 which affects
> 
> Searching for that erratum number doesn't find me a description :(

I believe this was published in the Cortex-A77 SDEN v9.0. I will chase
it internally.

> 
>> Cortex-A77 cores (r0p0 - r1p0). Affected cores may execute stale
>> instructions from the L0 macro-op cache violating the
>> prefetch-speculation-protection guaranteed by the architecture.
>> This happens when the when the branch predictor bases its predictions
>> on a branch at this address on the stale history due to ASID or VMID
>> reuse.
> 
> Two immediate questions:
> 
>   1. Can we disable the L0 MOP cache?
Yes, but it hurts performance.

>   2. Can we invalidate the branch predictor? If Spectre-v2 taught us
>      anything it's that removing those instructions was a mistake!

The workaround suggested is actually invalidating the branch history
but in a costly way. I am unaware of any.
> Moving on...
> 
> Have you reproduced this at top-level? If I recall the
> prefetch-speculation-protection, it's designed to protect against the
> case where you have a direct branch:

No, see below.

> 
> addr:	B	foo
> 
> and another CPU writes out a new function:
> 
> bar:
> 	insn0
> 	...
> 	insnN
> 
> before doing any necessary maintenance and then patches the original
> branch to:
> 
> addr:	B	bar
> 
> The idea is that a concurrently executing CPU could mispredict the original
> branch to point at 'bar', fetch the instructions before they've been written
> out and then confirm the prediction by looking at the newly written branch
> instruction. Even without the prefetch-speculation-protection, that's
> fairly difficult to achieve in practice: you'd need to be doing something
> like reusing memory to hold the instructions so that the initial
> misprediction occurs.
> 
> How does A77 stop this from occurring when the ASID is not reallocated (e.g.
> the example above)? Is the MOP cache flushed somehow?

IIUC, The MOP cache is flushed on I-cache invalidate, thus it is fine.	

> 
> With this erratum, it sounds like you have to end up reusing an ASID from
> a task that had a branch at 'addr' in its address space that branched to
> the address of 'bar' (again. in its address space). Is that right? That
> sounds super rare to me, particularly with ASLR: not only does the aliasing

AFAICS, yes and on top of that, it should also miss "addr" in MOP-cache
and hit "bar" before the I-cache invalidate is received. This may cause
the "bar" to be fetched from mop (and is not canceled even though there
was a mop-flush triggered by the i-cache invalidate after the hit) and
"addr" should miss in I-cache, causing it to fetch the updated instruction.

Also this means that the new context must not have executed "addr"
(which would give a hit in MOP-cache) while "bar" was fetched. So,
this adds on more constraints to actually hit it.

> branch need to exist, but it needs to be held in the branch predictor while
> we cycle through 64k ASIDs *and* the race with the writer needs to happen
> so that we get stale instructions from the MOP cache.
> 
> Is there something I'm missing that makes this remotely plausible?

No :-)

Cheers
Suzuki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
