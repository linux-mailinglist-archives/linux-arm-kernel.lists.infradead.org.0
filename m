Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA8E6B801
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BfmBiU5tqw7wO9RYfGPaup4fYwbRIJNcUL1Ck3Zqqi0=; b=YCu
	e2Szpxlu+MAg9Oq/Egvh2uzwXZpoCFjyCx9d9i0X381BVqnQ82seSyRsBWn4hMpGZ+KkLRjdCLa3+
	4qZwE06YHYGOpIyLdO/9UxMwDRgyn8jJIyhC9XWr6qAJJVyivz2VFlFrYG2BSIVKotqoRIQY9JFtV
	6ylfyLGAMvBxr0lmw6eZjDtuM1IQE5kC5yD+m9Ho5SnV7OFsbsV2jPNsKAm8hO1A9xJ7rj4zloUD1
	5Atj31UDxYeJY819qaf5B2u3qhCr8MTlzdJ2jR6cphOhCGQyZITQizLcRVHyr4i3j5iFpd9Phn3zU
	Sn7fONWJQekiMTEIQafwB/BKCAQ0txw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnf8B-0003DQ-4y; Wed, 17 Jul 2019 08:17:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnf7p-00039A-58
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:17:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7C6902B;
 Wed, 17 Jul 2019 01:17:18 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 07D433F71A;
 Wed, 17 Jul 2019 01:19:16 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/9] arm_pmu: Use NMI for perf interrupt
Date: Wed, 17 Jul 2019 09:17:03 +0100
Message-Id: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_011721_237091_C2D62F58 
X-CRM114-Status: GOOD (  12.47  )
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 peterz@infradead.org, jolsa@redhat.com, will.deacon@arm.com, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 sthotton@marvell.com, liwei391@huawei.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

After fixing the arm64 Pseudo-NMIs, I'm dusting off this series.

The series makes the arm_pmu driver use NMIs for the perf interrupt when
NMIs are available on the platform (currently, only arm64 + GICv3).

* Patches 1 to 4 remove the need to use spinlocks for the Arm PMU
  driver for Armv7 and Armv8 (aarch64).
* Patches 5 moves the locking to Armv6 specific code which is the sole
  user
* Patches 6 and 7 make the PMU interrupt handler NMI-safe
* Patches 8 and 9 enable using pseudo-NMI for the PMU interrupt when
  the feature is available

Changes since v3[3]:
- Added tags
- Fix build issue for perf_event_v6
- Don't disable preemption in pmu->enable()
- Always rely on IPI_IRQ_WORK to run the queued work
- Fixed typos + cleanups

Changes since v2[2]:
- Rebased on recent linux-next (next-20190708)
- Fixed a number of bugs with indices (reported by Wei)
- Minor style fixes

Changes since v1[3]:
- Rebased on v5.1-rc1
- Pseudo-NMI has changed a lot since then, use the (now merged) NMI API
- Remove locking from armv7 perf_event
- Use locking only in armv6 perf_event
- Use direct counter/type registers insted of selector register for armv8

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2019-March/640536.html
[2] http://lists.infradead.org/pipermail/linux-arm-kernel/2018-January/554611.html

Cheers,

Julien

-->

Julien Thierry (8):
  arm64: perf: Remove PMU locking
  arm: perf: save/resore pmsel
  arm: perf: Remove Remove PMU locking
  perf/arm_pmu: Move PMU lock to ARMv6 events
  arm64: perf: Do not call irq_work_run in NMI context
  arm/arm64: kvm: pmu: Make overflow handler NMI safe
  arm_pmu: Introduce pmu_irq_ops
  arm_pmu: Use NMIs for PMU

Mark Rutland (1):
  arm64: perf: avoid PMXEV* indirection

 arch/arm/kernel/perf_event_v6.c |  43 +++++++-----
 arch/arm/kernel/perf_event_v7.c |  79 +++++++---------------
 arch/arm64/kernel/perf_event.c  | 136 ++++++++++++++++++++++++--------------
 drivers/perf/arm_pmu.c          | 143 ++++++++++++++++++++++++++++++++++------
 include/kvm/arm_pmu.h           |   1 +
 include/linux/perf/arm_pmu.h    |   5 --
 virt/kvm/arm/pmu.c              |  25 ++++++-
 7 files changed, 284 insertions(+), 148 deletions(-)

--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
