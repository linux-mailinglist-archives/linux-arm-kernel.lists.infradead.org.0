Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D796C12E348
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 08:27:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BPhiNY17pH8JkvqwoX0RHaNhltluSfVK4nlIa9Lu7lU=; b=B2RhRu5B9P7AoO
	4Yr24AEwm73de6DWp2iIcGhrV2O4k5cYVbrvPZSjxk1d9Pg0Vbc1VJktjewn44Ntt9ntmvXsB4ymm
	2Ld8oYeum/c6TJyvk5awSzMeBj8WXD1ZuvnDPoyOrUkn2KpZusmuQkWVU/L3KOe6tfVq7PJCPImUh
	Eg6BKF/SBdbY1w59F+xK5WQvHU1sIysXTy2kIW86wAiAO+1X311XtGCrGxg2XZuS6gnvQoSZ9R8G9
	suYPZffzwGfTnWQZrogdDvga4cDlQMz1DHpzrx3chmA4liYMCjS5xAmnkv15MX454R9yoBRmi6Ps/
	3bnjFsYl+HH8KhMN+Yyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imuss-0000w5-Ig; Thu, 02 Jan 2020 07:27:06 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imusi-0000vW-FK
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 07:26:58 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5C13057D9FC402064E4E;
 Thu,  2 Jan 2020 15:26:44 +0800 (CST)
Received: from euler.huawei.com (10.175.104.193) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Thu, 2 Jan 2020 15:26:35 +0800
From: Wei Li <liwei391@huawei.com>
To: <acme@kernel.org>, <mark.rutland@arm.com>,
 <alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
 <namhyung@kernel.org>, <suzuki.poulose@arm.com>,
 <mathieu.poirier@linaro.org>, <ilubashe@akamai.com>
Subject: [PATCH] perf tools: arm-spe: fix endless record after being terminated
Date: Thu, 2 Jan 2020 15:40:34 +0800
Message-ID: <20200102074034.38650-1-liwei391@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.193]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_232656_672678_D3B1E13C 
X-CRM114-Status: GOOD (  11.66  )
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
Cc: peterz@infradead.org, huawei.libin@huawei.com, mingo@redhat.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In __cmd_record(), when receiving SIGINT(ctrl + c), a done flag will
be set and the event list will be disabled by evlist__disable() once.

While in auxtrace_record.read_finish(), the related events will be
enabled again, if they are continuous, the recording seems to be endless.

If the arm_spe event is disabled, we don't enable it again here.

Before the patch:
[root@localhost ~]# ./perf record -e arm_spe_0/ts_enable=1,pct_enable=1,\
pa_enable=1,load_filter=1,jitter=1,store_filter=1,min_latency=0/ -p 5387
^C^C^C^C^C^C

After the patch:
[root@localhost ~]# ./perf record -e arm_spe_0/ts_enable=1,pct_enable=1,\
pa_enable=1,load_filter=1,jitter=1,store_filter=1,min_latency=0/ -p 5387
^C[ perf record: Woken up 0 times to write data ]
Warning:
AUX data lost 255 times out of 789!

[ perf record: Captured and wrote 1020.719 MB perf.data ]

Signed-off-by: Wei Li <liwei391@huawei.com>
---
 tools/perf/arch/arm64/util/arm-spe.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/tools/perf/arch/arm64/util/arm-spe.c b/tools/perf/arch/arm64/util/arm-spe.c
index eba6541ec0f1..d1ff278a8ab2 100644
--- a/tools/perf/arch/arm64/util/arm-spe.c
+++ b/tools/perf/arch/arm64/util/arm-spe.c
@@ -165,9 +165,13 @@ static int arm_spe_read_finish(struct auxtrace_record *itr, int idx)
 	struct evsel *evsel;
 
 	evlist__for_each_entry(sper->evlist, evsel) {
-		if (evsel->core.attr.type == sper->arm_spe_pmu->type)
-			return perf_evlist__enable_event_idx(sper->evlist,
-							     evsel, idx);
+		if (evsel->core.attr.type == sper->arm_spe_pmu->type) {
+			if (evsel->disabled)
+				return 0;
+			else
+				return perf_evlist__enable_event_idx(
+						sper->evlist, evsel, idx);
+		}
 	}
 	return -EINVAL;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
