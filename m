Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6071C8A0A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:04:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3gFxQwTkWODSqV9SImT45yQUCRqLfG2dqJ15yYF5MtY=; b=sohvfkjfePA5FR
	lkQFGbCTKeTV53czwCZwBli1o8y9+ZM8j0IQm+NdTZtTmLYjR02EMzp9TRKYTu+bC86NnCczUFvWE
	hp8h7BHs6ojYsAEk+GpMyyrmTR56V98y+bC+fGT6YGh9hD36EhiFGugrgv0segua8YAk/norOIwb6
	FebN7RtrAc/sPO/R3W5DdMRU04h3tlR62ch9Rn1gMbQTJXlv7Sksg4GrgJ7NEcZqE8GDolTYScNUk
	ijXcrbLtTQKADoITqr1JSNC0hier6/ke02eM3SKqgIuAs3H8O9A1NmjdEzFCoguaT/OhVecbEGb6g
	4y6Q4WrAXxM3Z5hA/6QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfG9-0000ov-Ov; Thu, 07 May 2020 12:04:13 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfEK-0007c0-Sh
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:02:25 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 9E3C1AA775AA1C6E44FB;
 Thu,  7 May 2020 20:02:04 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Thu, 7 May 2020 20:01:57 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>
Subject: [PATCH RFC v3 03/12] perf vendor events arm64: Relocate hip08 events
Date: Thu, 7 May 2020 19:57:42 +0800
Message-ID: <1588852671-61996-4-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_050221_112654_FF951CB1 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.35 listed in wl.mailspike.net]
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
Cc: irogers@google.com, ak@linux.intel.com, linux-kernel@vger.kernel.org,
 John Garry <john.garry@huawei.com>, qiangqing.zhang@nxp.com,
 linuxarm@huawei.com, zhangshaokun@hisilicon.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Relocate the core events JSONs to match to future structure, which will
have separate folders for CPU and system events.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 .../pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/core-imp-def.json   | 0
 .../pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/uncore-ddrc.json    | 0
 .../pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/uncore-hha.json     | 0
 .../pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/uncore-l3c.json     | 0
 tools/perf/pmu-events/arch/arm64/mapfile.csv                            | 2 +-
 5 files changed, 1 insertion(+), 1 deletion(-)
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/core-imp-def.json (100%)
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/uncore-ddrc.json (100%)
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/uncore-hha.json (100%)
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/uncore-l3c.json (100%)

diff --git a/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/core-imp-def.json b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/cpu/core-imp-def.json
similarity index 100%
rename from tools/perf/pmu-events/arch/arm64/hisilicon/hip08/core-imp-def.json
rename to tools/perf/pmu-events/arch/arm64/hisilicon/hip08/cpu/core-imp-def.json
diff --git a/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-ddrc.json b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/cpu/uncore-ddrc.json
similarity index 100%
rename from tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-ddrc.json
rename to tools/perf/pmu-events/arch/arm64/hisilicon/hip08/cpu/uncore-ddrc.json
diff --git a/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-hha.json b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/cpu/uncore-hha.json
similarity index 100%
rename from tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-hha.json
rename to tools/perf/pmu-events/arch/arm64/hisilicon/hip08/cpu/uncore-hha.json
diff --git a/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-l3c.json b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/cpu/uncore-l3c.json
similarity index 100%
rename from tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-l3c.json
rename to tools/perf/pmu-events/arch/arm64/hisilicon/hip08/cpu/uncore-l3c.json
diff --git a/tools/perf/pmu-events/arch/arm64/mapfile.csv b/tools/perf/pmu-events/arch/arm64/mapfile.csv
index 0d609149b82a..c92cb3b519fc 100644
--- a/tools/perf/pmu-events/arch/arm64/mapfile.csv
+++ b/tools/perf/pmu-events/arch/arm64/mapfile.csv
@@ -20,5 +20,5 @@
 0x00000000410fd0c0,v1,arm/cortex-a76-n1,core
 0x00000000420f5160,v1,cavium/thunderx2,core
 0x00000000430f0af0,v1,cavium/thunderx2,core
-0x00000000480fd010,v1,hisilicon/hip08,core
+0x00000000480fd010,v1,hisilicon/hip08/cpu,core
 0x00000000500f0000,v1,ampere/emag,core
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
