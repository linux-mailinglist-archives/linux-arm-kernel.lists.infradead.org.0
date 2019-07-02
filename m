Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A285CA04
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 09:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U1KdibLvhLAvXIlPMfuZBhTH80Acgw8L1mvX3PqW9+w=; b=srNgTOIz0J3/WN
	pKPAG87TsVxJ6kT2LKw1BwN6Mp6fYmgs0KrWX+VVjJtE2eVepoxIUSuxTatUdC0bimp93/m12c+xE
	wKhUNLo2EGCfWbTU3B7jmEEZYJ00du9CPOYlKkh0Y9DEA4Qk70/82yCmctjfG9uU36XIiLgB4Sr7j
	zebj0oLcspeEIMZ8rRUfpufcOsiWVL3G7X+b14sAEHmjXhAgJ+8ztVKCjN0hQRSKYcmps1y5t5lnf
	urfcBvDaWna0RdSBkbGsNX4g+JmWSG25ZY0lQrCI5wT8kLP32ZIBVEMXfy9UJrRxWM+Hi6E1HUG+f
	SxJ2A42xFtDgjFSDqffQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiDMg-0005DA-Bw; Tue, 02 Jul 2019 07:38:10 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiDMR-0005CZ-Qp
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 07:37:57 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E8025E08555A13CB1C06;
 Tue,  2 Jul 2019 15:37:46 +0800 (CST)
Received: from localhost.localdomain (10.67.212.132) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.439.0; Tue, 2 Jul 2019 15:37:40 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] arm64: perf: Remove unused macro
Date: Tue, 2 Jul 2019 15:35:53 +0800
Message-ID: <1562052953-13140-1-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.67.212.132]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_003756_566487_27ECB434 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARMV8_EVENT_ATTR_RESOLVE became unused after commit <4b1a9e6934ec>
("arm64/perf: Filter common events based on PMCEIDn_EL0").

Remove it.

Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
---
 arch/arm64/kernel/perf_event.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 96e90e270042..2d3bdebdf6df 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -157,7 +157,6 @@ armv8pmu_events_sysfs_show(struct device *dev,
 	return sprintf(page, "event=0x%03llx\n", pmu_attr->id);
 }
 
-#define ARMV8_EVENT_ATTR_RESOLVE(m) #m
 #define ARMV8_EVENT_ATTR(name, config) \
 	PMU_EVENT_ATTR(name, armv8_event_attr_##name, \
 		       config, armv8pmu_events_sysfs_show)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
