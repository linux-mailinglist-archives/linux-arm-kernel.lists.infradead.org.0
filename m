Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8774E620A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O8sFuQYpE86LWSL7+FIRLZqI8FVzsYesaDSZbrOav38=; b=uFAVMgMuAdRyo2u4i6F5n4sEb+
	vee0rDUVwRFc27IwQyiwRcZ3zTBU/zYBLiiHdoPzisT3OCYNh29Nar+2QhK9bqtWr7dCtlCKhYQSu
	rRL50R3ix//3LdAcI7LfZffVt/NprhdefipxfkBCZPGALEIr8fyGpmzD4E1W2NCHLKVDRHTVZPVod
	GPvxBJG5hlyBpzP34PpX6rRTH+f/OdQoB22tscR5CcZNL/GExQQ82sw9xfmPKfHuvTt3WUkWZUyqF
	mKv37NABlXZfUjuH95KKwfuLvwrm+aP5sXTR0nG0qbZrOQjQZ5y+og7CyY8fVrZpemQzj6FzsJdxg
	0Z09HZVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUol-00070k-U8; Mon, 08 Jul 2019 14:40:36 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUoI-0005zf-0E
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:40:07 +0000
Received: by mail-ot1-x343.google.com with SMTP id l15so16407413otn.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 07:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=J3hRcly8D1YDeUmF8zVR4I01GOuIVsuQo8ZUqHIaHHQ=;
 b=uTgiMsbv1bumv5PNRDGIEcP1Ibp2JR5Gcza9xMsyQlRcIKKkKbvfvcdP7m410I2uFc
 LupcPK6OC5otRQMJHpKkH/gooaNP4QcYchJO/hOweKClf+7XfLXizmgb4hcfb5GxK31s
 NbbSUzR2DUUNw6NAPEzKac3VqfWAoCVv5XevizEt07CSfrE/8RMP5Lp0np7dCxR7SA3+
 RQbUaSrt9nOlyBz9d0G/xnpN0CcjeL6cQKAe1Pat9UQ2zAVN8k0eXmW3COs5r0m3GDnK
 mYz6R+pc5NesN39Q1byVWIY71GZUpg4FQRyVJgb3F8sm1l4Rj6+rZgD6GfOzALYGvWkl
 FUvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=J3hRcly8D1YDeUmF8zVR4I01GOuIVsuQo8ZUqHIaHHQ=;
 b=pSUhJZzomh2XDRcSR26Utnz10Lag5rpcgBFOEVMV56LMtEYmuRWJAQFANZuqUzZtw6
 /fT8euuZ7kYvc/lrWlE9oXcMt/CoSCfyq+p5dBDYhyBKEO/PpcAGqtmAPk2A0eCJTcAs
 1JOvdvGjRS0zAzbFDRG0IYjTsS32T1BRYEYnpS5GpO9H4RerbayGDzmd5tpLl56cIVUF
 oIMUDTgubR2NgHZf51AnEraa4Ks/qTr6MXlsoBmK41P+ExsznbcoGkYF84WGiu9Lq9bh
 jFSK8yVbKJw9+gR+hBztHEhvuyd0Vtx+xoM9r0ipKkVgDsCpvcoO8FDMRSuWYi2QTjb2
 +jsw==
X-Gm-Message-State: APjAAAXzbMAxolmu5+tHoURLAHqzDtZnFE98QQ9uJbeWhqV3of1puods
 BbP8ZmvEcWAsPUK5bS51GzaVuA==
X-Google-Smtp-Source: APXvYqwJOE12S0nO+y8qmjGhE9hYBxzOAUnP/1QqoMxtTObe2IiXPu2B5/3kzcoq7vV+IPAbjlWWmA==
X-Received: by 2002:a05:6830:1617:: with SMTP id
 g23mr15083924otr.117.1562596804495; 
 Mon, 08 Jul 2019 07:40:04 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id x5sm6386021otb.6.2019.07.08.07.39.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 07:40:03 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Andi Kleen <ak@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/4] perf hists: Smatch: Fix potential NULL pointer
 dereference
Date: Mon,  8 Jul 2019 22:39:34 +0800
Message-Id: <20190708143937.7722-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190708143937.7722-1-leo.yan@linaro.org>
References: <20190708143937.7722-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_074006_157923_EBDC1690 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Acked-by: Jiri Olsa <jolsa@kernel.org>
---
 tools/perf/ui/browsers/hists.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/tools/perf/ui/browsers/hists.c b/tools/perf/ui/browsers/hists.c
index 85581cfb9112..a94eb0755e8b 100644
--- a/tools/perf/ui/browsers/hists.c
+++ b/tools/perf/ui/browsers/hists.c
@@ -639,7 +639,11 @@ int hist_browser__run(struct hist_browser *browser, const char *help,
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
@@ -2821,7 +2825,7 @@ static int perf_evsel__hists_browse(struct perf_evsel *evsel, int nr_events,
 {
 	struct hists *hists = evsel__hists(evsel);
 	struct hist_browser *browser = perf_evsel_browser__new(evsel, hbt, env, annotation_opts);
-	struct branch_info *bi;
+	struct branch_info *bi = NULL;
 #define MAX_OPTIONS  16
 	char *options[MAX_OPTIONS];
 	struct popup_action actions[MAX_OPTIONS];
@@ -3087,7 +3091,9 @@ static int perf_evsel__hists_browse(struct perf_evsel *evsel, int nr_events,
 			goto skip_annotation;
 
 		if (sort__mode == SORT_MODE__BRANCH) {
-			bi = browser->he_selection->branch_info;
+
+			if (browser->he_selection)
+				bi = browser->he_selection->branch_info;
 
 			if (bi == NULL)
 				goto skip_annotation;
@@ -3271,7 +3277,8 @@ static int perf_evsel_menu__run(struct perf_evsel_menu *menu,
 
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
