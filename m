Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D311FF33E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGE/TxiQFyQXd5RJNDyBWtCx9Z/cbAVCQ8HbZHv0DFs=; b=bZgQ1Ff3zemX09
	CJc2krLvUgjm8K1jMlQJYjqwJLz8lBIWPspbtaZof6Gi2lxEZfbayE3V6l31u3EU4ZF/JAM6tTdlm
	57zmJz043CHKpNpcC2G/g0MIzPUAHBuu0Kstktl9N9JKaCMqzcDs43ORM2oHAbRWZO1TKbNsS25o1
	5CS270gmwwrz1XPAxnDkmiuyzT4ho62cC0TpbwbO6bTHSa9P0jmUAQrHV/0W/GJfer/z2Dti+/vEv
	O9l4O7aXoYEdXE8eBj28e+BDl3QVxQlRv9VgtkwOgl9VQEgtEgGfWT54nHnKpwZZnUqnlLsTBGVQw
	ydjnZoAa63CH1+0gHyQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlujx-0007Yg-Vz; Thu, 18 Jun 2020 13:38:01 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlujP-0007LJ-6r
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:37:28 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A997DE7D01D384956F84;
 Thu, 18 Jun 2020 21:37:25 +0800 (CST)
Received: from localhost.localdomain (10.69.192.56) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Thu, 18 Jun 2020 21:37:19 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v3 3/3] arm64: perf: Correct the event index in sysfs
Date: Thu, 18 Jun 2020 21:35:44 +0800
Message-ID: <1592487344-30555-3-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592487344-30555-1-git-send-email-zhangshaokun@hisilicon.com>
References: <1592487344-30555-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_063727_439177_EB658B51 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When PMU event ID is equal or greater than 0x4000, it will be reduced
by 0x4000 and it is not the raw number in the sysfs. Let's correct it
and obtain the raw event ID.

Before this patch:
cat /sys/bus/event_source/devices/armv8_pmuv3_0/events/sample_feed
event=0x001
After this patch:
cat /sys/bus/event_source/devices/armv8_pmuv3_0/events/sample_feed
event=0x4001

Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
---
 arch/arm64/kernel/perf_event.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 32c87cd48cbe..4bcdc94a780f 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -155,7 +155,7 @@ armv8pmu_events_sysfs_show(struct device *dev,
 
 	pmu_attr = container_of(attr, struct perf_pmu_events_attr, attr);
 
-	return sprintf(page, "event=0x%03llx\n", pmu_attr->id);
+	return sprintf(page, "event=0x%04llx\n", pmu_attr->id);
 }
 
 #define ARMV8_EVENT_ATTR(name, config)						\
@@ -263,10 +263,13 @@ armv8pmu_event_attr_is_visible(struct kobject *kobj,
 	    test_bit(pmu_attr->id, cpu_pmu->pmceid_bitmap))
 		return attr->mode;
 
-	pmu_attr->id -= ARMV8_PMUV3_EXT_COMMON_EVENT_BASE;
-	if (pmu_attr->id < ARMV8_PMUV3_MAX_COMMON_EVENTS &&
-	    test_bit(pmu_attr->id, cpu_pmu->pmceid_ext_bitmap))
-		return attr->mode;
+	if (pmu_attr->id >= ARMV8_PMUV3_EXT_COMMON_EVENT_BASE) {
+		u64 id = pmu_attr->id - ARMV8_PMUV3_EXT_COMMON_EVENT_BASE;
+
+		if (id < ARMV8_PMUV3_MAX_COMMON_EVENTS && test_bit(id,
+			 cpu_pmu->pmceid_ext_bitmap))
+			return attr->mode;
+	}
 
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
