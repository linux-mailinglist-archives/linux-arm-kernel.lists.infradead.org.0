Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F717D775
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjLPW3Afb5N85W9EhBpofx9bjTwcNmFH0Hv9JWyH8y0=; b=Mo/fBq2sf0ajyL
	QbVdc7XLlBlmZx0gBt+GvDzMUFhc1dRZqekZjCzgee4YJXDRNj/whdNhuOFz6Ma5HTTYgcnHoxPjU
	H64OwzENxevgShB5TvkZftLi/6PdxYOsAjm+T41i4RvTHsTMgEH59Gn8jAf/yhriVj7jFNhdbnFDe
	6lJd0g0XuxaXn8Rp0Nsx/g3pVTxpGBncXYsB6GidlZiWZSC5AqLWcnoTgijmIUoJzn6AlE4nGb3kS
	fKfRV0TuS9aj6sBp57MNarTh/DxDQ+AKAhqsCX/+/Nxo5uMeoYZCvlqNMCil0UxeqNRgm02IcZ5ri
	s5NSc7TyW359NYCMSR9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6No-0007Mb-G7; Thu, 01 Aug 2019 08:24:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6KD-0002X3-5m
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:38 +0000
Received: by mail-pf1-x442.google.com with SMTP id u14so33623822pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uRyk3zcBxn+kArv7clzkKBJGfRbp0pIX9juxiKGvE2U=;
 b=b2McCC/WCcGBPzkhtxUUkoJMeMcdJguyRODCBJ0WTu/VoS9DEEque4sOadkrF9Nbft
 lPCrVhWn8e8vlLv2WWnVQZJRuv3ttph1yCzYhXrPNBvES/oMHX2J1WpCdT1oG9MQMP+D
 Jt/0F9x460JOvtbf5koGqj6pES0Ec3SdobEldPLHFvYJvGZET5aHonfh2gMfP5ZT/VLg
 EJFEuXzxVGFfmlErLRbS0l/WPAPQuTGoCIH/i0Z5vanbDpw4ZjXJQREgsoYvtVVpVzbM
 eVc3rMqWzX0hfKrrk3QsXMlXzD6NdG5EZbR19l0oj43J9RBgyjDLk2+iB6/q7m5FMEvc
 9xtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uRyk3zcBxn+kArv7clzkKBJGfRbp0pIX9juxiKGvE2U=;
 b=sfPnC+ignTfNsOX3aOtFgyqgPbrpRujouSvqf0SuYVAJ3WEmxrpFuOIlSr1Wb2xEtT
 Y5I/gfo+WCJRKNoRjsmallzTg3BGnkKJNUBb7wJF2lhSUTjBkdVd3eCpl2J3QvUsbPzb
 f6Ql5u9kyeOnlSzyfZ0/hvv0lJ+AKJNuHpRHcWTbTY9z70qeekI/yQrAeqpYPwN36UUT
 qYDCPfc1TjHHsERK9FhH3z1cCsAvodgi5hBbo3pVNVrWVtsLieIXh5GWZhJWtyew5PTl
 vbB3jes0FxCgt4PcwIt1veuYuVFeenUzLCdE0AdMegTu041I3ubzr4D0Nh8vVIigezFQ
 Ibfg==
X-Gm-Message-State: APjAAAXIH26EYkxVCnTvJmLKXrc52lH/z3sKIfMP+YPzVOdbNiwLGpUU
 LvUikXomlhLhVgEYGDTB6/8qjQ==
X-Google-Smtp-Source: APXvYqxL4re/D71PbEnnmwmOeprKRJUhUxiAc8Bj8thOBjsQS5N86j2M8Po5fkRwLg7hw8Lweus4EA==
X-Received: by 2002:aa7:9dcd:: with SMTP id g13mr53047380pfq.204.1564647635649; 
 Thu, 01 Aug 2019 01:20:35 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id n17sm74761757pfq.182.2019.08.01.01.20.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:35 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 23/47] ARM: vfp: use __copy_from_user() when
 restoring VFP state
Date: Thu,  1 Aug 2019 13:46:07 +0530
Message-Id: <8476fc23988444fda761ae9d99563cea0b21c191.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012037_243261_4E8F98AD 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
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
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/thread_info.h |  4 ++--
 arch/arm/kernel/signal.c           | 18 ++++++++----------
 arch/arm/vfp/vfpmodule.c           | 17 +++++++----------
 3 files changed, 17 insertions(+), 22 deletions(-)

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
index a592bc0287f8..76f85c38f2b8 100644
--- a/arch/arm/kernel/signal.c
+++ b/arch/arm/kernel/signal.c
@@ -107,21 +107,19 @@ static int preserve_vfp_context(struct vfp_sigframe __user *frame)
 	return vfp_preserve_user_clear_hwstate(&frame->ufp, &frame->ufp_exc);
 }
 
-static int restore_vfp_context(struct vfp_sigframe __user *frame)
+static int restore_vfp_context(struct vfp_sigframe __user *auxp)
 {
-	unsigned long magic;
-	unsigned long size;
-	int err = 0;
-
-	__get_user_error(magic, &frame->magic, err);
-	__get_user_error(size, &frame->size, err);
+	struct vfp_sigframe frame;
+	int err;
 
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
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
