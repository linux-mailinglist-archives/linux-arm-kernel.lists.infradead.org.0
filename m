Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C4C25489
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=849UfLgrTsI1IjGB4+kcUPL/FNwMmBYO4rS5x49RUFI=; b=XA0vazwktwEFxU
	mmf3VDsWRgAShfe9o0x8nYsNcEmpNz6WCU3So53thDAgPd9GG5Sbx9ihhCLpdfexynF3FnrS5qgVt
	UFJtzosUnaIRX8MB7OYgV55BLVqJjX14JEa1rQXE0Mks2tzQayQRlfAbE/5cXE+YjBVWn0RLd02Yv
	5Ls1J/HWJu6vMBpZY3+EgX015AZfcFCngsN+UOWxaZJZw2s0SEOw0yBa94+mx9O3hHlrXo7/nq//l
	L3SIOnIskQQJiKIERO0S1aD9hLJuxjnk1/ufgGz3APw6Syq+FOIdLQNgsXU+ty2Xep3T+8QbU7fjT
	QEbKrUphbzAzyaifhQ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT74i-0003a4-F2; Tue, 21 May 2019 15:53:12 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT74a-0003ZW-RX
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:53:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 85DDB374;
 Tue, 21 May 2019 08:53:04 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E63613F575;
 Tue, 21 May 2019 08:53:02 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Christoffer Dall <christoffer.dall@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v7 0/5] KVM: arm/arm64: add support for chained counters
Date: Tue, 21 May 2019 16:52:23 +0100
Message-Id: <20190521155228.903-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_085304_902724_A1EFA3CB 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, Julien Thierry <julien.thierry@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARMv8 provides support for chained PMU counters, where an event type
of 0x001E is set for odd-numbered counters, the event counter will
increment by one for each overflow of the preceding even-numbered
counter. Let's emulate this in KVM by creating a 64 bit perf counter
when a user chains two emulated counters together.

Testing has been performed by hard-coding hwc->sample_period in
__hw_perf_event_init (arm_pmu.c) to a small value, this results in
regular overflows (for non sampling events). The following command
was then used to measure chained and non-chained instruction cycles:

perf stat -e armv8_pmuv3/long=1,inst_retired/u \
          -e armv8_pmuv3/long=0,inst_retired/u dd if=/dev/zero bs=1M \
          count=10 | gzip > /dev/null

The reported values were identical (and for non-chained was in the
same ballpark when running on a kernel without this patchset). Debug
was added to verify that the guest received overflow interrupts for
the chain counter.

For chained events we only support generating an overflow interrupt
on the high counter. We use the attributes of the low counter to
determine the attributes of the perf event.

Changes since v6:

 - Drop kvm_pmu_{get,set}_perf_event

 - Avoid duplicate work by using kvm_pmu_get_pair_counter_value inside
   kvm_pmu_stop_counter

 - Use GENMASK for 64bit mask

Changes since v5:

 - Use kvm_pmu_pmc_is_high_counter instead of open coding

 - Rename kvm_pmu_event_is_chained to kvm_pmu_idx_has_chain_evtype

 - Use kvm_pmu_get_canonical_pmc only where needed and reintroduce
   the kvm_pmu_{set, get}_perf_event functions

 - Drop masking of counter in kvm_pmu_get_pair_counter_value

 - Only initialise pmc once in kvm_pmu_create_perf_event and other
   minor changes.

Changes since v4:

 - Track pairs of chained counters with a bitmap instead of using
   a struct kvm_pmc_pair.

 - Rebase onto kvmarm/queue

Changes since v3:

 - Simplify approach by not creating events lazily and by introducing
   a struct kvm_pmc_pair to represent the relationship between
   adjacent counters.

 - Rebase onto v5.1-rc2

Changes since v2:

 - Rebased onto v5.0-rc7

 - Add check for cycle counter in correct patch

 - Minor style, naming and comment changes

 - Extract armv8pmu_evtype_is_chain from arch/arm64/kernel/perf_event.c
   into a common header that KVM can use

Changes since v1:

 - Rename kvm_pmu_{enable,disable}_counter to reflect that they can
   operate on multiple counters at once and use these functions where
   possible

 - Fix bugs with overflow handing, kvm_pmu_get_counter_value did not
   take into consideration the perf counter value overflowing the low
   counter

 - Ensure PMCCFILTR_EL0 is used when operating on the cycle counter

 - Rename kvm_pmu_reenable_enabled_{pair, single} and similar

 - Always create perf event disabled to simplify logic elsewhere

 - Move PMCNTENSET_EL0 test to kvm_pmu_enable_counter_mask


Andrew Murray (5):
  KVM: arm/arm64: rename kvm_pmu_{enable/disable}_counter functions
  KVM: arm/arm64: extract duplicated code to own function
  KVM: arm/arm64: re-create event when setting counter value
  arm64: perf: extract chain helper into header
  KVM: arm/arm64: support chained PMU counters

 arch/arm64/include/asm/perf_event.h |   5 +
 arch/arm64/kernel/perf_event.c      |   2 +-
 arch/arm64/kvm/sys_regs.c           |   4 +-
 include/kvm/arm_pmu.h               |  10 +-
 virt/kvm/arm/pmu.c                  | 322 +++++++++++++++++++++++-----
 5 files changed, 279 insertions(+), 64 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
