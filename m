Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F24A48A6CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 21:04:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iFd7YJSTaAdOZCU6XCbOmRCE2mJJ75ky63mzwLghfQ4=; b=ITiykP15MFBYFo
	Fk6llUHEvBRQBB9QLMtYkvM/kaRMNft3r0DhZ/Da4WxuTwDHzGAUq3u1y/QQQq0bisUn0qGmvOA3R
	pMITkVBq5cJZkWGHBlc2q/rSqBop6InHUOvJgeN6ajg1zDfvSH7dn9g8PmfubkTQs15HPatnrc0it
	UrAQk9VK8VgBjAjb6CWNh6r+0c+6zJBeM3vDAGm/09fWCYcXXpO+7ElNJ37+b/qZLQeGL2WeiN0H5
	QgGoxuxFjflyyKUupuGeLgiGNv8e22XN8BeTmWBBGrcgSLS9OF7NKJWCWRDReV16G5BCqLnuHmUEa
	C4hQ2wmbgk1PE2Ykf2Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxFbx-00031i-8I; Mon, 12 Aug 2019 19:04:05 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxFbk-000310-5q
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 19:03:53 +0000
Received: by mail-pg1-x549.google.com with SMTP id h5so65176709pgq.23
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 12:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=mVRG9jasrEKg9xmOyrLCCjteMMsk/r5mx76vPr6ubzk=;
 b=q9RDmDO2fkCI9Qt4DsOTQzVOLjfIiL+630cF1AohLv94Zttj87byDozSTNIzJdDFxS
 65LIrJBSWoWIPgg8HLw/Ibe+hpcR8l860eYDAMrCTN2mb4YifgWxGfgc/kIDQv3PjPOz
 1U1OI8q9EVNzl8XvJQmH4CaIptQ7UoukxN2XN+Q+KCZjNfIQ9ARbxFyTmRsVbN4FwiYu
 voOTvcr1jxQtiSrDxs8xdjQpdwIUxlAMT223sLKDhHO0pgWClDkk4F5cymxcnYlxVGr0
 0DQFGhVkujomhJzVwjuMSmGKkJnfhefJkUR2W2ih5Ct9N7PXTcL+3/i4ELl5X3y1Mekm
 hJjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=mVRG9jasrEKg9xmOyrLCCjteMMsk/r5mx76vPr6ubzk=;
 b=Z7gBJg6BJBA9WF8/z/Dxxr6r0kAcX2XJ2YhLuCeZeCcIjryP/dDiHCPFmLLYMtjPDg
 m5lw+sAEBxeHPtAyisX8nLkZrlqQnv+pIqolvZotL75yzDMaPKKNJJC1h8jEa3Br/tIe
 NmsJIFdujeKdp7bhffhOmntj07q/aInjBBX7FgppTMWC518d3e0wFY7cItu9CdZbSBR2
 z+cya50dfmpA3pDUTK8Q0tuu9AuTNZFHb52J8/DUja2N2XTLExSGFgxBdrPsLn+ZTvGN
 6n/Xgw207n8UhcrDh7bOqs962EKgWVwQXGNwou7FUEuepOmBU3iiKRHdGroucduN5Tj3
 CxAQ==
X-Gm-Message-State: APjAAAUZ5tEUHSVK3YlHlvokTX7Q/rsgKUyjBcfpKVjU7HWEK1UScnw9
 +UnWIOVeh9/yI4NELMVVHK5eoF6yWQ==
X-Google-Smtp-Source: APXvYqz+0C+mFFgI8Q0CX89fBw1s6PY8DPzBB4RvD1+6OQmtwxJjFOgwhNgfAUl1lKyUt/SLCVegv6dY++0=
X-Received: by 2002:a63:89c2:: with SMTP id
 v185mr31231727pgd.241.1565636630566; 
 Mon, 12 Aug 2019 12:03:50 -0700 (PDT)
Date: Mon, 12 Aug 2019 12:03:20 -0700
Message-Id: <20190812190320.209988-1-yabinc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v2] coresight: tmc-etr: Fix perf_data check.
From: Yabin Cui <yabinc@google.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_120352_249024_B7DA8DD1 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Fixes: 3147da92a8a8 ("coresight: tmc-etr: Allocate and free ETR memory buffers for CPU-wide scenarios")
Signed-off-by: Yabin Cui <yabinc@google.com>
---

v1 -> v2: rename perf_data to perf_buf. Add fixes tag.

---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 6 +++---
 drivers/hwtracing/coresight/coresight-tmc.h     | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 17006705287a..90d1548ad268 100644
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
@@ -1497,7 +1497,7 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 
 	CS_LOCK(drvdata->base);
 	/* Reset perf specific data */
-	drvdata->perf_data = NULL;
+	drvdata->perf_buf = NULL;
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
 	size = etr_buf->len;
@@ -1556,7 +1556,7 @@ static int tmc_enable_etr_sink_perf(struct coresight_device *csdev, void *data)
 	}
 
 	etr_perf->head = PERF_IDX2OFF(handle->head, etr_perf);
-	drvdata->perf_data = etr_perf;
+	drvdata->perf_buf = etr_perf->etr_buf;
 
 	/*
 	 * No HW configuration is needed if the sink is already in
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
