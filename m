Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A42D194C56
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 00:24:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YW6hDzHf09fCZzqNMxJIbehEYAbbKpT36qU6NhgxW8=; b=q5gcoaIMRGWaEH
	4mtkx3Z32EBpihwW/Sjj1RH59zyk9y3aEgIdZjsSQ5ho7adge61BbfapKNb02m2S5iytVfK5sL4+7
	ajkL8fdWc6UfTNw7qIWu74+4ODSWhNgcnqIZR/eYgvDYtvnPClSYAqvfzKRQR4Ec9mKlCc7ol5dIO
	vqBtd81ZUKTYvDMeBmm9LLsCaNvgbA7SYnGzr76X/TFmZMcpCbevyUbD7oAp3LvEM5PwJtxzwAqgs
	L4eU9E8J9mdIpt4/bxLdIEgadQK1ASnriINtIius/9cjb7t/C0ARzWc5BqK8LTB9VYxnUBVopryLP
	8e4Xmuz/peJnVeVQ/PLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHbrX-00016M-T7; Thu, 26 Mar 2020 23:24:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHbrC-00013w-J6
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 23:24:16 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F03F20719;
 Thu, 26 Mar 2020 23:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585265054;
 bh=9l0BVCPnVOk8LApGkJbFE6PV/Q93ExquRErG0hBhDz8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RTgC+gV9ulYuxvOGYYW1VDR1Wh8XdFgKND048fHepIZlvtSsqfoK2AfrEUAMmWG1/
 SpSrQFxuEG6uOAeXBxrvmIDCY7k91gbc0CYWWeABptmiIafLp8MtJcndr6RX6XhkRh
 23M0wGwprHjClXSFNqB7zfNkiuQSy24a5GW4Fqek=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 14/28] arm64: smp: fix smp_send_stop() behaviour
Date: Thu, 26 Mar 2020 19:23:43 -0400
Message-Id: <20200326232357.7516-14-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326232357.7516-1-sashal@kernel.org>
References: <20200326232357.7516-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_162414_708841_6DF5AAAF 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, Cristian Marussi <cristian.marussi@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Cristian Marussi <cristian.marussi@arm.com>

[ Upstream commit d0bab0c39e32d39a8c5cddca72e5b4a3059fe050 ]

On a system with only one CPU online, when another one CPU panics while
starting-up, smp_send_stop() will fail to send any STOP message to the
other already online core, resulting in a system still responsive and
alive at the end of the panic procedure.

[  186.700083] CPU3: shutdown
[  187.075462] CPU2: shutdown
[  187.162869] CPU1: shutdown
[  188.689998] ------------[ cut here ]------------
[  188.691645] kernel BUG at arch/arm64/kernel/cpufeature.c:886!
[  188.692079] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
[  188.692444] Modules linked in:
[  188.693031] CPU: 3 PID: 0 Comm: swapper/3 Not tainted 5.6.0-rc4-00001-g338d25c35a98 #104
[  188.693175] Hardware name: Foundation-v8A (DT)
[  188.693492] pstate: 200001c5 (nzCv dAIF -PAN -UAO)
[  188.694183] pc : has_cpuid_feature+0xf0/0x348
[  188.694311] lr : verify_local_elf_hwcaps+0x84/0xe8
[  188.694410] sp : ffff800011b1bf60
[  188.694536] x29: ffff800011b1bf60 x28: 0000000000000000
[  188.694707] x27: 0000000000000000 x26: 0000000000000000
[  188.694801] x25: 0000000000000000 x24: ffff80001189a25c
[  188.694905] x23: 0000000000000000 x22: 0000000000000000
[  188.694996] x21: ffff8000114aa018 x20: ffff800011156a38
[  188.695089] x19: ffff800010c944a0 x18: 0000000000000004
[  188.695187] x17: 0000000000000000 x16: 0000000000000000
[  188.695280] x15: 0000249dbde5431e x14: 0262cbe497efa1fa
[  188.695371] x13: 0000000000000002 x12: 0000000000002592
[  188.695472] x11: 0000000000000080 x10: 00400032b5503510
[  188.695572] x9 : 0000000000000000 x8 : ffff800010c80204
[  188.695659] x7 : 00000000410fd0f0 x6 : 0000000000000001
[  188.695750] x5 : 00000000410fd0f0 x4 : 0000000000000000
[  188.695836] x3 : 0000000000000000 x2 : ffff8000100939d8
[  188.695919] x1 : 0000000000180420 x0 : 0000000000180480
[  188.696253] Call trace:
[  188.696410]  has_cpuid_feature+0xf0/0x348
[  188.696504]  verify_local_elf_hwcaps+0x84/0xe8
[  188.696591]  check_local_cpu_capabilities+0x44/0x128
[  188.696666]  secondary_start_kernel+0xf4/0x188
[  188.697150] Code: 52805001 72a00301 6b01001f 54000ec0 (d4210000)
[  188.698639] ---[ end trace 3f12ca47652f7b72 ]---
[  188.699160] Kernel panic - not syncing: Attempted to kill the idle task!
[  188.699546] Kernel Offset: disabled
[  188.699828] CPU features: 0x00004,20c02008
[  188.700012] Memory Limit: none
[  188.700538] ---[ end Kernel panic - not syncing: Attempted to kill the idle task! ]---

[root@arch ~]# echo Helo
Helo
[root@arch ~]# cat /proc/cpuinfo | grep proce
processor	: 0

Make smp_send_stop() account also for the online status of the calling CPU
while evaluating how many CPUs are effectively online: this way, the right
number of STOPs is sent, so enforcing a proper freeze of the system at the
end of panic even under the above conditions.

Fixes: 08e875c16a16c ("arm64: SMP support")
Reported-by: Dave Martin <Dave.Martin@arm.com>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/kernel/smp.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index d4ed9a19d8fe7..e4dc241c5a8e8 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -958,11 +958,22 @@ void tick_broadcast(const struct cpumask *mask)
 }
 #endif
 
+/*
+ * The number of CPUs online, not counting this CPU (which may not be
+ * fully online and so not counted in num_online_cpus()).
+ */
+static inline unsigned int num_other_online_cpus(void)
+{
+	unsigned int this_cpu_online = cpu_online(smp_processor_id());
+
+	return num_online_cpus() - this_cpu_online;
+}
+
 void smp_send_stop(void)
 {
 	unsigned long timeout;
 
-	if (num_online_cpus() > 1) {
+	if (num_other_online_cpus()) {
 		cpumask_t mask;
 
 		cpumask_copy(&mask, cpu_online_mask);
@@ -975,10 +986,10 @@ void smp_send_stop(void)
 
 	/* Wait up to one second for other CPUs to stop */
 	timeout = USEC_PER_SEC;
-	while (num_online_cpus() > 1 && timeout--)
+	while (num_other_online_cpus() && timeout--)
 		udelay(1);
 
-	if (num_online_cpus() > 1)
+	if (num_other_online_cpus())
 		pr_warn("SMP: failed to stop secondary CPUs %*pbl\n",
 			cpumask_pr_args(cpu_online_mask));
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
