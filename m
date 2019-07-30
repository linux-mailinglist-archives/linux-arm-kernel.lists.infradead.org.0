Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA7B7A3A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/DAy5wIrlKEnHtLxg94G8x45X9n9TIFtjUq+PdNJo4=; b=IKLRQx+FWeAvyR
	algB896LumF01msRZlizgkVxrx/j25ymVsb4xS9/eILLMkQ5acH3IHp3fKfkkhneHHrYso+bmsMw6
	NKfJqn4Kk+6Vq2CNGFJXIIcSXIluyxrMejC94vWBl6WST8kTsQeXv1IMdAIY1BqLKgaLLfGbCWewg
	5FOL4TitUXGZgMqWXLT8JrEsGfkfNXuNS312preFfqlW9YCNFuLrwNnphirRZrUBD0kdySmmIBKi+
	d15u2u9sJJgo4Bc9KXBaDpjuWEtWxoX9q4Do0jKD1mrKRaF1NcwaTEWyJuGOCEz2x285A2QffRF0X
	PozmmoX9ay5OF16ySrhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsO5F-00015c-B1; Tue, 30 Jul 2019 09:06:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsO4v-00014h-59
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:05:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 50294344;
 Tue, 30 Jul 2019 02:05:50 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D18D43F71F;
 Tue, 30 Jul 2019 02:05:48 -0700 (PDT)
Subject: Re: [PATCH v4 0/9] arm_pmu: Use NMI for perf interrupt
To: linux-arm-kernel@lists.infradead.org
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <d08ab28d-7375-7472-cb58-36304c249e67@arm.com>
Date: Tue, 30 Jul 2019 10:05:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_020553_236685_8A9279EA 
X-CRM114-Status: GOOD (  21.87  )
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
Cc: mark.rutland@arm.com, peterz@infradead.org, jolsa@redhat.com,
 will.deacon@arm.com, acme@kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, sthotton@marvell.com,
 liwei391@huawei.com, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Just a gentle ping on this series.

Cheers,

Julien

On 17/07/2019 09:17, Julien Thierry wrote:
> Hi,
> 
> After fixing the arm64 Pseudo-NMIs, I'm dusting off this series.
> 
> The series makes the arm_pmu driver use NMIs for the perf interrupt when
> NMIs are available on the platform (currently, only arm64 + GICv3).
> 
> * Patches 1 to 4 remove the need to use spinlocks for the Arm PMU
>   driver for Armv7 and Armv8 (aarch64).
> * Patches 5 moves the locking to Armv6 specific code which is the sole
>   user
> * Patches 6 and 7 make the PMU interrupt handler NMI-safe
> * Patches 8 and 9 enable using pseudo-NMI for the PMU interrupt when
>   the feature is available
> 
> Changes since v3[3]:
> - Added tags
> - Fix build issue for perf_event_v6
> - Don't disable preemption in pmu->enable()
> - Always rely on IPI_IRQ_WORK to run the queued work
> - Fixed typos + cleanups
> 
> Changes since v2[2]:
> - Rebased on recent linux-next (next-20190708)
> - Fixed a number of bugs with indices (reported by Wei)
> - Minor style fixes
> 
> Changes since v1[3]:
> - Rebased on v5.1-rc1
> - Pseudo-NMI has changed a lot since then, use the (now merged) NMI API
> - Remove locking from armv7 perf_event
> - Use locking only in armv6 perf_event
> - Use direct counter/type registers insted of selector register for armv8
> 
> [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2019-March/640536.html
> [2] http://lists.infradead.org/pipermail/linux-arm-kernel/2018-January/554611.html
> 
> Cheers,
> 
> Julien
> 
> -->
> 
> Julien Thierry (8):
>   arm64: perf: Remove PMU locking
>   arm: perf: save/resore pmsel
>   arm: perf: Remove Remove PMU locking
>   perf/arm_pmu: Move PMU lock to ARMv6 events
>   arm64: perf: Do not call irq_work_run in NMI context
>   arm/arm64: kvm: pmu: Make overflow handler NMI safe
>   arm_pmu: Introduce pmu_irq_ops
>   arm_pmu: Use NMIs for PMU
> 
> Mark Rutland (1):
>   arm64: perf: avoid PMXEV* indirection
> 
>  arch/arm/kernel/perf_event_v6.c |  43 +++++++-----
>  arch/arm/kernel/perf_event_v7.c |  79 +++++++---------------
>  arch/arm64/kernel/perf_event.c  | 136 ++++++++++++++++++++++++--------------
>  drivers/perf/arm_pmu.c          | 143 ++++++++++++++++++++++++++++++++++------
>  include/kvm/arm_pmu.h           |   1 +
>  include/linux/perf/arm_pmu.h    |   5 --
>  virt/kvm/arm/pmu.c              |  25 ++++++-
>  7 files changed, 284 insertions(+), 148 deletions(-)
> 
> --
> 1.9.1
> 

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
