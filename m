Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD3DB5B1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 10:32:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PpYhZXUpvJLI61Rv53XrG0ok4VVSYIcFUulNGpQTgUc=; b=c4Y
	pejBy6zA/g/lubHY5PjtzSuiK3ThiVgy+lLNRLk5M+YXk3+gWlTp+8mhDjUoA+m3xoe+yU6akUMNs
	6TwezqZ/ZIMlnOWJaGlBlVIoxVVlXYa6TtKj5x5NVn4WJbvStZ+3jWygXPkx6dkHsJl3nqFNgNF8y
	arzngLi454lOzHXXoDJrWoFZd9oHnpIvVhJ/QlMCMVTHQNmZnQUeg65rRtSPBfDX1DA3EXqOiNSJN
	txtCs9119DFl6gme0AVhmz0DATE2Lgyx7LL3xqMCNgou7BFQfCrvAqQHuI9cQndqyRil8C8tHD+Gr
	qt3q7DkcamDE1hTfdl5/avxv7vJsibw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKfF0-000742-6a; Sun, 28 Apr 2019 08:32:54 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKfEt-00073h-O2
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 08:32:49 +0000
Received: by mail-pg1-x541.google.com with SMTP id d31so3675800pgl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 01:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=BZzKmMo+qjjyommvsHqCKRlBwkTvNOIM1AtqhVGSBu8=;
 b=wu5QE43+AeRJsCx5EsAFQ2WNN/6Pa5OHvDpSZUE3LqXCoegpmt5xwl2xMcIjZK1a8f
 JN1e575Y97uYNyL/D011tx6b8xfVBhZ1AE24pACltyswm1WgB1S6WztEKBL7XqoBiyER
 Fvhnt93SyMNVKo7wFuP8flLqfsi0O7HvOlyCBz5MxU7YoqWszzaVlNDYo1wWaSl9VECs
 mkj8mQZnB0Jy89/+wy8e6XXq2eeRmk2nIKe0Uu/xVMO4/q9o8tdGC5x+s9sSKCv7Bh2n
 ofJSPaSUV4jcfr2NyGPC/Gp8LGRwRljm3XrvOTPW5Y1+OTXNF1ptQkkubjadVG3vhCak
 Gk5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BZzKmMo+qjjyommvsHqCKRlBwkTvNOIM1AtqhVGSBu8=;
 b=bbllGGtiXQpRpax16lAV7NlA13i+Sz1wN4gCKo88EIoWJ/SnjVptV+MCC4LG583aEx
 NxHM/PFIs+w9Jz+CylrLR+qs/g8qHsbSlTb0lzNwgi25AzbX/d+esxmQquHGmusgnFn+
 nZVwawVnyMDequ1cV5Bxkt1StxFf5Gc8j7Zxnt4N0P5Rau+a+VBf/w/1ABq46+FpDTZo
 hwQNgSMO7fzHIECq7p/Nj/qm/Ihu1a2UCioaZ6EsZKal00mDBLOa2gmzRP9YgeNpTX0N
 7UIGsL0TAt9g04k/F161v1p1F2p3WaKyWGCZvVtLbwGvbkIeX8HROUq5YwQIi4BfOHtU
 tIKQ==
X-Gm-Message-State: APjAAAXiKsefhVY2beOS5wL1Ch5nQ7SfqAMS4ZpIM8Uc4eHLTmx3WfM6
 2WKA27x9Tsp+kjO5QDT/ceo4LiKFM8g=
X-Google-Smtp-Source: APXvYqw9/PtlzImn0mMJdOmeCob3wa+YqMT3LUMcbfuojD6RxMuQAk2fFD4ejtL3SH0T8BkJ7wmGkw==
X-Received: by 2002:a62:2fc1:: with SMTP id
 v184mr24439025pfv.258.1556440365813; 
 Sun, 28 Apr 2019 01:32:45 -0700 (PDT)
Received: from localhost.localdomain (li990-117.members.linode.com.
 [45.33.40.117])
 by smtp.gmail.com with ESMTPSA id a12sm31960518pgq.21.2019.04.28.01.32.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 01:32:43 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Robert Walker <robert.walker@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] perf cs-etm: Always allocate memory for
 cs_etm_queue::prev_packet
Date: Sun, 28 Apr 2019 16:32:27 +0800
Message-Id: <20190428083228.20246-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_013247_814243_CD1A93DD 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Robert Walker reported a segmentation fault is observed when process
CoreSight trace data; this issue can be easily reproduced by the
command 'perf report --itrace=i1000i' for decoding tracing data.

If neither the 'b' flag (synthesize branches events) nor 'l' flag
(synthesize last branch entries) are specified to option '--itrace',
cs_etm_queue::prev_packet will not been initialised.  After merging
the code to support exception packets and sample flags, there
introduced a number of uses of cs_etm_queue::prev_packet without
checking whether it is valid, for these cases any accessing to
uninitialised prev_packet will cause crash.

As cs_etm_queue::prev_packet is used more widely now and it's already
hard to follow which functions have been called in a context where the
validity of cs_etm_queue::prev_packet has been checked, this patch
always allocates memory for cs_etm_queue::prev_packet.

Reported-by: Robert Walker <robert.walker@arm.com>
Suggested-by: Robert Walker <robert.walker@arm.com>
Fixes: 7100b12cf474 ("perf cs-etm: Generate branch sample for exception packet")
Fixes: 24fff5eb2b93 ("perf cs-etm: Avoid stale branch samples when flush packet")
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 110804936fc3..054b480aab04 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -422,11 +422,9 @@ static struct cs_etm_queue *cs_etm__alloc_queue(struct cs_etm_auxtrace *etm)
 	if (!etmq->packet)
 		goto out_free;
 
-	if (etm->synth_opts.last_branch || etm->sample_branches) {
-		etmq->prev_packet = zalloc(szp);
-		if (!etmq->prev_packet)
-			goto out_free;
-	}
+	etmq->prev_packet = zalloc(szp);
+	if (!etmq->prev_packet)
+		goto out_free;
 
 	if (etm->synth_opts.last_branch) {
 		size_t sz = sizeof(struct branch_stack);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
