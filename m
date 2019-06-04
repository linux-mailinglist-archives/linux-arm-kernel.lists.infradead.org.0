Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5EB34ACC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fq5IDOn4XvfLX2gDBs3VxfWfiJRcBPMnA5xqHPOzcjw=; b=sSSc8k4ngfyogN
	IC1KivITR5pmH2X3B1crErSNxtdWZ3O2YTUHLReIJgmep+S/jf211PHbHZR2omjCS0rz87+R1mGNs
	WgVUKgl/DnbLWEkI6tH8/Pz6/y4HZFyW95f/XPlH4xTLhUxNTJ0Q69AxetP3iPX77Y28lsFqUvoCx
	cmPh+vVlc0jr0K7riUIRPCB838h6Yk9o1Hqn+fsMA1HgtjFJfdNdX6FfafygqhQ4ZNzvII0g69eSC
	XZ7zSf1OA2mx0e8TLxcrGnTWLj8NQxd8X5NW5ET7BxiQIGtVUUsvaZbCH5XKEdy3TLiVT6F48bWFM
	0hEBrLDNJGIXpo854GbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAij-000862-89; Tue, 04 Jun 2019 14:47:25 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAhv-00073n-JX
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:46:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04E4B341;
 Tue,  4 Jun 2019 07:46:35 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7EDDE3F690;
 Tue,  4 Jun 2019 07:46:33 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v1 5/6] KVM: arm64: nop out dsb in __guest_enter() unless we
 have v8.2 RAS
Date: Tue,  4 Jun 2019 15:45:50 +0100
Message-Id: <20190604144551.188107-6-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604144551.188107-1-james.morse@arm.com>
References: <20190604144551.188107-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_074636_124959_1740A707 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Previously we added a dsb before reading isr_el1 to ensure that the
hosts write's have finished, before we read isr_el1 to see if any of
them caused an SError.

This only really matters if we have the v8.2 RAS extensions with its
poison tracking and containment reporting via SError's ESR value.
Before v8.2 it is very unlikely these systems will detect and report
errors in a way that we can handle.

Use alternatives to remove this barrier on systems without v8.2 RAS.

Signed-off-by: James Morse <james.morse@arm.com>
---
Tested on A57 with v5.2-rc1, do_hvc from [0]
v5.2-rc1            mean:4339 stddev:33
v5.2-rc1+patches1-5 mean:4405 stddev:31
with series 1.53% slower
[0]https://git.kernel.org/pub/scm/linux/kernel/git/maz/kvm-ws-tests.git/

 arch/arm64/kvm/hyp/entry.S | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index fa39899fe3d0..a5a4254314a1 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -17,6 +17,7 @@
 
 #include <linux/linkage.h>
 
+#include <asm/alternative.h>
 #include <asm/asm-offsets.h>
 #include <asm/assembler.h>
 #include <asm/fpsimdmacros.h>
@@ -65,8 +66,11 @@ ENTRY(__guest_enter)
 
 	// Now the host state is stored if we have a pending RAS SError it must
 	// affect the host. If any asyncronous exception is pending we defer
-	// the guest entry.
+	// the guest entry. The DSB isn't necessary before v8.2 as any SError
+	// would be fatal.
+alternative_if ARM64_HAS_RAS_EXTN
 	dsb	nshst
+alternative_else_nop_endif
 	mrs	x1, isr_el1
 	cbz	x1,  1f
 	mov	x0, #ARM_EXCEPTION_IRQ
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
