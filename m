Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A38ADEA14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9g7XdKfGUtRMLllu28LXFx4Rd8v2pQBOupmYaZh97kk=; b=q+Hwo1NgCaBTkd
	o/3m8QYT0h5Jv+K65ExX6Se11sAXTEyC3Q4Jqqws0yOe/SVWZdrzEnPQlO6XIrD8yko6ytJSxDPlw
	+lVTBE948BzfmwJOmx3NlA9crTiSUGSj0RTfqUQadJ9iwgd63crIcFd9VCnXKci/hy3vNA0jazuVi
	FQ9FzCu3XloB0IaambumQt0aXfOCBejdhNiykLefa7SL3Qkbyx0QqHu6jLIqgaNavTFijXs8UMkvJ
	gX3R7Fl3Z9dw2UaSNWUhiymAZttyG4Oc3te5Ltgy2qU059KXgbQ/nC18w2lE/AQ7jEg6n48/04xo8
	NMJUTD2HX9fs2UvWIbpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVJ5-0005tB-M8; Mon, 21 Oct 2019 10:52:59 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVIw-0005s1-Vw
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:52:52 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7B0CC45A7532B2973BD4;
 Mon, 21 Oct 2019 18:52:43 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 21 Oct 2019 18:52:36 +0800
To: <catalin.marinas@arm.com>, <will@kernel.org>,
 <kstewart@linuxfoundation.org>, <sudeep.holla@arm.com>,
 <gregkh@linuxfoundation.org>, <yeyunfeng@huawei.com>,
 <lorenzo.pieralisi@arm.com>, <tglx@linutronix.de>, <David.Laight@ACULAB.COM>, 
 <mark.rutland@arm.com>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: [PATCH v5] arm64: psci: Reduce the waiting time for
 cpu_psci_cpu_kill()
Message-ID: <710429cc-4d88-b7c3-b068-5459cf8133b5@huawei.com>
Date: Mon, 21 Oct 2019 18:52:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_035251_220292_C7422AA1 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: hushiyuan@huawei.com, linfeilong@huawei.com, wuyun.wu@huawei.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
---
v4 -> v5:
 - track time instead of loop counter

v3 -> v4:
 - using time_before(jiffies, timeout) to check
 - update the comment as review suggest

v2 -> v3:
 - update the comment
 - remove the busy-wait logic, modify the loop logic and output message

v1 -> v2:
 - use usleep_range() instead of udelay() after waiting for a while

 arch/arm64/kernel/psci.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
index c9f72b2665f1..43ae4e0c968f 100644
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
2.7.4.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
