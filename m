Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B0663B0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:34:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uYUDOWG10Q9HGv9+ZcaAEaZmwuo6auk9Hk6pORf6D00=; b=Y7hDgjtWdpKVXO
	c2lW744E2E6sYyxCk5HiIB1w8M+kEMpwqjC4VI4BQWadlkCP3+QlnSHtWzhUBnx3mlKiZgs73ekRG
	UfvlmYc/iAyrNAHMGVpVR+HYJter8H/M0inPE0vIiBCcExSMXPCMGUG7LBAjgIe4S6UnggcrW/J9V
	OoK41jRO/0WZCbGtNYc5jUv/qNroTqEp2nDXxPysn5kbIYgyaxL3anlwV8SfdyFJ6/JArcnEJ3r4B
	4mzRTzyE12pYotoNYuY+Fu8G8ns/r+LAJbTZvOvmEhwWR5gHGJ5ocnaZjaKr/Iy5G6a0sOJ1jV7Sx
	C1UohfIzAT9MsAN8XJ7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkuwg-00086o-Ff; Tue, 09 Jul 2019 18:34:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuvJ-0006qO-5c
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:33:06 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E8EF720665;
 Tue,  9 Jul 2019 18:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562697184;
 bh=+AHHhdCKUtduEQJ0K9mVtwS+3cT8oze/CNUH/7f6WcY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qNlo2WDshInz0LxZHziyFOQ7IticF2B5seQoqdwNEkGwXb7NjkejRO2Kx6c49thQo
 rBHeqnABe6q9slbHT66Dfoz0U9uQScNpFgsMSgWevK8Mhyzpo18byI7gnQSeLeYlFt
 ontlmBoLOc1jbLxNSxMPktzZFaxgzFZLp4R7aj94=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 19/25] perf cs-etm: Fix potential NULL pointer dereference
 found by the smatch tool
Date: Tue,  9 Jul 2019 15:31:20 -0300
Message-Id: <20190709183126.30257-20-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190709183126.30257-1-acme@kernel.org>
References: <20190709183126.30257-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_113305_260485_856D12DE 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>, Clark Williams <williams@redhat.com>,
 linux-kernel@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@kernel.org>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leo Yan <leo.yan@linaro.org>

Based on the following report from Smatch, fix the potential NULL
pointer dereference check.

  tools/perf/util/cs-etm.c:2545
  cs_etm__process_auxtrace_info() error: we previously assumed
  'session->itrace_synth_opts' could be null (see line 2541)

  tools/perf/util/cs-etm.c
  2541         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
  2542                 etm->synth_opts = *session->itrace_synth_opts;
  2543         } else {
  2544                 itrace_synth_opts__set_default(&etm->synth_opts,
  2545                                 session->itrace_synth_opts->default_no_sample);
                                       ^^^^^^^^^^^^^^^^^^^^^^^^^^
  2546                 etm->synth_opts.callchain = false;
  2547         }

'session->itrace_synth_opts' is impossible to be a NULL pointer in
cs_etm__process_auxtrace_info(), thus this patch removes the NULL
test for 'session->itrace_synth_opts'.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190708143937.7722-5-leo.yan@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/cs-etm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 508e4a3ddc8c..67b88b599a53 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -2538,7 +2538,7 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 		return 0;
 	}
 
-	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
+	if (session->itrace_synth_opts->set) {
 		etm->synth_opts = *session->itrace_synth_opts;
 	} else {
 		itrace_synth_opts__set_default(&etm->synth_opts,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
