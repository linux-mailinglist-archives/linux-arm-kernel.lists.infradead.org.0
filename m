Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C16146DE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 17:10:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQIgUsQqLdtpc9BJjGJERm63Mtn1VBvZnngV4itD4v4=; b=bbgBRI/2YNhbfj
	EvXrMDqiSZWeCCSxqFqW+d9J7vXBVD+q+KnJ+JWRNV8mnCE/+fUhmEjofnmAXbOb7rlIlwzhkD7j5
	1VPbu3Xw7a8+AbSyR3ZO2Z+9aGw7hcAWVnCU20aNq6v4du9Pkiqamn1Bt//cg9+vuqTyzSrE/El97
	9cUK8fPnaiWPobB55bdQlqz8TBAHsZ7wU7nHohGqGnqhhp1IDxBoAD8flg5CDnb6nFAvPRDUbC8Wu
	JPsB5T7eiVDRMLL/2q+FqNmVGgDuhTKKBvs8qVxPSF/0Lz5TrKUy+8DLAAGu8ZTaParvohKP6iLuu
	lHv8fyCkq9z7N8UX7jzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuf3T-0006tL-98; Thu, 23 Jan 2020 16:10:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuf23-000613-Ir
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 16:08:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BDE51FB;
 Thu, 23 Jan 2020 08:08:35 -0800 (PST)
Received: from e112479-lin.arm.com (unknown [10.37.9.147])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 24D503F68E;
 Thu, 23 Jan 2020 08:08:24 -0800 (PST)
From: James Clark <james.clark@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/7] perf tools: add perf_evlist__terminate() for terminate
Date: Thu, 23 Jan 2020 16:07:32 +0000
Message-Id: <20200123160734.3775-6-james.clark@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200123160734.3775-1-james.clark@arm.com>
References: <20200123160734.3775-1-james.clark@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_080835_745683_F9646039 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 wxf.wang@hisilicon.com, Peter Zijlstra <peterz@infradead.org>,
 Will Deacon <will@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 suzuki.poulose@arm.com, Arnaldo Carvalho de Melo <acme@kernel.org>,
 gengdongjiu@huawei.com, linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, liuqi115@hisilicon.com,
 James Clark <james.clark@arm.com>, huawei.libin@huawei.com,
 Namhyung Kim <namhyung@kernel.org>, nd@arm.com, liwei391@huawei.com,
 Tan Xiaojun <tanxiaojun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wei Li <liwei391@huawei.com>

In __cmd_record(), when receiving SIGINT(ctrl + c), a done flag will
be set and the event list will be disabled by perf_evlist__disable()
once.

While in auxtrace_record.read_finish(), the related events will be
enabled again, if they are continuous, the recording seems to be endless.

Mark the evlist's state as terminated, preparing for the following fix.

Signed-off-by: Wei Li <liwei391@huawei.com>
Tested-by: Qi Liu <liuqi115@hisilicon.com>
Signed-off-by: James Clark <james.clark@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Tan Xiaojun <tanxiaojun@huawei.com>
Cc: Al Grant <al.grant@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
---
 tools/perf/builtin-record.c |  1 +
 tools/perf/util/evlist.c    | 14 ++++++++++++++
 tools/perf/util/evlist.h    |  1 +
 tools/perf/util/evsel.h     |  1 +
 4 files changed, 17 insertions(+)

diff --git a/tools/perf/builtin-record.c b/tools/perf/builtin-record.c
index 4c301466101b..e7c917f9534d 100644
--- a/tools/perf/builtin-record.c
+++ b/tools/perf/builtin-record.c
@@ -1722,6 +1722,7 @@ static int __cmd_record(struct record *rec, int argc, const char **argv)
 		if (done && !disabled && !target__none(&opts->target)) {
 			trigger_off(&auxtrace_snapshot_trigger);
 			evlist__disable(rec->evlist);
+			evlist__terminate(rec->evlist);
 			disabled = true;
 		}
 	}
diff --git a/tools/perf/util/evlist.c b/tools/perf/util/evlist.c
index b9c7e5271611..b04794cd8586 100644
--- a/tools/perf/util/evlist.c
+++ b/tools/perf/util/evlist.c
@@ -377,6 +377,20 @@ bool evsel__cpu_iter_skip(struct evsel *ev, int cpu)
 	return true;
 }
 
+void evlist__terminate(struct evlist *evlist)
+{
+	struct evsel *pos;
+
+	evlist__for_each_entry(evlist, pos) {
+		if (pos->disabled || !perf_evsel__is_group_leader(pos) || !pos->core.fd)
+			continue;
+		evsel__disable(pos);
+		pos->terminated = true;
+	}
+
+	evlist->enabled = false;
+}
+
 void evlist__disable(struct evlist *evlist)
 {
 	struct evsel *pos;
diff --git a/tools/perf/util/evlist.h b/tools/perf/util/evlist.h
index f5bd5c386df1..9fbd0ce2a1c4 100644
--- a/tools/perf/util/evlist.h
+++ b/tools/perf/util/evlist.h
@@ -206,6 +206,7 @@ void evlist__munmap(struct evlist *evlist);
 
 size_t evlist__mmap_size(unsigned long pages);
 
+void evlist__terminate(struct evlist *evlist);
 void evlist__disable(struct evlist *evlist);
 void evlist__enable(struct evlist *evlist);
 void perf_evlist__toggle_enable(struct evlist *evlist);
diff --git a/tools/perf/util/evsel.h b/tools/perf/util/evsel.h
index dc14f4a823cd..8e8a2cb41de8 100644
--- a/tools/perf/util/evsel.h
+++ b/tools/perf/util/evsel.h
@@ -104,6 +104,7 @@ struct evsel {
 		perf_evsel__sb_cb_t	*cb;
 		void			*data;
 	} side_band;
+	bool			terminated;
 };
 
 struct perf_missing_features {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
