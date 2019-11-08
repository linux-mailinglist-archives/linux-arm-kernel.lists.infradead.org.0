Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E82F4E8C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:43:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=53IE0HtshrwqjozeTAUQgSjVOdttIBVOnj2tECyEERU=; b=NuE
	1NN9AmHsz4SsmjcfxS63DHtiRdEcgZnx7nmLip/ipUXxk12nQs62U1V2zYVxRNU0DWHjCx2YoHxFy
	YGYCLsuxMTccZUrUcdFnHxlRVTxuld0Awwt5w71E3L+J7r6yYg5/LSyizIA9j/c2bhwoAdEe0aIg9
	XeJtzGB1LAgpXGsj0vhJ1VfbKzSI/QTaczRFUPXP099eZPuhAKgWtC69YC+6baTSc8CCCqnhzQQlZ
	MSr/S5f6uhnIRjFelBDiOh+ZfVQxgzUbKw/XvRDAx8wV/k9yBmZy0N6yiMWMGDKkyStxHCKyvM3dO
	1xGMNO0nPxSPaPnTXy4fUy/QR8g4ZKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5To-0007eN-2I; Fri, 08 Nov 2019 14:43:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5TS-0007b9-5R
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:42:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 877E546A;
 Fri,  8 Nov 2019 06:42:50 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 68F193F719;
 Fri,  8 Nov 2019 06:42:49 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Jones <drjones@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>
Subject: [kvm-unit-tests PATCH 00/17] arm: gic: Test SPIs and interrupt groups
Date: Fri,  8 Nov 2019 14:42:23 +0000
Message-Id: <20191108144240.204202-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064254_291289_D41365CF 
X-CRM114-Status: GOOD (  13.07  )
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
Cc: Marc Zyngier <maz@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So far the GIC testing was limited: we were only testing some MMIO
properties on a GICv2 and some IPI behaviour.
This series extends this to cover SPIs as well, also testing the
behaviour with the two interrupt groups the emulated GIC provides to us.

The first patch is an easy extension to allow some distributor MMIO
tests on GICv3 guests as well.
Patch 2 - 5 prepare the GIC testing framework to handle SPIs, also to
be able to check for interrupts *not* firing.
This is used in patch 6, which adds an IRQ test by using a software
triggered SPI. This also tests whether interrupt masking works, at least
using one of the many masking methods.
Patch 8 adds a test to cover multiple cores, to test the interrupt
target settings. Patch 7 avoids unneccesary output when triggering one IRQ
multiple times.
The remainder of the patches add code to differentiate the two interrupt
groups that the GIC provides. On bare-metal machines, typically having
some secure world code running, and using the typical dual-security-state
GIC configuration, we only ever have one group (group 1) available, so
Linux won't use this feature.
However our emulated GIC does not have a secure side (as we are running
in at most EL2), so both interrupt groups are available to a guest.
So the patches add support to program interrupts to belong to one or
another group, also program the virtual GIC to deliver group 0
interrupts as FIQs, and group 1 interrupts as IRQs.
We then do some tests to see whether this setup works as expected.

At the moment only QEMU using TCG passes these tests, the KVM VGIC
emulation fails to handle the group enable bits properly. Patches for
the kernel will be send shortly, this series acts as a verification test
for this feature (as normal world OSes won't probably use two groups).

Please have a look and comment. I am not particularly happy with patch
16, thrilled to hear any suggestions on how to handle this better.

Tested on arm/GICv2, arm64/GICv2 and arm64/GICv3, with and without the
corresponding KVM patches to fix the dual-group behaviour.

Cheers,
Andre

Andre Przywara (17):
  arm: gic: Enable GIC MMIO tests for GICv3 as well
  arm: gic: Generalise function names
  arm: gic: Provide per-IRQ helper functions
  arm: gic: Support no IRQs test case
  arm: gic: Prepare IRQ handler for handling SPIs
  arm: gic: Add simple shared IRQ test
  arm: gic: Extend check_acked() to allow silent call
  arm: gic: Add simple SPI MP test
  arm: gic: Add test for flipping GICD_CTLR.DS
  arm: gic: Check for writable IGROUPR registers
  arm: gic: Check for validity of both group enable bits
  arm: gic: Change gic_read_iar() to take group parameter
  arm: gic: Change write_eoir() to take group parameter
  arm: gic: Prepare for receiving GIC group 0 interrupts via FIQs
  arm: gic: Provide FIQ handler
  arm: gic: Prepare interrupt statistics for both groups
  arm: gic: Test Group0 SPIs

 arm/gic.c                  | 468 ++++++++++++++++++++++++++++++++-----
 arm/micro-bench.c          |   6 +-
 arm/pl031.c                |   4 +-
 arm/timer.c                |   4 +-
 arm/unittests.cfg          |  38 ++-
 lib/arm/asm/arch_gicv3.h   |  26 ++-
 lib/arm/asm/gic-v2.h       |  11 +-
 lib/arm/asm/gic-v3.h       |  12 +-
 lib/arm/asm/gic.h          |  13 +-
 lib/arm/asm/processor.h    |  10 +
 lib/arm/gic-v2.c           |  39 +++-
 lib/arm/gic-v3.c           |   2 +-
 lib/arm/gic.c              | 102 +++++++-
 lib/arm64/asm/arch_gicv3.h |  29 ++-
 lib/arm64/asm/processor.h  |  10 +
 lib/arm64/processor.c      |   2 +
 16 files changed, 685 insertions(+), 91 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
