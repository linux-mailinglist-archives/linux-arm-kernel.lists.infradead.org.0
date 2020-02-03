Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C777150066
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 02:53:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XNEgzB1GuDdqAhva1fVx5mvcIbA651u2+Jq3jRFLo48=; b=ukKqsuF/b8qQUxPlIqLWCJ60Op
	my5ULZH2SkGBtUScT6jo/jm//l2CbpfS6tr8GxNmoKVJ7pOA77+hMsYrk2UmAPth0b4LPGjOOgLlL
	cFeK489/72pzJ44m8G/yZ7S1TDcrMtDMK9FRlxSHIYKMTsGup+8VEELcChSlIItvt+sjVqnbS9Om3
	dSJtdQrr/XW7sB1YHCE61ywaBMD2wn2kNMG2wR5AcBrsf663WCA2THUTQgFlew9jDd6Z+DMIeIw67
	1M9betF/9qExYamfPeWiM10iKQMTQSJ7MWOOk2VwNK7ZieEYShuvGDgp0s8M3AZLtffxBnYmFCjI1
	KYs1KyBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyQvt-0000Qe-HG; Mon, 03 Feb 2020 01:53:49 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyQvI-0008OE-Rh
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 01:53:14 +0000
Received: by mail-pg1-x543.google.com with SMTP id k25so6926566pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 17:53:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2+2YWgBMeeryAAU9fYclXtNdUgS1YJs1/8RQuKlQaE8=;
 b=HOtFjfzsqzJtNZK8kSGu8LnG5oJm+REHMExI1vFCBQR7p1YFxE3PiBeN2XMp8dM3mu
 aAvEHJl8lXIqD2PguYF76B8wK9dK8rDxyZJh90JQku3rINQPzMEJkvmd4KrracreRGND
 mVyYYSAfXdRUmlvhKjerkcLqwV1fZ0J7VOMKjUsL5mY79s5Zsou2lpGHkZqpUiNIijb3
 DYlnTCldlG9XM7qlsOIGH4LNEn+qfAvadE5cKhuCe1y6Qw1KQXKnFefFcuNKb28dcO4S
 vIgaWVZYfdZTeEbpyhKTjuwWhLP5Dho9CoZj7bp2urRRQMOHn4K+jJvoQS9yPunnTUua
 KA/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2+2YWgBMeeryAAU9fYclXtNdUgS1YJs1/8RQuKlQaE8=;
 b=PWTjRRAsUueH36bqOt1W4wGeBMd6ohkbW8WjjGqfpcfcPTHaNr5FcFzOJ3ycYgtkBj
 +JDgJc1ueSTe/ULC8GencqZdmdXbhuhYCOuWqXU8MoU79HDswxp+6kj+2ebWJS9YcaHW
 KXJE2gAPWsvWX2bhUp0DMhtmPnVPz8OFesCu6ayPUsd+4VJhKKZTYJi0a2nm7AtTjKr+
 CFTrQlQkK+xiF3Qn2uHd39wK5KI1M5b2DUBZLRK0GTeeBXUuiaVdNxW40ABp4bNw+sxl
 3DPS4b930464bpdr2yJ/uvsgZk9XacZcvyuWMxsMjEld+BRoSwQw3Pd9F6AssMsXMTce
 /DHA==
X-Gm-Message-State: APjAAAWQht6hp+mpf5XUqLgsm6hur0kai33o9BjMOPIIaUcrIyIq9qtx
 18zblTyHqzpqf/zBS+BthvmOhA==
X-Google-Smtp-Source: APXvYqyAbgLqJ9Isw3Tp2wOvQehMh8mkseNeD3y6W7Gpa4NaE0cR6RhiKf7WDy1GXf+n7lrx2pGgkQ==
X-Received: by 2002:a63:520a:: with SMTP id g10mr20966953pgb.298.1580694791834; 
 Sun, 02 Feb 2020 17:53:11 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id y38sm17348308pgk.33.2020.02.02.17.53.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 17:53:11 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <robert.walker@arm.com>,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v3 5/5] perf cs-etm: Fix unsigned variable comparison to zero
Date: Mon,  3 Feb 2020 09:52:03 +0800
Message-Id: <20200203015203.27882-6-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200203015203.27882-1-leo.yan@linaro.org>
References: <20200203015203.27882-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_175312_904474_94B25716 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

The variable 'offset' in function cs_etm__sample() is u64 type, it's not
appropriate to check it with 'while (offset > 0)'; this patch changes to
'while (offset)'.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index dbddf1eec2be..720108bd8dba 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -945,7 +945,7 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
 	if (packet->isa == CS_ETM_ISA_T32) {
 		u64 addr = packet->start_addr;
 
-		while (offset > 0) {
+		while (offset) {
 			addr += cs_etm__t32_instr_size(etmq,
 						       trace_chan_id, addr);
 			offset--;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
