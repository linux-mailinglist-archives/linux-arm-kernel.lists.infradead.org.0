Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2BD1D019
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 21:41:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a60V8qTH+wA+KGm2OezvlAWhInxNHz/mbqei7GSV/tE=; b=G2Rsa+ojhTn4VduyrTzE3YXxHI
	oAE79xxb8ZYYQvlQoT12f28syuiTjieclei6D04H5Dh6WjFn8whSgaBf92TSj7yEjRjWj0+FgfdUl
	3KioWRuuMQQVgS3cLV6yxUWG6qerz/fDskB6HqK6vlisu9iYEJeYAPBray8X3dCq5EK0Hx7VkJt+n
	7iZd9PDltb1GwaJfcJHOxtbbw4x3bmtJ25iQxR8ZU3+AI1v1g7k3WQDkoctCKYT/wYkJUIYy4Y2Np
	13Zm/GUa4n4q0oDyhsr7NPwwwZdTVjeENmxdhcnU0KazMULRMHNzPRAfYrtdS67Es6QOT/y+31mlz
	b6HiAeFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdIj-0007Oy-UP; Tue, 14 May 2019 19:41:25 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdHn-0006If-KI
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 19:40:31 +0000
Received: by mail-pg1-x544.google.com with SMTP id i21so58247pgi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 12:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nzcbkHx25LwhIrDMW7jKp49bMtN7zqAQcn0716JxD9M=;
 b=JdYE77h0RFDTmuyEGuR3jo6VsWVTe+FxwDn4E5zYketf8cPNJ6vS248H8GDTzWk1Se
 vwbDphS99XnZ9WP6pQLoYSdDnUniQwG+rr7Jx6mYjt86sw8kPDf9LCgPzVLSkf4xJ1G5
 vq03H3MuY1IM8LE8kW07YkTN1UtW6StD1umOPSOv4AQnj1Euk6PJrCbQibhLVRot3rXM
 iabHab7X8NHUDi5/rsWKPnVqygnTtPMPmzLFL+bel9msLDDWPw9pBoqW5eraJgDgEXQY
 VRGoEvvJWLgHKf79kGS/IifwlN5gaAHaR87QpfXur6dHzGQAiCp1kE9NIyy1xFrad6Nx
 fHbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nzcbkHx25LwhIrDMW7jKp49bMtN7zqAQcn0716JxD9M=;
 b=Uc5AhhliWaQherqpw3n/tv5IANTRRsqqKCYxuF6OKXCUpVCKXmjpExtxTdQ5E73mbG
 OFRufdU3V6+8Yl9rLp1c8tvdXg3tEwEfD69x4gn5TZrS0gEZfHL0WaqX7uubZJueKsk9
 AS/Cp7EU7TkHLjF9ENdiFRoLzCO2TFLe5ksRUFSWQ8WZOOwwcIjMRIlZ0M7olYQ1wQTw
 Y6TdZ13TjITcIujxx3PGouSM11FH3cR+1IyfQ4zX8D8kpM5vmaEP1x8Wub2PZ/J96kgX
 6ZxCj+vN8Mn8PoaLsSwtUaRYY7xIv0YbUk5OPFXKcFVngUHo2GsOOMiauuUR2Yc7G0LM
 eZBg==
X-Gm-Message-State: APjAAAXr7qQkoDIFfsR6QAlOuUWaRY4xKg3DoVWPx02UL9g5LNfM8SZa
 qbNDEBnAdXV+kqU69uI7U6H5WRTML9w=
X-Google-Smtp-Source: APXvYqyGleCvseNrN10LWXodWjUoaVsZ8LmdeZt/3/SX8odQ2hok+ELweJ5t+Yc1Fqe9NZAte8MUCQ==
X-Received: by 2002:a62:86c4:: with SMTP id x187mr42066910pfd.34.1557862826843; 
 Tue, 14 May 2019 12:40:26 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id w66sm5791196pfb.47.2019.05.14.12.40.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 12:40:26 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 5/6] coresight: perf: Don't set the truncated flag in
 snapshot mode
Date: Tue, 14 May 2019 13:40:17 -0600
Message-Id: <20190514194018.23420-6-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190514194018.23420-1-mathieu.poirier@linaro.org>
References: <20190514194018.23420-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_124027_873556_E30AFFF9 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: suzuki.poulose@arm.com, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, acme@kernel.org, peterz@infradead.org,
 mingo@redhat.com, leo.yan@linaro.org, mike.leach@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch avoids setting the truncated flag when operating in snapshot
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
index 60e753b1768d..516d67cd7759 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -512,7 +512,13 @@ static unsigned long etb_update_buffer(struct coresight_device *csdev,
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
index 31d41e2ad955..bd5f3b57eebd 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -518,7 +518,13 @@ static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
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
index cc8401c76c39..1fc3db8045e1 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1511,7 +1511,13 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 
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
