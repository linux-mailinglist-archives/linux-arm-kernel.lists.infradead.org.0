Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDF6DC3F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 13:24:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R8gGDtV+jZjwHP6j2uZ9bjwIdu3BTmISxgIsDQELfMs=; b=E0cNw1JDbjeSs6
	ReoCAglsIH6EuTjaZ2YRKunjAnddgYegF9ISXV5kOvbx+bbkWsB9gIfeTnl1VZfdaKQsmVRI+lSRY
	dETRUMNejuAPWSllT72cxVRXlBSGYnFA1VcYPKzn2S9sPi9XRSlIUUcuOwD7cImQ9UANsyxODO3PA
	QMZwauQ4N8KHcWCifwwUl0phe8itmfpYWjj44ThFOKRd6vK8HlPDwJLK6lry8/sEDGXQfdHsOU1b6
	VKyKjc8/HvF6xS3s5HTE4HxMXpOGhW567hnXFU9hKFxe1oHfzTZR24aiX4vsombv3Ix0c3s0tdD/g
	vxBnNIy0GR8M4fMfgrxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQN6-0002UF-E8; Fri, 18 Oct 2019 11:24:40 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQMx-0002TN-LN
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 11:24:33 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1599FC736ED91386532A;
 Fri, 18 Oct 2019 19:24:26 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 18 Oct 2019 19:24:16 +0800
From: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: [PATCH V3] arm64: psci: Reduce waiting time for cpu_psci_cpu_kill()
To: <catalin.marinas@arm.com>, <will@kernel.org>,
 <kstewart@linuxfoundation.org>, <sudeep.holla@arm.com>,
 <gregkh@linuxfoundation.org>, <lorenzo.pieralisi@arm.com>,
 <tglx@linutronix.de>, <David.Laight@ACULAB.COM>, <ard.biesheuvel@linaro.org>
Message-ID: <433980c7-f246-f741-f00c-fce103a60af7@huawei.com>
Date: Fri, 18 Oct 2019 19:24:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_042431_880379_3F1ACDBB 
X-CRM114-Status: GOOD (  13.63  )
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
Cc: "hushiyuan@huawei.com" <hushiyuan@huawei.com>,
 "linfeilong@huawei.com" <linfeilong@huawei.com>, wuyun.wu@huawei.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In a case like suspend-to-disk, a large number of CPU cores need to be
shut down. At present, the CPU hotplug operation is serialised, and the
CPU cores can only be shut down one by one. In this process, if PSCI
affinity_info() does not return LEVEL_OFF quickly, cpu_psci_cpu_kill()
needs to wait for 10ms. If hundreds of CPU cores need to be shut down,
it will take a long time.

Normally, it is no need to wait 10ms in cpu_psci_cpu_kill(). So change
the wait interval from 10 ms to max 1 ms and use usleep_range() instead
of msleep() for more accurate schedule.

In addition, reduce the time interval will increase the messages output,
so remove the "Retry ..." message, instead, put the number of waiting
times to the sucessful message.

Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
---
v2 -> v3:
 - update the comment
 - remove the busy-wait logic, modify the loop logic and output message

v1 -> v2:
 - use usleep_range() instead of udelay() after waiting for a while

 arch/arm64/kernel/psci.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
index c9f72b2665f1..00b8c0825a08 100644
--- a/arch/arm64/kernel/psci.c
+++ b/arch/arm64/kernel/psci.c
@@ -91,15 +91,14 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
 	 * while it is dying. So, try again a few times.
 	 */

-	for (i = 0; i < 10; i++) {
+	for (i = 0; i < 100; i++) {
 		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
 		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
-			pr_info("CPU%d killed.\n", cpu);
+			pr_info("CPU%d killed by waiting %d loops.\n", cpu, i);
 			return 0;
 		}

-		msleep(10);
-		pr_info("Retrying again to check for CPU kill\n");
+		usleep_range(100, 1000);
 	}

 	pr_warn("CPU%d may not have shut down cleanly (AFFINITY_INFO reports %d)\n",
-- 
2.7.4.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
