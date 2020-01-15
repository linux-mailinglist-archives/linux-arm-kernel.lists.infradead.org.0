Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B38B13BDE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 11:59:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1gUFgb7aXQbtDZOXOCCa5ZRRA3joOvVXNQdL4Rtxo0=; b=r47qA2nvjVsoPV
	P9chOxSOXnohBSyLaQ8n/7/ba2BtNYGA1yfFSwmt/w0oBpd0LiZhulWMHeb74dZSOg2766yH0PfPu
	q0Wf8Q1cSFGTF64lTzkC3f1hsFuXqbVEwAbCa4Bzh1MT6C88Z63KTB4y2OvpC8aXTTKiS5g+DP9B5
	PUICUKGzbqNB1Kixg3+OzbQWrLiX7TZ4TxKDSiQUp8jXQOFWFzVannalYWaCQclCLtd4snK3r0J2o
	dJuk4J5V/Z/WiUw8CbTQ1+1uff+VS08gkhE5SImZxZny0Es/pkP4lbRYT8nk1aePJWMEk0DAmLyph
	V45dC+HpyTTwaLuEmitw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irgOi-0002Jg-JS; Wed, 15 Jan 2020 10:59:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgOQ-0002Cc-0r
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 10:59:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 58AA51007;
 Wed, 15 Jan 2020 02:59:21 -0800 (PST)
Received: from e112479-lin.warwick.arm.com (e112479-lin.warwick.arm.com
 [10.32.36.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 34A4C3F6C4;
 Wed, 15 Jan 2020 02:59:18 -0800 (PST)
From: James Clark <james.clark@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] Return EINVAL when precise_ip perf events are requested
 on Arm
Date: Wed, 15 Jan 2020 10:58:55 +0000
Message-Id: <20200115105855.13395-2-james.clark@arm.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200115105855.13395-1-james.clark@arm.com>
References: <20200115105855.13395-1-james.clark@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_025922_108841_5F9BBF34 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, nd@arm.com, Will Deacon <will@kernel.org>,
 Tan Xiaojun <tanxiaojun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARM PMU events can be delivered with arbitrary skid, and there's
nothing the kernel can do to prevent this. Given that, the PMU
cannot support precise_ip != 0.

Also update comment to state that attr.config field is used to
set the event type rather than event_id which doesn't exist.

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
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/perf/arm_pmu.c          | 3 +++
 include/uapi/linux/perf_event.h | 4 ++--
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
index df352b334ea7..4ddbdb93b3b6 100644
--- a/drivers/perf/arm_pmu.c
+++ b/drivers/perf/arm_pmu.c
@@ -102,6 +102,9 @@ armpmu_map_event(struct perf_event *event,
 	u64 config = event->attr.config;
 	int type = event->attr.type;
 
+	if (event->attr.precise)
+		return -EINVAL;
+
 	if (type == event->pmu->type)
 		return armpmu_map_raw_event(raw_event_mask, config);
 
diff --git a/include/uapi/linux/perf_event.h b/include/uapi/linux/perf_event.h
index 377d794d3105..3501b2eb168a 100644
--- a/include/uapi/linux/perf_event.h
+++ b/include/uapi/linux/perf_event.h
@@ -38,8 +38,8 @@ enum perf_type_id {
 };
 
 /*
- * Generalized performance event event_id types, used by the
- * attr.event_id parameter of the sys_perf_event_open()
+ * Generalized hardware performance event types, used by the
+ * attr.config parameter of the sys_perf_event_open()
  * syscall:
  */
 enum perf_hw_id {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
