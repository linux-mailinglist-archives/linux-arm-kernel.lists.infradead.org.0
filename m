Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C2D1E9125
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 14:25:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m44uyt3jj+5ZYSpRQhcAP99q5hiBqPdRk99uUAJnr5Q=; b=SRaViqZ22YyEJoF3/VIw+aU+Km
	4UmwCjacq7GoOZ72tGvYla1bxp7IUhdftZneXb+nWwk6MufuhZ+9KgeP/8csM/nnNYupbVNac2E0/
	4wL78DqZsxpwqdZbNjHkZEJZw5qwnNfkMU88lb/KeqGL9EyaU5GjKk78OZJNHWjd4xYZCe8LIE90U
	Q5iUDgL/Gz3d6Bj3fSENhPOgutBXuksk19dcp3NhhZZ35YZjqtvHYt8hZq86WfxvbDoE7yry9XmSD
	mwLa2dIfRf2ds4uXffyRltFTTyojzTQvIa/r/BhiCIn33PjguJkD1M8Z0jDoyXXtQf6LblhheRDar
	mEUZf/nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf0YO-0000um-Bu; Sat, 30 May 2020 12:25:32 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf0Xv-00088O-RH
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 12:25:05 +0000
Received: by mail-pg1-x544.google.com with SMTP id 185so1235650pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 May 2020 05:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=y02YWLhIfe8iWH5uPQCTFC9m3cxJDG30jRI/6beOS/Y=;
 b=VSGuPPQ/wLsZN+Ccjzhnx8YPeUyUki3xmn6L+kaeKvzUjvRyGznhfBGnpHEMdKVSsz
 eMvSeJX46dg+l+oSz6eeVyS+8Ll8boS7ocXX/+6QtEJ/3F5yLOZI77gSysJLQv88uGcV
 RMqZJixBTDyemXH8jHBwmQ0jNx64WLpwQsClU1M+ixUhowuxLq86+R2dnKmE4NzPJaKi
 GRkvJZ3C7QWiHhy7mEYVV7OrOsxooj+Mk8BsY3mJA9syozUwqI6JHB/k0D+QBvBqUBsX
 tfnCwycbhkB/elRG4EWH5xfyRZuW0qB5pqA2VaH6W9svVmL1XOCuCWgGskQWZ5KWLXrf
 wtiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=y02YWLhIfe8iWH5uPQCTFC9m3cxJDG30jRI/6beOS/Y=;
 b=G6+hbC7dPkvhjfd1JpeFVDU5CiW2FTEfkTsT/a2GRXvLgHlm+FaXkCnt9ndJt22lL7
 kezX32vr0cztgKXkHPsNS8ytOCowohUCNmx3Cvlakbmf3NrW8hW2t6opBUOTPj461qRx
 8e+4gkarv1K7ASycWq+Dk/Oxh0b/sjDtNch9uNv0TznuZ1gvQ1TLYRjhn+hmVZ3RIVgt
 RMehNV0pxXmmWbyN+cnJHYcUQuDH95HgGj8CfbXKUFeDcT/iQJGbA9YpTRmXZsiH8PC8
 1Ds9Q5Xwed2Pw3sdoslj8AxOycSJr84I2daCM0hfUHPA/ebS42GRIvW3FwoYNzVv3SZu
 siFw==
X-Gm-Message-State: AOAM530aWWeU1conWd8YYOpXSp8ZXuuoto1YcbH9QYNuN7awK/ymBhLX
 PBOT3amVgEmndVdXPWGYz98ywQ==
X-Google-Smtp-Source: ABdhPJxlLKNoV/QNUHfu16z23+fo56zwk9c39DuLWoF5iDaqW7Z1G7yzSXGbQNhAOuj+qw6pof46xQ==
X-Received: by 2002:aa7:970f:: with SMTP id a15mr13415592pfg.80.1590841500375; 
 Sat, 30 May 2020 05:25:00 -0700 (PDT)
Received: from localhost ([2400:8904::f03c:91ff:fe8a:bbe4])
 by smtp.gmail.com with ESMTPSA id 141sm9680568pfz.171.2020.05.30.05.24.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 30 May 2020 05:24:59 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Will Deacon <will@kernel.org>, James Clark <james.clark@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Andi Kleen <ak@linux.intel.com>,
 Jin Yao <yao.jin@linux.intel.com>, Ian Rogers <irogers@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Al Grant <al.grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCH v8 1/3] perf tools: Move arm-spe-pkt-decoder.h/c to the new dir
Date: Sat, 30 May 2020 20:24:40 +0800
Message-Id: <20200530122442.490-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200530122442.490-1-leo.yan@linaro.org>
References: <20200530122442.490-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_052503_938616_4637CDB7 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Signed-off-by: James Clark <james.clark@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
Tested-by: Qi Liu <liuqi115@hisilicon.com>
Tested-by: James Clark <james.clark@arm.com>
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
index 329f12345da0..8d18380ecd10 100644
--- a/tools/perf/util/Build
+++ b/tools/perf/util/Build
@@ -106,7 +106,7 @@ perf-$(CONFIG_AUXTRACE) += intel-pt-decoder/
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
