Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB4699718
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0TikkkwfY2/zS3FgblLutMq/TCgLpDgySz+1vEQpGYg=; b=Xez
	G0dwkn4gvMj4aCa2DMAgTAmHFAJQHYIjj//GlMVenyU46l6YLdaoKAXRj44MF/uKi6xY7sf/UfLJu
	Qan3t9U77Fdh5+mXSrU9dAhY/SuJhU+oDszQ3YNi5Gxaen/uFh/4S0HAjES/orluDcTJ++7rfVFuJ
	+mgz4gyeb2r7IOdVHcpt9nJbea9bp8bnbQHzmTxphb2CFiBe4lMC3iEFiTzFDAg+dLeNHLSsD+Xlc
	ZnEH/mK735bxqmdEp2tB4YkTk0CMEFzUAMKHVwnM9pKJkY0p+xAfl5esQAe6JcYga6wP2+oJtAAPw
	B32uhBhcbSUxFVt1vfscq2LBXNYuzCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oIa-0004Pb-Sw; Thu, 22 Aug 2019 14:42:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oIL-0004I9-QH
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:42:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E82C8337;
 Thu, 22 Aug 2019 07:42:30 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 917F13F706;
 Thu, 22 Aug 2019 07:42:29 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/7] arm64: Enable access to pmu registers by user-space
Date: Thu, 22 Aug 2019 15:42:13 +0100
Message-Id: <20190822144220.27860-1-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_074233_940478_7C6AD50E 
X-CRM114-Status: GOOD (  13.36  )
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
Cc: mark.rutland@arm.com, raph.gault+kdev@gmail.com, peterz@infradead.org,
 catalin.marinas@arm.com, will.deacon@arm.com, acme@kernel.org,
 Raphael Gault <raphael.gault@arm.com>, mingo@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Changes since v3:
* Rebased on will/for-next/perf in order to include this patch [1]
* Re-introduce `mrs` hook used in previous versions
* Invert cpu feature to track homogeneity instead of heterogeneity
* Introduce accessor for boot_cpu_data (see second commit for more info)
* Apply Mark Rutland's comments


The perf user-space tool relies on the PMU to monitor events. It offers an
abstraction layer over the hardware counters since the underlying
implementation is cpu-dependent. We want to allow userspace tools to have
access to the registers storing the hardware counters' values directly.
This targets specifically self-monitoring tasks in order to reduce the
overhead by directly accessing the registers without having to go
through the kernel.
In order to do this we need to setup the pmu so that it exposes its registers
to userspace access.

The first patch add a test to the perf tool so that we can test that the
access to the registers works correctly from userspace.

The second patch introduces an accessor for `boot_cpu_data` which is
static. Including cpu.h turned out to cause a chain of dependencies so I
opted for the accessor since it is not much used.

The third patch add a capability in the arm64 cpufeatures framework in
order to detect when we are running on a homogeneous system.

The fourth patch re introduces the hooks to handling undefined
instruction for `mrs` instructions on pmu-related registers.

The fifth patch focuses on the armv8 pmuv3 PMU support and makes sure that
the access to the pmu registers is enable and that the userspace have
access to the relevent information in order to use them.

The sixth patch put in place callbacks to enable access to the hardware
counters from userspace when a compatible event is opened using the perf
API.

The seventh patch adds a short documentation about PMU counters direct
access from userspace.

[1]: https://lkml.org/lkml/2019/8/20/875

Raphael Gault (7):
  perf: arm64: Add test to check userspace access to hardware counters.
  arm64: cpu: Add accessor for boot_cpu_data
  arm64: cpufeature: Add feature to detect homogeneous systems
  arm64: pmu: Add hook to handle pmu-related undefined instructions
  arm64: pmu: Add function implementation to update event index in
    userpage.
  arm64: perf: Enable pmu counter direct access for perf event on armv8
  Documentation: arm64: Document PMU counters access from userspace

 .../arm64/pmu_counter_user_access.txt         |  42 +++
 arch/arm64/include/asm/cpu.h                  |   2 +-
 arch/arm64/include/asm/cpucaps.h              |   3 +-
 arch/arm64/include/asm/cpufeature.h           |  10 +
 arch/arm64/include/asm/mmu.h                  |   6 +
 arch/arm64/include/asm/mmu_context.h          |   2 +
 arch/arm64/include/asm/perf_event.h           |  14 +
 arch/arm64/kernel/cpufeature.c                |  32 ++-
 arch/arm64/kernel/cpuinfo.c                   |   7 +-
 arch/arm64/kernel/perf_event.c                |  77 ++++++
 drivers/perf/arm_pmu.c                        |  54 ++++
 include/linux/perf/arm_pmu.h                  |   2 +
 tools/perf/arch/arm64/include/arch-tests.h    |   7 +
 tools/perf/arch/arm64/tests/Build             |   1 +
 tools/perf/arch/arm64/tests/arch-tests.c      |   4 +
 tools/perf/arch/arm64/tests/user-events.c     | 254 ++++++++++++++++++
 16 files changed, 512 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/arm64/pmu_counter_user_access.txt
 create mode 100644 tools/perf/arch/arm64/tests/user-events.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
