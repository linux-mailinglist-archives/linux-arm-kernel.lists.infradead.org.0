Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C088E4A51C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GH5TOGO2svT2X66X+3KtOX9bELxmMmgoAOsWFpXXyUs=; b=n/cjl0Yebe6ves
	4hGWoKHPY5HyquXYwFYNGudZikEko14MyHCOo7BNJi5ADNsHyuVNvtl2Cfe8/qvORUSRWjI2NcTIi
	TjAr9n4BFcNfk8ScwORpavd7CLDFD/F5VsIsO1AkV8NR7I+l8DitFXPeoVRZEZk0nUj3lcqiHf+U+
	BVjfh8Xc0iTl+wgm6tro7Z22uO1kM1w2vvBKXbkVScNTe/0viNoh5RiP94lX21KMam3AKMxajCDvW
	ZGHfoI90+it1KQY3uOvkmp03oSuMsDdD2agMk1n5HwOqJLzyDK2q/QqXhv/yHOZzU0hjjXg+FJ8lq
	YOTjf/3rGL2DXu5fJcEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFto-0003tE-FI; Tue, 18 Jun 2019 15:19:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFs5-0002em-5V
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:18:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C0832B;
 Tue, 18 Jun 2019 08:18:04 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EFFB33F718;
 Tue, 18 Jun 2019 08:18:02 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v3 5/6] KVM: arm64: Defer guest entry when an asynchronous
 exception is pending
Date: Tue, 18 Jun 2019 16:17:37 +0100
Message-Id: <20190618151738.258983-6-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618151738.258983-1-james.morse@arm.com>
References: <20190618151738.258983-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_081805_307055_523C6E91 
X-CRM114-Status: GOOD (  10.72  )
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SError that occur during world-switch's entry to the guest will be
accounted to the guest, as the exception is masked until we enter the
guest... but we want to attribute the SError as precisely as possible.

Reading DISR_EL1 before guest entry requires free registers, and using
ESB+DISR_EL1 to consume and read back the ESR would leave KVM holding
a host SError... We would rather leave the SError pending and let the
host take it once we exit world-switch. To do this, we need to defer
guest-entry if an SError is pending.

Read the ISR to see if SError (or an IRQ) is pending. If so fake an
exit. Place this check between __guest_enter()'s save of the host
registers, and restore of the guest's. SError that occur between
here and the eret into the guest must have affected the guest's
registers, which we can naturally attribute to the guest.

The dsb is needed to ensure any previous writes have been done before
we read ISR_EL1. On systems without the v8.2 RAS extensions this
doesn't give us anything as we can't contain errors, and the ESR bits
to describe the severity are all implementation-defined. Replace
this with a nop for these systems.

Signed-off-by: James Morse <james.morse@arm.com>
---
Changes since v2:
 * Added isb after the dsb to prevent an early read
 * Fixed some spelling
Changes since v1:
 * Squashed later dsb/nop patch in here
---
 arch/arm64/kvm/hyp/entry.S | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index 7863ec5266e2..d9a55503fab7 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -17,6 +17,7 @@
 
 #include <linux/linkage.h>
 
+#include <asm/alternative.h>
 #include <asm/asm-offsets.h>
 #include <asm/assembler.h>
 #include <asm/fpsimdmacros.h>
@@ -63,6 +64,20 @@ ENTRY(__guest_enter)
 	// Store the host regs
 	save_callee_saved_regs x1
 
+	// Now the host state is stored if we have a pending RAS SError it must
+	// affect the host. If any asynchronous exception is pending we defer
+	// the guest entry. The DSB isn't necessary before v8.2 as any SError
+	// would be fatal.
+alternative_if ARM64_HAS_RAS_EXTN
+	dsb	nshst
+	isb
+alternative_else_nop_endif
+	mrs	x1, isr_el1
+	cbz	x1,  1f
+	mov	x0, #ARM_EXCEPTION_IRQ
+	ret
+
+1:
 	add	x18, x0, #VCPU_CONTEXT
 
 	// Macro ptrauth_switch_to_guest format:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
