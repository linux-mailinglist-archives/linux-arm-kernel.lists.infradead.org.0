Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4EC3CC48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AIZfp+QQcVv2lusp1M6G9rhpdO/DmsSs57JTpcnSqCk=; b=P6R
	+8wQoya2G55tgY2Flb32M7vxj6pRkb2MFT8Q0kNYr3cZhvCxmmHm0/RtsJvdSOFg8Ge0bTV1F38ov
	zH6KlmrDY1IK1qzdOnUoBQ3b7rt/M4wjluOLsPd5d2rq1UvTUTHUrKzGRpvnRQfhuDtPvRwCpK74G
	koqi3COgw8i4xXN6lW05Y46IdIBdXBTj3ltume9v0n/OG/zWJ3yC8mF8LlLpUH9ZZhct/kuce7q+Q
	5QGXTydHhQHKNE0mlw6LDco0CHMGdh5LeTt5f45zsnS5e6IdfnWaAL9o5agTAsfNJPiNd/SnHkOq9
	igK2/u7cuat+GN6jXzjaGMBup6AWBbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hagHd-000296-Bs; Tue, 11 Jun 2019 12:53:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hagHN-00027V-1G
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:53:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3927D346;
 Tue, 11 Jun 2019 05:53:31 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (unknown [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F38F53F557;
 Tue, 11 Jun 2019 05:53:29 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/7] arm64: Enable access to pmu registers by user-space
Date: Tue, 11 Jun 2019 13:53:08 +0100
Message-Id: <20190611125315.18736-1-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_055333_119950_24E4F0DA 
X-CRM114-Status: GOOD (  12.66  )
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
 arch/arm64/kernel/perf_event.c                |  76 ++++++
 drivers/perf/arm_pmu.c                        |  38 +++
 include/linux/perf/arm_pmu.h                  |   2 +
 tools/perf/arch/arm64/Build                   |   2 +-
 tools/perf/arch/arm64/include/arch-tests.h    |   9 +
 tools/perf/arch/arm64/include/rseq-arm64.h    | 220 +++++++++++++++
 tools/perf/arch/arm64/tests/Build             |   4 +-
 tools/perf/arch/arm64/tests/arch-tests.c      |  10 +
 tools/perf/arch/arm64/tests/rseq-pmu-events.c | 219 +++++++++++++++
 tools/perf/arch/arm64/tests/user-events.c     | 255 ++++++++++++++++++
 15 files changed, 899 insertions(+), 4 deletions(-)
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
