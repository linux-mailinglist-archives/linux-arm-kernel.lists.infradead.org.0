Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95533B2A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1i6eBR54S6OTMp5e9JYhf7QACLktgoLAzVQNvTsmG8=; b=V5nKItCHjCs8CZ
	rM0d5Zme+YmLWTvdWIkDoUX9QIstvMfI/D+syz8hWsH5b9v5aXWb8s6cAm2t2Z0QVSKNhBc/ZC84v
	dHeZX/yGg2GEbSybbtzJmCTuhTXoeutrUygYxhqm1eYTvcvJM60y6pFi4wESgWL10aefSaiUteiol
	skXEbvft6UWScNEEfb0HLl+zZaRH/2j0DfitDzOUc0fakJfY1k274d4Wi5AZ077Gi4cz7k6t9gI6H
	ZNNB8MsXqYOGsnKfFXY2qMzEq1F3lqYh4TXnVEyg9YgrwQ93X6s/03XYgVIf7gE6SumoB9n2mRchb
	cc5/uyzyIuyi3NY0ZKsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haH7f-0001qr-F2; Mon, 10 Jun 2019 10:01:51 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haH76-0001as-Uh
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:01:18 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1ECBB6C34D3F6266CAEF;
 Mon, 10 Jun 2019 18:01:11 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Mon, 10 Jun 2019 18:00:52 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
 <namhyung@kernel.org>, <tmricht@linux.ibm.com>, <brueckner@linux.ibm.com>,
 <kan.liang@linux.intel.com>, <ben@decadent.org.uk>,
 <mathieu.poirier@linaro.org>, <mark.rutland@arm.com>, <will.deacon@arm.com>
Subject: [PATCH 2/5] perf pmu: Support more complex PMU event aliasing
Date: Mon, 10 Jun 2019 17:59:29 +0800
Message-ID: <1560160772-210844-3-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1560160772-210844-1-git-send-email-john.garry@huawei.com>
References: <1560160772-210844-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_030117_267958_6B186D36 
X-CRM114-Status: GOOD (  13.61  )
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

The jevent "Unit" field is used for uncore PMU alias definition.

The form uncore_pmu_example_X is supported, where "X" is a wildcard,
to support multiple instances of the same PMU in a system.

Unfortunately this format not suitable for all uncore PMUs; take the Hisi
DDRC uncore PMU for example, where the name is in the form
hisi_scclX_ddrcY.

For the current jevent parsing, we would be required to hardcode an uncore
alias translation for each possible value of X. This is not scalable.

Instead, add support for "Unit" field in the form "hisi_sccl,ddrc", where
we can match by hisi_scclX and ddrcY. Tokens in Unit field
are delimited by ','.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/util/pmu.c | 45 ++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 40 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index 036047f56efa..f00cae750086 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -700,6 +700,44 @@ struct pmu_events_map *perf_pmu__find_map(struct perf_pmu *pmu)
 	return map;
 }
 
+static bool pmu_uncore_alias_match(const char *pmu_name, const char *name)
+{
+	/*
+	 * uncore alias may be from different PMU
+	 * with common prefix
+	 */
+	if (!strncmp(pmu_name, name, strlen(pmu_name)))
+		return true;
+
+	/* match strings with delimiter, ',' */
+	while (1) {
+		const char *delimiter;
+		char token[256] = {};
+		const char *found_token;
+		int token_len;
+
+		delimiter = strchr(pmu_name, ',');
+		if (delimiter) {
+			token_len = delimiter - pmu_name;
+		} else {
+			token_len = strlen(pmu_name);
+		}
+
+		memcpy(token, pmu_name, token_len);
+
+		found_token = strstr(name, token);
+		if (!found_token)
+			return false;
+
+		/* No more delimiters, so we must be a match */
+		if (!delimiter)
+			return true;
+
+		pmu_name += token_len + 1;
+		name = found_token + token_len;
+	}
+}
+
 /*
  * From the pmu_events_map, find the table of PMU events that corresponds
  * to the current running CPU. Then, add all PMU events from that table
@@ -730,12 +768,9 @@ static void pmu_add_cpu_aliases(struct list_head *head, struct perf_pmu *pmu)
 			break;
 		}
 
-		/*
-		 * uncore alias may be from different PMU
-		 * with common prefix
-		 */
+
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
