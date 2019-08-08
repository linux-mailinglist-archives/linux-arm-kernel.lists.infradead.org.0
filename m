Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F73B86A9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 21:31:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NB0l3wcOLQ5Y1HqUhH1VdGuywk2TrVgZs+dJv+a3yXg=; b=ox5YzmThz4H0Nz
	ZjDTPJB2E3gG+dqCK0XFvrpHi3YiBXRrqqYwYTIz02sAzQnvcoXyG17/dw+JRtjpTW81T6IvdGfOb
	cX2Hkg+euOeEadZMOOO45OSs+Krzg1Xf2y0niU/NxZlFM7WJHtVRC0qhaQEx4TdhuDPf7MEAPn4Ir
	YkFVuSikGqZIsTJEWGc1lVsBCwW7u5Zs1eRKfSb8zGdoON9NKMgC5dvuluHXS6HUEmm6x8GGLaX4i
	ytxn4GmTT0vhmfaP8eiJkGWn6Px4qTsoCcihX9I070Tb4iyZkP2jMVRDLc6da+9YkE3cPh0CND0o/
	iiqYLN2NEzPBwXuO6keA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvo8Q-0006FS-4Y; Thu, 08 Aug 2019 19:31:38 +0000
Received: from mail-vs1-xe49.google.com ([2607:f8b0:4864:20::e49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvo8I-0006EO-7o
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 19:31:31 +0000
Received: by mail-vs1-xe49.google.com with SMTP id 4so16635vsd.21
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 12:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=Y7EhV9R53SdAuJMBA2LVyo7uNmGfsioMNmmNCKcAKVc=;
 b=fqAtfhnqUKmEuu2DadlaluFP6n9iBHl/UJUasXOkm0OscZqXW+lwkZx/3mv3uoZhAC
 OCPXv/3lDYe+UEjV6jEFeo4T6KN6OUETZT0uxxEoo2lWtycilli1Usrk+5DmSzUszVed
 i1igcJIkNhslr9ilyPav1FckCTmCSYShPrxPm0aEbM7vtgRLnZ3thj9VWluYYoeeS8Gr
 1c8o7qcLtGfRS0KoSrh9B7/oq7YoiCI4etG0+fzmwVPtawENjcZwmgFaLNiFrQlIHgtd
 xzYY7Hzs+Jk6usoHoVh8SmSU9Pi3/dU1mJJOPJR99sH7+ItDVNNr2DZ7Vc0FK41JvSNH
 vMGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=Y7EhV9R53SdAuJMBA2LVyo7uNmGfsioMNmmNCKcAKVc=;
 b=sg4eATm6SLWvoidDTgB87xwHi+TjHbJIRqpI+740PYhVsXCAG9fpB3MGcA3DR/UcVY
 D1szxu63XF54ZFhUH+YagAVcFwWfcki0bRQm1r2EgggWLvHtijsmsV0TPpLyjjc+oeG/
 rdsVOgheqVr4VGYNkhOWYv1ze10rRwBi2dp7Q3pkQ1pE2jha29SgbGHkB+yeeKSLevoi
 ynX1O2/sX2sIwfv2Q6PwLWDc8MtNjeA/2OaY/OFbzXxn14rE7mcs9o5Y2SnLFPgzAEQr
 RKk3OERLZAMmcnzhnBySFdzIPF1zR4PnQvzVi1tL2OKretHYAuHGAioafpP2iRcEaCtW
 tkEQ==
X-Gm-Message-State: APjAAAUYewJMSVF/TTKJ+45AGeKIEOb0TEwBWeeqivEg3FGfz0bPUK5X
 av3UVCgXeruKbS6I+y10L6bi44nmQg==
X-Google-Smtp-Source: APXvYqzFJnXdQ1RjWmuuNC0tPWroHzGPv2QybfWV/E4n1Fj9Gy51j8vmYrFEA/TFfcPlC3TJIO4khzTuYP0=
X-Received: by 2002:ac5:ccda:: with SMTP id j26mr6637280vkn.43.1565292686277; 
 Thu, 08 Aug 2019 12:31:26 -0700 (PDT)
Date: Thu,  8 Aug 2019 12:31:22 -0700
Message-Id: <20190808193122.76679-1-yabinc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH] coresight: tmc-etr: Remove perf_data check.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_123130_316864_7DB7E49C 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Yabin Cui <yabinc@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When tracing etm data of multiple threads on multiple cpus through
perf interface, each cpu has a unique etr_perf_buffer while sharing
the same etr device. There is no guarantee that the last cpu starts
etm tracing also stops last. So the perf_data check is no longer valid.

Signed-off-by: Yabin Cui <yabinc@google.com>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 9 ---------
 drivers/hwtracing/coresight/coresight-tmc.h     | 2 --
 2 files changed, 11 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 17006705287a..0418440e0141 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1484,20 +1484,12 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 		goto out;
 	}
 
-	if (WARN_ON(drvdata->perf_data != etr_perf)) {
-		lost = true;
-		spin_unlock_irqrestore(&drvdata->spinlock, flags);
-		goto out;
-	}
-
 	CS_UNLOCK(drvdata->base);
 
 	tmc_flush_and_stop(drvdata);
 	tmc_sync_etr_buf(drvdata);
 
 	CS_LOCK(drvdata->base);
-	/* Reset perf specific data */
-	drvdata->perf_data = NULL;
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
 	size = etr_buf->len;
@@ -1556,7 +1548,6 @@ static int tmc_enable_etr_sink_perf(struct coresight_device *csdev, void *data)
 	}
 
 	etr_perf->head = PERF_IDX2OFF(handle->head, etr_perf);
-	drvdata->perf_data = etr_perf;
 
 	/*
 	 * No HW configuration is needed if the sink is already in
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 1ed50411cc3c..3881a9ee565a 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -178,7 +178,6 @@ struct etr_buf {
  *		device configuration register (DEVID)
  * @idr:	Holds etr_bufs allocated for this ETR.
  * @idr_mutex:	Access serialisation for idr.
- * @perf_data:	PERF buffer for ETR.
  * @sysfs_data:	SYSFS buffer for ETR.
  */
 struct tmc_drvdata {
@@ -202,7 +201,6 @@ struct tmc_drvdata {
 	struct idr		idr;
 	struct mutex		idr_mutex;
 	struct etr_buf		*sysfs_buf;
-	void			*perf_data;
 };
 
 struct etr_buf_operations {
-- 
2.22.0.770.g0f2c4a37fd-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
