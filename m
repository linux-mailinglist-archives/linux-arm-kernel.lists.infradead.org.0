Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D204BFAA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JBByjoYJtLuVu0ENVKyXlm1OB1KqjuOYdx/IWp5yd8c=; b=KWTIid9aLOgEfRWVZoE+Ne60i/
	+RQKUgp7MIAokzrCXXXXdd00aqmsKX7UNSsT9xZD3/P5hsOVyJjVf2/X9sDaWo5UHcJur4sMG5pF+
	K+n6E01KTHMrXZQmsM7T0PnT//8mwnbybXvicwO8Hi4fUIcFycvVd4+5ptE1kcZHsu3luiL5pmoTj
	NFOeuesVm2oOoK5J4bofmGb3e42h1BekY7Zy+t+8tcHwMI1dSoD49WWADD/JvzAqWeOC6PscjNbm5
	qqWHPphr90oFdstu6Y5IUwWPjV6rPyfUDkxkfMrD3avrrvxH2TL2jRZJ0LEGTecV+dTfZGoDHr3Qm
	+eqClDFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeR7-0000yS-TD; Wed, 19 Jun 2019 17:31:53 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePE-00073e-Ia
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:29:58 +0000
Received: by mail-pl1-x644.google.com with SMTP id bh12so96589plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=g7AMxzETUjdQhAYV0qKHvB+BIVp8O1/Fn7xIZVqRJ+Q=;
 b=y1962C3eL4xm9Ks9S0Sgk0nA5KeFxYUg90Gfu4ziiZfMe6D6zFg+52XzwrdyZEwUnM
 +uIHegLtiMrJlExn44ULReSqjDXLV9/Lt1tWUE8Q/PBv0nWUFuP9LchByF5hnPmz/nlU
 jFoyYoX3wkXhizpMDdz6yPagTGtFI7k+dX4QOpOiN6ivmCJjdQltx+Zd0Y7BblLUm4XY
 EJY8pRVQ6MWQBltkg5yvqJB2NxmO8dgbqgr3sve//jBpyX7padtirTzuDkB87jorN+Ye
 CMaDUgpVmwV4NGPYUGCfd4AGg84vEZmY+Dsju0Z5T6/ylsmwNXzgXurADPY7b6SxlrDg
 1EtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=g7AMxzETUjdQhAYV0qKHvB+BIVp8O1/Fn7xIZVqRJ+Q=;
 b=d6Qn4mU251jZhs7LYkGrnlqms8UH3h5UxBzOEx5/id02/rT8Vkl1Vif0EvyJBqznOZ
 IH9zfC/0Y8tvYHpoN4n2TzrIElyh/WSwVXkGqlD/tsI7mHlyPAV23kijLzgd70/P+t1o
 9SwLGohodRSmiBFsn47UEOL1wQjyRMMZZNHIst5aUJDxT/bhoS10oUTjzap7/OkmMjdb
 vDyrjVd3lttCsfJWJYNznrmQOAIDX5SkugsL5eA9HhT2Mwt0obmeOB8Czhct2Zrr7KHL
 6HWQepzAE0hOrz9owuYdgJH9Ir3r3gTUlQSSwg6lA9+zlQzl402VxMH8FHXKi45W6HJa
 LKgg==
X-Gm-Message-State: APjAAAVe4Qo3uX3H1fX1IgKb/xC4m4QziMoPrUv1SbRUL7XLiPl0EGiS
 0veBSjgNpJD8ZVpSx/eb8dvEe+Efkw9sBw==
X-Google-Smtp-Source: APXvYqzUT5vlNPd4b/FSCo4mVNhX+uvg7icV06Cj95CunAiCCGxeBiBXf1mwFsbM9HUlNp95h1JWjA==
X-Received: by 2002:a17:902:e582:: with SMTP id
 cl2mr105723202plb.60.1560965396104; 
 Wed, 19 Jun 2019 10:29:56 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.29.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:29:55 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 05/45] coresight: perf: Don't set the truncated flag in
 snapshot mode
Date: Wed, 19 Jun 2019 11:29:09 -0600
Message-Id: <20190619172949.4522-6-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_102956_628578_E9374251 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
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
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Tested-by: Leo Yan <leo.yan@linaro.org>
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
