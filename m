Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1777D77E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Lt8ko4SWwSUErhIUvts/ntS56hHrOSWXG5r4MDGjS8=; b=ONN8kN0s/WifRz
	V66oK2vHIRNhM9v/c24vSeUKPvo95JpKQi74aCMiFnboi9EKsdiBKgr/RmYuLsTJ9Oh9UROyVjRLI
	q6Yfx+Sa2yszGxo2YK6DnQo7b0O/81l9KvKOJ/NFx1TAZwTV4dt+UXMlYxyXo/zQFBvI8aSmHZFif
	eex8Et6AJx/X8w4O00550SshckpD0YjoRvtJqlZDL9ITZRLJU8PNDF9iPBrUip/Ke3x6VLT4e4NAW
	Pt5gAjoAgFY/xPjn7r4FdDhCltsAGISgeXZlLdqns1RRg+zxTKHgy3Db1EPBOp7iHDN5voUGk4pbD
	3XzTS/fTTiDyCBVuJqsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6On-0001Gf-Li; Thu, 01 Aug 2019 08:25:21 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6KP-0002mQ-0v
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:50 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so31834681plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MgdKvQC/PG/qzasZyBmDzAkccfxFwFqJHdwmPruVads=;
 b=M/W0Na2Zy7+HBEvHxxb6P/FPKdVkMATRN4C9Zb77vqKqQhL6z7bpMb1EeSx6PCKSXP
 WIpm09ydesGuVwKMj+W1yik9OCyQfN6plQEwk4acdSnuulENxPHSU0NaxsqQRRX0OI7Q
 CJ0tqIjPLDjnBIOWX5BruNZGIu9Qcme1K2e3M+sHqvXxw5u8OHzx11C0FhOuZ3LDh7OG
 Chz2+U3DN9zgQWBVGzmzxpJA5H8T8XIB//yeb10FYl9FV1Dimc13X4LokQdTvFyqY6vp
 ivz+ZoapG/08jHgX0zsH7JhOVAEay8pOIsb6pQiJUTzbVriQoqreFrBxWT58hO5m/UO3
 cJbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MgdKvQC/PG/qzasZyBmDzAkccfxFwFqJHdwmPruVads=;
 b=V9wVc32eJv4hY5813mky7/p1WCuKydrJTWxYAlKuFN5LN9Qwsa+DAtAqxJ3x62zmiv
 6QfTrFxEztJAGQn3xm5+4F/Xi6Y0WTD8+Otg6wlyDG0loqExNeNb56t/VJzOQHzBd0iw
 /Z2uQWxw5c6HP5YV/5kZFRdvLUJOFPFEeCXFIjPQDbGqYFnq8hoHQCGeWsQvtth2SqJB
 ykyPJFrBFGitbZDSK+P4GxJOAa0RY8VPNyENILe66Oty8gAS3CV0g3nVA+wNU3+pafpC
 p3HaUGdH/JhjrBtshp126qI2v9+c5LUT71Mlm4gwKyYsRwdFh+jkmjYI913OwdyZKZ81
 uM5Q==
X-Gm-Message-State: APjAAAV7PRudXoB22TZlib2GMMjubHuaBci8JnL52AA0ZyOxC1Wtf6cZ
 O9IQbwQNyGjIBweFZggg2DB/3w==
X-Google-Smtp-Source: APXvYqwtnX5haa3mjsJZEuPJitXn8/aU61HgK/ZxG2IVG2xywq2bD6FMIeoJyjny8aFcR2dHWhALVw==
X-Received: by 2002:a17:902:f095:: with SMTP id
 go21mr126863136plb.58.1564647648095; 
 Thu, 01 Aug 2019 01:20:48 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id z12sm52519280pfn.29.2019.08.01.01.20.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:47 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 28/47] ARM: 8789/1: signal: copy registers using
 __copy_to_user()
Date: Thu,  1 Aug 2019 13:46:12 +0530
Message-Id: <cbbdded762d4e1547f3574a56e3ae78a35c82ba6.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012049_077024_98ED3FDC 
X-CRM114-Status: GOOD (  11.38  )
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

Commit 5ca451cf6ed04443774bbb7ee45332dafa42e99f upstream.

When saving the ARM integer registers, use __copy_to_user() to
copy them into user signal frame, rather than __put_user_error().
This has the benefit of disabling/enabling PAN once for the whole copy
intead of once per write.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/kernel/signal.c | 49 ++++++++++++++++++++++------------------
 1 file changed, 27 insertions(+), 22 deletions(-)

diff --git a/arch/arm/kernel/signal.c b/arch/arm/kernel/signal.c
index 76f85c38f2b8..98685e2523bf 100644
--- a/arch/arm/kernel/signal.c
+++ b/arch/arm/kernel/signal.c
@@ -255,30 +255,35 @@ static int
 setup_sigframe(struct sigframe __user *sf, struct pt_regs *regs, sigset_t *set)
 {
 	struct aux_sigframe __user *aux;
+	struct sigcontext context;
 	int err = 0;
 
-	__put_user_error(regs->ARM_r0, &sf->uc.uc_mcontext.arm_r0, err);
-	__put_user_error(regs->ARM_r1, &sf->uc.uc_mcontext.arm_r1, err);
-	__put_user_error(regs->ARM_r2, &sf->uc.uc_mcontext.arm_r2, err);
-	__put_user_error(regs->ARM_r3, &sf->uc.uc_mcontext.arm_r3, err);
-	__put_user_error(regs->ARM_r4, &sf->uc.uc_mcontext.arm_r4, err);
-	__put_user_error(regs->ARM_r5, &sf->uc.uc_mcontext.arm_r5, err);
-	__put_user_error(regs->ARM_r6, &sf->uc.uc_mcontext.arm_r6, err);
-	__put_user_error(regs->ARM_r7, &sf->uc.uc_mcontext.arm_r7, err);
-	__put_user_error(regs->ARM_r8, &sf->uc.uc_mcontext.arm_r8, err);
-	__put_user_error(regs->ARM_r9, &sf->uc.uc_mcontext.arm_r9, err);
-	__put_user_error(regs->ARM_r10, &sf->uc.uc_mcontext.arm_r10, err);
-	__put_user_error(regs->ARM_fp, &sf->uc.uc_mcontext.arm_fp, err);
-	__put_user_error(regs->ARM_ip, &sf->uc.uc_mcontext.arm_ip, err);
-	__put_user_error(regs->ARM_sp, &sf->uc.uc_mcontext.arm_sp, err);
-	__put_user_error(regs->ARM_lr, &sf->uc.uc_mcontext.arm_lr, err);
-	__put_user_error(regs->ARM_pc, &sf->uc.uc_mcontext.arm_pc, err);
-	__put_user_error(regs->ARM_cpsr, &sf->uc.uc_mcontext.arm_cpsr, err);
-
-	__put_user_error(current->thread.trap_no, &sf->uc.uc_mcontext.trap_no, err);
-	__put_user_error(current->thread.error_code, &sf->uc.uc_mcontext.error_code, err);
-	__put_user_error(current->thread.address, &sf->uc.uc_mcontext.fault_address, err);
-	__put_user_error(set->sig[0], &sf->uc.uc_mcontext.oldmask, err);
+	context = (struct sigcontext) {
+		.arm_r0        = regs->ARM_r0,
+		.arm_r1        = regs->ARM_r1,
+		.arm_r2        = regs->ARM_r2,
+		.arm_r3        = regs->ARM_r3,
+		.arm_r4        = regs->ARM_r4,
+		.arm_r5        = regs->ARM_r5,
+		.arm_r6        = regs->ARM_r6,
+		.arm_r7        = regs->ARM_r7,
+		.arm_r8        = regs->ARM_r8,
+		.arm_r9        = regs->ARM_r9,
+		.arm_r10       = regs->ARM_r10,
+		.arm_fp        = regs->ARM_fp,
+		.arm_ip        = regs->ARM_ip,
+		.arm_sp        = regs->ARM_sp,
+		.arm_lr        = regs->ARM_lr,
+		.arm_pc        = regs->ARM_pc,
+		.arm_cpsr      = regs->ARM_cpsr,
+
+		.trap_no       = current->thread.trap_no,
+		.error_code    = current->thread.error_code,
+		.fault_address = current->thread.address,
+		.oldmask       = set->sig[0],
+	};
+
+	err |= __copy_to_user(&sf->uc.uc_mcontext, &context, sizeof(context));
 
 	err |= __copy_to_user(&sf->uc.uc_sigmask, set, sizeof(*set));
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
