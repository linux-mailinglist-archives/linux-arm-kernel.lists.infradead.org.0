Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F9AFC962
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 16:00:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hp0hb7QUrJ+9rSO/UvkNYRpqqxgEKG4qXCIdwujpMMs=; b=ghOWoSoEFkJ0Yc
	65R63LsmHiUr9Q3v2YQARhjxKqZiJ086p+ZYjOv3cVyax+vtPtmqebV+m3O6QuJuVLI+ppI1cvczg
	JCHZKuGFnrMaH4obr2rgiA6vwbg7y6db5T9Te7tMpjBK3cF/WobNfvxyFKOWxzRf9xpelWL9Ec7ul
	njrjJc+EoapulWfdGWEDXSpJqOg45jgxcYpeOzCBFwxJSCWFd1WJWgW0QvQb5+h323c8fkYrYXg9T
	kVnHvQvKmJSnUlwwCqlFO5DSV+pzXxuZwdQ5ljPsGzj22nP5zFxgbWgSLX8eeyOi9XO99P0CTjt6U
	v+5UHdeIgNs+2AoPy+rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGbX-0006Sd-0O; Thu, 14 Nov 2019 15:00:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGbI-0006Oo-73
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 15:00:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CFA3A328;
 Thu, 14 Nov 2019 06:59:57 -0800 (PST)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B07C33F52E;
 Thu, 14 Nov 2019 06:59:56 -0800 (PST)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] arm64: Add workaround for Cortex-A77 erratum 1542418
Date: Thu, 14 Nov 2019 14:59:13 +0000
Message-Id: <20191114145918.235339-1-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_070000_298172_EA317CD4 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, maz@kernel.org,
 linux-kernel@vger.kernel.org, james.morse@arm.com, catalin.marinas@arm.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds workaround for Arm erratum 1542418 which affects
Cortex-A77 cores (r0p0 - r1p0). Affected cores may execute stale
instructions from the L0 macro-op cache violating the
prefetch-speculation-protection guaranteed by the architecture.
This happens when the when the branch predictor bases its predictions
on a branch at this address on the stale history due to ASID or VMID
reuse.

The workaround is to invalidate the branch history before reusing
any ASID for a new address space. This is done by ensuring 60 ASIDs
are selected before any ASID is reused.


James Morse (5):
  arm64: Add MIDR encoding for Arm Cortex-A77
  arm64: mm: Workaround Cortex-A77 erratum 1542418 on ASID rollover
  arm64: Workaround Cortex-A77 erratum 1542418 on boot due to kexec
  KVM: arm64: Workaround Cortex-A77 erratum 1542418 on VMID rollover
  KVM: arm/arm64: Don't invoke defacto-CnP on first run

 Documentation/arm64/silicon-errata.rst |  2 +
 arch/arm/include/asm/kvm_mmu.h         |  5 ++
 arch/arm64/Kconfig                     | 16 ++++++
 arch/arm64/include/asm/cpucaps.h       |  3 +-
 arch/arm64/include/asm/cputype.h       |  2 +
 arch/arm64/include/asm/kvm_mmu.h       | 15 ++++++
 arch/arm64/include/asm/mmu_context.h   |  1 +
 arch/arm64/kernel/cpu_errata.c         | 21 ++++++++
 arch/arm64/mm/context.c                | 73 +++++++++++++++++++++++++-
 virt/kvm/arm/arm.c                     | 23 +++++---
 10 files changed, 151 insertions(+), 10 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
