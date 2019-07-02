Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A17C35CDA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9q7KYYjIU8O+m05cbDG2vgsUK6LQYb9mCiHHURzcQ3U=; b=UA+S7IdLIKsSWUK/qZgokEG9wL
	PfrnmsKsbA9cIv7xPmSNGuvuwxjAIjJPRXJ2a7FnJfUupPl2Em1FgQ9s2y2EJKDgGIXK+7IhtSkxY
	Px9yHT8JSaQXfO9URP4n0zWW7OBvr3boCDuRMAzLB7ABTXNDrfhcQH0SExwF6efHZtLfxQzCNKbbC
	8fQCdnJDtaDaIlQphLq26e1Es37dEYoI0klBj7EVmfS34g/BUYGWYdSp3FZbuwxY4iYYq4vJy5pY6
	MBT3x4kl4o+vq9PGGK22pDPPuDSAo4piFOgJo0sJlP7K5nLXmx1v4ta/3LolZv7sKfANjHnHsFmtr
	CSRoFi0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiG8M-0003cB-P0; Tue, 02 Jul 2019 10:35:35 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiG7j-0002GH-1I
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:34:58 +0000
Received: by mail-oi1-x242.google.com with SMTP id u15so12494442oiv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 03:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=F1cJQod20rlh4JhiBTdx2PH6KqMq30JuyoSJBz8Qo1U=;
 b=s70513xyDTidEr5Ppvu38moEO3tF4ILImM8v234mxyFjRqgVL7SFC8HyivT+ff4BNd
 wxGqLRz7aP+i61gRKfuH7f8z7WdX2tqXxbAgbQVVOGp+FcOfBbceh+Z0vBLp2jNZQqrs
 WAEP/LJXy6qfpj1dlbOlmWHvTcZp8tVA372DlFQZoDTSj6PhAMPwBV/3xMYn2Pc3hCp5
 tZCXr+LfJZtmlV2gC4Dv7HoGfDrJ43YxMfEIHYkyuuPPMyn+01SC86WD3fU0uQvp7Wlq
 cpolfqTfxRJQh6j8ZyxIdCmR+7ly3pT5tC68g9KVPQ2P2nGKQINU3FBmCxa3UMKBeKqJ
 8WnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=F1cJQod20rlh4JhiBTdx2PH6KqMq30JuyoSJBz8Qo1U=;
 b=es6oFUjhhwtKI8x1vSpO97RRx/6icM7H5UglwBNmL2jOG1B3t2Le3CkG42oiTDPM/P
 01wrmMKQF7j9ENFalow9ZyxsqRN/rx4oPWJOi0boHn3qwv9H1o+JUGNHXq36/0WM86mD
 Tymv9IOahe8EqBKbCs4JcFyZC/TByjPqag3AEgDOTia+iYRn+xv2Wny8myEOD4L/6tCB
 4KU72bJuWsG7Li+HlOOZLT2fwcleHE15A/RJzhHC2dZPavjmnqcP+B2jCMrIcwsWHda6
 +Asrd+xc/+dVS3DYHcGBaGKimFYENbDptjUy5N1d4A1xj4TBPkRW7aB43obzjSn30cPx
 Idxg==
X-Gm-Message-State: APjAAAXbE4/EXvAnYEJwnh/7OoVsYu8Bgh69x0K98mxkmU3kaQF0z60s
 1q/4GHMRv7RbuBhSYjmIiVtFtA==
X-Google-Smtp-Source: APXvYqwXUGBWMvijX1rTe9gC+TubnyPy0SebRYMoaXww6u6Jlauk/K+tVBQqpLLVrWIfnLXQKnU2rA==
X-Received: by 2002:aca:3bc6:: with SMTP id i189mr2397047oia.153.1562063693989; 
 Tue, 02 Jul 2019 03:34:53 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id 61sm5139805otx.8.2019.07.02.03.34.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 03:34:53 -0700 (PDT)
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
Subject: [PATCH v1 01/11] perf report: Smatch: Fix potential NULL pointer
 dereference
Date: Tue,  2 Jul 2019 18:34:10 +0800
Message-Id: <20190702103420.27540-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190702103420.27540-1-leo.yan@linaro.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_033455_745314_548484A0 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
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

  tools/perf/builtin-report.c:304
  process_read_event() error: we previously assumed 'evsel' could be null (see line 301)

tools/perf/builtin-report.c
301                 const char *name = evsel ? perf_evsel__name(evsel) : "unknown";
302                 int err = perf_read_values_add_value(&rep->show_threads_values,
303                                            event->read.pid, event->read.tid,
304                                            evsel->idx,
                                               ^^^^^^^
305                                            name,
306                                            event->read.value);

This patch checks if 'evsel' is NULL pointer then pass UINT64_MAX as idx
parameter.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/builtin-report.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/perf/builtin-report.c b/tools/perf/builtin-report.c
index 91c40808380d..a894ce7cd04e 100644
--- a/tools/perf/builtin-report.c
+++ b/tools/perf/builtin-report.c
@@ -299,10 +299,10 @@ static int process_read_event(struct perf_tool *tool,
 
 	if (rep->show_threads) {
 		const char *name = evsel ? perf_evsel__name(evsel) : "unknown";
+		int idx = evsel ? evsel->idx : INT_MAX;
 		int err = perf_read_values_add_value(&rep->show_threads_values,
 					   event->read.pid, event->read.tid,
-					   evsel->idx,
-					   name,
+					   idx, name,
 					   event->read.value);
 
 		if (err)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
