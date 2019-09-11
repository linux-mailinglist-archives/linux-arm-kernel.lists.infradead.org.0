Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8797CAF840
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 10:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HANcoZiWN09bIfEhCEFbVuIuJtPIVOdhrphEnhIRIbM=; b=G87UNSMaSXlHYW
	9Rx9fqfEcmCDekF/ASCqx8unawzzHd6qKm/+lanRxI0RNyaeSbipyd1hh1uNJ9f94dyRMYDOUJIV5
	ObH8G7byDET72s4ppjMv+JfXQ6MLhZxKDPh1C6rzmhKXnYpap7JQW6oVcxu7KVtEtQOjxKrlCscvN
	XIlGRsZ/dbioKWzSont+6p/xRsv/vo1rpVKMgWSPDgjo8qHnFBEtgH3/wirw9s/XdBRO/pzTpbzox
	EraAqEYEK+P9Z73Fjdx3IFp0tTHdJWCVvNqaFXuFRyVrH/vpqJ00vubTfiyBmpLMwtFUNtTxEH4qI
	jAK99EL+eHZ9Al92b9Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7yL6-0007zB-4B; Wed, 11 Sep 2019 08:51:00 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7yKt-0007yX-TA
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 08:50:49 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1641D4EFB943E5F659AA;
 Wed, 11 Sep 2019 16:50:39 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 11 Sep 2019 16:50:29 +0800
To: <catalin.marinas@arm.com>, <will@kernel.org>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: [PATCH] arm64: psci: Use udelay() instead of msleep() to reduce
 waiting time
Message-ID: <e4d42bda-72f2-4002-f319-1cbe2bff74d2@huawei.com>
Date: Wed, 11 Sep 2019 16:50:08 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_015048_112155_175FF4CA 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kstewart@linuxfoundation.org, ard.biesheuvel@linaro.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, tglx@linutronix.de,
 wuyun.wu@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We want to reduce the time of cpu_down() for saving power, found that
cpu_psci_cpu_kill() cost 10ms after psci_ops.affinity_info() fail.

Normally the time cpu dead is very short, it is no need to wait 10ms.
so use udelay 10us to instead msleep 10ms in every waiting loop, and add
cond_resched() to give a chance to run a higher-priority process.

Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
---
 arch/arm64/kernel/psci.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
index 85ee7d0..9e9d8a6 100644
--- a/arch/arm64/kernel/psci.c
+++ b/arch/arm64/kernel/psci.c
@@ -86,15 +86,15 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
 	 * while it is dying. So, try again a few times.
 	 */

-	for (i = 0; i < 10; i++) {
+	for (i = 0; i < 10000; i++) {
 		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
 		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
 			pr_info("CPU%d killed.\n", cpu);
 			return 0;
 		}

-		msleep(10);
-		pr_info("Retrying again to check for CPU kill\n");
+		cond_resched();
+		udelay(10);
 	}

 	pr_warn("CPU%d may not have shut down cleanly (AFFINITY_INFO reports %d)\n",
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
