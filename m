Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BA44164C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 22:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LpWBvxt8pMlWBJVy83NOo4C+NTFhJmMhIHd2akgKYsM=; b=lrX
	vxdJU4wWx41eEss2FpEOIxVTbvxEHHI5UFiQbPVUoPkt5YrhaR9qk9JP3Bqe/dDbHE73c/5nCgmJu
	VxhBYTEQkLnNfumsnI8vHZSlvk95jltPPVwtHyT5w7OWhmPc3nKA3OtW5AJWO2AdjXPQhn70GEkSj
	5QG7sD0nqxk0xskckBQtsA7uBVpKKJXZPc2u0sUQ5NijhhWlH1MQrVDj+pzDe1tmF2IrAwss5rAQT
	+Rf+fm1qEKNKJwaSA2/vux7A/Lumg2bcgtP4Xj/Pgpeh1pHNNTfXmihumhU+HbEvNt5yFVUmtiamF
	Im6L6Dlxahw2EAySm8jiAH0cSlcXeYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haneH-0002uy-3F; Tue, 11 Jun 2019 20:45:41 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hane7-0002uV-18
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 20:45:32 +0000
Received: by mail-pf1-x443.google.com with SMTP id j2so8168473pfe.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 13:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=dF0WnaGr98RkhLcmLgoIGl3DfMfT3YTnuXvqgzRmPU0=;
 b=br92qJdRfDtRJUO37iHSmLbRXiDvajUeTM2tW0f2IxX0hCoBDt7Q0J7/dVIrEb91Ww
 UB67hQTp9W9hra48minpZIvZbVUniezaBw8jzEPVJTfPs00fOSIt1AXDJwErRb+WbGfZ
 uzsl/dexSkVOSYbRvNfJwkQKk4YvysvZnyv9S9xOBgTJHbW44q4QwZ8rFykTBMUoLt8I
 6zZtSj8xZ9AiRUkAe1Ddx6ScyUOZcctM0cGEM2zAGf+udiyJLzoBLHm4i5RApqpQDW2b
 dfnk7K9/N3nEb6uK6E2umLqKDcchvGTlSC/U7OZG4jNpw4zOjLTu+REzhYujD4fg4cXo
 4OWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dF0WnaGr98RkhLcmLgoIGl3DfMfT3YTnuXvqgzRmPU0=;
 b=GxS+6PSeOSNCtoEZyTeZzPWsLhMSScKUGWBWKB5DI/kpigQ/1e7d5DcJYoYQ0x8Kzc
 ON+lKx6ydTAnEUVm6n6kxwRkMpSFhPms4qUec2XqVULArKJBc3bWEpXYoj1FpY6y+vdw
 exT5aVVKAxsbQtTgI+O/TyWWbi+mU6rGbnb/aJDz6YyRawVX7KRLmgEUb8rxQWkn0TMv
 3YBJnTCRUjaH3qpd+51NZpfhlwhBFBz4Ya9cWLjv0lVM6vy2CryF/WfSkfD/bfTMxN10
 Ke0xrzSJ6jNzWm5x6V8RGTQuw1tK7Zv2a/8K8/QZlZ0M89AyHSzBxleGMRLCwfmxyhya
 ushQ==
X-Gm-Message-State: APjAAAW6TgR8wdfUT8S8EAW54Bq9kGm2O/Vx+8nnDxYqR8lhIAuw38mX
 0+DV6bn3+1I86iLq3QviE61Q8A==
X-Google-Smtp-Source: APXvYqybZEjkm8mWlNFliMajIXJ9xzxAmMas+gJR4YUUP6P2W/dJietSrRwTZoQWfUKbpk63L+hUGQ==
X-Received: by 2002:a17:90a:b908:: with SMTP id
 p8mr28760708pjr.94.1560285929914; 
 Tue, 11 Jun 2019 13:45:29 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id f186sm20391683pfb.5.2019.06.11.13.45.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 13:45:29 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH] perf: cs-etm: Optimize option setup for CPU-wide sessions
Date: Tue, 11 Jun 2019 14:45:28 -0600
Message-Id: <20190611204528.20093-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_134531_139240_32DEF489 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: suzuki.poulose@arm.com, peterz@infradead.org, linux-kernel@vger.kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Call function cs_etm_set_option() once with all relevant options set rather
than multiple times to avoid going through the list of CPU more than once.

Suggested-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
