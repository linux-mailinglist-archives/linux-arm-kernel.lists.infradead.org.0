Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0250A1489FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:40:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tqns9zFnAG+XH7IwO6T2mpgQwb+r/VjErH9iylIU3hY=; b=fHo8NAyRSlalFR
	996E1bj8jC1EK2Y9HHvIQi4tSUPL4w26PLELL+telo04y24ggQd0K+uaPe7YCjY5LNB7WTmdt4CNb
	gxH321kxVa4YhR4glqxvRPO9wTcyLFvgQjPWVWxVio4w6Ct272tezPTh6ZyzgK7b3TslxEzDjXB8l
	/LO4DYYlvpojFCad9kzK+dHlP31iT49f4gYSaQjXpgRIAfYbODSDuUnpu1ZoTuY9HCngAwRRJguHy
	Z1uk+HzIzpyqQXbW0jF3pFXqUapuAMh5BDQdBN/yFLApLi3ekEc4xt67fCm9DHezDsHQ4IUoPLPZw
	V2Vjv/Yz/hsT/WvhOu0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv08H-0004L1-Q6; Fri, 24 Jan 2020 14:40:25 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv073-00029T-4B
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:39:12 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 8A8E2D5C149B98C0DB21;
 Fri, 24 Jan 2020 22:39:03 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Fri, 24 Jan 2020 22:38:54 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>,
 <ak@linux.intel.com>
Subject: [PATCH RFC 4/7] perf pmu: Rename uncore symbols to include system PMUs
Date: Fri, 24 Jan 2020 22:35:02 +0800
Message-ID: <1579876505-113251-5-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_063909_326400_48182AF0 
X-CRM114-Status: GOOD (  14.42  )
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

We want to expand the perf PMU support to cover system PMUs, which are
essentially the same as uncore pmus (from a kernel sysfs perspective
anyway).

So rename pmu_is_uncore() et al to cover this.

Unfortunately we have no real way to detect if a PMU is uncore or system.
We could check the PMU name for "uncore_" prefix to detect if really uncore,
but this does not work for all uncore PMUs - maybe we should introduce
this kernel naming convention for future support.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/arch/arm64/util/arm-spe.c |  2 +-
 tools/perf/util/evsel.h              |  2 +-
 tools/perf/util/parse-events.c       | 12 ++++++------
 tools/perf/util/pmu.c                |  6 +++---
 tools/perf/util/pmu.h                |  2 +-
 5 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/tools/perf/arch/arm64/util/arm-spe.c b/tools/perf/arch/arm64/util/arm-spe.c
index eba6541ec0f1..4241ad6c9fa0 100644
--- a/tools/perf/arch/arm64/util/arm-spe.c
+++ b/tools/perf/arch/arm64/util/arm-spe.c
@@ -223,7 +223,7 @@ struct perf_event_attr
 	}
 
 	arm_spe_pmu->selectable = true;
-	arm_spe_pmu->is_uncore = false;
+	arm_spe_pmu->is_uncore_or_sys = false;
 
 	return attr;
 }
diff --git a/tools/perf/util/evsel.h b/tools/perf/util/evsel.h
index dc14f4a823cd..d583b2a64d93 100644
--- a/tools/perf/util/evsel.h
+++ b/tools/perf/util/evsel.h
@@ -75,7 +75,7 @@ struct evsel {
 	bool			precise_max;
 	bool			ignore_missing_thread;
 	bool			forced_leader;
-	bool			use_uncore_alias;
+	bool			use_uncore_or_system_alias;
 	/* parse modifier helper */
 	int			exclude_GH;
 	int			sample_read;
diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index ed7c008b9c8b..89105d5f0f0b 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -367,7 +367,7 @@ __add_event(struct list_head *list, int *idx,
 	(*idx)++;
 	evsel->core.cpus   = perf_cpu_map__get(cpus);
 	evsel->core.own_cpus = perf_cpu_map__get(cpus);
-	evsel->core.system_wide = pmu ? pmu->is_uncore : false;
+	evsel->core.system_wide = pmu ? pmu->is_uncore_or_sys : false;
 	evsel->auto_merge_stats = auto_merge_stats;
 
 	if (name)
@@ -1404,7 +1404,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 	struct perf_pmu *pmu;
 	struct evsel *evsel;
 	struct parse_events_error *err = parse_state->error;
-	bool use_uncore_alias;
+	bool use_uncore_or_system_alias;
 	LIST_HEAD(config_terms);
 
 	pmu = perf_pmu__find(name);
@@ -1425,7 +1425,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 		memset(&attr, 0, sizeof(attr));
 	}
 
-	use_uncore_alias = (pmu->is_uncore && use_alias);
+	use_uncore_or_system_alias = (pmu->is_uncore_or_sys && use_alias);
 
 	if (!head_config) {
 		attr.type = pmu->type;
@@ -1433,7 +1433,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 				    auto_merge_stats, NULL);
 		if (evsel) {
 			evsel->pmu_name = name;
-			evsel->use_uncore_alias = use_uncore_alias;
+			evsel->use_uncore_or_system_alias = use_uncore_or_system_alias;
 			return 0;
 		} else {
 			return -ENOMEM;
@@ -1481,7 +1481,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 		evsel->metric_expr = info.metric_expr;
 		evsel->metric_name = info.metric_name;
 		evsel->pmu_name = name;
-		evsel->use_uncore_alias = use_uncore_alias;
+		evsel->use_uncore_or_system_alias = use_uncore_or_system_alias;
 		evsel->percore = config_term_percore(&evsel->config_terms);
 	}
 
@@ -1598,7 +1598,7 @@ parse_events__set_leader_for_uncore_aliase(char *name, struct list_head *list,
 	__evlist__for_each_entry(list, evsel) {
 
 		/* Only split the uncore group which members use alias */
-		if (!evsel->use_uncore_alias)
+		if (!evsel->use_uncore_or_system_alias)
 			goto out;
 
 		/* The events must be from the same uncore block */
diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index 8b99fd312aae..569aba4cec89 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -623,7 +623,7 @@ static struct perf_cpu_map *pmu_cpumask(const char *name)
 	return NULL;
 }
 
-static bool pmu_is_uncore(const char *name)
+static bool pmu_is_uncore_or_sys(const char *name)
 {
 	char path[PATH_MAX];
 	const char *sysfs;
@@ -769,7 +769,7 @@ static void pmu_add_cpu_aliases(struct list_head *head, struct perf_pmu *pmu)
 			break;
 		}
 
-		if (pmu_is_uncore(name) &&
+		if (pmu_is_uncore_or_sys(name) &&
 		    pmu_uncore_alias_match(pname, name))
 			goto new_alias;
 
@@ -838,7 +838,7 @@ static struct perf_pmu *pmu_lookup(const char *name)
 	pmu->cpus = pmu_cpumask(name);
 	pmu->name = strdup(name);
 	pmu->type = type;
-	pmu->is_uncore = pmu_is_uncore(name);
+	pmu->is_uncore_or_sys = pmu_is_uncore_or_sys(name);
 	pmu->max_precise = pmu_max_precise(name);
 	pmu_add_cpu_aliases(&aliases, pmu);
 
diff --git a/tools/perf/util/pmu.h b/tools/perf/util/pmu.h
index 6737e3d5d568..67cf002c9458 100644
--- a/tools/perf/util/pmu.h
+++ b/tools/perf/util/pmu.h
@@ -25,7 +25,7 @@ struct perf_pmu {
 	char *name;
 	__u32 type;
 	bool selectable;
-	bool is_uncore;
+	bool is_uncore_or_sys;
 	bool auxtrace;
 	int max_precise;
 	struct perf_event_attr *default_config;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
