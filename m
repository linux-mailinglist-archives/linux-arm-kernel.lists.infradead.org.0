Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08254119362
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:11:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l40CjIRzBwveoYP4ZTwIawW6IA6f6YM0RZnTdUCKuVY=; b=lt7Xv2gOB/fCFE
	Xy8FJCOPzSwpqgj3D5jbIzvYphORtud1OYA6Lxy/tcqrhLc1YWCJTVz/NylH/fiQF+0ZOUv3qK4X1
	TX1fbNM/Uy3EDI7whocO8NnabIT0ST99f9oKveH/3qX7QdODIF1pW4h2Qwl3ISCyHCAnc4m7JSV2m
	+zi3HPMZyU1FCf7zPzhLo6mBaa+ZoGux/HbHW3B/mg+IPlDyihL0PMljqI98xOAevI7QjqTzstoGK
	deLDVx/87pxLmpzHX50WS470cl8bvojn1XtYzBdig6v1rfCa3E/1gVJlOkpeQ66LoqTATvdyFnH/P
	agQHlY14oKidUkgEPK2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemmk-0004tA-GK; Tue, 10 Dec 2019 21:11:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemlk-0003NC-82
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:10:10 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B93D246A3;
 Tue, 10 Dec 2019 21:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012207;
 bh=c74UdZb99u9Y/Wf02n29njus4/faLy6Lp6Z1/C21cDM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bACOWw5mlh7aVsHPPvZJGwkFHHeCp7AR5HRZ/wUjBDOV/Wj69Eigxt+aAZiEzKwm3
 eWxxKPDYfa4fJWkmmguqxowav74J65QA5jmRX0kSjCpRi7i7HcE2rzis4fI+h676bV
 kMS0mN4piAc6jr5ww1fvdxRmJofOeYX45PmHO0nY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 159/350] arm64: psci: Reduce the waiting time for
 cpu_psci_cpu_kill()
Date: Tue, 10 Dec 2019 16:04:24 -0500
Message-Id: <20191210210735.9077-120-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_131008_621878_E0D703B9 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, Yunfeng Ye <yeyunfeng@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yunfeng Ye <yeyunfeng@huawei.com>

[ Upstream commit bfcef4ab1d7ee8921bc322109b1692036cc6cbe0 ]

In cases like suspend-to-disk and suspend-to-ram, a large number of CPU
cores need to be shut down. At present, the CPU hotplug operation is
serialised, and the CPU cores can only be shut down one by one. In this
process, if PSCI affinity_info() does not return LEVEL_OFF quickly,
cpu_psci_cpu_kill() needs to wait for 10ms. If hundreds of CPU cores
need to be shut down, it will take a long time.

Normally, there is no need to wait 10ms in cpu_psci_cpu_kill(). So
change the wait interval from 10 ms to max 1 ms and use usleep_range()
instead of msleep() for more accurate timer.

In addition, reducing the time interval will increase the messages
output, so remove the "Retry ..." message, instead, track time and
output to the the sucessful message.

Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/kernel/psci.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
index c9f72b2665f1c..43ae4e0c968f6 100644
--- a/arch/arm64/kernel/psci.c
+++ b/arch/arm64/kernel/psci.c
@@ -81,7 +81,8 @@ static void cpu_psci_cpu_die(unsigned int cpu)
 
 static int cpu_psci_cpu_kill(unsigned int cpu)
 {
-	int err, i;
+	int err;
+	unsigned long start, end;
 
 	if (!psci_ops.affinity_info)
 		return 0;
@@ -91,16 +92,18 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
 	 * while it is dying. So, try again a few times.
 	 */
 
-	for (i = 0; i < 10; i++) {
+	start = jiffies;
+	end = start + msecs_to_jiffies(100);
+	do {
 		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
 		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
-			pr_info("CPU%d killed.\n", cpu);
+			pr_info("CPU%d killed (polled %d ms)\n", cpu,
+				jiffies_to_msecs(jiffies - start));
 			return 0;
 		}
 
-		msleep(10);
-		pr_info("Retrying again to check for CPU kill\n");
-	}
+		usleep_range(100, 1000);
+	} while (time_before(jiffies, end));
 
 	pr_warn("CPU%d may not have shut down cleanly (AFFINITY_INFO reports %d)\n",
 			cpu, err);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
