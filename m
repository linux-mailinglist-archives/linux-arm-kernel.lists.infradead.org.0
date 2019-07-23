Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C04A071AC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 16:50:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C2oFksToYGJ7n6q7bffrDlJ0tkpBqzfSU/0XN0u0ANs=; b=GWBrfuZFYAuTXbDQplY8NOnvu
	1XAlUxo52lfPvtb5ovPacysWY6lk4wjUvTDRWDuEaaRzViQCBx5o9F+AP1Q46z85iyYxYkhcUWfCc
	lwmfGesrp88j+dPMuwopyyaLqYH4ynvukh01GD76wdFLQsjqRYUgOeqwYakBiOJK6qmF+UuJRVPmd
	KQdFjLtlV6lXm48VFrCVNYVyq/4zOTfWIryzKY0nDsa+2/bt/jNXup5sn/2z3OVpC8NAriyoaykg8
	ldIOp/7mEWjk/+lCQZsRBDyaODadsbmKgO7Wdz2HuFFLvgcc5q01aTU66JgiwOEpNq1nmT2pWh+HW
	eA0kRVgqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpw7M-0002Te-By; Tue, 23 Jul 2019 14:50:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpw71-0002Sx-PT
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 14:49:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 988FA28;
 Tue, 23 Jul 2019 07:49:53 -0700 (PDT)
Received: from [10.1.196.120] (e121650-lin.cambridge.arm.com [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 94EA43F71F;
 Tue, 23 Jul 2019 07:49:52 -0700 (PDT)
Subject: Re: [PATCH v2 0/5] arm64: Enable access to pmu registers by user-space
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190705085541.9356-1-raphael.gault@arm.com>
From: Raphael Gault <raphael.gault@arm.com>
Message-ID: <647555e3-9855-815a-2e13-48b3c3977320@arm.com>
Date: Tue, 23 Jul 2019 15:49:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190705085541.9356-1-raphael.gault@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_074955_924239_85BB7869 
X-CRM114-Status: GOOD (  21.91  )
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, acme@kernel.org, mingo@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Any further comments on this patchset ?

Cheers,

On 7/5/19 9:55 AM, Raphael Gault wrote:
> The perf user-space tool relies on the PMU to monitor events. It offers an
> abstraction layer over the hardware counters since the underlying
> implementation is cpu-dependent. We want to allow userspace tools to have
> access to the registers storing the hardware counters' values directly.
> This targets specifically self-monitoring tasks in order to reduce the
> overhead by directly accessing the registers without having to go
> through the kernel.
> In order to do this we need to setup the pmu so that it exposes its registers
> to userspace access.
> 
> The first patch add a test to the perf tool so that we can test that the
> access to the registers works correctly from userspace.
> 
> The second patch add a capability in the arm64 cpufeatures framework in
> order to detect when we are running on a heterogeneous system.
> 
> The third patch focuses on the armv8 pmuv3 PMU support and makes sure that
> the access to the pmu registers is enable and that the userspace have
> access to the relevent information in order to use them.
> 
> The fourth patch put in place callbacks to enable access to the hardware
> counters from userspace when a compatible event is opened using the perf
> API.
> 
> The fifth patch adds a short documentation about PMU counters direct
> access from userspace.
> 
> **Changes since v1**
> 
> * Rebased on linux-next/master
> * Do not include RSEQs materials (test and utilities) since we want to
>    enable direct access to counters only on homogeneous systems.
> * Do not include the hook defitinions for the same reason as above.
> * Add a cpu feature/capability to detect heterogeneous systems.
> 
> Raphael Gault (5):
>    perf: arm64: Add test to check userspace access to hardware counters.
>    arm64: cpufeature: Add feature to detect heterogeneous systems
>    arm64: pmu: Add function implementation to update event index in
>      userpage.
>    arm64: perf: Enable pmu counter direct access for perf event on armv8
>    Documentation: arm64: Document PMU counters access from userspace
> 
>   .../arm64/pmu_counter_user_access.txt         |  42 +++
>   arch/arm64/include/asm/cpucaps.h              |   3 +-
>   arch/arm64/include/asm/mmu.h                  |   6 +
>   arch/arm64/include/asm/mmu_context.h          |   2 +
>   arch/arm64/include/asm/perf_event.h           |  14 +
>   arch/arm64/kernel/cpufeature.c                |  20 ++
>   arch/arm64/kernel/perf_event.c                |  23 ++
>   drivers/perf/arm_pmu.c                        |  38 +++
>   include/linux/perf/arm_pmu.h                  |   2 +
>   tools/perf/arch/arm64/include/arch-tests.h    |   6 +
>   tools/perf/arch/arm64/tests/Build             |   1 +
>   tools/perf/arch/arm64/tests/arch-tests.c      |   4 +
>   tools/perf/arch/arm64/tests/user-events.c     | 255 ++++++++++++++++++
>   13 files changed, 415 insertions(+), 1 deletion(-)
>   create mode 100644 Documentation/arm64/pmu_counter_user_access.txt
>   create mode 100644 tools/perf/arch/arm64/tests/user-events.c
> 

-- 
Raphael Gault

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
