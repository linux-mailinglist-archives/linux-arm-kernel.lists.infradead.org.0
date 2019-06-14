Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 768B64602A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:10:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qeUK+Hfb+RF/TSk2h5L+3M84pG9FBS2KDiZf/kd6sII=; b=PtJo6ax5FrPQ2A
	OfrwVUJOJmz3zpubErP4tMw6jSzgGGDubOeYHGoG1Vk6lBlvfJftQ9p8TjQS+CSmBmp3FcIH+2s5z
	7ZW5ZrR6t7IWoTgefRtU6UkcoElBFPHtRDQR+8oaSA6BRGNjAToJ4hARQj6ofTW68qF0sjjyo+L6h
	CVSbKOFEwGCa55kb5ptKud6AZ+XHkPvcrhi8bPh6wZ5dwsJK6lSE6OWk01wxwKuMdPj6rI0JgrwrE
	xtHDNF67XctQazb4BP1NsGaAtQqvyk03vsd6IhZeck4VP2le2wr1oZa1S5tGPcWE5gt8KhS73NSzM
	ZHmU31xHioVIqyBLrlmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmuW-0005RP-Kj; Fri, 14 Jun 2019 14:10:32 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmte-0003i0-0n
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:09:41 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id E1D6B358CEDAD55C03A2;
 Fri, 14 Jun 2019 22:09:29 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Fri, 14 Jun 2019 22:09:23 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
 <namhyung@kernel.org>, <tmricht@linux.ibm.com>, <brueckner@linux.ibm.com>,
 <kan.liang@linux.intel.com>, <ben@decadent.org.uk>,
 <mathieu.poirier@linaro.org>, <mark.rutland@arm.com>, <will.deacon@arm.com>
Subject: [PATCH v2 2/5] perf pmu: Support more complex PMU event aliasing
Date: Fri, 14 Jun 2019 22:08:00 +0800
Message-ID: <1560521283-73314-3-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1560521283-73314-1-git-send-email-john.garry@huawei.com>
References: <1560521283-73314-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_070938_358627_9D338D17 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: zhangshaokun@hisilicon.com, John
 Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linuxarm@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The jevent "Unit" field is used for uncore PMU alias definition.

The form uncore_pmu_example_X is supported, where "X" is a wildcard,
to support multiple instances of the same PMU in a system.

Unfortunately this format not suitable for all uncore PMUs; take the Hisi
DDRC uncore PMU for example, where the name is in the form
hisi_scclX_ddrcY.

For the current jevent parsing, we would be required to hardcode an uncore
alias translation for each possible value of X. This is not scalable.

Instead, add support for "Unit" field in the form "hisi_sccl,ddrc", where
we can match by hisi_scclX and ddrcY. Tokens in Unit field are 
delimited by ','.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/util/pmu.c | 39 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 34 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index 7e7299fee550..bc71c60589b5 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -700,6 +700,39 @@ struct pmu_events_map *perf_pmu__find_map(struct perf_pmu *pmu)
 	return map;
 }
 
+static bool pmu_uncore_alias_match(const char *pmu_name, const char *name)
+{
+	char *tmp, *tok, *str;
+	bool res;
+
+	str = strdup(pmu_name);
+	if (!str)
+		return false;
+
+	/*
+	 * uncore alias may be from different PMU with common
+	 * prefix or matching tokens.
+	 */
+	tok = strtok_r(str, ",", &tmp);
+	if (strncmp(pmu_name, tok, strlen(tok))) {
+		res = false;
+		goto out;
+	}
+
+	for (; tok; name += strlen(tok), tok = strtok_r(NULL, ",", &tmp)) {
+		name = strstr(name, tok);
+		if (!name) {
+			res = false;
+			goto out;
+		}
+	}
+
+	res = true;
+out:
+	free(str);
+	return res;
+}
+
 /*
  * From the pmu_events_map, find the table of PMU events that corresponds
  * to the current running CPU. Then, add all PMU events from that table
@@ -730,12 +763,8 @@ static void pmu_add_cpu_aliases(struct list_head *head, struct perf_pmu *pmu)
 			break;
 		}
 
-		/*
-		 * uncore alias may be from different PMU
-		 * with common prefix
-		 */
 		if (pmu_is_uncore(name) &&
-		    !strncmp(pname, name, strlen(pname)))
+		    pmu_uncore_alias_match(pname, name))
 			goto new_alias;
 
 		if (strcmp(pname, name))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
