Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7F7F07BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IlNKQ6eRpNKVApr/siZroAEiHmKxhuc8j2uhqUFA5UI=; b=MxR7t0cZ4oDw//+zBRzTwTou14
	7AdZm37PSTUE3gjZWg8jBqJ11UfR6iyD3p71pxByJo6tH4XyWUNhN/nAK86/X6gvaIIEhND/wlTY0
	0ZMjqObSS7Ne3Xc0EwLas/AuBsHW/uuLultQmbzCo8iuS0/wL6Lo4CYfL05ykvwodBf2k4RAgmtsw
	BDGXqqpl8ELPCElOlmlPjF9iFLL3mkUiRtOEW3eSUA3ePQA0c4DdBzZHGbw4sl2CA/tugEB/8qSKR
	uaUR7e/bqI2YboQNXgOABVtrp913V0hDAhQ6/x1ES3EUEXx3EreYQ8+5eEpbDarGELDPnIRSiYIpT
	bL3d7bXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS64A-0007ub-0Z; Tue, 05 Nov 2019 21:08:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5wK-0007oV-Gk
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:00:39 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3309521D7C;
 Tue,  5 Nov 2019 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987635;
 bh=74WOoBkYjzEVPlb0cVMRZ+GoWcdE41JRQ0xnfBSORKA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hepQQjhzlnZWQCSHK1ayfZWZKI7OtuqyZ62YmQiHk5GOXNQBJ0MNBfh6sEECB/T1Z
 zBQV2CZbQyq46rTbdv6qdamyYjzEgov6iIVmEZwBJ6vNEnKoVQxsdld7LY4VmYlDNG
 VF2CDS83SztLuFLVwoDmaxkcgQ8donfqv/I+s4FU=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 34/53] ARM: vfp: use __copy_from_user() when
 restoring VFP state
Date: Tue,  5 Nov 2019 21:58:27 +0100
Message-Id: <20191105205846.1394-35-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_130036_632960_E3F22FD4 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David A . Long" <dave.long@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit 42019fc50dfadb219f9e6ddf4c354f3837057d80 upstream.

__get_user_error() is used as a fast accessor to make copying structure
members in the signal handling path as efficient as possible.  However,
with software PAN and the recent Spectre variant 1, the efficiency is
reduced as these are no longer fast accessors.

In the case of software PAN, it has to switch the domain register around
each access, and with Spectre variant 1, it would have to repeat the
access_ok() check for each access.

Use __copy_from_user() rather than __get_user_err() for individual
members when restoring VFP state.

Acked-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/include/asm/thread_info.h |  4 ++--
 arch/arm/kernel/signal.c           | 17 ++++++++---------
 arch/arm/vfp/vfpmodule.c           | 17 +++++++----------
 3 files changed, 17 insertions(+), 21 deletions(-)

diff --git a/arch/arm/include/asm/thread_info.h b/arch/arm/include/asm/thread_info.h
index 776757d1604a..57d2ad9c75ca 100644
--- a/arch/arm/include/asm/thread_info.h
+++ b/arch/arm/include/asm/thread_info.h
@@ -126,8 +126,8 @@ struct user_vfp_exc;
 
 extern int vfp_preserve_user_clear_hwstate(struct user_vfp __user *,
 					   struct user_vfp_exc __user *);
-extern int vfp_restore_user_hwstate(struct user_vfp __user *,
-				    struct user_vfp_exc __user *);
+extern int vfp_restore_user_hwstate(struct user_vfp *,
+				    struct user_vfp_exc *);
 #endif
 
 /*
diff --git a/arch/arm/kernel/signal.c b/arch/arm/kernel/signal.c
index a592bc0287f8..6bee5c9b1133 100644
--- a/arch/arm/kernel/signal.c
+++ b/arch/arm/kernel/signal.c
@@ -107,21 +107,20 @@ static int preserve_vfp_context(struct vfp_sigframe __user *frame)
 	return vfp_preserve_user_clear_hwstate(&frame->ufp, &frame->ufp_exc);
 }
 
-static int restore_vfp_context(struct vfp_sigframe __user *frame)
+static int restore_vfp_context(struct vfp_sigframe __user *auxp)
 {
-	unsigned long magic;
-	unsigned long size;
-	int err = 0;
+	struct vfp_sigframe frame;
+	int err;
 
-	__get_user_error(magic, &frame->magic, err);
-	__get_user_error(size, &frame->size, err);
+	err = __copy_from_user(&frame, (char __user *) auxp, sizeof(frame));
 
 	if (err)
-		return -EFAULT;
-	if (magic != VFP_MAGIC || size != VFP_STORAGE_SIZE)
+		return err;
+
+	if (frame.magic != VFP_MAGIC || frame.size != VFP_STORAGE_SIZE)
 		return -EINVAL;
 
-	return vfp_restore_user_hwstate(&frame->ufp, &frame->ufp_exc);
+	return vfp_restore_user_hwstate(&frame.ufp, &frame.ufp_exc);
 }
 
 #endif
diff --git a/arch/arm/vfp/vfpmodule.c b/arch/arm/vfp/vfpmodule.c
index 2a61e4b04600..7aa6366b2a8d 100644
--- a/arch/arm/vfp/vfpmodule.c
+++ b/arch/arm/vfp/vfpmodule.c
@@ -601,13 +601,11 @@ int vfp_preserve_user_clear_hwstate(struct user_vfp __user *ufp,
 }
 
 /* Sanitise and restore the current VFP state from the provided structures. */
-int vfp_restore_user_hwstate(struct user_vfp __user *ufp,
-			     struct user_vfp_exc __user *ufp_exc)
+int vfp_restore_user_hwstate(struct user_vfp *ufp, struct user_vfp_exc *ufp_exc)
 {
 	struct thread_info *thread = current_thread_info();
 	struct vfp_hard_struct *hwstate = &thread->vfpstate.hard;
 	unsigned long fpexc;
-	int err = 0;
 
 	/* Disable VFP to avoid corrupting the new thread state. */
 	vfp_flush_hwstate(thread);
@@ -616,17 +614,16 @@ int vfp_restore_user_hwstate(struct user_vfp __user *ufp,
 	 * Copy the floating point registers. There can be unused
 	 * registers see asm/hwcap.h for details.
 	 */
-	err |= __copy_from_user(&hwstate->fpregs, &ufp->fpregs,
-				sizeof(hwstate->fpregs));
+	memcpy(&hwstate->fpregs, &ufp->fpregs, sizeof(hwstate->fpregs));
 	/*
 	 * Copy the status and control register.
 	 */
-	__get_user_error(hwstate->fpscr, &ufp->fpscr, err);
+	hwstate->fpscr = ufp->fpscr;
 
 	/*
 	 * Sanitise and restore the exception registers.
 	 */
-	__get_user_error(fpexc, &ufp_exc->fpexc, err);
+	fpexc = ufp_exc->fpexc;
 
 	/* Ensure the VFP is enabled. */
 	fpexc |= FPEXC_EN;
@@ -635,10 +632,10 @@ int vfp_restore_user_hwstate(struct user_vfp __user *ufp,
 	fpexc &= ~(FPEXC_EX | FPEXC_FP2V);
 	hwstate->fpexc = fpexc;
 
-	__get_user_error(hwstate->fpinst, &ufp_exc->fpinst, err);
-	__get_user_error(hwstate->fpinst2, &ufp_exc->fpinst2, err);
+	hwstate->fpinst = ufp_exc->fpinst;
+	hwstate->fpinst2 = ufp_exc->fpinst2;
 
-	return err ? -EFAULT : 0;
+	return 0;
 }
 
 /*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
