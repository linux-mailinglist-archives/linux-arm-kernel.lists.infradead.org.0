Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA535148A18
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:41:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ak/+uTC81whHwtzq30f7ffFIUFQ/PW6510fbzBQexJ0=; b=CJb7oVUtXr1GS0
	9uiv0BNYhdNuTGgEIXZX1Qz2kkJpznO0ww5uurav0RONNzKE0g0agoNU+E1npyVnlHK4hkB1/Px3b
	g3MMZ/eYYjxkIx2hINPxmFwRJXP36nbXNfKJJN3yXaLY7GSmgNlp1D24sBZ9OgA7grJcqiM6hgcBR
	lQJqezo7EIp5p9ooL2EfRoojiqCUcsxdZhA1S1jzL51/f4nRkkQlc8ZxYGrSpkWQrg5xQzE7hCJRq
	lbz7x3bbELhVneWC2Imp8Y1djMlt0R+hhO2UnTtt/ru0+Ky1eFTYsEDDs65rwOIHaBIhS8P92be3j
	Os5B8Fy+f+Fh89cEfgXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv09M-0005GB-MV; Fri, 24 Jan 2020 14:41:32 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv074-00029W-QQ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:39:13 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 83B88F9C643DD5541539;
 Fri, 24 Jan 2020 22:39:03 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Fri, 24 Jan 2020 22:38:55 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>,
 <ak@linux.intel.com>
Subject: [PATCH RFC 6/7] perf vendor events arm64: Relocate uncore events for
 hip08
Date: Fri, 24 Jan 2020 22:35:04 +0800
Message-ID: <1579876505-113251-7-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_063911_033267_31A5BEE7 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: suzuki.poulose@arm.com, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 james.clark@arm.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We will need to match uncore events via SYSID when we want to add any other
system event PMU aliasing in future, so relocate the uncore JSONs now.

We use HIP08 as the system id.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 .../arch/arm64/hisilicon/hip08/{ => sys}/uncore-ddrc.json        | 0
 .../arch/arm64/hisilicon/hip08/{ => sys}/uncore-hha.json         | 0
 .../arch/arm64/hisilicon/hip08/{ => sys}/uncore-l3c.json         | 0
 tools/perf/pmu-events/arch/arm64/mapfile_sys.csv                 | 1 +
 4 files changed, 1 insertion(+)
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => sys}/uncore-ddrc.json (100%)
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => sys}/uncore-hha.json (100%)
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => sys}/uncore-l3c.json (100%)

diff --git a/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-ddrc.json b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/uncore-ddrc.json
similarity index 100%
rename from tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-ddrc.json
rename to tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/uncore-ddrc.json
diff --git a/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-hha.json b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/uncore-hha.json
similarity index 100%
rename from tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-hha.json
rename to tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/uncore-hha.json
diff --git a/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-l3c.json b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/uncore-l3c.json
similarity index 100%
rename from tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-l3c.json
rename to tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/uncore-l3c.json
diff --git a/tools/perf/pmu-events/arch/arm64/mapfile_sys.csv b/tools/perf/pmu-events/arch/arm64/mapfile_sys.csv
index 701d8ff67354..d2baadcbbbed 100644
--- a/tools/perf/pmu-events/arch/arm64/mapfile_sys.csv
+++ b/tools/perf/pmu-events/arch/arm64/mapfile_sys.csv
@@ -11,3 +11,4 @@
 #	Type is sys
 #
 #Family-model,Version,Filename,EventType
+HIP08,v1,hisilicon/hip08/sys,sys
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
