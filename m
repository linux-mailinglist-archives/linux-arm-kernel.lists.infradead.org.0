Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 268BA8F3DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lhtl8k/vVEQQyigGdEFinsO79UvwZex5S0SM//Q1Hik=; b=JsJqAs+Cew2gd6
	XRP3Ltnb1iWzKoJfajjvRdlCLA8DSl1jGtO/aKK18URSWDL5EbNMqGBOxihEuBs7sQ6visO6oRaLr
	QyKqaPhK2hSXAXP9wC4DXLpD7jdf1v0A9L9PL/zlB0DEY7ofhAgSmuPrtnLsnJqC6Uh0Z5Tf6187b
	cKAjdPFjLD+TFk1uvNZ3AA7AQsjMtHJSkSmZlhrzrdf0LNKVDkQQYmPYlNBGW6HFkPW77RHzqBuqI
	N0tX45WzvFPsP4Vsg1/kiJkqtL5X38V/1TxgfT+/KuGu5KcZHJDsu6lHpVmYbOqwf+CAFvMQ1ZTgV
	LdqRBHBeR5oYf2BOnyUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKlt-0003OM-8H; Thu, 15 Aug 2019 18:46:49 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKlg-0003Ni-82
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:46:38 +0000
Received: by mail-pl1-x64a.google.com with SMTP id c14so951061plo.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 11:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=KsmktdjBWzn80WIDzS6PF88MOFgM0z+buof8gWKRVNI=;
 b=I//nl4VnNITHaZ/zkdYhbwrnEzTXdxlUQRKM86qiAYedQFYdT7P9ilN9M2Vwi3ZiHL
 cWqViThiDBFJvpO9Mmn0xmyHlsXwlHGa4wn3jqVi8Tchjs6QWRwmU+qG9DOY6QLFIuEl
 VJ+c+JWIO9RpTSdEG1VZwkUaRf16zZKO/8gs2AWG3B3C7upnyFcnUnXNWMGsKJ9UZPAz
 a2PqSqvW3p/5PCBJNICnMfZVUSXI1bwdSC7bQGoQGTzaNmScjE0vzaooq1dtry7To3oV
 g9H4nclPahH5Aetv0y9pWKiyp505sW28QAVP9rmukE8tUI8thT8INp5mgqwXwaef64o0
 HjCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=KsmktdjBWzn80WIDzS6PF88MOFgM0z+buof8gWKRVNI=;
 b=KdfjHqG6aWIoasdq9+sOrD1ozflykFFoH+btax+v0pMzq2+e1ThLqnCkjFoDEbUsUD
 0PYuInTer1x8g+uYGghWAPVws5VulQF6fLqJ/RZ6pl6wcklO/MsDvgKhP0I7BWIsgB5c
 4MS9Geg5Mq1bCfSjbwvL17MwNazqls5vcwgSG68r83mqP/5QJCSWyPt8w7kwm7XdZRLV
 1hJvMqGaTQyAQvROt8l6Ol6FtPyLMYMLxMTSvC+7IiRRo4xqgPzA6Guyo7AhS5EkAFdC
 yJy7jsC1jOlD8J7GigTK2NhJjgSq5lmLOy0oi70QbDRrH7lh4pLsHpGZ9HaQ0IFsMeBF
 c/vQ==
X-Gm-Message-State: APjAAAUZDW+szk5iH7uGpaViFvvzBIkYnEcL2C+3hfZsvmLc4aDaI1AH
 dxq3q0lLGHbsIccn930BcGU43FVYyg==
X-Google-Smtp-Source: APXvYqx/4reP5xWBNNvhkbTIbQc7Zy6AQSY3Q6ZpX+/WKuWIJqhPsTzfuM9MuEyMM9sEMlpjic8OwTRm5Jw=
X-Received: by 2002:a65:57ca:: with SMTP id q10mr4745823pgr.52.1565894793853; 
 Thu, 15 Aug 2019 11:46:33 -0700 (PDT)
Date: Thu, 15 Aug 2019 11:46:28 -0700
Message-Id: <20190815184628.183186-1-yabinc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v3] coresight: tmc-etr: Fix perf_data check.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_114636_314067_92721E55 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
etm tracing also stops last. This makes perf_data check fail.

Fix it by checking etr_buf instead of etr_perf_buffer.
Also move the code setting and clearing perf_buf to more suitable
places.

Fixes: 3147da92a8a8 ("coresight: tmc-etr: Allocate and free ETR memory buffers for CPU-wide scenarios")
Signed-off-by: Yabin Cui <yabinc@google.com>
---

v2 -> v3:
  moved place of setting drvdata->perf_buf based on review comment.
  Also moved place of clearing drvdata->perf_buf from
  tmc_update_etr_buffer() to tmc_disable_etr_sink() for below
  situation:

  cpu 0 enable etr device (set perf_buf)
  cpu 0 update etr buffer (clear perf_buf)
  cpu 1 enable etr device (perf_buf isn't set because pid set by cpu 0)
  cpu 0 disable etr device
  cpu 1 update etr buffer (perf_buf == NULL, check fails)

  To fix it, we need to move clearing perf_buf to the disable function.

---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 8 ++++----
 drivers/hwtracing/coresight/coresight-tmc.h     | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 17006705287a..80af313f55d7 100644
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
@@ -1556,7 +1554,6 @@ static int tmc_enable_etr_sink_perf(struct coresight_device *csdev, void *data)
 	}
 
 	etr_perf->head = PERF_IDX2OFF(handle->head, etr_perf);
-	drvdata->perf_data = etr_perf;
 
 	/*
 	 * No HW configuration is needed if the sink is already in
@@ -1572,6 +1569,7 @@ static int tmc_enable_etr_sink_perf(struct coresight_device *csdev, void *data)
 		/* Associate with monitored process. */
 		drvdata->pid = pid;
 		drvdata->mode = CS_MODE_PERF;
+		drvdata->perf_buf = etr_perf->etr_buf;
 		atomic_inc(csdev->refcnt);
 	}
 
@@ -1617,6 +1615,8 @@ static int tmc_disable_etr_sink(struct coresight_device *csdev)
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
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
