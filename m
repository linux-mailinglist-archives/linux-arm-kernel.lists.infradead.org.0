Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 690AD2C970
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 17:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OhDrYCTVCy+AhRxoQFnrebE8ImbHmdBp32YBy0hotEU=; b=ty8
	Na6SM+AoufjcfCp8TM6Zu7ujyM77GWUdyjEcO45GSWOPrLgToIjd2BJU/wWsShBsOad7c6c4YZw5p
	cH7H3mj9/C4LgxrZbpY8hl8cqZEa0nAzMkjHWeNrfNoelbXnJ/pJdFUorFK567JVOUNWkP9Ht6l/f
	p78ZVoIYxPnuvMxH5cBBStQDR2tM9NfTLEYZZZwtkjFiD1zzIUMnMeLq6uP4RCYTScYCISI0S9PMC
	R42u40pj7ECp34EU3OXWCrC8SGv0wgICL3fuY7NSLscYcyE54bD/bUGRfFCv2ijH4r9XaMb36RDiV
	lgTzo50ORVMALn2QWmMSZ7+ExMQqAWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVde4-0004lz-1C; Tue, 28 May 2019 15:04:08 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVddl-0004dY-Kh
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 15:03:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0997880D;
 Tue, 28 May 2019 08:03:44 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.108])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5631F3F5AF;
 Tue, 28 May 2019 08:03:42 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC V2 0/7] arm64: Enable access to pmu registers by user-space
Date: Tue, 28 May 2019 16:03:13 +0100
Message-Id: <20190528150320.25953-1-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_080349_687104_3016844D 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, acme@kernel.org, Raphael Gault <raphael.gault@arm.com>,
 mingo@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The perf user-space tool relies on the PMU to monitor events. It offers an
abstraction layer over the hardware counters since the underlying
implementation is cpu-dependent. We want to allow userspace tools to have
access to the registers storing the hardware counters' values directly.
This targets specifically self-monitoring tasks in order to reduce the
overhead by directly accessing the registers without having to go
through the kernel.
In order to do this we need to setup the pmu so that it exposes its registers
to userspace access.

The first patch enables the tests for arm64 architecture in the perf
tool to be compiled systematically.

The second patch add a test to the perf tool so that we can test that the
access to the registers works correctly from userspace.

The third patch adds another test similar to the first one but this time
using rseq as mechanism to make sure of the data correctness.

The fourth patch focuses on the armv8 pmuv3 PMU support and makes sure that
the access to the pmu registers is enable and that the userspace have
access to the relevent information in order to use them.

The fifth patch adds a hook to handle faulting access to the pmu
registers. This is necessary in order to have a coherent behaviour
on big.LITTLE environment.

The sixth patch put in place callbacks to enable access to the hardware
counters from userspace when a compatible event is opened using the perf
API.

RFC: In my opinion there is no need to save pmselr_el0 when context
switching like we do for pmuserenr_el0 since whether it's the seqlock
mechanism or the restartable sequences, the user should notice right
away that the value held in pmxevcntr_el0 is incorrect when the task has
been rescheduled. However, I still wanted to discuss this point on the
list to see if that's indeed not necessary to save it.

Changes since V1: Add a test using rseq

Raphael Gault (7):
  perf: arm64: Compile tests unconditionally
  perf: arm64: Add test to check userspace access to hardware counters.
  perf: arm64: Use rseq to test userspace access to pmu counters
  arm64: pmu: Add function implementation to update event index in
    userpage.
  arm64: pmu: Add hook to handle pmu-related undefined instructions
  arm64: perf: Enable pmu counter direct access for perf event on armv8
  Documentation: arm64: Document PMU counters access from userspace

 .../arm64/pmu_counter_user_access.txt         |  42 +++
 arch/arm64/include/asm/mmu.h                  |   6 +
 arch/arm64/include/asm/mmu_context.h          |   2 +
 arch/arm64/include/asm/perf_event.h           |  14 +
 arch/arm64/kernel/cpufeature.c                |   4 +-
 arch/arm64/kernel/perf_event.c                |  62 +++++
 drivers/perf/arm_pmu.c                        |  38 +++
 include/linux/perf/arm_pmu.h                  |   2 +
 tools/perf/arch/arm64/Build                   |   2 +-
 tools/perf/arch/arm64/include/arch-tests.h    |   9 +
 tools/perf/arch/arm64/include/rseq-arm64.h    | 220 +++++++++++++++
 tools/perf/arch/arm64/tests/Build             |   4 +-
 tools/perf/arch/arm64/tests/arch-tests.c      |  10 +
 tools/perf/arch/arm64/tests/rseq-pmu-events.c | 219 +++++++++++++++
 tools/perf/arch/arm64/tests/user-events.c     | 255 ++++++++++++++++++
 15 files changed, 885 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/arm64/pmu_counter_user_access.txt
 create mode 100644 tools/perf/arch/arm64/include/rseq-arm64.h
 create mode 100644 tools/perf/arch/arm64/tests/rseq-pmu-events.c
 create mode 100644 tools/perf/arch/arm64/tests/user-events.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
