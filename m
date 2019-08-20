Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 309289699C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 21:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9mUUehZuNsBhgHtn7rXHPGVjsj1klNrzchdxU7yhz3Q=; b=LvG0fwcAj7PJYcwyUB2WxUCoB5
	SGweMH8Ew31zubaUECXGbjozh4YP/ZpfzBkb+cqe5IQ+Sf5IxikuvhQZAmsHrwFtYnKSj6vk4u7nq
	SeQ271aFW5WIhRTPlnZOC1qst/tpD6IkqN00ww5HsTjqAf40DYrcEWquXIbzz31dSkF2J+wXpnGLi
	Uz4SUPUyTjU9T8dt6QjWNCjoXSTMcEWEDi7GA9idRfew4fFZRMxTfZQv2z+6sFvQ349famKlMF0e+
	Vijk+YWWUzkOMpItWgz4NVTb2w8JBPpLApVn5bscJxdK+6JantdjzSxmVf15Yd7GjOHqpnI/CiUEi
	7d0GPzAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0A1Y-0001vq-UM; Tue, 20 Aug 2019 19:42:32 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0A10-0001Wm-V0
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 19:42:01 +0000
Received: by mail-pl1-x642.google.com with SMTP id m12so3267157plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 12:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0zWt+atQCn2xJd+kBaCM7Pjw308MWDB+oM6Ofw8NC18=;
 b=kEtWLlqTplXU+oSwZ9A8IjXR6BZnLMwvb5ceUgGsLkJ7LUWVxu/FVB2W319CdSNoEH
 xsiWo0IaeZ2uXyfns4MAtrzSQZEUnR3xmQBCPe0hg0uyj15MGqwbR9VtfnKfM3MSjOT0
 8FQnY6ZLxLhlXYhXCaX/gJhrUTPdvuBnhdJL2FyOPn6iBMbKZYUYnbJLJqKDdu8ONcxF
 slXqnPQ7iPkTbOlTaEDsvUChFR8hN0tnBwEh7WrAcsI6CbXZdwQ+bLsdY942NlbnszOl
 dfXkTZmYjoFWKw+Faj+i9jPoFTaRIlaCTCRdp+FOcD4wqmI9zDz41v4gyZ9Ph+qXoTXx
 ACfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0zWt+atQCn2xJd+kBaCM7Pjw308MWDB+oM6Ofw8NC18=;
 b=AauKCDDJ+I88R38gH6L1D0SUGlJA8vwW1KvgepxLrRFJ7VW11r8pS3NnT2xsn2P9/V
 7hL3HJvDpqeISTrPZYuyZDO0Awlz/Ysvv74RFQ+kkJ9mkyyIDfhZLBZrAKvDrozsMW0D
 iOk1uChfWWZhLib+dJgPjaPVx32QLfXcrvISGKuP3R7uprhtzyMGFPdwXMG4NJVUMZ9d
 D9wjtKbh/HD7MVOGEItbPRNk/c6Y/Al/PL+pCjNYqDzzivTgj7tKe9Cf0gHNRldrw5r/
 4yDkujymdAe76MRgUn9aE/f3GkgncVgVqUhhyUou+GYya2km7s77dVA/KtlwkEsrDV4P
 NMjw==
X-Gm-Message-State: APjAAAXR3XCFERfpTYAxDFYgUXvbw+EjyqS5wNGW7qeUFTErXu5NPuCM
 DXFeUyoEyQyf2iGU06i1MAj9OA==
X-Google-Smtp-Source: APXvYqwtAl64imwqNAOppXm5k/9V2gGFxCP9Mhcpmy/r5h0/8+dqV6aex+/CQoU32i2S83BAoIM4wg==
X-Received: by 2002:a17:902:be12:: with SMTP id
 r18mr28653758pls.341.1566330118320; 
 Tue, 20 Aug 2019 12:41:58 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm24220671pfg.102.2019.08.20.12.41.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 12:41:57 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] coresight: tmc-etr: Fix perf_data check
Date: Tue, 20 Aug 2019 13:41:55 -0600
Message-Id: <20190820194155.28992-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190820194155.28992-1-mathieu.poirier@linaro.org>
References: <20190820194155.28992-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_124158_992524_E77EBF28 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yabin Cui <yabinc@google.com>

When tracing etm data of multiple threads on multiple cpus through
perf interface, each cpu has a unique etr_perf_buffer while sharing
the same etr device. There is no guarantee that the last cpu starts
etm tracing also stops last. This makes perf_data check fail.

Fix it by checking etr_buf instead of etr_perf_buffer.
Also move the code setting and clearing perf_buf to more suitable
places.

Fixes: 3147da92a8a8 ("coresight: tmc-etr: Allocate and free ETR memory buffers for CPU-wide scenarios")
Signed-off-by: Yabin Cui <yabinc@google.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 8 ++++----
 drivers/hwtracing/coresight/coresight-tmc.h     | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 676dcb4cf0e2..ba644f444d4c 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1484,7 +1484,7 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 		goto out;
 	}
 
-	if (WARN_ON(drvdata->perf_data != etr_perf)) {
+	if (WARN_ON(drvdata->perf_buf != etr_buf)) {
 		lost = true;
 		spin_unlock_irqrestore(&drvdata->spinlock, flags);
 		goto out;
@@ -1496,8 +1496,6 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 	tmc_sync_etr_buf(drvdata);
 
 	CS_LOCK(drvdata->base);
-	/* Reset perf specific data */
-	drvdata->perf_data = NULL;
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
 	size = etr_buf->len;
@@ -1560,7 +1558,6 @@ static int tmc_enable_etr_sink_perf(struct coresight_device *csdev, void *data)
 	}
 
 	etr_perf->head = PERF_IDX2OFF(handle->head, etr_perf);
-	drvdata->perf_data = etr_perf;
 
 	/*
 	 * No HW configuration is needed if the sink is already in
@@ -1576,6 +1573,7 @@ static int tmc_enable_etr_sink_perf(struct coresight_device *csdev, void *data)
 		/* Associate with monitored process. */
 		drvdata->pid = pid;
 		drvdata->mode = CS_MODE_PERF;
+		drvdata->perf_buf = etr_perf->etr_buf;
 		atomic_inc(csdev->refcnt);
 	}
 
@@ -1621,6 +1619,8 @@ static int tmc_disable_etr_sink(struct coresight_device *csdev)
 	/* Dissociate from monitored process. */
 	drvdata->pid = -1;
 	drvdata->mode = CS_MODE_DISABLED;
+	/* Reset perf specific data */
+	drvdata->perf_buf = NULL;
 
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 1ed50411cc3c..f9a0c95e9ba2 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -178,8 +178,8 @@ struct etr_buf {
  *		device configuration register (DEVID)
  * @idr:	Holds etr_bufs allocated for this ETR.
  * @idr_mutex:	Access serialisation for idr.
- * @perf_data:	PERF buffer for ETR.
- * @sysfs_data:	SYSFS buffer for ETR.
+ * @sysfs_buf:	SYSFS buffer for ETR.
+ * @perf_buf:	PERF buffer for ETR.
  */
 struct tmc_drvdata {
 	void __iomem		*base;
@@ -202,7 +202,7 @@ struct tmc_drvdata {
 	struct idr		idr;
 	struct mutex		idr_mutex;
 	struct etr_buf		*sysfs_buf;
-	void			*perf_data;
+	struct etr_buf		*perf_buf;
 };
 
 struct etr_buf_operations {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
