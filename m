Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E3AB9D95
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 13:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=65u09tV6Nfhd3Aa7yPWBy2MTYk7ioslqBxwuWX7lyec=; b=f1PWumWFkwqem/
	XyEeHm+GxNf1FfkIHyqqg+IxzMvg/rsxH0AQ+xY3vu+ljn/Iane+FEcvxpg3MGMkoWRYBA4BVneTU
	ufFVzh1ojpj3CoN4Al+e2nws5p2s7/FRcqjiL8KRwfjwmOVVLDXIfoCv2kwTT0OnryvuqAqQFIU3c
	1XIC+h7qDPgCXTT9lDdQg9TouJv3eefFLtOEP8yD+ERUhOwLhAqwJXc3sRzAiBIcob/4sJBgkBnFW
	COCzZNsNq3XVsk53UzytxIf6GavWz1Vh3mGtL6GTcE8hYvrjuqV5vyYGHqKoFGdgpbCWIBEaOgLlz
	Atmc/nm9Gn66f83By4vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBdSk-0004Oa-OJ; Sat, 21 Sep 2019 11:22:02 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBdSN-0004Np-O3
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Sep 2019 11:21:41 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CDF62BE18E877A097D69;
 Sat, 21 Sep 2019 19:21:31 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0;
 Sat, 21 Sep 2019 19:21:23 +0800
To: David Laight <David.Laight@ACULAB.COM>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>,
 "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>, "tglx@linutronix.de"
 <tglx@linutronix.de>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: [PATCH V2] arm64: psci: Reduce waiting time of cpu_psci_cpu_kill()
Message-ID: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
Date: Sat, 21 Sep 2019 19:21:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_042139_947143_E47A6C9C 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
2.7.4.huawei.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
