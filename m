Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF82965A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4u/Y3rNBfWIWlKSQMuuJGjh4YCe0NzSI8dFd1Q4/pEs=; b=rOvK1A7GJUElxC3olLosxOUnU
	VgzsRQm3QQgKurrT6oWduSxLhhi90bpai/0LFSoQnmvA8760L6GMX1ahbPe/iIL24vmiNYu7BBL79
	p22u+uC7L3oawEz/uZLbkW/KDGDkVDQnQzE9VCjIKQlqqehx8Fz5RsWT77kTkIytvGTcsa69Lgdxz
	Uz0zLeusZPlH5T0ljjcBYuV5PC69RIYq+BDXp3JtlZDoS33ovyfqOnh5GTvWMAjMkG1cuDsYf06Pw
	uBmLyhISDXVn6Y+j8h/HNAkUead7fjlZ+v735kg8EPLukptmScpRj9jXM3tdt7GaKb3a/zcJtfp/y
	X0Pz+f+gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06U1-0006Xk-1l; Tue, 20 Aug 2019 15:55:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i06Tp-0006Wy-C5
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:55:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA0BD28;
 Tue, 20 Aug 2019 08:55:26 -0700 (PDT)
Received: from [10.1.196.120] (e121650-lin.cambridge.arm.com [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B187E3F246;
 Tue, 20 Aug 2019 08:55:25 -0700 (PDT)
Subject: Re: [PATCH v3 2/5] arm64: cpufeature: Add feature to detect
 heterogeneous systems
To: Mark Rutland <mark.rutland@arm.com>
References: <20190816125934.18509-1-raphael.gault@arm.com>
 <20190816125934.18509-3-raphael.gault@arm.com>
 <20190820152316.GA38082@lakrids.cambridge.arm.com>
 <20190820154955.GB43412@lakrids.cambridge.arm.com>
From: Raphael Gault <raphael.gault@arm.com>
Message-ID: <8cf12008-cc86-3872-7358-2e837cf2498a@arm.com>
Date: Tue, 20 Aug 2019 16:55:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190820154955.GB43412@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_085529_449997_4B27D471 
X-CRM114-Status: GOOD (  23.02  )
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 mingo@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

Thank you for your comments.

On 8/20/19 4:49 PM, Mark Rutland wrote:
> On Tue, Aug 20, 2019 at 04:23:17PM +0100, Mark Rutland wrote:
>> Hi Raphael,
>>
>> On Fri, Aug 16, 2019 at 01:59:31PM +0100, Raphael Gault wrote:
>>> This feature is required in order to enable PMU counters direct
>>> access from userspace only when the system is homogeneous.
>>> This feature checks the model of each CPU brought online and compares it
>>> to the boot CPU. If it differs then it is heterogeneous.
>>
>> It would be worth noting that this patch prevents heterogeneous CPUs
>> being brought online late if the system was uniform at boot time.
> 
> Looking again, I think I'd misunderstood how
> ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU was dealt with, but we do have a
> problem in this area.
> 
> [...]
> 
>>
>>> +		.capability = ARM64_HAS_HETEROGENEOUS_PMU,
>>> +		.type = ARM64_CPUCAP_SCOPE_LOCAL_CPU | ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU,
>>> +		.matches = has_heterogeneous_pmu,
>>> +	},
> 
> I had a quick chat with Will, and we concluded that we must permit late
> onlining of heterogeneous CPUs here as people are likely to rely on
> late CPU onlining on some heterogeneous systems.
> 
> I think the above permits that, but that also means that we need some
> support code to fail gracefully in that case (e.g. without sending
> a SIGILL to unaware userspace code).

I understand, however, I understood that 
ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU did not allow later CPU to be 
heterogeneous if the capability wasn't already enabled. Thus if as you 
say we need to allow the system to switch from homogeneous to 
heterogeneous, then I should change the type of this capability.

> That means that we'll need the counter emulation code that you had in
> previous versions of this patch (e.g. to handle potential UNDEFs when a
> new CPU has fewer counters than the previously online CPUs).
> 
> Further, I think the context switch (and event index) code needs to take
> this cap into account, and disable direct access once the system becomes
> heterogeneous.

That is a good point indeed.

Thanks,

-- 
Raphael Gault

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
