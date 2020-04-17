Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1701ADB66
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjjLO1fZRZt3oLzE3ADfqx3I6XQ+Epf8VwMF/IzJXGs=; b=kNj+SrfR6Q1w3v
	ab6d0m7+vk0fcNntA+wVETiOFJpM8TTSUzh2KywVemfBTo6k23Bfz9xRhJl3yMMLoaat2RqUlACBb
	z/9yCoS9LqUXJVRNEjmxx/7TK7XvbRQ0i6HhcD4gSjquwBj7B4wXAuLYw+UdaneefqVt8TjWFPjDL
	OWCQeji7IvLItMERUFTSlAHkiPjqN8MLGpW8hF+jTIsriFNUuqqUkWZBQ2OADdUkop71pqIOXAGyK
	6v5hB0U/nxJPXU5GXDD6uOOeh7NKOO/LbZ2bRG1HuqpdaY++pcMWSArq9oZ36o58+CE9HYDjpulSX
	C+ATk1XseHFbnR+0h9Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOW9-0001Wj-Kd; Fri, 17 Apr 2020 10:46:41 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOV0-0000gl-HL
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:45:32 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id A5516EDDB903E51E6C70;
 Fri, 17 Apr 2020 18:45:26 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Fri, 17 Apr 2020 18:45:18 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>
Subject: [RFC PATCH v2 01/13] perf parse-events: Fix comparison of evsel and
 leader pmu name
Date: Fri, 17 Apr 2020 18:41:12 +0800
Message-ID: <1587120084-18990-2-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034531_151853_344C7D3B 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: irogers@google.com, ak@linux.intel.com, linux-kernel@vger.kernel.org,
 John Garry <john.garry@huawei.com>, qiangqing.zhang@nxp.com,
 linuxarm@huawei.com, zhangshaokun@hisilicon.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since we now strdup() the pmu name for the event selector, use strcmp()
instead of pointer equality for comparison.

Fixes: d4953f7ef1a2 ("perf parse-events: Fix 3 use after frees found with clang ASANutil/parse-events.c")
Signed-off-by: John Garry <john.garry@huawei.com>
---

I am not 100% sure that this is the right fix....

 tools/perf/util/parse-events.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 10107747b361..90ddade1ba23 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1629,7 +1629,7 @@ parse_events__set_leader_for_uncore_aliase(char *name, struct list_head *list,
 		 * event. That can be used to distinguish the leader from
 		 * other members, even they have the same event name.
 		 */
-		if ((leader != evsel) && (leader->pmu_name == evsel->pmu_name)) {
+		if ((leader != evsel) && !strcmp(leader->pmu_name, evsel->pmu_name)) {
 			is_leader = false;
 			continue;
 		}
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
