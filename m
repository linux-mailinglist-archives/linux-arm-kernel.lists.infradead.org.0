Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 573A31C38B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8lZe/0cHw/x/NiI/fjIrc4TmZUupZIn3gvLLOMRoh/Y=; b=WxwiP2jTwqkkP4aY5xC2xUDkkv
	JORQ4QjKIcriD7uRfVbY+48y0qPnABU665BjYiZ2z14Siuil9JG/FTAIHaBoj7iySx99e4RE6b+B5
	dr0MSun/bJO2ERx/G3H1d0zcFZMPpKRavgkKEFE7eC50lkuACLwOurAPt+CEN9VsL2dBHWqr9PR9o
	91XIixj2rEhJGZ6iewEp032mLClcznOm085CoeHmRz2v/2w8RgB4HvA5dDb2Kz7yhaqMyKsYGPRWF
	/SOvy9frAHxEbHsBc2qumucNsmbHdo2LWMqeE9XsM6slf9aKWh+mma1PXAjOP4gTC/k1iSZmQtyLC
	UvdVnKRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZib-00035F-Be; Mon, 04 May 2020 11:57:05 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZiK-0002yV-S8
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:56:50 +0000
Received: by mail-pj1-x1041.google.com with SMTP id t9so3667878pjw.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 04:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VjxC6yar2pkOPDjFHi+N3zsczn/g58x93twk4LhJqJY=;
 b=yNlSGZ2hjNuslp0mc3MIjz3ht1xvPrJSZ6G/6CHlsizSc+Hp9R6kh6jNzcbaqrXLgt
 Af3cFoLPjTm/bHZri3/t2L+n47cslLjI6sG5ezJGpW7j5jMgb5cIGPS95OrI1t8BAq5j
 JPrQJt9MNYm3+h6bqMbYNUjPmz5R5LqXNWv1KMtHDLaJxHwUXkqaBcZpY0wo9qg/xvuj
 JKPC0Q4sJe7gUYBLHZCxkabQYMl0HxtfMkizoBBYmEcDWvhwFzpmJ3Bq2gEu/OHKW19Q
 xaWk8yvFG71MTEdKkE9AkUB6nt0jsWY3Dc8cBiyZWpZQir1OyALnMlmYNhuoY6q1stEf
 yotg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VjxC6yar2pkOPDjFHi+N3zsczn/g58x93twk4LhJqJY=;
 b=nGUpLDLUM1tFoTeyMygUXzP0P5hL7qCq3zLdva8+8YekDEOSXZLBrLIfZUsjj/Artx
 KT3CUHo3rfQuAQEln+5jLIDx46i/dqpa970WC7qRYXY5WL4LuHecAosN8xjJAp79jTle
 5qcWPy4fn43puyxncKWhA0nLmxyDmbk7b6A9w7dgs5a6SX2lDkQuIV4xF3fe2OMOrlSC
 tAW8uZKRnZHQbcLj79dP70aD7TXfColk+/5h0Dx43HtI2j0FvdVHdv/m/k30sl/ueCLE
 Gls6EqZCiPlpVIGErnTZFTxhNNaJkpiDM0XtOWrKaKQxVQL5HdX4NsXmn6vHhPZo9cTR
 28zw==
X-Gm-Message-State: AGi0PuYxQ7HXf6CdclwwXZsRSHbma1WMlDGtiWrKaxoqA+cH60DvZiG5
 dyjskN0pAChvlV9XnCvzKk7YZg==
X-Google-Smtp-Source: APiQypIvcDK+NL5FERdEoAlT+n/SbuYUlWoJTlo3xaAi8kbBrMP/Vm6C+hhqPqKPa3ytgy9nUEuNwg==
X-Received: by 2002:a17:902:b186:: with SMTP id
 s6mr18538615plr.16.1588593407935; 
 Mon, 04 May 2020 04:56:47 -0700 (PDT)
Received: from localhost ([2400:8904::f03c:91ff:fe8a:bbe4])
 by smtp.gmail.com with ESMTPSA id y24sm8693921pfn.211.2020.05.04.04.56.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 04 May 2020 04:56:47 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 James Clark <james.clark@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Al Grant <al.grant@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCH v7 1/3] perf tools: Move arm-spe-pkt-decoder.h/c to the new dir
Date: Mon,  4 May 2020 19:56:23 +0800
Message-Id: <20200504115625.12589-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504115625.12589-1-leo.yan@linaro.org>
References: <20200504115625.12589-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_045648_930924_190D29F8 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2400:8904:0:0:f03c:91ff:fe8a:bbe4 listed in] [zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tan Xiaojun <tanxiaojun@huawei.com>, Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tan Xiaojun <tanxiaojun@huawei.com>

Create a new arm-spe-decoder directory for subsequent extensions and
move arm-spe-pkt-decoder.h/c to this directory. No code changes.

Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
Tested-by: Qi Liu <liuqi115@hisilicon.com>
Signed-off-by: James Clark <james.clark@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/Build                                       | 2 +-
 tools/perf/util/arm-spe-decoder/Build                       | 1 +
 tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.c | 0
 tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.h | 0
 tools/perf/util/arm-spe.c                                   | 2 +-
 5 files changed, 3 insertions(+), 2 deletions(-)
 create mode 100644 tools/perf/util/arm-spe-decoder/Build
 rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.c (100%)
 rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.h (100%)

diff --git a/tools/perf/util/Build b/tools/perf/util/Build
index c0cf8dff694e..cfda4204bb51 100644
--- a/tools/perf/util/Build
+++ b/tools/perf/util/Build
@@ -104,7 +104,7 @@ perf-$(CONFIG_AUXTRACE) += intel-pt-decoder/
 perf-$(CONFIG_AUXTRACE) += intel-pt.o
 perf-$(CONFIG_AUXTRACE) += intel-bts.o
 perf-$(CONFIG_AUXTRACE) += arm-spe.o
-perf-$(CONFIG_AUXTRACE) += arm-spe-pkt-decoder.o
+perf-$(CONFIG_AUXTRACE) += arm-spe-decoder/
 perf-$(CONFIG_AUXTRACE) += s390-cpumsf.o
 
 ifdef CONFIG_LIBOPENCSD
diff --git a/tools/perf/util/arm-spe-decoder/Build b/tools/perf/util/arm-spe-decoder/Build
new file mode 100644
index 000000000000..16efbc245028
--- /dev/null
+++ b/tools/perf/util/arm-spe-decoder/Build
@@ -0,0 +1 @@
+perf-$(CONFIG_AUXTRACE) += arm-spe-pkt-decoder.o
diff --git a/tools/perf/util/arm-spe-pkt-decoder.c b/tools/perf/util/arm-spe-decoder/arm-spe-pkt-decoder.c
similarity index 100%
rename from tools/perf/util/arm-spe-pkt-decoder.c
rename to tools/perf/util/arm-spe-decoder/arm-spe-pkt-decoder.c
diff --git a/tools/perf/util/arm-spe-pkt-decoder.h b/tools/perf/util/arm-spe-decoder/arm-spe-pkt-decoder.h
similarity index 100%
rename from tools/perf/util/arm-spe-pkt-decoder.h
rename to tools/perf/util/arm-spe-decoder/arm-spe-pkt-decoder.h
diff --git a/tools/perf/util/arm-spe.c b/tools/perf/util/arm-spe.c
index 875a0dd540e5..235de3d0b062 100644
--- a/tools/perf/util/arm-spe.c
+++ b/tools/perf/util/arm-spe.c
@@ -23,7 +23,7 @@
 #include "debug.h"
 #include "auxtrace.h"
 #include "arm-spe.h"
-#include "arm-spe-pkt-decoder.h"
+#include "arm-spe-decoder/arm-spe-pkt-decoder.h"
 
 struct arm_spe {
 	struct auxtrace			auxtrace;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
