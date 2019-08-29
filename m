Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2201A280D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xvdkCszcXE31IuH91Kmy2CTTQ1t6cPvP2gx9TCEA9o0=; b=WcdIrlxBhFJdUmMoNyxQxFRRDI
	LLgZdbqJLRJNZq5fOWgNqe7jce1pJMnAiwPCKioM/yy85x5L24KB3H7J+LCzkE/djlzzD++5JnynO
	3ndN5r7iJeWNTFr/q7G6hMSaxbnAiaP9xr3aPRgg75a/Aofyo2RBQHs48bfIbAooGbJ1SSGPzpHH8
	wIPGA/UCLSPM8YoSOOvb8Ive6r+nUp+QMZpGzOT3gNkjbVmCtjkqHraqy9XtFSIxKTTFVSigQugdc
	sBDRo78st+PXOEQSbL/shgIH1FCQPKlv/aB7gpz785P5NLv1ufrSXg2LlZZrbGcZ20ewnw7gIUzoS
	au7AFISg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R5t-0008Kh-Ag; Thu, 29 Aug 2019 20:32:33 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2P-0003rB-DO
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:59 +0000
Received: by mail-pg1-x542.google.com with SMTP id e11so2192105pga.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rYvz4IhkNbEOrtxPHmF8tW+sLayn2a1deeWF2dkHF3Y=;
 b=a3Ccg5fOp6hdn/Ot3iqv75JTy+gXgKNRstQ8V1f8Nno+y5WL/Q3K0kp6a0t/i6O171
 tWjJR+UWKk/yUbGPonzAgFKa7yn6kiAytFHaUn54smrijjGBiP3xhWTM2365mD/AujZV
 AUQf6Q6FC1+CSzpH1MDzGwJiQnP4LRlVyo5nnWBc8H/48o/wVFIkavFdvYlO8PV/y0qt
 8WJ4dy4Kj5uLd1IArrxNmGOwsexWgbE8TkFB9ftJ/8C2mI2mc7gvhVuD6caA0sBsfCo+
 Xf2G7CQRGMHO5rt6e7pI88cZkxH0lXlz74jiHc1zpW3RtOCTWAWs7/9rb7BPYQUiNPSC
 78sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rYvz4IhkNbEOrtxPHmF8tW+sLayn2a1deeWF2dkHF3Y=;
 b=sgVYDTrvL6VHekxyTWRXefwuZ+4fvt6T+eiLU4S7Xx/VOcKfAWdcq4AcP1xo9imADS
 RWbzigyJpvkmHXtVoFiQQ0URhmB4R9asLhM8ByTxscKjwiei4iPHUnMW+BdI8xw/QcwR
 r5VMg74HD3ONVenioB8VFrNmILx6YwPOLfxxPhOF29KtzhidP/F2yfq6o+ZMys4MM6jV
 WK/5F3lp/ONaB80bZ1cTrgCOimopUddwWBeAUTDMvSFrtY5xHb9C0HWfgcWbw5V/aPfw
 bFW/mjJelxeHYKjK2fumwbXT0YoVFPcf7weAbDiymSjuQTmjF7aT/gH1oPJEQYUfcSxw
 bjEQ==
X-Gm-Message-State: APjAAAXaRJysJND47YqUhoPBiDoOvOG0svg/7hnuyKiLehvBJ37tMoZv
 56t2v9EPRsGOMWC5q2A6TYgvI6SmkBA=
X-Google-Smtp-Source: APXvYqzRd2oF6S8sZ/uIQrKUOn9rBbjEsbxMbz1XPZ827rjlFbYbc1FurPi+cwnRk6Oz1JwroN+3ww==
X-Received: by 2002:a65:4948:: with SMTP id q8mr9881898pgs.214.1567110536528; 
 Thu, 29 Aug 2019 13:28:56 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:56 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 14/17] coresight: tmc-etr: Fix perf_data check
Date: Thu, 29 Aug 2019 14:28:39 -0600
Message-Id: <20190829202842.580-15-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132857_671629_6F08CA51 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index f835a3c78b37..4f000a03152e 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1488,7 +1488,7 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 		goto out;
 	}
 
-	if (WARN_ON(drvdata->perf_data != etr_perf)) {
+	if (WARN_ON(drvdata->perf_buf != etr_buf)) {
 		lost = true;
 		spin_unlock_irqrestore(&drvdata->spinlock, flags);
 		goto out;
@@ -1500,8 +1500,6 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 	tmc_sync_etr_buf(drvdata);
 
 	CS_LOCK(drvdata->base);
-	/* Reset perf specific data */
-	drvdata->perf_data = NULL;
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
 	size = etr_buf->len;
@@ -1564,7 +1562,6 @@ static int tmc_enable_etr_sink_perf(struct coresight_device *csdev, void *data)
 	}
 
 	etr_perf->head = PERF_IDX2OFF(handle->head, etr_perf);
-	drvdata->perf_data = etr_perf;
 
 	/*
 	 * No HW configuration is needed if the sink is already in
@@ -1580,6 +1577,7 @@ static int tmc_enable_etr_sink_perf(struct coresight_device *csdev, void *data)
 		/* Associate with monitored process. */
 		drvdata->pid = pid;
 		drvdata->mode = CS_MODE_PERF;
+		drvdata->perf_buf = etr_perf->etr_buf;
 		atomic_inc(csdev->refcnt);
 	}
 
@@ -1625,6 +1623,8 @@ static int tmc_disable_etr_sink(struct coresight_device *csdev)
 	/* Dissociate from monitored process. */
 	drvdata->pid = -1;
 	drvdata->mode = CS_MODE_DISABLED;
+	/* Reset perf specific data */
+	drvdata->perf_buf = NULL;
 
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 4c59f2a4ad0e..9dbcdf453e22 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -182,8 +182,8 @@ struct etr_buf {
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
@@ -206,7 +206,7 @@ struct tmc_drvdata {
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
