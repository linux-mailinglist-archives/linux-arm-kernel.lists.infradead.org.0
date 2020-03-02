Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6CA1751B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 03:04:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rA9VLt+qqL+frUz4yH5L0sQqhC2D/hNOQ9H1jpvF3Y0=; b=ePZRdlmDlmH8fq
	4b1MiK/17+Zq292/TvgAgUYYYvQCcPUFp1tIWKtp+zTx7Yez+h2CXheV5iOmH0c/cjHR5xZjYRZPp
	eQOYdrRquth+f84SfO8v0soZUkLgQZweOgZCs7xkauMtwNJeZ4C7s1xmDmnSeGc4sk8AQq8TkNnxQ
	SLOhdOEaNx8BjcB6bbK/U2sUv05vU37H7kLjoUuk1+5qPOtBeboyUIKlCap1oM6swMfj+g4cAP3d3
	ysBIQhx7r6euwT0kAXszI0jqlnmIq0VWHQCs8xbYSZypzvCUynN5iY6MRg80t5MFCYEERcsx6bCl1
	HmiltouRR4tDDWaeSy+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8aRD-0005ny-Mu; Mon, 02 Mar 2020 02:04:07 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8aR3-0005nC-J5
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 02:03:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583114634;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=f1TfCk6bfq19Mjge8sjJEjXyYMp3pKACoxP43Q8soZY=;
 b=NKC6rsCKUDOhJp3z+ueScD+wXdXi5Kep7HeaL39C4JMfdivjVBKgxUqmOJFjFymgsf1XZS
 yCM6SxITnnqOZD91R3ZMt8k4D+TtV02qG8HoHHluApFRhSNax5X9+l6dJo2devkrjixDab
 z6BPwO2IdKpA3qdaav9pNvxUfj2Hghg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-284-uPrHOxDBNFmHLY-ih7OGxg-1; Sun, 01 Mar 2020 21:03:50 -0500
X-MC-Unique: uPrHOxDBNFmHLY-ih7OGxg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D87BE800D4E;
 Mon,  2 Mar 2020 02:03:48 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-69.bne.redhat.com
 [10.64.54.69])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1FE9790F5B;
 Mon,  2 Mar 2020 02:03:44 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64/kernel: Simplify __cpu_up() by bailing out early
Date: Mon,  2 Mar 2020 13:03:40 +1100
Message-Id: <20200302020340.119588-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_180357_715794_D5D29478 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shan.gavin@gmail.com, maz@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function __cpu_up() is invoked to bring up the target CPU through
the backend, PSCI for example. The nested if statements won't be needed
if we bail out early on the following two conditions where the status
won't be checked. The code looks simplified in that case.

   * Error returned from the backend (e.g. PSCI)
   * The target CPU has been marked as onlined

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/kernel/smp.c | 79 +++++++++++++++++++----------------------
 1 file changed, 37 insertions(+), 42 deletions(-)

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index d4ed9a19d8fe..2a9d8f39dc58 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -115,60 +115,55 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 	update_cpu_boot_status(CPU_MMU_OFF);
 	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
 
-	/*
-	 * Now bring the CPU into our world.
-	 */
+	/* Now bring the CPU into our world */
 	ret = boot_secondary(cpu, idle);
-	if (ret == 0) {
-		/*
-		 * CPU was successfully started, wait for it to come online or
-		 * time out.
-		 */
-		wait_for_completion_timeout(&cpu_running,
-					    msecs_to_jiffies(5000));
-
-		if (!cpu_online(cpu)) {
-			pr_crit("CPU%u: failed to come online\n", cpu);
-			ret = -EIO;
-		}
-	} else {
+	if (ret) {
 		pr_err("CPU%u: failed to boot: %d\n", cpu, ret);
 		return ret;
 	}
 
+	/*
+	 * CPU was successfully started, wait for it to come online or
+	 * time out.
+	 */
+	wait_for_completion_timeout(&cpu_running,
+				    msecs_to_jiffies(5000));
+	if (cpu_online(cpu))
+		return 0;
+
+	pr_crit("CPU%u: failed to come online\n", cpu);
 	secondary_data.task = NULL;
 	secondary_data.stack = NULL;
 	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
 	status = READ_ONCE(secondary_data.status);
-	if (ret && status) {
-
-		if (status == CPU_MMU_OFF)
-			status = READ_ONCE(__early_cpu_boot_status);
+	if (status == CPU_MMU_OFF)
+		status = READ_ONCE(__early_cpu_boot_status);
 
-		switch (status & CPU_BOOT_STATUS_MASK) {
-		default:
-			pr_err("CPU%u: failed in unknown state : 0x%lx\n",
-					cpu, status);
-			cpus_stuck_in_kernel++;
-			break;
-		case CPU_KILL_ME:
-			if (!op_cpu_kill(cpu)) {
-				pr_crit("CPU%u: died during early boot\n", cpu);
-				break;
-			}
-			pr_crit("CPU%u: may not have shut down cleanly\n", cpu);
-			/* Fall through */
-		case CPU_STUCK_IN_KERNEL:
-			pr_crit("CPU%u: is stuck in kernel\n", cpu);
-			if (status & CPU_STUCK_REASON_52_BIT_VA)
-				pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
-			if (status & CPU_STUCK_REASON_NO_GRAN)
-				pr_crit("CPU%u: does not support %luK granule \n", cpu, PAGE_SIZE / SZ_1K);
-			cpus_stuck_in_kernel++;
+	switch (status & CPU_BOOT_STATUS_MASK) {
+	default:
+		pr_err("CPU%u: failed in unknown state : 0x%lx\n",
+		       cpu, status);
+		cpus_stuck_in_kernel++;
+		break;
+	case CPU_KILL_ME:
+		if (!op_cpu_kill(cpu)) {
+			pr_crit("CPU%u: died during early boot\n", cpu);
 			break;
-		case CPU_PANIC_KERNEL:
-			panic("CPU%u detected unsupported configuration\n", cpu);
 		}
+		pr_crit("CPU%u: may not have shut down cleanly\n", cpu);
+		/* Fall through */
+	case CPU_STUCK_IN_KERNEL:
+		pr_crit("CPU%u: is stuck in kernel\n", cpu);
+		if (status & CPU_STUCK_REASON_52_BIT_VA)
+			pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
+		if (status & CPU_STUCK_REASON_NO_GRAN) {
+			pr_crit("CPU%u: does not support %luK granule\n",
+				cpu, PAGE_SIZE / SZ_1K);
+		}
+		cpus_stuck_in_kernel++;
+		break;
+	case CPU_PANIC_KERNEL:
+		panic("CPU%u detected unsupported configuration\n", cpu);
 	}
 
 	return ret;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
