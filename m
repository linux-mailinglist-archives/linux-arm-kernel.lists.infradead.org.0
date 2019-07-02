Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2E05CDB7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EEW3pI628hie8o3ADnZ9LB5qBxwmF3knS2Q4I/QMaWI=; b=HQf8Ii2sUGK3sfYHZQMfPZQefR
	3Z37WXCAEy5PEPc4wk7DveibHh/aSEfY07mXZgzWzsFIKvNW67XekFZqTIbg23Yv8SbRPpTufSYrr
	Ymg83YiWDbwTnssFce4t7D7w4HEjS5Fnrz2vbAJCRQONhOYtbuRf7t/tzh1/NyHAT44xHSvq707ix
	kFV3E0nFzVfoE94yq3MGh86c9u9wIxLPKwk3sHqByF5LcMj+FO7sl/y+tsmqvhiVzhURKcKG+cCW6
	oQnct27b9OCUZkFx1pE6FHw44dRrvv70DoW7ymyKLeoUF6axuOaTtAJSPzql4vk7PWv9HXXy0Wxx0
	tI6Lnh8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGBJ-000621-SE; Tue, 02 Jul 2019 10:38:37 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiG8r-0004HH-Q8
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:36:07 +0000
Received: by mail-oi1-x244.google.com with SMTP id s184so12614749oie.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 03:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3cNHVq2PaBuyPCbFNTx86WJww564kzf0LCV7McgViLQ=;
 b=GeU2YXECtSWfuOvAG0IXrfrSQ9GC6wKTPBTdhMDvUYYBgeNMHH44ObcVpAgJxIHjRu
 XicPO2ucq+5oUDudXs2mJPojY613jYIPnec60fr4ppTayNR73/TdwAy6ls50oh3kWzLz
 7HggTaX71y4bEubqd8qL21lfZrHDsHmxgB/kbv2nqyzqpxo+YLTG5wwfi7mIlckvsUgs
 HfLJIS9EQrhuPFz8avWFKQpZmAWMl0i5FDmd225UflwLKM80U0o4VKBdwejuQMcstKgQ
 WU9+yflbRfrpdlPHRtZKIL7/IVZwM8i2kU9fiS76WHQBh44fB3J4FGPT+d9dVKxxJUkV
 P4+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3cNHVq2PaBuyPCbFNTx86WJww564kzf0LCV7McgViLQ=;
 b=o+Tg7QtQvMgl4LSuKo4q9njVVNUzcSehnKcCF5MOXdPvVRsAWfbWfB4UqzHTcgdnpx
 nF2K1xyya8o+g9CaZM2YT6rNm+SEK5xhYiE1sUDdbvBGGBkWLP9UOBu/hAwp4n8GXIwq
 C7soG3Vvzn5NZ3+Sdqe6t6vKwgayer2ltQfUApYJGJZzTHdsgZL377QOtEUeHTRf+6nl
 zc4FbBbWP/BMGCJh7KcWecM5POZWJ1gC74L7EQNmnaoxzmCg/bm5rQfgrp5MKpEjTwqa
 pBOM9EDsPWprwR9PEZAF/0G1S+8ngCMnKK5qeNIJNMLG8WxCzuZ8gEwDPKGycRoSsCpn
 1fIA==
X-Gm-Message-State: APjAAAXIjzm3u3fzZ3HxetOwJo0Omo7Zo1KszU2OBk+bHCIQtWYJ+dq2
 pQfP2pXsws6JR8r51JVi8ciAzQ==
X-Google-Smtp-Source: APXvYqzYGnFN38aJObgZOgp3dai/yecgeBWLFTPbjdxix9QcSJeEiglV4RCPb23llBR9J88wkSzRow==
X-Received: by 2002:aca:3dd7:: with SMTP id k206mr2332669oia.47.1562063765056; 
 Tue, 02 Jul 2019 03:36:05 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id 61sm5139805otx.8.2019.07.02.03.35.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 03:36:04 -0700 (PDT)
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
Subject: [PATCH v1 10/11] perf intel-pt: Smatch: Fix potential NULL pointer
 dereference
Date: Tue,  2 Jul 2019 18:34:19 +0800
Message-Id: <20190702103420.27540-11-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190702103420.27540-1-leo.yan@linaro.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_033605_917477_E7C96462 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
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

  tools/perf/util/intel-pt.c:3200
  intel_pt_process_auxtrace_info() error: we previously assumed
  'session->itrace_synth_opts' could be null (see line 3196)

  tools/perf/util/intel-pt.c:3206
  intel_pt_process_auxtrace_info() warn: variable dereferenced before
  check 'session->itrace_synth_opts' (see line 3200)

tools/perf/util/intel-pt.c
3196         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
3197                 pt->synth_opts = *session->itrace_synth_opts;
3198         } else {
3199                 itrace_synth_opts__set_default(&pt->synth_opts,
3200                                 session->itrace_synth_opts->default_no_sample);
                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^
3201                 if (!session->itrace_synth_opts->default_no_sample &&
3202                     !session->itrace_synth_opts->inject) {
3203                         pt->synth_opts.branches = false;
3204                         pt->synth_opts.callchain = true;
3205                 }
3206                 if (session->itrace_synth_opts)
                         ^^^^^^^^^^^^^^^^^^^^^^^^^^
3207                         pt->synth_opts.thread_stack =
3208                                 session->itrace_synth_opts->thread_stack;
3209         }

To dismiss the potential NULL pointer dereference, this patch validates
the pointer 'session->itrace_synth_opts' before access its elements.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/intel-pt.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/intel-pt.c b/tools/perf/util/intel-pt.c
index 550db6e77968..88b567bdf1f9 100644
--- a/tools/perf/util/intel-pt.c
+++ b/tools/perf/util/intel-pt.c
@@ -3195,7 +3195,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
 
 	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
 		pt->synth_opts = *session->itrace_synth_opts;
-	} else {
+	} else if (session->itrace_synth_opts) {
 		itrace_synth_opts__set_default(&pt->synth_opts,
 				session->itrace_synth_opts->default_no_sample);
 		if (!session->itrace_synth_opts->default_no_sample &&
@@ -3203,8 +3203,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
 			pt->synth_opts.branches = false;
 			pt->synth_opts.callchain = true;
 		}
-		if (session->itrace_synth_opts)
-			pt->synth_opts.thread_stack =
+		pt->synth_opts.thread_stack =
 				session->itrace_synth_opts->thread_stack;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
