Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43F5134B19
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:59:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9tWu59R8YQk4ZNpFRnr+nyIr7YdwpUctZ+Gl/ZuKugA=; b=RQcYkCaH0/VygR5sR8PGvNE/tS
	/rFoZifGK9Grf/He2wcQZXn+QhOllOKObXm9m5FN7CogFfs8MEG64agDpkuLiGS5954Opd8yGn++Q
	zavgHUzCrh7TWB7LQPi+NC5jAXRxlCrkRw9ue/7DVCK3o1c0Rn3Hu/eom10yW5sWURfgZQOT4mzC6
	ad5alHm976D7+hHziRYqWXQBwU04dN/sflE1X+8BQvtWi6l+/BNo3fwku55m3/ITeBD2KuE02XSXc
	MDX27AMKLCqO8l84uzGN7j4NffOzFfCPBZpjva7Pb+lVkhLcS8s042OP+Mj4d5HcDHjmeZZ164Xzi
	S7hszghQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGYP-0001MO-NF; Wed, 08 Jan 2020 18:59:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGW0-0007cT-Gz
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:57:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09F2C328;
 Wed,  8 Jan 2020 10:57:12 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 79ECB3F534;
 Wed,  8 Jan 2020 10:57:10 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 10/17] arm64: entry: consolidate EL1 return paths
Date: Wed,  8 Jan 2020 18:56:27 +0000
Message-Id: <20200108185634.1163-11-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105712_635776_59AC6983 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, keescook@chromium.org, maz@kernel.org,
 broonie@kernel.org, labbott@redhat.com, robin.murphy@arm.com,
 julien.thierry.kdev@gmail.com, alex.popov@linux.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each of the EL1 exception handler stubs has an identical copy of the
kernel_exit code. While each handler needs its own kernel_entry
sequence, there's no need to duplicate this for each handler, and we can
consolidate them for better I-cache usage.

This patch makes the EL1 handlers all use a common kernel_exit stub
called ret_to_kernel, matching the ret_to_user stub used by EL0
handlers.

As with the handlers, ret_to_kenerl is aligned for better I-cache and
brapnch predictor utilization, and for consistency the same alignment is
applied to ret_to_user.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/entry.S | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 35a8c56b0582..e76326feb1da 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -519,7 +519,7 @@ el1_sync:
 	kernel_entry 1
 	mov	x0, sp
 	bl	el1_sync_handler
-	kernel_exit 1
+	b	ret_to_kernel
 ENDPROC(el1_sync)
 
 	.align	6
@@ -527,7 +527,7 @@ el1_irq:
 	kernel_entry 1
 	mov	x0, sp
 	bl	el1_irq_handler
-	kernel_exit 1
+	b	ret_to_kernel
 ENDPROC(el1_irq)
 
 	.align	6
@@ -535,10 +535,18 @@ el1_error:
 	kernel_entry 1
 	mov	x0, sp
 	bl	el1_error_handler
-	kernel_exit 1
+	b	ret_to_kernel
 ENDPROC(el1_error)
 
 /*
+ * Common EL1 exception return path
+ */
+	.align 6
+ret_to_kernel:
+	kernel_exit 1
+ENDPROC(ret_to_kernel)
+
+/*
  * EL0 mode handlers.
  */
 	.align	6
@@ -606,6 +614,7 @@ work_pending:
 /*
  * "slow" syscall return path.
  */
+	.align 6
 ret_to_user:
 	disable_daif
 	gic_prio_kentry_setup tmp=x3
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
