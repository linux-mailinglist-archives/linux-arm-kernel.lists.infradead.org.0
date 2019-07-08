Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6018662085
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=q1F9LVoPZO0mCsYBkC3WqIlkzErRHKVoXbCDe/nmqgE=; b=fwM
	+QzCet8jJ2SrhRsjpKdQccGnw9L5a1kQ6acOlV6oXGcifLQ6XH/GOCIOSgO4vH6coFLXbwS0zRRQ0
	SG6pLFPu9hsbEHW2V30EdaaM4PIUIeinbL5vo6+XczfsvwYDoSSLtteUT7k8IPdnPHcjj0YTemJ6h
	PcHQY1IhWmxtEOmrXGX6cOG1RbGHRweHgo2smAildE/GE97Fj+NWFjLFO9SEGEhcupU+wkATW0UOW
	0ibmakmziQqSUrqDzJ7Y7CzubSTSKYV6wxXslvZr7xU2iXTMAJNXuKEAUSa0UUompsuslYhLuqqLg
	TV7aYH9zVLrzkMBfVnigA3EJq8GxC3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUhk-000130-UJ; Mon, 08 Jul 2019 14:33:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUhX-000125-3E
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:33:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 624652B;
 Mon,  8 Jul 2019 07:33:06 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E630F3F59C;
 Mon,  8 Jul 2019 07:33:04 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/9] arm_pmu: Use NMI for perf interrupt
Date: Mon,  8 Jul 2019 15:32:48 +0100
Message-Id: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_073307_179593_04466B11 
X-CRM114-Status: GOOD (  13.14  )
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 peterz@infradead.org, liwei391@huawei.com, will.deacon@arm.com,
 acme@kernel.org, alexander.shishkin@linux.intel.com, mingo@redhat.com,
 namhyung@kernel.org, jolsa@redhat.com
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

Changes since v2[1]:
- Rebased on recent linux-next (next-20190708)
- Fixed a number of bugs with indices (reported by Wei)
- Minor style fixes

Changes since v1[2]:
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

 arch/arm/kernel/perf_event_v6.c |  26 +++++---
 arch/arm/kernel/perf_event_v7.c |  77 +++++++---------------
 arch/arm64/kernel/perf_event.c  | 131 ++++++++++++++++++++++++------------
 drivers/perf/arm_pmu.c          | 143 ++++++++++++++++++++++++++++++++++------
 include/kvm/arm_pmu.h           |   1 +
 include/linux/perf/arm_pmu.h    |   5 --
 virt/kvm/arm/pmu.c              |  25 ++++++-
 7 files changed, 277 insertions(+), 131 deletions(-)

--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
