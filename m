Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F484A533
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aSdEZmbkzM3TD5EEvtzXFqACd3LuhIZiq3Rb6h4X5bQ=; b=EpryoE4uk1zaoK
	HETQL3rBrSLOBwzB4FUDcGqCYBnDLSOLuIIbylBvrzTAjCcOpP9PKygbASpGLHXT5nEdsqyOPDluC
	MRQrKVNa+JJOEU3LxmO8QqThGRv1uCBP6gsYaugocHmCTH8TwDnBEV2lO7gk4syV9J8IqyTddX3Dh
	fU9cxJ5wZfApFPfYyiUmoQTZJ0fd7khFE6MZpu/6lHhtuNicCIyD2l5zWeZv4tgSNaeuDtNBPZtPw
	hQr6SRpqL2pG2dQkGtLdUMstvsgttejB/mckl7LgTMPcZpL91qNNVxa5XXjaJ/6mcG/hlSEXSm05w
	D15EQ1eJH9alGA//AIQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFvE-0006EX-8O; Tue, 18 Jun 2019 15:21:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFsO-0002wA-R2
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:18:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 897912B;
 Tue, 18 Jun 2019 08:18:24 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0C1E3F718;
 Tue, 18 Jun 2019 08:18:23 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v3 2/2] KVM: arm64: Skip more of the SError vaxorcism
Date: Tue, 18 Jun 2019 16:18:09 +0100
Message-Id: <20190618151809.259038-3-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618151809.259038-1-james.morse@arm.com>
References: <20190618151809.259038-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_081824_933804_9E2E3007 
X-CRM114-Status: GOOD (  10.08  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

During __guest_exit() we need to consume any SError left pending by the
guest so it doesn't contaminate the host. With v8.2 we use the
ESB-instruction. For systems without v8.2, we use dsb+isb and unmask
SError. We do this on every guest exit.

Use the same dsb+isr_el1 trick, this lets us know if an SError is pending
after the dsb, allowing us to skip the isb and self-synchronising PSTATE
write if its not.

This means SError remains masked during KVM's world-switch, so any SError
that occurs during this time is reported by the host, instead of causing
a hyp-panic.

As we're benchmarking this code lets polish the layout. If you give gcc
likely()/unlikely() hints in an if() condition, it shuffles the generated
assembly so that the likely case is immediately after the branch. Lets
do the same here.

Signed-off-by: James Morse <james.morse@arm.com>

Changes since v2:
 * Added isb after the dsb to prevent an early read
---
 arch/arm64/kvm/hyp/entry.S | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index 017ec4189a08..269e7b2da1fd 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -162,8 +162,16 @@ alternative_if ARM64_HAS_RAS_EXTN
 	orr	x0, x0, #(1<<ARM_EXIT_WITH_SERROR_BIT)
 1:	ret
 alternative_else
-	// If we have a pending asynchronous abort, now is the
-	// time to find out. From your VAXorcist book, page 666:
+	dsb	sy		// Synchronize against in-flight ld/st
+	isb			// Prevent an early read of side-effect free ISR
+	mrs	x2, isr_el1
+	tbnz	x2, #8, 2f	// ISR_EL1.A
+	ret
+	nop
+2:
+alternative_endif
+	// We know we have a pending asynchronous abort, now is the
+	// time to flush it out. From your VAXorcist book, page 666:
 	// "Threaten me not, oh Evil one!  For I speak with
 	// the power of DEC, and I command thee to show thyself!"
 	mrs	x2, elr_el2
@@ -171,9 +179,7 @@ alternative_else
 	mrs	x4, spsr_el2
 	mov	x5, x0
 
-	dsb	sy		// Synchronize against in-flight ld/st
 	msr	daifclr, #4	// Unmask aborts
-alternative_endif
 
 	// This is our single instruction exception window. A pending
 	// SError is guaranteed to occur at the earliest when we unmask
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
