Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8E24EDEA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 19:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuqEsJVkwHeI5ItxoPmcUC8kOWf5z09vyfNpgR041vE=; b=BMoKNw4iQCCPUw
	NPpX5nqd9I1vYKrzQkhqkJ8VgdfmEIC7A0OGu0ZvNsEmI/bYQS70cWOyKR2AT/ibRHnLrKvY2V0Il
	XGMXRMWSYvGI9j0SGN41ecP/mj8LuaOz8yzIFrKPsrDV8mET3fIyUzKvG5IVQOQIBGHML6lHsctKp
	o0fP4yO5NoYxiQySYzyDUIyLWm1+c/DGdc1jVsdQUcEQZLJy3SNHb9jE2P0ulPQyRlPMbG717LHxS
	2GfWJ7vZHm5t5nQXCmWicmTLxaDo+q2Z95MAtX0Aed90vRNsYHqmSsYEH2BUFvcnkjHFy/IHIIwSa
	AnmRyP/gZBlJjynQ3V6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNVq-0002Dw-AC; Fri, 21 Jun 2019 17:39:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNVQ-00026R-8e
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 17:39:22 +0000
Received: from quaco.ghostprotocols.net (187-26-104-93.3g.claro.net.br
 [187.26.104.93])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B1BE208C3;
 Fri, 21 Jun 2019 17:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561138759;
 bh=2kxp3/bcwqJVmLgmI64IVChx4CMr6A8dbEmgkS81CBo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=F9sDrNvg+15Apxl6l3KYfm3Ufbz7bmVu+J+3I+mvAcPYZhfymvr0E0qMTnl5yN8f6
 a76g+xfaW3LQoy2a6VEjYEdDldp8M3B1n6XSi5arEtO8j6CFFpQjt/GZk+0H0j/0UN
 7UCJC0meFb/uO+7OhYuV3A7eyX2chYQvTdwGdJWA=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 02/25] perf: cs-etm: Optimize option setup for CPU-wide
 sessions
Date: Fri, 21 Jun 2019 14:38:08 -0300
Message-Id: <20190621173831.13780-3-acme@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621173831.13780-1-acme@kernel.org>
References: <20190621173831.13780-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_103920_411382_8CD331B4 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Clark Williams <williams@redhat.com>, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mathieu Poirier <mathieu.poirier@linaro.org>

Call function cs_etm_set_option() once with all relevant options set
rather than multiple times to avoid going through the list of CPU more
than once.

Suggested-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190611204528.20093-1-mathieu.poirier@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/arch/arm/util/cs-etm.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
index 279c69caef91..c6f1ab5499b5 100644
--- a/tools/perf/arch/arm/util/cs-etm.c
+++ b/tools/perf/arch/arm/util/cs-etm.c
@@ -162,20 +162,19 @@ static int cs_etm_set_option(struct auxtrace_record *itr,
 		    !cpu_map__has(online_cpus, i))
 			continue;
 
-		switch (option) {
-		case ETM_OPT_CTXTID:
+		if (option & ETM_OPT_CTXTID) {
 			err = cs_etm_set_context_id(itr, evsel, i);
 			if (err)
 				goto out;
-			break;
-		case ETM_OPT_TS:
+		}
+		if (option & ETM_OPT_TS) {
 			err = cs_etm_set_timestamp(itr, evsel, i);
 			if (err)
 				goto out;
-			break;
-		default:
-			goto out;
 		}
+		if (option & ~(ETM_OPT_CTXTID | ETM_OPT_TS))
+			/* Nothing else is currently supported */
+			goto out;
 	}
 
 	err = 0;
@@ -398,11 +397,8 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
 	if (!cpu_map__empty(cpus)) {
 		perf_evsel__set_sample_bit(cs_etm_evsel, CPU);
 
-		err = cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_CTXTID);
-		if (err)
-			goto out;
-
-		err = cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_TS);
+		err = cs_etm_set_option(itr, cs_etm_evsel,
+					ETM_OPT_CTXTID | ETM_OPT_TS);
 		if (err)
 			goto out;
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
