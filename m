Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC585CDAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WEKWlh78CpermNi38+NoHRMMRAbyuWeQgaYB/438vOw=; b=eI7BSR/8Bt/HC3LxwCKRI9pauw
	Ylah+nJm7v8/Z2MNojBVloExtbGFQF6OL1TF+QL0DMV/0k4KRSiG2xZkBF62Qj1kgWTiBpoDlD0qD
	I0mN3/8Y/ub9+IC4WxFpEeNGFECU5casQRGcTFis0jUbj6aYIa+NtTswuhAJ+G7awAyhFPkyNWzYA
	A4WZt7Qm4Vjp7O9ygz3bGmfQ9Ck+5eNMAtm2Oc57hV81mpL1oP9VzW/iGVFs6c1N4ysTBXP0MIaKk
	oN5ZhpxonDNtjWgmWfdB/m7U44vlkmoDu/82kGKGqcAXsxwPpu8Kc4QgLpLkhAKRan3UVqHVqcWFm
	PL1jysvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiG90-0004AS-6E; Tue, 02 Jul 2019 10:36:14 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiG7z-0003FV-3t
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:35:13 +0000
Received: by mail-oi1-x243.google.com with SMTP id t76so12639997oih.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 03:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=utMbP5r99vkrLRwFC9XJUF/q6Xmj0kpzfxPbj/zmwoc=;
 b=g07M7EfAimyBJUBTxRPreg/5uLOzsLgF+3r66hneNUCiDvvGk5WbVUCT/5bnUBY+wb
 FYofzKOxyhyHecehXrTFZp66JEf6ROxWUQ5wu2s+QCMytOkRacbVx59muNBI6eDLNZpa
 lnexdzYvCRMZQQHS0nzPHi9N/5iQCdz5m5FyE9VEXnXVl11RMplHf2yRET+rU7XTH5As
 Wy97HMCtEc0ir9AQEiywnG/ejR25uR4vQuPE+R2b2XrppBnvm3nq3qKb6Np/8Av7daH/
 NJZ9kpbNTrdJVQsVpvesG5D+brZpx2D9s7NMI4g0A3BDoy+T5Rk0y41vDwNsooeaUCFW
 ZwWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=utMbP5r99vkrLRwFC9XJUF/q6Xmj0kpzfxPbj/zmwoc=;
 b=cvDDylQtwLG2Lc2OL+jp33cfu0K0tO+oA9ozVBKIvZnFPcv7XT3XpmaaYdR3DaxETh
 paBfqF65jiEBNLK/FUHKoAcerE87Kg/3m7K8UpLyikys/hARMdqrBXY4tpRjpM9sVzx0
 oWYp1euVVPLYbZXN6677kyZ9erQ1mr87238m3xo+jHD7gnQLKimJrWEaFkNQAZiGCuEQ
 FacbOtmX2Qw/6ARoaolcGQbr4wk0994d3NbYvUthiSIUn4E2E0nh6dOKMDXmxgk3ETeQ
 4zaJNW2gJrmU7E3A3lyHNtLHogOmKMSRgR5Su8liOciPuz5XNeBpWuRF/qoetNqPJKZ2
 e1Gg==
X-Gm-Message-State: APjAAAWspzt31y0GB85N9dLTjSYjq63/RVY4u6quaM77XhCTgmRQ6K4p
 /sD7+9z6Mu2dFB7nbzSyjlYR0g==
X-Google-Smtp-Source: APXvYqz27DHhsloV2s8JFprH1yJgfKfeYbRlyI8A/LXKmBzUKXKTnkrUL+uycpLRiZ2UmcR06WtYkA==
X-Received: by 2002:aca:338b:: with SMTP id z133mr2465469oiz.97.1562063709968; 
 Tue, 02 Jul 2019 03:35:09 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id 61sm5139805otx.8.2019.07.02.03.35.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 03:35:09 -0700 (PDT)
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
Subject: [PATCH v1 03/11] perf top: Smatch: Fix potential NULL pointer
 dereference
Date: Tue,  2 Jul 2019 18:34:12 +0800
Message-Id: <20190702103420.27540-4-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190702103420.27540-1-leo.yan@linaro.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_033511_312567_E08ADB8A 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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

  tools/perf/builtin-top.c:109
  perf_top__parse_source() warn: variable dereferenced before check 'he'
  (see line 103)

  tools/perf/builtin-top.c:233
  perf_top__show_details() warn: variable dereferenced before check 'he'
  (see line 228)

tools/perf/builtin-top.c
101 static int perf_top__parse_source(struct perf_top *top, struct hist_entry *he)
102 {
103         struct perf_evsel *evsel = hists_to_evsel(he->hists);
                                                      ^^^^
104         struct symbol *sym;
105         struct annotation *notes;
106         struct map *map;
107         int err = -1;
108
109         if (!he || !he->ms.sym)
110                 return -1;

This patch moves the values assignment after validating pointer 'he'.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/builtin-top.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/tools/perf/builtin-top.c b/tools/perf/builtin-top.c
index 12b6b15a9675..13234c322981 100644
--- a/tools/perf/builtin-top.c
+++ b/tools/perf/builtin-top.c
@@ -100,7 +100,7 @@ static void perf_top__resize(struct perf_top *top)
 
 static int perf_top__parse_source(struct perf_top *top, struct hist_entry *he)
 {
-	struct perf_evsel *evsel = hists_to_evsel(he->hists);
+	struct perf_evsel *evsel;
 	struct symbol *sym;
 	struct annotation *notes;
 	struct map *map;
@@ -109,6 +109,8 @@ static int perf_top__parse_source(struct perf_top *top, struct hist_entry *he)
 	if (!he || !he->ms.sym)
 		return -1;
 
+	evsel = hists_to_evsel(he->hists);
+
 	sym = he->ms.sym;
 	map = he->ms.map;
 
@@ -225,7 +227,7 @@ static void perf_top__record_precise_ip(struct perf_top *top,
 static void perf_top__show_details(struct perf_top *top)
 {
 	struct hist_entry *he = top->sym_filter_entry;
-	struct perf_evsel *evsel = hists_to_evsel(he->hists);
+	struct perf_evsel *evsel;
 	struct annotation *notes;
 	struct symbol *symbol;
 	int more;
@@ -233,6 +235,8 @@ static void perf_top__show_details(struct perf_top *top)
 	if (!he)
 		return;
 
+	evsel = hists_to_evsel(he->hists);
+
 	symbol = he->ms.sym;
 	notes = symbol__annotation(symbol);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
