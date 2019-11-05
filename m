Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 530FAF07C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:10:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=duomjfypTryZ9aDF6WER+sWJOAhcb+emsJH28WZC4NU=; b=UeJH9R5xai5YS3Rr4OFANgHnk7
	5pMbCOwSKk6wg7n41JQ8r/ehm1i1MTeZe9Ensps/3uwSqfK8owdq+hG+ZKyLjdIrU0wNDEgpnaVw3
	n9R1BtpjPwsM73PEq2TOqMJqUHSGIyAAxg6prn23o1BFluyO8Ct3LKWYn4RVAh5aRdiBMPNS13iav
	f9BczZ4MbpHz4NemeWbZESBvZYps4+dkGaDLHud87jNnJK0PTcZXmMR9rmfzQy23SzMbnov6c4C+z
	vyNVAUlnpde3LdWJ7cmf108HbvXQMI9HxY7Kc4n+hl5Hf/gL89kRONrCdcD8JZN74PaDdOpUT9v2Q
	yJHFR/Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS65v-0001jW-2p; Tue, 05 Nov 2019 21:10:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5wb-00084i-Sx
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:00:55 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D545321D7D;
 Tue,  5 Nov 2019 21:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987653;
 bh=2LV6aALKCR/V3rjqe3hLuaJHZTHoKR1POw5zVi6tIh8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2ifeNw2chk9zOx5UpmYULVzqmE8A7CJMy/SrXvBhJOkjG7vqPzRUWOSW372OvNHiQ
 bsv5lIx6cFdHcaO1Prp8RmRKf99XKMMBXDzn8Ptcyfbvq9ibQVWDJPz8MyetE0Yovo
 Cmit6OhQCMut6ghgvVH3iaepgw4ZfaSpMz2OA99o=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 40/53] ARM: 8791/1: vfp: use __copy_to_user()
 when saving VFP state
Date: Tue,  5 Nov 2019 21:58:33 +0100
Message-Id: <20191105205846.1394-41-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_130054_006988_EA0064FA 
X-CRM114-Status: GOOD (  15.04  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sasha Levin <sashal@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Julien Thierry <julien.thierry@arm.com>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David A . Long" <dave.long@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Julien Thierry <julien.thierry@arm.com>

Commit 3aa2df6ec2ca6bc143a65351cca4266d03a8bc41 upstream.

Use __copy_to_user() rather than __put_user_error() for individual
members when saving VFP state.
This has the benefit of disabling/enabling PAN once per copied struct
intead of once per write.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: David A. Long <dave.long@linaro.org>
Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/include/asm/thread_info.h |  4 ++--
 arch/arm/kernel/signal.c           | 13 +++++++------
 arch/arm/vfp/vfpmodule.c           | 20 ++++++++------------
 3 files changed, 17 insertions(+), 20 deletions(-)

diff --git a/arch/arm/include/asm/thread_info.h b/arch/arm/include/asm/thread_info.h
index 57d2ad9c75ca..df8420672c7e 100644
--- a/arch/arm/include/asm/thread_info.h
+++ b/arch/arm/include/asm/thread_info.h
@@ -124,8 +124,8 @@ extern void vfp_flush_hwstate(struct thread_info *);
 struct user_vfp;
 struct user_vfp_exc;
 
-extern int vfp_preserve_user_clear_hwstate(struct user_vfp __user *,
-					   struct user_vfp_exc __user *);
+extern int vfp_preserve_user_clear_hwstate(struct user_vfp *,
+					   struct user_vfp_exc *);
 extern int vfp_restore_user_hwstate(struct user_vfp *,
 				    struct user_vfp_exc *);
 #endif
diff --git a/arch/arm/kernel/signal.c b/arch/arm/kernel/signal.c
index fbb325ff8acc..135b1a8e12eb 100644
--- a/arch/arm/kernel/signal.c
+++ b/arch/arm/kernel/signal.c
@@ -94,17 +94,18 @@ static int restore_iwmmxt_context(struct iwmmxt_sigframe *frame)
 
 static int preserve_vfp_context(struct vfp_sigframe __user *frame)
 {
-	const unsigned long magic = VFP_MAGIC;
-	const unsigned long size = VFP_STORAGE_SIZE;
+	struct vfp_sigframe kframe;
 	int err = 0;
 
-	__put_user_error(magic, &frame->magic, err);
-	__put_user_error(size, &frame->size, err);
+	memset(&kframe, 0, sizeof(kframe));
+	kframe.magic = VFP_MAGIC;
+	kframe.size = VFP_STORAGE_SIZE;
 
+	err = vfp_preserve_user_clear_hwstate(&kframe.ufp, &kframe.ufp_exc);
 	if (err)
-		return -EFAULT;
+		return err;
 
-	return vfp_preserve_user_clear_hwstate(&frame->ufp, &frame->ufp_exc);
+	return __copy_to_user(frame, &kframe, sizeof(kframe));
 }
 
 static int restore_vfp_context(struct vfp_sigframe __user *auxp)
diff --git a/arch/arm/vfp/vfpmodule.c b/arch/arm/vfp/vfpmodule.c
index 7aa6366b2a8d..f07567eedd82 100644
--- a/arch/arm/vfp/vfpmodule.c
+++ b/arch/arm/vfp/vfpmodule.c
@@ -558,12 +558,11 @@ void vfp_flush_hwstate(struct thread_info *thread)
  * Save the current VFP state into the provided structures and prepare
  * for entry into a new function (signal handler).
  */
-int vfp_preserve_user_clear_hwstate(struct user_vfp __user *ufp,
-				    struct user_vfp_exc __user *ufp_exc)
+int vfp_preserve_user_clear_hwstate(struct user_vfp *ufp,
+				    struct user_vfp_exc *ufp_exc)
 {
 	struct thread_info *thread = current_thread_info();
 	struct vfp_hard_struct *hwstate = &thread->vfpstate.hard;
-	int err = 0;
 
 	/* Ensure that the saved hwstate is up-to-date. */
 	vfp_sync_hwstate(thread);
@@ -572,22 +571,19 @@ int vfp_preserve_user_clear_hwstate(struct user_vfp __user *ufp,
 	 * Copy the floating point registers. There can be unused
 	 * registers see asm/hwcap.h for details.
 	 */
-	err |= __copy_to_user(&ufp->fpregs, &hwstate->fpregs,
-			      sizeof(hwstate->fpregs));
+	memcpy(&ufp->fpregs, &hwstate->fpregs, sizeof(hwstate->fpregs));
+
 	/*
 	 * Copy the status and control register.
 	 */
-	__put_user_error(hwstate->fpscr, &ufp->fpscr, err);
+	ufp->fpscr = hwstate->fpscr;
 
 	/*
 	 * Copy the exception registers.
 	 */
-	__put_user_error(hwstate->fpexc, &ufp_exc->fpexc, err);
-	__put_user_error(hwstate->fpinst, &ufp_exc->fpinst, err);
-	__put_user_error(hwstate->fpinst2, &ufp_exc->fpinst2, err);
-
-	if (err)
-		return -EFAULT;
+	ufp_exc->fpexc = hwstate->fpexc;
+	ufp_exc->fpinst = hwstate->fpinst;
+	ufp_exc->fpinst2 = ufp_exc->fpinst2;
 
 	/* Ensure that VFP is disabled. */
 	vfp_flush_hwstate(thread);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
