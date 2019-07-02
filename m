Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 022515CDAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GWJckTpm2Ae59c3xHBB8kFTBCdpVd3+M0EGXBHRAUsU=; b=Rl9V9cl9IBbS+fqGCYb09LxHIL
	2azvvrNlibnW/TFpJ5xau7V4eZ4vTsKliFMg4jph/b12yCukiRUrn63ItCTLCwlBarFuPW6z69PhC
	WAYFJ6yM6bekYhqmd4CT+ncLhGtNJTJHt9nuSgRoJcvShFSfjfXJhuhgA0fTucMt8cBcaDJH5e/qR
	uFlpTzcdiPUkMh8hR2e6bYiw2LE2g8aOr4JcrGJesWT+Jr+388jwQSDrloNhxh6ES2OTYh+BjN+m7
	ohh24UFtz4qcV2r4gVqTAI9LYpeujXzxxwo4seguKVDtQ96vvbI+jRtujk7epxd160w9FwRbJPsUX
	vHmpKiIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGA2-0004yz-3D; Tue, 02 Jul 2019 10:37:18 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiG8M-0003qB-O0
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:35:36 +0000
Received: by mail-ot1-x342.google.com with SMTP id o101so16353217ota.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 03:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pR8OnU6ONKK8WXaF3q0PWRqZRj/gofETqCh57U/9pps=;
 b=gqUYj3RgcmbrGaA8NafweIqkT9dOdE8BbJZXI+ANioWM70cMuoNl7wgH8y7qyORqBP
 MrOo4umrodn+Q4qIgwxpFIBLrCit6U2wXsumMe5NX/NcBUN98yGQQgw5PDFKzGdWeAif
 T0HaRSKYOBlDUWYerXzXCwcJBErDmF66NK3NbzTASZBFJfCZTf681g3c3MMx3MB6Sj2z
 aiyeEui7Vl/tIxL9w8C53Q0o0E1fB5HdJ/7bmX1l7kvUuRXM4DO2+jhbXtB8R9UU3z2S
 68owNLcHSQeyp9OTm7P/ivHJg0HXEtVBw1yBkFt+UMw4KPPPxrzs/dm6pvWXMIepPWjA
 dwgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pR8OnU6ONKK8WXaF3q0PWRqZRj/gofETqCh57U/9pps=;
 b=D/zzlFPcdkkA9wAjKhZbmI38ChBGgEMBb1yzK4MB+kdX4rl+ArG4SZfOJ50sYPuH/7
 6+8uZFMn/N6SQ0fi92rqBde/TrWJxwIXNDG5SpQXzIjh5c6N1dMVksR+RRtiBuuh7Yld
 wkAP6Rt7X6HsWNLvo1Cfv0oiNXVHW6+gcENy7P3TdfzxCBS52JqL1240tvzHaI4v1QMI
 UcbBjM0H6DYHuoSCIwSHjh/UZ2hIXCnfstCZCZW5IFeQFe5gKFFT5EUa0fNyZObrueSx
 8ObtrcKIe1kkRqy/cGEKe90YwSw4FDG/iZ6umBy1HipkXvwa+qctVEWTXsO6FcAhUxC7
 gcaQ==
X-Gm-Message-State: APjAAAVBb+R6fRK7ZxXZqqqttxODrF6DWvLVZWwTLJenHz9pSkPhHKfi
 iru+8RabY4fXoMMncF3Ve0EUZQ==
X-Google-Smtp-Source: APXvYqyaOWCLuKdf554R9kmBO3xUVp5yD3JiE8Mhw7yip5LrQxZlFyTOL0TMpX2DA4AxZ+BEsBafBw==
X-Received: by 2002:a05:6830:14c:: with SMTP id
 j12mr22891677otp.181.1562063733986; 
 Tue, 02 Jul 2019 03:35:33 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id 61sm5139805otx.8.2019.07.02.03.35.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 03:35:33 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Andi Kleen <ak@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Davidlohr Bueso <dave@stgolabs.net>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jin Yao <yao.jin@linux.intel.com>, Song Liu <songliubraving@fb.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Changbin Du <changbin.du@intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Thomas Richter <tmricht@linux.ibm.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 06/11] perf hists: Smatch: Fix potential NULL pointer
 dereference
Date: Tue,  2 Jul 2019 18:34:15 +0800
Message-Id: <20190702103420.27540-7-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190702103420.27540-1-leo.yan@linaro.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_033534_809704_161A169F 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
---
 tools/perf/ui/browsers/hists.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/tools/perf/ui/browsers/hists.c b/tools/perf/ui/browsers/hists.c
index 3421ecbdd3f0..2ba33040ddd8 100644
--- a/tools/perf/ui/browsers/hists.c
+++ b/tools/perf/ui/browsers/hists.c
@@ -638,7 +638,9 @@ int hist_browser__run(struct hist_browser *browser, const char *help,
 		switch (key) {
 		case K_TIMER: {
 			u64 nr_entries;
-			hbt->timer(hbt->arg);
+
+			if (hbt)
+				hbt->timer(hbt->arg);
 
 			if (hist_browser__has_filter(browser) ||
 			    symbol_conf.report_hierarchy)
@@ -2819,7 +2821,7 @@ static int perf_evsel__hists_browse(struct perf_evsel *evsel, int nr_events,
 {
 	struct hists *hists = evsel__hists(evsel);
 	struct hist_browser *browser = perf_evsel_browser__new(evsel, hbt, env, annotation_opts);
-	struct branch_info *bi;
+	struct branch_info *bi = NULL;
 #define MAX_OPTIONS  16
 	char *options[MAX_OPTIONS];
 	struct popup_action actions[MAX_OPTIONS];
@@ -3085,7 +3087,9 @@ static int perf_evsel__hists_browse(struct perf_evsel *evsel, int nr_events,
 			goto skip_annotation;
 
 		if (sort__mode == SORT_MODE__BRANCH) {
-			bi = browser->he_selection->branch_info;
+
+			if (browser->he_selection)
+				bi = browser->he_selection->branch_info;
 
 			if (bi == NULL)
 				goto skip_annotation;
@@ -3269,7 +3273,8 @@ static int perf_evsel_menu__run(struct perf_evsel_menu *menu,
 
 		switch (key) {
 		case K_TIMER:
-			hbt->timer(hbt->arg);
+			if (hbt)
+				hbt->timer(hbt->arg);
 
 			if (!menu->lost_events_warned &&
 			    menu->lost_events &&
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
