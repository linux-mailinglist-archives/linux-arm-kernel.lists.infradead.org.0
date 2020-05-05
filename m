Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD221C4D18
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 06:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pS/Ytd3qlIXvDjc4Zr49vInH2mnRIwGkh9+VCuAKwW8=; b=oD4YzRhSnYO5Rs
	WPgLYh0Q+bDBpdK6AM7CilUs+jqiU3NkHZV7o/whpn46xL4ajvvpyV3leaL8KYENdHPLd66uwNAsC
	z8QnQanDd9xIGhhaEj3fkKIQqFsSa1xBiXBJZwGBGfXrXpcPoJ7ZN8vTYofTHjmeY9nJFzkWPWG0x
	/1RgU/AHbz4BYfdvlMYI5+Y86MthR63tg+WztJWrYPBbXwx1QazxupKsJmfO+in2c32pkn4/5GYWA
	JVLYBUVl0QxoAdc4SZWBHxd5dZHhT0uG9eArnmVn7xvKEjiotuCWbr/gsEUpbmAgxMkLa9cVHRK0q
	h2bXNBM+u0oO0RFj04vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVp2x-0000Zj-Jf; Tue, 05 May 2020 04:19:07 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVp2H-0008Sf-DZ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 04:18:27 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 79A20D3BC4596DB60646;
 Tue,  5 May 2020 12:18:15 +0800 (CST)
Received: from localhost.localdomain (10.69.192.56) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.487.0; Tue, 5 May 2020 12:18:06 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v2 3/3] arm64: perf: Correct the event index in sysfs
Date: Tue, 5 May 2020 12:16:40 +0800
Message-ID: <1588652200-12341-3-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588652200-12341-1-git-send-email-zhangshaokun@hisilicon.com>
References: <1588652200-12341-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_211825_626818_821389BE 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
and obtain the right event ID.

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
index 32c87cd48cbe..bd73e7f0e652 100644
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
+	if (pmu_attr->id > ARMV8_PMUV3_EXT_COMMON_EVENT_BASE) {
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
