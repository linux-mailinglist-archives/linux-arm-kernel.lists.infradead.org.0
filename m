Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7661D9613
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 14:19:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=piiRzw1m/Zr41wlEQ2vd2L/66GbZY2EueipDQ/vBgJU=; b=EOxp306jeo1PdO
	AZVh4/V2oVDS8h5WH1SzUNlbikOkIWvBeyL+BAzdbz7Rc+qoMvFk4TKUfwldEAf7qMbIgqPm+3iy4
	2UmGMijdcfmRRCfThk6AgN39LbZA3Izt/Q8TJOJqI5Q5bMFOjqZut54LwcBWGCgmhASsjb5aA+Kqq
	eaKnUatewo/nmv8TBmR1O9WgVujmRDo2HSKIdgY0qRn8yJws0VmVhDFo6R55fwUDYUHdFcpauom+V
	3Db+sL56c2nJilfScuXT7VKcj9q6/BpjfBFr7B2MKxtTRz5owTe0BmG+srdoXe0L/jqa3T14Q7VfJ
	IcdWYqmQ7b+gc7+EuLaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1D0-0006YX-TO; Tue, 19 May 2020 12:18:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1CT-0006Os-VQ
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 12:18:27 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6BF4620829;
 Tue, 19 May 2020 12:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589890705;
 bh=bohwZM/RhHrUa6nQzL2fB7GJKIDKG8zmn0Lj5bpPW1g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LyBClsw42IKLzE9/YoqNA2jlw4dAJ/dGFRpi/Do+R2lWKx9KLXrmJVPVGhCpXNjRG
 WTIly+od1nTaHVj0SqxgPqcwIqeNfsPOEK5YHFfFrnxt5QQo6wsjkeb1SZm/bJp04a
 qRym00p9T5Z/o3IqGxLV38MYkCciJLcbdUsLQGP4=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] arm64: vdso: Don't prefix sigreturn trampoline with a BTI
 C instruction
Date: Tue, 19 May 2020 13:18:16 +0100
Message-Id: <20200519121818.14511-2-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519121818.14511-1-will@kernel.org>
References: <20200519121818.14511-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_051826_026654_4DA78647 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Will Deacon <will@kernel.org>, Tamas Zsoldos <tamas.zsoldos@arm.com>,
 Mark Brown <broonie@kernel.org>, kernel-team@android.com,
 Dave Martin <dave.martin@arm.com>, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For better or worse, GDB relies on the exact instruction sequence in the
VDSO sigreturn trampoline in order to unwind from signals correctly.
Commit 714a8d02ca4d ("arm64: asm: Override SYM_FUNC_START when building
the kernel with BTI") unfortunately added a BTI C instruction to the
start of __kernel_rt_sigreturn, which breaks this check. Thankfully,
it's also not required, since the trampoline is called from a RET
instruction when returning from the signal handler

Remove the unnecessary BTI C instruction from __kernel_rt_sigreturn.

Cc: Dave Martin <dave.martin@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Daniel Kiss <daniel.kiss@arm.com>
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>
Fixes: 714a8d02ca4d ("arm64: asm: Override SYM_FUNC_START when building the kernel with BTI")
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vdso/sigreturn.S | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/sigreturn.S b/arch/arm64/kernel/vdso/sigreturn.S
index 3fb13b81f780..83ac284dae79 100644
--- a/arch/arm64/kernel/vdso/sigreturn.S
+++ b/arch/arm64/kernel/vdso/sigreturn.S
@@ -15,7 +15,14 @@
 	.text
 
 	nop
-SYM_FUNC_START(__kernel_rt_sigreturn)
+/*
+ * GDB relies on being able to identify the sigreturn instruction sequence to
+ * unwind from signal handlers. We cannot, therefore, use SYM_FUNC_START()
+ * here, as it will emit a BTI C instruction and break the unwinder. Thankfully,
+ * this function is only ever called from a RET and so omitting the landing pad
+ * is perfectly fine.
+ */
+SYM_START(__kernel_rt_sigreturn, SYM_L_GLOBAL, SYM_A_ALIGN)
 	.cfi_startproc
 	.cfi_signal_frame
 	.cfi_def_cfa	x29, 0
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
