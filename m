Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F41607DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BeM2FtYPnlWDHSAmSdgsNDsZTQC+FGZRpeqNID22M0E=; b=sh7
	1FYkIbxuCyl487ab8fzkgL2StDP2opU+qok8rwmPXu9oqf3M4BjGhGTOOI1uReJzXMjzqLu1H/ghY
	9Qkv23/9gC3PuHsXuiLxDFy5n5zZFA/sgmIGsPfbNFhcnlRodh/ihahlsgzhTTub3krPARiLLER4v
	ACCxgiZePlYtTD8k5KdMBCDnGRkaREFKuZCYD1rqtaCnBuOG29m0hL+3Q1APtMcSO8oJ/kkFvcUBM
	uBkQhmdr2aTdq7M/gsw9T7qw+OZAIDgHf3LoOgr+ihjVFfHEq1Omf+bhZJuIvWLjRXByslkLsAjrC
	EbaRkmHjZvav/UxyT3z7sxSiyKMaM6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPCJ-0001rS-4j; Fri, 05 Jul 2019 14:28:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPBh-0001Po-MT
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dJuwxInVNlpc9GqfyY/cacm+vJMdjbs5j3Uqx0+JViY=; b=WCkPnS6GsXv39EaMUJPPiZIc0
 gPKWIk7FK5Elfe41FZh8tjOML9kEClAlCVMZ/JZMUJaZT599ilYB+y81tgK5PMn6fnvW0WPVNxIQy
 g75GHFKRMKguCjTwgij49k3Lg7BxIyiX5femG7Qkl5iEZU91UKskjZNkFkDMf+pDye8skaVlQxU9F
 hLZ4WC5j2JjpmpgWGeEepOwFKQ7Me7FRuEambWbf68KZUAn3n8A21hg25c+bkEyeyoN5hcjq5t7mR
 EubwwN2GNfJlgcMGhQ4Y3sUwyYHy+yGrUh6QvrzkjQVr4Zd+QvLKxp9koINfx5xs4wNP+GFDxli6r
 wWY1W7zxA==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hjK1F-00075Z-0Z
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 08:56:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C87EA2B;
 Fri,  5 Jul 2019 01:55:55 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8B67B3F246;
 Fri,  5 Jul 2019 01:55:54 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] arm64: Enable access to pmu registers by user-space
Date: Fri,  5 Jul 2019 09:55:36 +0100
Message-Id: <20190705085541.9356-1-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_095637_167226_029855AB 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
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

The first patch add a test to the perf tool so that we can test that the
access to the registers works correctly from userspace.

The second patch add a capability in the arm64 cpufeatures framework in
order to detect when we are running on a heterogeneous system.

The third patch focuses on the armv8 pmuv3 PMU support and makes sure that
the access to the pmu registers is enable and that the userspace have
access to the relevent information in order to use them.

The fourth patch put in place callbacks to enable access to the hardware
counters from userspace when a compatible event is opened using the perf
API.

The fifth patch adds a short documentation about PMU counters direct
access from userspace.

**Changes since v1**

* Rebased on linux-next/master
* Do not include RSEQs materials (test and utilities) since we want to
  enable direct access to counters only on homogeneous systems.
* Do not include the hook defitinions for the same reason as above.
* Add a cpu feature/capability to detect heterogeneous systems.

Raphael Gault (5):
  perf: arm64: Add test to check userspace access to hardware counters.
  arm64: cpufeature: Add feature to detect heterogeneous systems
  arm64: pmu: Add function implementation to update event index in
    userpage.
  arm64: perf: Enable pmu counter direct access for perf event on armv8
  Documentation: arm64: Document PMU counters access from userspace

 .../arm64/pmu_counter_user_access.txt         |  42 +++
 arch/arm64/include/asm/cpucaps.h              |   3 +-
 arch/arm64/include/asm/mmu.h                  |   6 +
 arch/arm64/include/asm/mmu_context.h          |   2 +
 arch/arm64/include/asm/perf_event.h           |  14 +
 arch/arm64/kernel/cpufeature.c                |  20 ++
 arch/arm64/kernel/perf_event.c                |  23 ++
 drivers/perf/arm_pmu.c                        |  38 +++
 include/linux/perf/arm_pmu.h                  |   2 +
 tools/perf/arch/arm64/include/arch-tests.h    |   6 +
 tools/perf/arch/arm64/tests/Build             |   1 +
 tools/perf/arch/arm64/tests/arch-tests.c      |   4 +
 tools/perf/arch/arm64/tests/user-events.c     | 255 ++++++++++++++++++
 13 files changed, 415 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/arm64/pmu_counter_user_access.txt
 create mode 100644 tools/perf/arch/arm64/tests/user-events.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
