Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8931061DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 07:00:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLBlGcEqcs4UT+NVtFbjshHwuTSycCOY6D7VowIBsWg=; b=Re08+cn/Wu8w8D
	H71TTB1wvk2XPrRVwmYhMqjpdKa9DME0HeYunm8/GLCt+9VzFTyU4AS4lkLGdKFngUvgs7xfuQr5C
	qU4zGpzQ/u6TUz2fchLK2l4C89UzbBFpPNqkYdBnaIaFYsHicQJmUhuBXzsx2eKzMA9stGjmm6t7B
	SoPqZLkawS2qXKPJG+YBO0gKUaroLMraIhBUfwL0hna1aclIy1O708DDn8wbar5AS7UsAnREu59ey
	q5p/CBKpaqSpR1LxqzFjASaQaBQPKCBXW9fgOFvQ/h2dhE/tUG2+vn7yPZ4M37E+QMPHQVGXul6Ua
	mkAlz9IUSbGJAOeK8npg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1zg-0005EL-6G; Fri, 22 Nov 2019 06:00:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1v7-0008Ip-RV
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:55:59 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5114A207FA;
 Fri, 22 Nov 2019 05:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574402153;
 bh=/FPIsBSNgYNCB0baNnp3NAbjXgfFsAp3hpp42LK7BVk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NlkXjiLsE/kNn1xtcSnz8WF17DmYgV6CpH12jg2Zih+ajPx5RwLiBsAZ1vdNxNkdA
 VVptDm8pdhA/Tp+XrqBKV/NMRKCwWIIEQS4aNgFfqwZpr5Edg0Uh/Oz8RaG8TR1RBp
 P5vXLCi5cEzdI5r0lispLUuBm7S9pSHFuu2XXMtQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 008/127] arm64: mm: Prevent mismatched 52-bit VA
 support
Date: Fri, 22 Nov 2019 00:53:46 -0500
Message-Id: <20191122055544.3299-7-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122055544.3299-1-sashal@kernel.org>
References: <20191122055544.3299-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_215554_052219_ADB4907B 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Will Deacon <will.deacon@arm.com>,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Steve Capper <steve.capper@arm.com>

[ Upstream commit a96a33b1ca57dbea4285893dedf290aeb8eb090b ]

For cases where there is a mismatch in ARMv8.2-LVA support between CPUs
we have to be careful in allowing secondary CPUs to boot if 52-bit
virtual addresses have already been enabled on the boot CPU.

This patch adds code to the secondary startup path. If the boot CPU has
enabled 52-bit VAs then ID_AA64MMFR2_EL1 is checked to see if the
secondary can also enable 52-bit support. If not, the secondary is
prevented from booting and an error message is displayed indicating why.

Technically this patch could be implemented using the cpufeature code
when considering 52-bit userspace support. However, we employ low level
checks here as the cpufeature code won't be able to run if we have
mismatched 52-bit kernel va support.

Signed-off-by: Steve Capper <steve.capper@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/kernel/head.S | 26 ++++++++++++++++++++++++++
 arch/arm64/kernel/smp.c  |  5 +++++
 2 files changed, 31 insertions(+)

diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 92cc7b51f1002..9c00fd2acc2a4 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -594,6 +594,7 @@ secondary_startup:
 	/*
 	 * Common entry point for secondary CPUs.
 	 */
+	bl	__cpu_secondary_check52bitva
 	bl	__cpu_setup			// initialise processor
 	bl	__enable_mmu
 	ldr	x8, =__secondary_switched
@@ -668,6 +669,31 @@ ENTRY(__enable_mmu)
 	ret
 ENDPROC(__enable_mmu)
 
+ENTRY(__cpu_secondary_check52bitva)
+#ifdef CONFIG_ARM64_52BIT_VA
+	ldr_l	x0, vabits_user
+	cmp	x0, #52
+	b.ne	2f
+
+	mrs_s	x0, SYS_ID_AA64MMFR2_EL1
+	and	x0, x0, #(0xf << ID_AA64MMFR2_LVA_SHIFT)
+	cbnz	x0, 2f
+
+	adr_l	x0, va52mismatch
+	mov	w1, #1
+	strb	w1, [x0]
+	dmb	sy
+	dc	ivac, x0	// Invalidate potentially stale cache line
+
+	update_early_cpu_boot_status CPU_STUCK_IN_KERNEL, x0, x1
+1:	wfe
+	wfi
+	b	1b
+
+#endif
+2:	ret
+ENDPROC(__cpu_secondary_check52bitva)
+
 __no_granule_support:
 	/* Indicate that this CPU can't boot and is stuck in the kernel */
 	update_early_cpu_boot_status CPU_STUCK_IN_KERNEL, x1, x2
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index a683cd4995157..0881dfab10f8f 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -106,6 +106,7 @@ static int boot_secondary(unsigned int cpu, struct task_struct *idle)
 }
 
 static DECLARE_COMPLETION(cpu_running);
+bool va52mismatch __ro_after_init;
 
 int __cpu_up(unsigned int cpu, struct task_struct *idle)
 {
@@ -135,6 +136,10 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 
 		if (!cpu_online(cpu)) {
 			pr_crit("CPU%u: failed to come online\n", cpu);
+
+			if (IS_ENABLED(CONFIG_ARM64_52BIT_VA) && va52mismatch)
+				pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
+
 			ret = -EIO;
 		}
 	} else {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
