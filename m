Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DC37967B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 21:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WKpIcxBV8EDVwqulBoNUN1YWgthQU3/CKpeaJxnU9g=; b=urZ5VtgBRZIF5I
	yH8+LDUVIKz7xnNsdm1QSx/0SA1xRNJi3oQVVjjrZeT4uNwcR6E3JmXGo63oyhr4EG/2+cnz7JeDC
	86VbPJmVrK/gaaBnekbPai94slWHpT6OkFzKIk1zP1Ae2FCVCCjyUCPWF07u0dJwLnZ5LtKs+Ndwb
	+gkeynMEU/qRz6b1doriDXLIMA6DKVCWQCyYjsGhTTWY3ogNyJqCrEcasSt6CZ7J8HvwV3eKD0TD9
	4XZDhU8A09BRjEBdDlQXg5o/VZaAa3YFivWuQiRxlO8gut9J1DAqgxgtqkp7OKqs87AoAhlRX47zm
	AiLVZ4bf5vs+I5JGpYBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsBh6-0004Ku-Vq; Mon, 29 Jul 2019 19:52:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsBg4-0003h3-FL
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 19:51:26 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ABAD5204EC;
 Mon, 29 Jul 2019 19:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564429884;
 bh=W4f+4kcCzQ7z4a9XB5Ogvkgum4ZPKLa+1Xmiyn6CcVs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=niOPKhOD9czv3UF15ApKXKN7sQF7SabC46WtX0geTxaxP9QOYO9UbkJP9Ui+1Xybm
 YCthOE5oAPfTdWS+ngYOLcygh0x2wPyk44TLQo3b57psAZudp1MypR820dh8ZcsA1N
 dEFmd4ByPe9EK4hgadCvGUfT6O+cRr94fEdB+uJ8=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.2 127/215] perf hists browser: Fix potential NULL pointer
 dereference found by the smatch tool
Date: Mon, 29 Jul 2019 21:22:03 +0200
Message-Id: <20190729190801.372399577@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190729190739.971253303@linuxfoundation.org>
References: <20190729190739.971253303@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_125124_571817_BE839DE9 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Andi Kleen <ak@linux.intel.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Adrian Hunter <adrian.hunter@intel.com>, stable@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Leo Yan <leo.yan@linaro.org>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Upstream commit ceb75476db1617a88cc29b09839acacb69aa076e ]

Based on the following report from Smatch, fix the potential
NULL pointer dereference check.

  tools/perf/ui/browsers/hists.c:641
  hist_browser__run() error: we previously assumed 'hbt' could be
  null (see line 625)

  tools/perf/ui/browsers/hists.c:3088
  perf_evsel__hists_browse() error: we previously assumed
  'browser->he_selection' could be null (see line 2902)

  tools/perf/ui/browsers/hists.c:3272
  perf_evsel_menu__run() error: we previously assumed 'hbt' could be
  null (see line 3260)

This patch firstly validating the pointers before access them, so can
fix potential NULL pointer dereference.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190708143937.7722-2-leo.yan@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/ui/browsers/hists.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/tools/perf/ui/browsers/hists.c b/tools/perf/ui/browsers/hists.c
index 3421ecbdd3f0..c1dd9b54dc6e 100644
--- a/tools/perf/ui/browsers/hists.c
+++ b/tools/perf/ui/browsers/hists.c
@@ -638,7 +638,11 @@ int hist_browser__run(struct hist_browser *browser, const char *help,
 		switch (key) {
 		case K_TIMER: {
 			u64 nr_entries;
-			hbt->timer(hbt->arg);
+
+			WARN_ON_ONCE(!hbt);
+
+			if (hbt)
+				hbt->timer(hbt->arg);
 
 			if (hist_browser__has_filter(browser) ||
 			    symbol_conf.report_hierarchy)
@@ -2819,7 +2823,7 @@ static int perf_evsel__hists_browse(struct perf_evsel *evsel, int nr_events,
 {
 	struct hists *hists = evsel__hists(evsel);
 	struct hist_browser *browser = perf_evsel_browser__new(evsel, hbt, env, annotation_opts);
-	struct branch_info *bi;
+	struct branch_info *bi = NULL;
 #define MAX_OPTIONS  16
 	char *options[MAX_OPTIONS];
 	struct popup_action actions[MAX_OPTIONS];
@@ -3085,7 +3089,9 @@ static int perf_evsel__hists_browse(struct perf_evsel *evsel, int nr_events,
 			goto skip_annotation;
 
 		if (sort__mode == SORT_MODE__BRANCH) {
-			bi = browser->he_selection->branch_info;
+
+			if (browser->he_selection)
+				bi = browser->he_selection->branch_info;
 
 			if (bi == NULL)
 				goto skip_annotation;
@@ -3269,7 +3275,8 @@ static int perf_evsel_menu__run(struct perf_evsel_menu *menu,
 
 		switch (key) {
 		case K_TIMER:
-			hbt->timer(hbt->arg);
+			if (hbt)
+				hbt->timer(hbt->arg);
 
 			if (!menu->lost_events_warned &&
 			    menu->lost_events &&
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
