Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C3E10C75
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 19:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ypBR/AZkTUtu999s4NTujBQNUHKHuu2Cgxj91d2VkOI=; b=J+05+rQybb24VAxWGDdygAY4wk
	K8KfguYSeryf/H1b/4DiDfYJ8dt8p/qZnXpjgwvs1A5oJclH9CBnW8X1D3EqI0nxavUkXSyEay+0t
	YbxYkj3cS1GKvaRtAZXvmH8R0GrIZd/cs/JBLVHuL2VGXxBiCg/1HiGQdm8A6UClLUFnubIC5GpLk
	9yZfqNhwyL+jsAFh/9w8/24NHiwggXjmhZ2XQ1q+5qaEgiTZ6q1IcvR6UFFNsslLK/vjcR9By9+iJ
	kmHKtLZWBhvgD7fPb7mlSPotfdSmnqQZMUg10/mMFBLWA3n1AyYUcPOgAiVzLEsS99eBFAqK0ae+o
	jSEfEAlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtOG-0005CP-L1; Wed, 01 May 2019 17:51:32 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtNk-0004fq-AX
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 17:51:04 +0000
Received: by mail-pl1-x644.google.com with SMTP id x15so8491458pln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 10:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GsY2ki4OBIaGx9MWfy2kyzvHrmNKu79KOYeMJ98kbRo=;
 b=BkynFBxUmeswyRgkryl9Jp3ACLOBIQaauG2RH1XSRhcvuen/g/EQxPjI3iS8Fz8WZW
 OdVCNPxIMTOGtohX09joNna3sIqnhzRXr1grNqISY1vd9DCjNNUqGEIRkhehbuyzfNpr
 5i0ADrSeJT0MpEgrpSGZq1Oge44uohQmYWdF+3xOkLZJbdqtaSgjWEvPi4bhvPJRIKf2
 LqPB1O/U0w3omCH8AP72KD56kafdutL30ufipMBfxY6xWeEKj9sDZYqPj1Nze/sIwc0N
 ylahbXHEeG4o0ovI+RCb2tRHhCGuF7iBnChTU3WCwd7LZVJ3Ei6/ej1Foh0WtGkGuqom
 SBTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GsY2ki4OBIaGx9MWfy2kyzvHrmNKu79KOYeMJ98kbRo=;
 b=rdW4AvJ7A9pEQe8zL3RFutQFmfM3FCo46FT681rMRgyZ3NYUbDMKmo20n5TBeBcxAR
 NSIIMS3eaP4pdzd8FymTytUgp50T9ZwlhV1MIXY6qQczgTlauimd4nh08vEU3TJpm17W
 c4mSneYXOr2pNZw+3LWvCaeiODY3FSesRo2oVXTO+XBOaiAHRGgRBFu9y20TjeN5uQFl
 KUJLbA846VQ8DZ7CrbGghpRFiThgRGYqIW5+fR12vuUYpypVFdGvyO+rSTVZRTWPs7mQ
 CN6rg9L2lcHqwO7jwaEprk+ofsXMwSjS6JAIauIixX9vgySDcSN5IEKUnWkpJ9QleDc8
 26fw==
X-Gm-Message-State: APjAAAXyzwA/6bOEpnMKQP1XBxCLUX7Lpk9VCZD+50bGKoP8ylgdlPU9
 X+o4dMWxHW3MJPMz4U6kKQc1fgGKdtc=
X-Google-Smtp-Source: APXvYqx8H37R23MSXv3SvmmMdhyx13zfKNUUyEkGwf8oUW9Ie3NZmVSqK1y8Oqgo4RvVgN7AlByBlQ==
X-Received: by 2002:a17:902:6b47:: with SMTP id
 g7mr31834843plt.227.1556733058816; 
 Wed, 01 May 2019 10:50:58 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id h189sm84126158pfc.125.2019.05.01.10.50.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 10:50:58 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/5] coresight: perf: Don't set the truncated flag in snapshot
 mode
Date: Wed,  1 May 2019 11:50:50 -0600
Message-Id: <20190501175052.29667-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190501175052.29667-1-mathieu.poirier@linaro.org>
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_105100_659574_86C42A75 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: corbet@lwn.net, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, suzuki.poulose@arm.com, acme@kernel.org,
 peterz@infradead.org, mingo@redhat.com, mike.leach@arm.com, leo.yan@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch avoids setting the truncated flag when operaring in snapshot
mode since the trace buffer is expected to be truncated and discontinuous
from one snapshot to another.  Moreover when the truncated flag is set
the perf core stops enabling the event, waiting for user space to consume
the data.  In snapshot mode this is clearly not what we want since it
results in stale data.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etb10.c   | 8 +++++++-
 drivers/hwtracing/coresight/coresight-tmc-etf.c | 8 +++++++-
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 8 +++++++-
 3 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index 0764647b92bc..6ff48be91f61 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -535,7 +535,13 @@ static unsigned long etb_update_buffer(struct coresight_device *csdev,
 		lost = true;
 	}
 
-	if (lost)
+	/*
+	 * Don't set the TRUNCATED flag in snapshot mode because 1) the
+	 * captured buffer is expected to be truncated and 2) a full buffer
+	 * prevents the event from being re-enabled by the perf core,
+	 * resulting in stale data being send to user space.
+	 */
+	if (!buf->snapshot && lost)
 		perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);
 
 	/* finally tell HW where we want to start reading from */
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index d3025634f5e6..8039bd389034 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -538,7 +538,13 @@ static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
 		lost = true;
 	}
 
-	if (lost)
+	/*
+	 * Don't set the TRUNCATED flag in snapshot mode because 1) the
+	 * captured buffer is expected to be truncated and 2) a full buffer
+	 * prevents the event from being re-enabled by the perf core,
+	 * resulting in stale data being send to user space.
+	 */
+	if (!buf->snapshot && lost)
 		perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);
 
 	cur = buf->cur;
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index b9881d6d41ba..718586a083af 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1516,7 +1516,13 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 
 	lost |= etr_buf->full;
 out:
-	if (lost)
+	/*
+	 * Don't set the TRUNCATED flag in snapshot mode because 1) the
+	 * captured buffer is expected to be truncated and 2) a full buffer
+	 * prevents the event from being re-enabled by the perf core,
+	 * resulting in stale data being send to user space.
+	 */
+	if (!etr_perf->snapshot && lost)
 		perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);
 	return size;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
