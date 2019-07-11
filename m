Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65970655EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 13:47:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W/22ZoQ7w/4HG+jD5A/Xs4ftkEUtjiDo+XVN3tX5Vto=; b=gXCKCXyUzdWpUJ
	WBPS4tIHa6o0wIIgQLw3uqGgwNEYj2i+p37K6eWwaJsbHE2i8vdWKmKdsiBz0YNeTsLd2EnQftCZX
	RlgBz4iy25YYsR6Euxt006nZitIQlpGwMni3r+cSZipQhq/sImffuZrXCAF5eIc5nsoTAFtMbGPMT
	e6P1A8qRTgBReA71RyYiwwr+O8jwnu23ttjSNjibRTSK/5mkTFG4WJgyTBc7Arn4tdzUosp2d5Zef
	um+J8pi97UtVzy7XTyRZZHzhsOdxMxNTLbNzwuHR7Wg7BFow4p3WfH8TQJt8ecMyezdFEGS1pyBZW
	Cp+NSdb4N0BUkczg4v6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlXY6-00052W-8S; Thu, 11 Jul 2019 11:47:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlXXy-00052C-UY
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 11:47:36 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F4892166E;
 Thu, 11 Jul 2019 11:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562845654;
 bh=tc/IOWP5K6rxZNhqWPvYtApLblz7tVOX4uUtP4LSEck=;
 h=Subject:To:Cc:From:Date:From;
 b=NEiq3Sp6yQIcGnjhy/bt7nZm7kuGkCamrTabdneiX2VyVgHU1YHbDjBWWMjhw+yte
 77L+SjXvp36lZ7I0ZoCT+4lgs8545KwOm0JXSphxJkug53A3Y34J9YaTiCsC0DU4wc
 L+sy0LPaCQnLyO8Veqtrw7cI2HYR6quaNNR+r3qk=
Subject: Patch "perf pmu: Fix uncore PMU alias list for ARM64" has been added
 to the 5.2-stable tree
To: 1560521283-73314-2-git-send-email-john.garry@huawei.com, acme@redhat.com,
 alexander.shishkin@linux.intel.com, ben@decadent.org.uk,
 brueckner@linux.ibm.com, gregkh@linuxfoundation.org, john.garry@huawei.com,
 jolsa@redhat.com, kan.liang@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, linuxarm@huawei.com,
 mark.rutland@arm.com, mathieu.poirier@linaro.org, namhyung@kernel.org,
 peterz@infradead.org, tmricht@linux.ibm.com, will.deacon@arm.com,
 zhangshaokun@hisilicon.com
From: <gregkh@linuxfoundation.org>
Date: Thu, 11 Jul 2019 13:45:59 +0200
Message-ID: <15628455595263@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_044735_237052_581C6B07 
X-CRM114-Status: GOOD (  12.17  )
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This is a note to let you know that I've just added the patch titled

    perf pmu: Fix uncore PMU alias list for ARM64

to the 5.2-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     perf-pmu-fix-uncore-pmu-alias-list-for-arm64.patch
and it can be found in the queue-5.2 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 599ee18f0740d7661b8711249096db94c09bc508 Mon Sep 17 00:00:00 2001
From: John Garry <john.garry@huawei.com>
Date: Fri, 14 Jun 2019 22:07:59 +0800
Subject: perf pmu: Fix uncore PMU alias list for ARM64

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
@@ -709,9 +709,7 @@ static void pmu_add_cpu_aliases(struct l
 {
 	int i;
 	struct pmu_events_map *map;
-	struct pmu_event *pe;
 	const char *name = pmu->name;
-	const char *pname;
 
 	map = perf_pmu__find_map(pmu);
 	if (!map)
@@ -722,28 +720,26 @@ static void pmu_add_cpu_aliases(struct l
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


Patches currently in stable-queue which might be from john.garry@huawei.com are

queue-5.2/perf-pmu-fix-uncore-pmu-alias-list-for-arm64.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
