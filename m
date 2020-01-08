Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C4B134B18
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:59:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oS9/XNrMv/B4Fo82mBfqPuemjdTTDQ0nixTc9MBD8GI=; b=gF+fOr8/zDvubxC5OsTTX9DbC8
	SPO78V6tnlS+fgfrP2VANWBJ1Gq/lOrFiYu5pJeQcoRv92d5YAN4a5VGhxKJYghME7UfWYwfVUcxw
	2OaG4vrtT/6rvvQuF+YxlKNU9wBn/5MjLpk+rR/rYbwl5sriXRq1guwcV+0wl51TyHgEkENxFPIjD
	lRFshQJy5r+R1iNuiXbXTAyVXDs/y+1QAcow9YcqhPd+9bYTmW2mjCL4Ra3dYtjowrep/OULU8AdE
	96Zh/+3N7p4YSHQB+dri6OYmjpuPSh3K0dHby5ylBA+sZk76umxz4aMe1YBmkL3jhFw7qXupS6fFz
	h+HKZU0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGYC-00019q-0U; Wed, 08 Jan 2020 18:59:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGVy-0007V5-7a
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:57:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D44E91FB;
 Wed,  8 Jan 2020 10:57:09 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4ECC73F534;
 Wed,  8 Jan 2020 10:57:08 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 09/17] arm64: entry: organise handler stubs consistently
Date: Wed,  8 Jan 2020 18:56:26 +0000
Message-Id: <20200108185634.1163-10-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105710_367489_C355F63B 
X-CRM114-Status: UNSURE (   9.03  )
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

The exception handler stubs are laid out in a random order, violating
the EL1/EL0 split described by the comments. In an attempt to get more
optimal cache usage for commonly-invoked handlers, some handlers are
given special alignment while others are not.

To make things less surprising, This patch reorganises the hander stubs
so they're in a consistent order, with the EL1 sync/irq/error stubs
first, followed by the EL0 sync/irq/error stubs, then the EL0 compat
sync/irq/error stubs. All the stubs are given the same alignment.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/entry.S | 48 +++++++++++++++++++++++++----------------------
 1 file changed, 26 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 2c3de577f720..35a8c56b0582 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -530,6 +530,14 @@ el1_irq:
 	kernel_exit 1
 ENDPROC(el1_irq)
 
+	.align	6
+el1_error:
+	kernel_entry 1
+	mov	x0, sp
+	bl	el1_error_handler
+	kernel_exit 1
+ENDPROC(el1_error)
+
 /*
  * EL0 mode handlers.
  */
@@ -541,6 +549,23 @@ el0_sync:
 	b	ret_to_user
 ENDPROC(el0_sync)
 
+	.align	6
+el0_irq:
+	kernel_entry 0
+	mov	x0, sp
+	bl	el0_irq_handler
+	b	ret_to_user
+ENDPROC(el0_irq)
+
+	.align	6
+el0_error:
+	kernel_entry 0
+	mov	x0, sp
+	bl	el0_error_handler
+	b	ret_to_user
+ENDPROC(el0_error)
+
+
 #ifdef CONFIG_COMPAT
 	.align	6
 el0_sync_compat:
@@ -558,6 +583,7 @@ el0_irq_compat:
 	b	ret_to_user
 ENDPROC(el0_irq_compat)
 
+	.align	6
 el0_error_compat:
 	kernel_entry 0, 32
 	mov	x0, sp
@@ -566,28 +592,6 @@ el0_error_compat:
 ENDPROC(el0_error_compat)
 #endif
 
-	.align	6
-el0_irq:
-	kernel_entry 0
-	mov	x0, sp
-	bl	el0_irq_handler
-	b	ret_to_user
-ENDPROC(el0_irq)
-
-el1_error:
-	kernel_entry 1
-	mov	x0, sp
-	bl	el1_error_handler
-	kernel_exit 1
-ENDPROC(el1_error)
-
-el0_error:
-	kernel_entry 0
-	mov	x0, sp
-	bl	el0_error_handler
-	b	ret_to_user
-ENDPROC(el0_error)
-
 /*
  * Ok, we need to do extra processing, enter the slow path.
  */
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
