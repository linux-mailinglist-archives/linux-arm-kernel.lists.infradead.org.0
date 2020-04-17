Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1663B1ADB91
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxgPzsTZO7b0cFXtk1I8gArCB4NozLnqZAE0c3kNzmo=; b=vDeX0bbTaNyG+k
	Fbt4YzfdFqVFCxk4uxQ/ehqNk9CWHvD+gIyxpRAZuF7LiMJs+X9tUa2VFQo8vGT8aO/mk7/BMRbPv
	6xa8LoYMsHXSLMC9quODj1WNp/gFNFMUiSzcj81vB2hDUGBsUL9yo3QJG1GHLgDxAmtLvUlWW0uEV
	po1hXyOUvG6YbvURMZfA3/ETI848pcH7z5Pr8u22jK9xS18YERgonu31pa8Hut1ai+8qYX6pVnINx
	HkbF+lN5W/+H/uvOnuQxplZKKac6QIxAvocV9hGzcn9MCdNgqtED8xHpYk+9wf4G7VMjV5foSdsJw
	yU9bpYr1KKIX1DZJKJBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOZ6-00059C-3D; Fri, 17 Apr 2020 10:49:44 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOV3-0000n5-UZ
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:45:36 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id DCF8FAE0DC5FB7C399EA;
 Fri, 17 Apr 2020 18:45:26 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Fri, 17 Apr 2020 18:45:18 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>
Subject: [RFC PATCH v2 02/13] perf jevents: Add support for an extra directory
 level
Date: Fri, 17 Apr 2020 18:41:13 +0800
Message-ID: <1587120084-18990-3-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034534_198693_3FFF0E08 
X-CRM114-Status: GOOD (  12.14  )
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

Currently we support upto a level 2 directory, and level 2 would be in the
form vendor/platform.

Add support for a further level, to hold specific categories of events for
when we want to segregate them for matching purposes.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/pmu-events/jevents.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/tools/perf/pmu-events/jevents.c b/tools/perf/pmu-events/jevents.c
index fa86c5f997cc..c7868d0a7a6b 100644
--- a/tools/perf/pmu-events/jevents.c
+++ b/tools/perf/pmu-events/jevents.c
@@ -981,15 +981,20 @@ static int process_one_file(const char *fpath, const struct stat *sb,
 	int level   = ftwbuf->level;
 	int err = 0;
 
-	if (level == 2 && is_dir) {
+	if (level >= 2 && is_dir) {
+		int count = 0;
 		/*
 		 * For level 2 directory, bname will include parent name,
 		 * like vendor/platform. So search back from platform dir
 		 * to find this.
+		 * Something similar for level 3 directory, but we're a PMU
+		 * category folder, like vendor/platform/cpu.
 		 */
 		bname = (char *) fpath + ftwbuf->base - 2;
 		for (;;) {
 			if (*bname == '/')
+				count++;
+			if (count == level - 1)
 				break;
 			bname--;
 		}
@@ -1002,13 +1007,13 @@ static int process_one_file(const char *fpath, const struct stat *sb,
 		 level, sb->st_size, bname, fpath);
 
 	/* base dir or too deep */
-	if (level == 0 || level > 3)
+	if (level == 0 || level > 4)
 		return 0;
 
 
 	/* model directory, reset topic */
 	if ((level == 1 && is_dir && is_leaf_dir(fpath)) ||
-	    (level == 2 && is_dir)) {
+	    (level >= 2 && is_dir && is_leaf_dir(fpath))) {
 		if (close_table)
 			print_events_table_suffix(eventsfp);
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
