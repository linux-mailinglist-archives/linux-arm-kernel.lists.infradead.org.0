Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178DDD06B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 06:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/GDPwMvuThx9jq0ELPAagT5FnZLswhmqXZyl97+yhOs=; b=MWCpdJr/FR+xU+
	nbCe6IKbluIl3UeIKkeopJPgnInOcqdUQILia1Bm27RZeSfunLK/8Ex3VjVRrPRqjNofhIHsIhv+u
	1uQJMGnr9IQZ5zUdHXJVvVNv77q5D/2f5m2QW1IbEmoEDzO9HlsPG+7mftMAYI3g+ntqIy9mAgUdm
	1olXp/MjwJy7xYTtnUIAE3zK5Vv+VHqwcXNV4FHHRZ//zIMJbe3OAK1yyn+hXNHo8wtaCnPu3mKIL
	8eayGtNkepZVT6Srv/O//uhZMxS+T1LuHZZq/o/WdFAil5vRPqmolaG0bps1AxrrYPFvf4DGUCMn5
	n/qckSq6QXyDRwzA3O1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI3rS-0003MN-2M; Wed, 09 Oct 2019 04:46:06 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI3rJ-0003Lm-4j
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 04:45:58 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 536C27FB91AF7942FE52;
 Wed,  9 Oct 2019 12:45:51 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 9 Oct 2019 12:45:44 +0800
Subject: [PATCH V2] arm64: psci: Reduce waiting time of cpu_psci_cpu_kill()
From: Yunfeng Ye <yeyunfeng@huawei.com>
To: David Laight <David.Laight@ACULAB.COM>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>,
 "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>
References: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
Message-ID: <9df267db-e647-a81d-16bb-b8bfb06c2624@huawei.com>
Date: Wed, 9 Oct 2019 12:45:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_214557_358680_8469799E 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "wuyun.wu@huawei.com" <wuyun.wu@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If psci_ops.affinity_info() fails, it will sleep 10ms, which will not
take so long in the right case. Use usleep_range() instead of msleep(),
reduce the waiting time, and give a chance to busy wait before sleep.

Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
---
V1->V2:
- use usleep_range() instead of udelay() after waiting for a while

 arch/arm64/kernel/psci.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
index c9f72b2..99b3122 100644
--- a/arch/arm64/kernel/psci.c
+++ b/arch/arm64/kernel/psci.c
@@ -82,6 +82,7 @@ static void cpu_psci_cpu_die(unsigned int cpu)
 static int cpu_psci_cpu_kill(unsigned int cpu)
 {
 	int err, i;
+	unsigned long timeout;

 	if (!psci_ops.affinity_info)
 		return 0;
@@ -91,16 +92,24 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
 	 * while it is dying. So, try again a few times.
 	 */

-	for (i = 0; i < 10; i++) {
+	i = 0;
+	timeout = jiffies + msecs_to_jiffies(100);
+	do {
 		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
 		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
 			pr_info("CPU%d killed.\n", cpu);
 			return 0;
 		}

-		msleep(10);
-		pr_info("Retrying again to check for CPU kill\n");
-	}
+		/* busy-wait max 1ms */
+		if (i++ < 100) {
+			cond_resched();
+			udelay(10);
+			continue;
+		}
+
+		usleep_range(100, 1000);
+	} while (time_before(jiffies, timeout));

 	pr_warn("CPU%d may not have shut down cleanly (AFFINITY_INFO reports %d)\n",
 			cpu, err);
-- 
2.7.4.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
