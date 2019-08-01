Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F38527D77F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:25:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJTAE0KtS0m1+4MIlUNE9TJ3EG1ESAzOCDd9DhFAtmA=; b=XpOP49GtX0lwxI
	uYYTyK9VFS5c0Ml3w/88pUyS5U49Ac0hmIgWhL4JCXfeEV7b/OHB3wkeqThYfvgM2TYHRWzuQjb3t
	49qxH2SXBiU9BN4z+XpxWFTpMVMI+ryjxngMUGAP+uBO0qrEZ6Oz5PjlFS6hXK8VyDWuJjHFdZ8h0
	/InSrllL8a5aRE20ZkTc8avQShBn77ut3NaCPsklCuMvZ+KEJnsimHj2vbXTfLpXupMDCI5y8Heo/
	7wpS7TIVrKUtkG6tDqJR+8G6M0AL8CEWPetco5yo/0CA4RcrE5B9I+ayFFRmM6Q/c7Vy6B+ClBUnQ
	ltQeXvhaeuLp2dU2yACg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6P0-0001WV-GN; Thu, 01 Aug 2019 08:25:34 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6KR-0002pw-GG
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:53 +0000
Received: by mail-pl1-x644.google.com with SMTP id c14so31784375plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z+TjXjo63OoUiebA/nVcgaugef8flgCeXLGArxWolNY=;
 b=oDNzbpMHyWtAAuk+AA4TcYZ78EFl6JZ8Iti4SxiMfcc1O4tW8ZWErsVrUli0VkjSyU
 gbbCeDO8IUVJM3KzRMXnLfyV7K2WXU1VefHyR3ecG0nA8y1nsg5+Xlfc887ahn4H1Byc
 +BYB9inFuFPtPDhosjBWG/yyDYD7VORs/yyAR1dxfLR5dSqdQV+dVYdJ0RBCK5mu2SfH
 C42c5TNvpduhj/hH8fJJ+xzNepluUbsqr9+i8yJnK9GprLx/a+6C7HfY8bw+f3JOZCIF
 TKwAxaImzi2zOZxFBvoubmrXlKftUrKsjOu8Av2BGbQj8UjqcAB4Cp9gLyWlUgzaFssA
 5V1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z+TjXjo63OoUiebA/nVcgaugef8flgCeXLGArxWolNY=;
 b=cmhJ9Hk+h17msixkDt8VkicaQWRbKcHSZrzpBpAuSJ0K+LzE5ckIGTwMh8KXTbDYdy
 d+8TeH2battR7Js51S76N54rniGwSWH9WhCPY46rckq03TmsTYCmMTh7W22eEODXK3un
 ZnDEzXhAOP44D8NPkyzBGNaghL9zF0SeLYxOD1Z7MNo1RbsLARjq5y2SYk5xBSMjZO3e
 YKsACylWkEF5cQ4eikM0Z764TDmSizXC0Xu0GFscC8hkIiHS89z1MEHN7WaorChQKMTh
 iH/VCkjoMLikO4W8ItdOd1r4AFRUGiDAlmJcFriMu7kSUlF6d/IQcZFYCLWWtGT/hnqx
 ZU8A==
X-Gm-Message-State: APjAAAWoMOnF4dt/4uwkisscgiuuRoQv5WxE4DK7ByGIzgujdb+t7+bb
 QtehwfarEY+vkp9UeufYqt8Zqg==
X-Google-Smtp-Source: APXvYqwq0rBdTlx8rRlkb567BcZlJ5ZxpRAejULO4h/mIBdO4VwR7jouOb86/HafLUYLWLXS4CJF8A==
X-Received: by 2002:a17:902:d917:: with SMTP id
 c23mr124580913plz.248.1564647650566; 
 Thu, 01 Aug 2019 01:20:50 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id g8sm77853763pgk.1.2019.08.01.01.20.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:50 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 29/47] ARM: 8791/1: vfp: use __copy_to_user()
 when saving VFP state
Date: Thu,  1 Aug 2019 13:46:13 +0530
Message-Id: <34c32a770df4c8d2630390fdfe3e4ec6047f721c.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012051_585559_6CD7787D 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

From: Julien Thierry <julien.thierry@arm.com>

Commit 3aa2df6ec2ca6bc143a65351cca4266d03a8bc41 upstream.

Use __copy_to_user() rather than __put_user_error() for individual
members when saving VFP state.
This has the benefit of disabling/enabling PAN once per copied struct
intead of once per write.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
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
index 98685e2523bf..6f0bd90f6d93 100644
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
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
