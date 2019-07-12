Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C7F66CC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 14:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Usl+E2sQAQKbX+MakXANQUy+2Dx/ONc4+crtIL2kgVA=; b=Pgcb8hwjOBfxKu
	CkfQjgD7WNdRCK+WxOlkU9DlhZBCiGtep3AmlwJy9A3QbVHCK9DjR8RGUsHKvgmKtElRIOkMbAUwX
	B3UPFI5aSyXH+KbqZ91RlpCV3dhXY5y03vl35kQrv+diWlGVbSzbeFzOcZRN8KITa7ZdtPG+mMxiF
	SqOtB5aPBCG6GWhDghs5k2W2fOYTaDKYHoL5ekSyKrKYGV2vCJb94bjD2xPZ+QW8Cvh6SYLALOlkh
	HPzHV2lsy6ZkPu9ifGQ9utw0T19FJK8j3KJ9R9dmmhEUEMyTSN9fgPbv3iW2GVCM0UqnqQ/4XLwCB
	SeVndoZsKB29D32GyT/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hluZx-0003sN-Cw; Fri, 12 Jul 2019 12:23:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hluZp-0003rB-Dm
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 12:23:03 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 106472084B;
 Fri, 12 Jul 2019 12:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562934178;
 bh=+YH3dYAhwbEtcBYAH0X9EUm6oml7V9ajXNjfFfs9FWY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kzfnWAO85h+KaeozbWmsV3lefwX0potl7TmQK/Br5ZQqY9f/FK5O5PwCidMoke0aB
 8h1qBQVv/IMmlhjswIdjMEdV6JZuWay6DfmucUSMdrn9k5xJrOauPkhNQ7DQmBlNvw
 gA7eEhZRCf5g6WQxSStpo4x9LVttN2DWQYSkj7Aw=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.19 62/91] perf pmu: Fix uncore PMU alias list for ARM64
Date: Fri, 12 Jul 2019 14:19:05 +0200
Message-Id: <20190712121625.161181001@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190712121621.422224300@linuxfoundation.org>
References: <20190712121621.422224300@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_052301_500056_75797964 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Hendrik Brueckner <brueckner@linux.ibm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Thomas Richter <tmricht@linux.ibm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Olsa <jolsa@redhat.com>,
 John Garry <john.garry@huawei.com>, Will Deacon <will.deacon@arm.com>,
 linuxarm@huawei.com, stable@vger.kernel.org,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Peter Zijlstra <peterz@infradead.org>, Namhyung Kim <namhyung@kernel.org>,
 Ben Hutchings <ben@decadent.org.uk>, linux-arm-kernel@lists.infradead.org,
 Kan Liang <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: John Garry <john.garry@huawei.com>

commit 599ee18f0740d7661b8711249096db94c09bc508 upstream.

In commit 292c34c10249 ("perf pmu: Fix core PMU alias list for X86
platform"), we fixed the issue of CPU events being aliased to uncore
events.

Fix this same issue for ARM64, since the said commit left the (broken)
behaviour untouched for ARM64.

Signed-off-by: John Garry <john.garry@huawei.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Ben Hutchings <ben@decadent.org.uk>
Cc: Hendrik Brueckner <brueckner@linux.ibm.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>
Cc: Thomas Richter <tmricht@linux.ibm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linuxarm@huawei.com
Cc: stable@vger.kernel.org
Fixes: 292c34c10249 ("perf pmu: Fix core PMU alias list for X86 platform")
Link: http://lkml.kernel.org/r/1560521283-73314-2-git-send-email-john.garry@huawei.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 tools/perf/util/pmu.c |   28 ++++++++++++----------------
 1 file changed, 12 insertions(+), 16 deletions(-)

--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -750,9 +750,7 @@ static void pmu_add_cpu_aliases(struct l
 {
 	int i;
 	struct pmu_events_map *map;
-	struct pmu_event *pe;
 	const char *name = pmu->name;
-	const char *pname;
 
 	map = perf_pmu__find_map(pmu);
 	if (!map)
@@ -763,28 +761,26 @@ static void pmu_add_cpu_aliases(struct l
 	 */
 	i = 0;
 	while (1) {
+		const char *cpu_name = is_arm_pmu_core(name) ? name : "cpu";
+		struct pmu_event *pe = &map->table[i++];
+		const char *pname = pe->pmu ? pe->pmu : cpu_name;
 
-		pe = &map->table[i++];
 		if (!pe->name) {
 			if (pe->metric_group || pe->metric_name)
 				continue;
 			break;
 		}
 
-		if (!is_arm_pmu_core(name)) {
-			pname = pe->pmu ? pe->pmu : "cpu";
+		/*
+		 * uncore alias may be from different PMU
+		 * with common prefix
+		 */
+		if (pmu_is_uncore(name) &&
+		    !strncmp(pname, name, strlen(pname)))
+			goto new_alias;
 
-			/*
-			 * uncore alias may be from different PMU
-			 * with common prefix
-			 */
-			if (pmu_is_uncore(name) &&
-			    !strncmp(pname, name, strlen(pname)))
-				goto new_alias;
-
-			if (strcmp(pname, name))
-				continue;
-		}
+		if (strcmp(pname, name))
+			continue;
 
 new_alias:
 		/* need type casts to override 'const' */



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
