Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD187D774
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:24:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PquvtoTqs5PA+fFvboo3kmw97cVXyrScFtGCLLdiRKw=; b=hHNNasULoFrkfV
	v7jF2X3hTF6+aGdSpGa7V/1oILdQZsUs70jad/vcGTiC+xHWxyrrvkGW+VRLCKBfv3rAWURKCZ+wU
	L/Yt9tRpYHtEvTAyE9rehAcFm5BJqgG20iF6qNFcHi6mnc//OsenBPtHOowVsGGRYo4MJcE9EmEsi
	H5Gt3MGQviRBW5OKTmM9lgIAegbz6sBWVdsk44frzSHItbkq8iTF8ksbTc1lUUhTBOv3Njo2Skv5L
	dk4qd8X3SHDO9SmxSdq2ir5ZoLAZcAa5A+S/j7yf7br4uGCCmnZiTjEdFezMv704LDHU3xcPkSWdt
	GQNUYTvqLJdmXbEW2fCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6NX-000713-H2; Thu, 01 Aug 2019 08:24:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6K9-0002Rp-QA
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:35 +0000
Received: by mail-pf1-x441.google.com with SMTP id r1so33597944pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8Q63Doa+cYNUasTyoI6bAijjzbaGR6LEUpU/vkgXczo=;
 b=OnsdO7izQSNVnwcP+XktL4K50wNOnqx0WIs3j/4fZwBlbC1vL8Vgb2fIiI3F0DZ352
 hDXCHjiY36jcTMB5mAKJuG2ykd6K+l269e6V9AuhxQJ+QwNN46c9FcYNT2PRs7Ux8dyw
 dawW6e6Gip/Dh+pab1P/lzDYfZeOBGdM9VDiD9nFqowBMCClAN46ML417pHVVHLcAImZ
 Jj1R+5+//GzwB447sGneYtYUYUM0RaREDKbuGh9+mZWdlnt3ILrFgEszu/ioySwcYlul
 hEMRvjyIbc7eIJdA/WwhNrZjD3lSGwnOGnRPtMo3p3ayQkKuAkwMog4XZK9aT4zdelH4
 k/LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8Q63Doa+cYNUasTyoI6bAijjzbaGR6LEUpU/vkgXczo=;
 b=CEjJ9vZeFzX+5xxh2JNXIsC0YqcD2FcW/24r+Jj+xy4vZ/gUUkvfqJn8cApNQ8Zy9Q
 8uy0zqXFjRyG8J9XVyKTgNGpSWVk35HEmn3q0jycTMdJNRnpdh4OIyCob+Tu9KhZxzDq
 wzX5zF423jus/wFEPxyWa0NQPK/Do0Vd/lA5krOYeWhXM6KIx6cGDP4pBavuMU4HomcJ
 uHKKk0JAeloXR4jq8x7lnJ1tbIJcMDFVhKm3jMB9pgelQLq94j3cte7gEXZaGJ14EK/o
 bXScWgTZ3SUFAbEyNq4Ctb2MoCFTuQ3fgVRe4o3Nzq8V2omW2LOfcwCn84PDc1+AzUHi
 vX5A==
X-Gm-Message-State: APjAAAVGLmyEyNJfmhRUHC2NNMLOupR3UbC6M7BiY9B4ZwyCk52YOYRg
 5CNS0BDppbOsv/fetoQS5jzviA==
X-Google-Smtp-Source: APXvYqwvOhOWgRG5Ry6TKP2Km/uijYOKs0rlPuA0mCCWOxKbLEYDS5Z6VWPpRcaMDl4E8jVLeWoZuQ==
X-Received: by 2002:a63:ee08:: with SMTP id e8mr64308403pgi.70.1564647633016; 
 Thu, 01 Aug 2019 01:20:33 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id o24sm135619457pfp.135.2019.08.01.01.20.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:32 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 22/47] ARM: signal: copy registers using
 __copy_from_user()
Date: Thu,  1 Aug 2019 13:46:06 +0530
Message-Id: <cd300105252ac227310a4f700bec67745ec1ef46.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012033_936954_BAB62281 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Commit c32cd419d6650e42b9cdebb83c672ec945e6bd7e upstream.

__get_user_error() is used as a fast accessor to make copying structure
members in the signal handling path as efficient as possible.  However,
with software PAN and the recent Spectre variant 1, the efficiency is
reduced as these are no longer fast accessors.

In the case of software PAN, it has to switch the domain register around
each access, and with Spectre variant 1, it would have to repeat the
access_ok() check for each access.

It becomes much more efficient to use __copy_from_user() instead, so
let's use this for the ARM integer registers.

Acked-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/kernel/signal.c | 38 +++++++++++++++++++++-----------------
 1 file changed, 21 insertions(+), 17 deletions(-)

diff --git a/arch/arm/kernel/signal.c b/arch/arm/kernel/signal.c
index 7b8f2141427b..a592bc0287f8 100644
--- a/arch/arm/kernel/signal.c
+++ b/arch/arm/kernel/signal.c
@@ -141,6 +141,7 @@ struct rt_sigframe {
 
 static int restore_sigframe(struct pt_regs *regs, struct sigframe __user *sf)
 {
+	struct sigcontext context;
 	struct aux_sigframe __user *aux;
 	sigset_t set;
 	int err;
@@ -149,23 +150,26 @@ static int restore_sigframe(struct pt_regs *regs, struct sigframe __user *sf)
 	if (err == 0)
 		set_current_blocked(&set);
 
-	__get_user_error(regs->ARM_r0, &sf->uc.uc_mcontext.arm_r0, err);
-	__get_user_error(regs->ARM_r1, &sf->uc.uc_mcontext.arm_r1, err);
-	__get_user_error(regs->ARM_r2, &sf->uc.uc_mcontext.arm_r2, err);
-	__get_user_error(regs->ARM_r3, &sf->uc.uc_mcontext.arm_r3, err);
-	__get_user_error(regs->ARM_r4, &sf->uc.uc_mcontext.arm_r4, err);
-	__get_user_error(regs->ARM_r5, &sf->uc.uc_mcontext.arm_r5, err);
-	__get_user_error(regs->ARM_r6, &sf->uc.uc_mcontext.arm_r6, err);
-	__get_user_error(regs->ARM_r7, &sf->uc.uc_mcontext.arm_r7, err);
-	__get_user_error(regs->ARM_r8, &sf->uc.uc_mcontext.arm_r8, err);
-	__get_user_error(regs->ARM_r9, &sf->uc.uc_mcontext.arm_r9, err);
-	__get_user_error(regs->ARM_r10, &sf->uc.uc_mcontext.arm_r10, err);
-	__get_user_error(regs->ARM_fp, &sf->uc.uc_mcontext.arm_fp, err);
-	__get_user_error(regs->ARM_ip, &sf->uc.uc_mcontext.arm_ip, err);
-	__get_user_error(regs->ARM_sp, &sf->uc.uc_mcontext.arm_sp, err);
-	__get_user_error(regs->ARM_lr, &sf->uc.uc_mcontext.arm_lr, err);
-	__get_user_error(regs->ARM_pc, &sf->uc.uc_mcontext.arm_pc, err);
-	__get_user_error(regs->ARM_cpsr, &sf->uc.uc_mcontext.arm_cpsr, err);
+	err |= __copy_from_user(&context, &sf->uc.uc_mcontext, sizeof(context));
+	if (err == 0) {
+		regs->ARM_r0 = context.arm_r0;
+		regs->ARM_r1 = context.arm_r1;
+		regs->ARM_r2 = context.arm_r2;
+		regs->ARM_r3 = context.arm_r3;
+		regs->ARM_r4 = context.arm_r4;
+		regs->ARM_r5 = context.arm_r5;
+		regs->ARM_r6 = context.arm_r6;
+		regs->ARM_r7 = context.arm_r7;
+		regs->ARM_r8 = context.arm_r8;
+		regs->ARM_r9 = context.arm_r9;
+		regs->ARM_r10 = context.arm_r10;
+		regs->ARM_fp = context.arm_fp;
+		regs->ARM_ip = context.arm_ip;
+		regs->ARM_sp = context.arm_sp;
+		regs->ARM_lr = context.arm_lr;
+		regs->ARM_pc = context.arm_pc;
+		regs->ARM_cpsr = context.arm_cpsr;
+	}
 
 	err |= !valid_user_regs(regs);
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
