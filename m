Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DFA69D8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 23:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PbSDxyOI7XcKtk82ni8uKfWMXJiFdN88h8WCN/JAa+s=; b=UtHSTSmDYKOP18
	BzXO9syHHx5klaafF5B26rix8wGW8rM8Wb3RchJGTIYzSR4xx9Bd2BrbZPEgqgDNKmQ4YHZqFZyVB
	kVeZ1S5EG1UdesXUIeWpSidZPZZoIhv6odHqexrrsi3svG3AL1yElz+1jthk6SjNXV3vYgTmFSnW3
	NeH3zJXXW5QDc02OHcwQevPklMQxHHYYjiI9fQ2BdRbv2FTKEp50NhoWl+eOGKjVNRevZboSQ5v6H
	+GcBtAg+Ljt27yluqaCqvUIVUra8LLG07FH9dkqUSdeYKa5j/wF4E06C9d8VGXpgAuQ++Q0ogBmiK
	XP809BamBW5SpzfFnR1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn8JF-0001CN-Rj; Mon, 15 Jul 2019 21:14:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn8Il-00010K-HI
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 21:14:29 +0000
Received: from quaco.ghostprotocols.net (179-240-129-12.3g.claro.net.br
 [179.240.129.12])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E4BA82173C;
 Mon, 15 Jul 2019 21:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563225267;
 bh=7gF33XVGPWPehjsDTM+Wd6unH/O+yYsqP9r8KeEOR5o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=N6BvSvBtkrtPOoEh4mcgu0/G9qLKqc47wrDqxvhb6L3iwhQTG8S9PGJg48OR/yrGJ
 hLDyk7oVhm6SVpUeqDoLC90CwHS9nZZEo9CNUc009OIedGvImOk8DxV7PD/+NivQV9
 FNuRNlmIzwGfHH6PBDJD7IGeIARrpK/XpIkpo5RQ=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 26/28] perf cs-etm: Return errcode in
 cs_etm__process_auxtrace_info()
Date: Mon, 15 Jul 2019 18:11:58 -0300
Message-Id: <20190715211200.10984-27-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190715211200.10984-1-acme@kernel.org>
References: <20190715211200.10984-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_141427_660150_ED4651CD 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>, Clark Williams <williams@redhat.com>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: YueHaibing <yuehaibing@huawei.com>

The 'err' variable is set in the error path, but it's not returned to
callers.  Don't always return -EINVAL, return err.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Fixes: cd8bfd8c973e ("perf tools: Add processing of coresight metadata")
Link: http://lkml.kernel.org/r/20190321023122.21332-3-yuehaibing@huawei.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/cs-etm.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 2e9f5bc45550..3d1c34fc4d68 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -2517,8 +2517,10 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 	session->auxtrace = &etm->auxtrace;
 
 	etm->unknown_thread = thread__new(999999999, 999999999);
-	if (!etm->unknown_thread)
+	if (!etm->unknown_thread) {
+		err = -ENOMEM;
 		goto err_free_queues;
+	}
 
 	/*
 	 * Initialize list node so that at thread__zput() we can avoid
@@ -2530,8 +2532,10 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 	if (err)
 		goto err_delete_thread;
 
-	if (thread__init_map_groups(etm->unknown_thread, etm->machine))
+	if (thread__init_map_groups(etm->unknown_thread, etm->machine)) {
+		err = -ENOMEM;
 		goto err_delete_thread;
+	}
 
 	if (dump_trace) {
 		cs_etm__print_auxtrace_info(auxtrace_info->priv, num_cpu);
@@ -2575,5 +2579,5 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 err_free_hdr:
 	zfree(&hdr);
 
-	return -EINVAL;
+	return err;
 }
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
