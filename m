Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF1D3D085
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w2mTyKWxRh7+y7xY+YD+VcKlLrmnYY1goWvoHILrgXA=; b=QaOinDIcPYTP+L
	AiPuhi54BxEpJbJGrSRYZSMtdKTbJDBEVXhF01N5B7rHwBcGsQVOfrvA5vdnGTs5b3DZJUHSdEL8M
	S7sPnq/vk0misu0sZ5UQz9/aF+JDdMQPWll5CwMTeyTsJHOqsg9PuHrGfXta5/nYq7eqeVUofw8Ym
	Jh1aDAQhvFhKAs76pu09XpxC2mhfVE9TzxGtHOlfAO9e1BbOgQco65SHb4dV0mCZRrWmcv86831Af
	09CS92+LE4M2itu+aN5U+LzH5/+dVJ0zxJOyEc+t+kuJnxzksDsv08xMM8SztwKQCiaHrerFcFu0A
	9C2cgqXBQmxIfI6asleg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiTo-0001SU-U4; Tue, 11 Jun 2019 15:14:32 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiTa-0001RC-Ba
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:14:21 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5B7A1785BD8CB804D325;
 Tue, 11 Jun 2019 23:14:11 +0800 (CST)
Received: from euler.huawei.com (10.175.104.193) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.439.0; Tue, 11 Jun 2019 23:14:04 +0800
From: Wei Li <liwei391@huawei.com>
To: <mark.rutland@arm.com>, <marc.zyngier@arm.com>,
 <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
Subject: [PATCH] clocksource/arm_arch_timer: mark arch_timer_read_counter() as
 notrace to avoid deadloop
Date: Tue, 11 Jun 2019 23:21:35 +0800
Message-ID: <20190611152135.44589-1-liwei391@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.193]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_081419_136801_3D106947 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-arm-kernel@lists.infradead.org, huawei.libin@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to arch_counter_register(), mark arch_counter_get_*() what
arch_timer_read_counter() can be as notrace to avoid deadloop when using
function_graph tracer.

 0xffff80028af23250 0xffff000010195e00 sched_clock+64
 0xffff80028af23290 0xffff0000101e83ec trace_clock_local+12
 0xffff80028af232a0 0xffff00001020e52c function_graph_enter+116
 0xffff80028af23300 0xffff00001009af9c prepare_ftrace_return+44
 0xffff80028af23320 0xffff00001009b0a8 ftrace_graph_caller+28
 0xffff80028af23330 0xffff000010b01918 arch_counter_get_cntvct+16
 0xffff80028af23340 0xffff000010195e00 sched_clock+64
 0xffff80028af23380 0xffff0000101e83ec trace_clock_local+12
 0xffff80028af23390 0xffff00001020e52c function_graph_enter+116
 0xffff80028af233f0 0xffff00001009af9c prepare_ftrace_return+44
 0xffff80028af23410 0xffff00001009b0a8 ftrace_graph_caller+28
 0xffff80028af23420 0xffff000010b01918 arch_counter_get_cntvct+16
 ...

Fixes: 0ea415390cd3 ("clocksource/arm_arch_timer: Use arch_timer_read_counter to access stable counters")
Signed-off-by: Wei Li <liwei391@huawei.com>
---
 drivers/clocksource/arm_arch_timer.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index b2a951a798e2..f4d5bd8fe906 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -149,22 +149,22 @@ u32 arch_timer_reg_read(int access, enum arch_timer_reg reg,
 	return val;
 }
 
-static u64 arch_counter_get_cntpct_stable(void)
+static u64 notrace arch_counter_get_cntpct_stable(void)
 {
 	return __arch_counter_get_cntpct_stable();
 }
 
-static u64 arch_counter_get_cntpct(void)
+static u64 notrace arch_counter_get_cntpct(void)
 {
 	return __arch_counter_get_cntpct();
 }
 
-static u64 arch_counter_get_cntvct_stable(void)
+static u64 notrace arch_counter_get_cntvct_stable(void)
 {
 	return __arch_counter_get_cntvct_stable();
 }
 
-static u64 arch_counter_get_cntvct(void)
+static u64 notrace arch_counter_get_cntvct(void)
 {
 	return __arch_counter_get_cntvct();
 }
@@ -947,7 +947,7 @@ bool arch_timer_evtstrm_available(void)
 	return cpumask_test_cpu(raw_smp_processor_id(), &evtstrm_available);
 }
 
-static u64 arch_counter_get_cntvct_mem(void)
+static u64 notrace arch_counter_get_cntvct_mem(void)
 {
 	u32 vct_lo, vct_hi, tmp_hi;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
