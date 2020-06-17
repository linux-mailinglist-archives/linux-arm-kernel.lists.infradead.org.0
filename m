Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D377C1FCCA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sc/XyvcG0P3vQd8DIHHy1gmCsxvFDfi+3w88hu7ipKM=; b=st6CmGolSbSd2F
	yhpbOutURqK/7a/rWhdFbSMQAS5Xsxfhj6ha2ORtZ0ZBLKhNLm/7bdTl7dmpL9C8CiYxRgP51dvCH
	nIZMHe+3JRGavIZjpMAo6CvoG37FUhwUp6GWF0Fbh3Tktd0GAlyJy3jcqHGyvHr2EXkZKvRUH0LMH
	gAUZwwl7zWzMClSKXrgO/Z9spTHojsZDu9d2k/qXEIOpbEH4iG1rwpo6kB+y5xHZ/y3Ehdk62w254
	K4bSuSxWA/o0xYiVhj9eeuScwHH3/kyNXOxvFtC0ia4br3d44PeWQKJToh7Jhtupia10nU0pbocBE
	u3IsQCsIYEXtQya7zeuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWR0-000583-KN; Wed, 17 Jun 2020 11:40:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWOa-0001UT-Hm
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:38:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 438A91042;
 Wed, 17 Jun 2020 04:38:18 -0700 (PDT)
Received: from monolith.arm.com (unknown [10.37.8.7])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0CD143F71F;
 Wed, 17 Jun 2020 04:38:16 -0700 (PDT)
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/7] arm_pmu: Use NMI for perf interrupt
Date: Wed, 17 Jun 2020 12:38:44 +0100
Message-Id: <20200617113851.607706-1-alexandru.elisei@arm.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_043820_784546_3A37778E 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, maz@kernel.org, will@kernel.org,
 catalin.marinas@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The series makes the arm_pmu driver use NMIs for the perf interrupt when
NMIs are available on the platform (currently, only arm64 + GICv3). To make
it easier to play with the patches, I've pushed a branch at [1]:

$ git clone -b pmu-nmi-v5 git://linux-arm.org/linux-ae

I've tested the series on an espressobin v7*. These are the results of
running perf record -a -- sleep 60:

1. Without the patches:

    12.68%  [k] _raw_spin_unlock_irq
    11.08%  [k] arch_cpu_idle
     7.86%  [k] _raw_spin_unlock_irqrestore
     6.05%  [k] arch_counter_get_cntpct
     2.86%  [k] __softirqentry_text_start
     2.33%  [k] tick_nohz_idle_exit
     [..]

2. Using NMIs:

    19.45%  [k] arch_counter_get_cntpct
     5.14%  [k] __delay
     3.32%  [k] wait_for_xmitr
     1.99%  [k] ktime_get
     1.00%  [k] _raw_write_lock_irqsave
     1.00%  [.] avahi_escape_label
     [..]

When running perf record -a -- iperf3 -c 127.0.0.1 -t 60:

1. Without the patches:

    24.70%  [k] __arch_copy_from_user
    21.77%  [k] __arch_copy_to_user
     5.21%  [k] _raw_spin_unlock_irq
     2.86%  [k] _raw_spin_unlock_irqrestore
     1.99%  [k] __free_pages_ok
     1.61%  [k] arch_cpu_idle
     [..]

2. Using NMIs:

    23.84%  [k] __arch_copy_from_user
    23.44%  [k] __arch_copy_to_user
     1.23%  [k] get_page_from_freelist
     1.16%  [k] tcp_ack
     0.80%  [k] __free_pages_ok
     0.78%  [k] tcp_sendmsg_locked
     [..]

I've ran the same tests in a VM when both host+guest use NMIs, and when
neither use them. All of these tests were also ran on the model.  Similar
results in all cases.

* All the firmware versions for espressobin v7 that I've tried clear
SCR_EL3.FIQ, which means that NMIs don't work. To make them work on the
board, I modified the GICv3 driver. That's why I would really appreciate
someone testing this series on a board where NMIs work without any GIC
changes.

Summary of the patches:
* Patch 1 is a fix for a bug that Julien found during the review for v4.
* Patches 2 and 3 remove locking from arm64 perf event code.
* Patches 4 and 5 makes the arm64 PMU interrupt handler NMI safe.
* Patches 6 and 7 enable the use of NMIs on arm64 with a GICv3 irqchip.

Changes since v4 [2]:
- Rebased on top of v5.8-rc1 and dropped the Tested-by tags because it's
  been almost a year since the series has been tested.
- Dropped patch 3 because I couldn't find any instance where
  armv7pmu_read_counter() was called with interrupts enabled. I've also
  tested this by running several instances of perf for a few hours, and the
  function was called every time with interrupts disabled.
- Dropped patches 4 and 5 because the tradeoff wasn't worth it in my
  opinion: the irq handler was slower all the time (because it
  saved/restored the counter select register), in exchange for being
  slightly faster on the rare ocassions when it triggered at the beginning
  of the critical sections.
- Minor changes here and there to address review comments.

Changes since v3 [3]:
- Added tags
- Fix build issue for perf_event_v6
- Don't disable preemption in pmu->enable()
- Always rely on IPI_IRQ_WORK to run the queued work
- Fixed typos + cleanups

Changes since v2 [4]:
- Rebased on recent linux-next (next-20190708)
- Fixed a number of bugs with indices (reported by Wei)
- Minor style fixes

Changes since v1 [5]:
- Rebased on v5.1-rc1
- Pseudo-NMI has changed a lot since then, use the (now merged) NMI API
- Remove locking from armv7 perf_event
- Use locking only in armv6 perf_event
- Use direct counter/type registers insted of selector register for armv8

[1] http://www.linux-arm.org/git?p=linux-ae.git;a=shortlog;h=refs/heads/pmu-nmi-v5
[2] https://lists.infradead.org/pipermail/linux-arm-kernel/2019-July/666824.html
[3] https://lists.infradead.org/pipermail/linux-arm-kernel/2019-July/665339.html
[4] https://lists.infradead.org/pipermail/linux-arm-kernel/2019-March/640536.html
[5] https://lists.infradead.org/pipermail/linux-arm-kernel/2018-January/554611.html

Alexandru Elisei (1):
  arm64: perf: Add missing ISB in armv8pmu_enable_event()

Julien Thierry (5):
  arm64: perf: Remove PMU locking
  arm64: perf: Defer irq_work to IPI_IRQ_WORK
  arm64: kvm: pmu: Make overflow handler NMI safe
  arm_pmu: Introduce pmu_irq_ops
  arm_pmu: arm64: Use NMIs for PMU

Mark Rutland (1):
  arm64: perf: Avoid PMXEV* indirection

 arch/arm64/kernel/perf_event.c | 138 ++++++++++++++++++++------------
 arch/arm64/kvm/pmu-emul.c      |  25 +++++-
 drivers/perf/arm_pmu.c         | 142 ++++++++++++++++++++++++++++-----
 include/kvm/arm_pmu.h          |   1 +
 4 files changed, 235 insertions(+), 71 deletions(-)

-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
