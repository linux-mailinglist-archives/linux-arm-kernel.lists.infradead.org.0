Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CD090191
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 14:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=utPx6FvGNOlIgB/ru6a+7CADqRr2ojXravlDSena6d8=; b=qott0kikLjpeNbJfl/clD2tqKs
	9uf/a7myod7ktVN535U49BNwzcKCSU6MpOifeNGChea0jgd48E71/qZkb/89ExO9GAGR/oMTlxfwg
	j89blve5QV6PCtGmWzvAlmQwYuQ8V59R5vEHOQvIaEJsM3XtU/WujPz9ItiNaYBbLptdHP/Mjy2hC
	ZTGC4/DlrqC6MxalrAwGr5IdjO5+JLO6sFqqUcNjE8ecSVxMkQVfsEFhpLPqdI62xophoVtpu2CFp
	dwbEuoQOven3ejY0r4aTmNtutH59mDI8sfLCXacxCX+CnJ+6Tby5i6mOhhJwOhB1uX9H3h1xy9ZIF
	9zd/WV1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybMt-0001ly-NM; Fri, 16 Aug 2019 12:30:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hybI0-0004Np-MF
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 12:25:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83655344;
 Fri, 16 Aug 2019 05:25:04 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4A1D33F706;
 Fri, 16 Aug 2019 05:25:03 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jpoimboe@redhat.com
Subject: [RFC v4 17/18] arm64: kernel: Annotate non-standard stack frame
 functions
Date: Fri, 16 Aug 2019 13:24:02 +0100
Message-Id: <20190816122403.14994-18-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816122403.14994-1-raphael.gault@arm.com>
References: <20190816122403.14994-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_052504_794752_BCA393D6 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Annotate assembler functions which are callable but do not
setup a correct stack frame.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 arch/arm64/kernel/hyp-stub.S | 3 +++
 arch/arm64/kvm/hyp-init.S    | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm64/kernel/hyp-stub.S b/arch/arm64/kernel/hyp-stub.S
index 73d46070b315..8917d42f38c7 100644
--- a/arch/arm64/kernel/hyp-stub.S
+++ b/arch/arm64/kernel/hyp-stub.S
@@ -6,6 +6,7 @@
  * Author:	Marc Zyngier <marc.zyngier@arm.com>
  */
 
+#include <linux/frame.h>
 #include <linux/init.h>
 #include <linux/linkage.h>
 #include <linux/irqchip/arm-gic-v3.h>
@@ -42,6 +43,7 @@ ENTRY(__hyp_stub_vectors)
 	ventry	el1_fiq_invalid			// FIQ 32-bit EL1
 	ventry	el1_error_invalid		// Error 32-bit EL1
 ENDPROC(__hyp_stub_vectors)
+asm_stack_frame_non_standard __hyp_stub_vectors
 
 	.align 11
 
@@ -69,6 +71,7 @@ el1_sync:
 9:	mov	x0, xzr
 	eret
 ENDPROC(el1_sync)
+asm_stack_frame_non_standard el1_sync
 
 .macro invalid_vector	label
 \label:
diff --git a/arch/arm64/kvm/hyp-init.S b/arch/arm64/kvm/hyp-init.S
index 160be2b4696d..63deea39313d 100644
--- a/arch/arm64/kvm/hyp-init.S
+++ b/arch/arm64/kvm/hyp-init.S
@@ -12,6 +12,7 @@
 #include <asm/pgtable-hwdef.h>
 #include <asm/sysreg.h>
 #include <asm/virt.h>
+#include <linux/frame.h>
 
 	.text
 	.pushsection	.hyp.idmap.text, "ax"
@@ -118,6 +119,7 @@ CPU_BE(	orr	x4, x4, #SCTLR_ELx_EE)
 	/* Hello, World! */
 	eret
 ENDPROC(__kvm_hyp_init)
+asm_stack_frame_non_standard __kvm_hyp_init
 
 ENTRY(__kvm_handle_stub_hvc)
 	cmp	x0, #HVC_SOFT_RESTART
@@ -159,6 +161,7 @@ reset:
 	eret
 
 ENDPROC(__kvm_handle_stub_hvc)
+asm_stack_frame_non_standard __kvm_handle_stub_hvc
 
 	.ltorg
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
