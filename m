Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7D2435D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 14:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7EVn3PyFJqVyiOFjCIpBNI6FfSa2sVh5v17yHDJX41Q=; b=GmZ
	px5dIPqaR1yCktBgKdVwCr3WF9skt0N44wNZWyhrnA7p9oJ9fnC1R47DgbgrKB9qypsGqrxHPokZE
	dOY+aVitZ1QN6TVky9hipnhe7A/L6xubu1yvCb8cORL14r/N8y0Er1n1wi/jNmugfI+3H6U8nLXeG
	0wFIo3LXRZTXH2lqexp6dTkDXEs1H3bfXKP/YZivgC25ANyHkrN28WMjn5M0YZZZlXZ5O8UJox9t2
	jIZ8Y6XhgfAwqKedKv00kQZBXDZ0IELioke7aNshxFVakDSjNCmjA76H+pvPBCLdBFOItniEzpTnE
	Ic3DGoyy5rc3QAySq9QVZB/AlDPg+ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbOkK-0007ej-LW; Thu, 13 Jun 2019 12:22:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbOk6-0007eK-Rr
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 12:22:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F2282B;
 Thu, 13 Jun 2019 05:22:06 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AE6433F694;
 Thu, 13 Jun 2019 05:22:05 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com
Subject: [PATCH] arm64: smp: fix smp_send_stop() behaviour
Date: Thu, 13 Jun 2019 13:21:46 +0100
Message-Id: <20190613122146.45459-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_052210_949954_0766F095 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, dave.martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On a 2-CPUs system, when one CPU is already online if the other
panics while starting-up, smp_send_stop() will fail to send any
STOP message to the other already online core, resulting in a
system still responsive and alive at the end of the panic procedure.
This patch makes smp_send_stop() account also for the online status
of the calling CPU while evaluating how many CPUs are effectively
online: this way, an adequate number of STOPs is sent, so enforcing
a proper freeze of the system at the end of panic even under the
above conditions.

Reported-by: Dave Martin <Dave.Martin@arm.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---

This peculiar panic-procedure behaviour was exposed hitting a BUG()
while running a KSFT cpu-hotplug test on a 2-core ARMv8 model.
Such trigger-BUG() was fixed by a distinct commit already included
in Linux 5.2-rc4 [0]

[0] https://lore.kernel.org/linux-arm-kernel/1559576102-12156-1-git-send-email-Dave.Martin@arm.com/
---
 arch/arm64/kernel/smp.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index bb4b3f07761a..c7d604427883 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -971,8 +971,14 @@ void tick_broadcast(const struct cpumask *mask)
 void smp_send_stop(void)
 {
 	unsigned long timeout;
+	unsigned int this_cpu_online = cpu_online(smp_processor_id());
 
-	if (num_online_cpus() > 1) {
+	/*
+	 * If this CPU isn't fully online, it will not be counted in
+	 * num_online_cpus(): on a 2-CPU system this situation will
+	 * result in no message being sent to the other already online CPU.
+	 */
+	if (num_online_cpus() > this_cpu_online) {
 		cpumask_t mask;
 
 		cpumask_copy(&mask, cpu_online_mask);
@@ -985,10 +991,10 @@ void smp_send_stop(void)
 
 	/* Wait up to one second for other CPUs to stop */
 	timeout = USEC_PER_SEC;
-	while (num_online_cpus() > 1 && timeout--)
+	while (num_online_cpus() > this_cpu_online && timeout--)
 		udelay(1);
 
-	if (num_online_cpus() > 1)
+	if (num_online_cpus() > this_cpu_online)
 		pr_warning("SMP: failed to stop secondary CPUs %*pbl\n",
 			   cpumask_pr_args(cpu_online_mask));
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
