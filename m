Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 412683B2AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dukw38GC5Y1ydsHuyhOD9bwtFx15HmhVDvkq20+E/kY=; b=nA7naTvvShwBXe
	Ss1gIUuz+EhfaB52o3DNKQylltJtSmo00hxTcFiwdznodalDqUrH/2jA0BCIlPGTJHeN87LwgToee
	b5HBp8OuJfauR+0Hvljy+oPxd6727AgrPZET5U3sVUblrDjPq/LZ2zhkugHRjTq+qpN3/srp3LU2y
	8kouNT1enqJQg+regkT1Ev3ctqLCyMQLGiN1d0iT6gT8eTZJOF+SpAkVvDIDt85/EWXbx2Gg8+gXd
	yRrRoCwZp5B+L92bXrZRQNHTZOIrhFxml9u9QZAff4s3UTcszQeokiYbo/4lTDb+H5uFKLxOX7coC
	9gE35DYjd4wFfBvTFKeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haH8I-0002Qk-Dm; Mon, 10 Jun 2019 10:02:30 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haH76-0001aq-Ui
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:01:19 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id E6281F61A87CED15321F;
 Mon, 10 Jun 2019 18:01:10 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Mon, 10 Jun 2019 18:00:51 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
 <namhyung@kernel.org>, <tmricht@linux.ibm.com>, <brueckner@linux.ibm.com>,
 <kan.liang@linux.intel.com>, <ben@decadent.org.uk>,
 <mathieu.poirier@linaro.org>, <mark.rutland@arm.com>, <will.deacon@arm.com>
Subject: [PATCH 0/5] Perf uncore PMU event alias support for Hisi hip08 ARM64
 platform
Date: Mon, 10 Jun 2019 17:59:27 +0800
Message-ID: <1560160772-210844-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_030117_254297_E448E21B 
X-CRM114-Status: UNSURE (   9.27  )
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
Cc: ak@linux.intel.com, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com, zhangshaokun@hisilicon.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for uncore PMU event aliasing for HiSilicon
hip08 ARM64 platform.

We can now get proper event description for uncore events for the
perf tool.

For HHA, DDRC, and L3C JSONs, we don't have all the event info yet, so
I will seek it out to update the JSONs later.

John Garry (5):
  perf pmu: Fix uncore PMU alias list for ARM64
  perf pmu: Support more complex PMU event aliasing
  perf jevents: Add support for Hisi hip08 DDRC PMU aliasing
  perf jevents: Add support for Hisi hip08 HHA PMU aliasing
  perf jevents: Add support for Hisi hip08 L3C PMU aliasing

 .../arm64/hisilicon/hip08/uncore-ddrc.json    | 44 +++++++++++++
 .../arm64/hisilicon/hip08/uncore-hha.json     | 51 ++++++++++++++++
 .../arm64/hisilicon/hip08/uncore-l3c.json     | 37 +++++++++++
 tools/perf/pmu-events/jevents.c               |  3 +
 tools/perf/util/pmu.c                         | 61 ++++++++++++++-----
 5 files changed, 181 insertions(+), 15 deletions(-)
 create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-ddrc.json
 create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-hha.json
 create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-l3c.json

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
