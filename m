Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4A910C71
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 19:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p7MEl4KdoPB8QPYXZUck+5uCRxXnHNoF7x/kg6ucybA=; b=b3JA+qLxMNnACz8hjuIJIWb4Go
	uDMA/V0AeTyXze+8KogXIR6kzSJ7q9J3qh0BK5APou8KGOLJd3YsBlAqsdhr3AsD+QV1kt0ueYGxZ
	i+iPn+VKqSrWKqpG8/zDIRFrXjAo8oO+6YggmJKdCFnorMsw7GI71IW+kbq4n8WBYcWbn0aq3bRDp
	A5Ys/FBFyQ4Tqq54Hb84YbH+OJx2WXuxyqIwkJUm5fWkGV+BSQud6F56WnqOtHxB9l8qeMCsrrNCz
	kQ5I2qcdTrfK40NShhAjwrn5Bcd2lVzI4dk1fblZNC/OrTk7t/nG95r9ar6eQe5duc0hH3mbqzm2d
	8xuT2i8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtNy-0004mX-Eg; Wed, 01 May 2019 17:51:14 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtNg-0004dM-VC
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 17:50:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id e24so8911249pfi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 10:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LY62M99zAzqSXCRirzpPXw/lRdNFS0ct7uspQVWkTaA=;
 b=h7+OifeNwrUAelMopBO38az9mLQTlTmyZOo9lRphQ3uHEgS2vAPRP7QT3u+9V/yn8Q
 svUGUzZD7ztBHoox25Z1PGErEuyzPNnC/GjprnxyRB8A/kGJpoEhAnoaQpJUV3uEoUrB
 fZhVK1V+OGTKTcQMvomjugDMY8maLUbog2cPRzcCyLiXq5EMTLhs4uIe4i6TOPxi5Wsy
 aUsPj1brdIiTmp/QngxOx20azueHZt9qtJKSYPpIGYkkixWXcWcs7UYNN8gH3d+MXeLR
 TmExHbhCW0PTY5Nisrg1o24pXNy351UFd07KsbS56mp/nqgTiEl38Xqpw+cLWQBhgJbe
 iprQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LY62M99zAzqSXCRirzpPXw/lRdNFS0ct7uspQVWkTaA=;
 b=qHXjnwDAagv+eNDpNdulVVK9UlD+2QM8ymjteyV0WGHRZKQ8nmL+Wx5kjoKSq6tY9+
 nvwS6OyWSHX9vxu37Ld/XIcnzSk+z73/0scL2nJXPQeJ/XKNTKZsBLE21D7k1geqc2af
 K+L8/rhy8YeEKyOeBDF/BZfemBSqVOfVveQHueCNgaQKHnaaZ3L54++3hxW1e7JWRe1i
 viDOVWV455GdYLmg6ffthkO9BgbVddqQVIxDmijIH6R4BEVUive+JmhED7+eFZPsaoQ3
 Xeqj8KR20qhg9USp1AYKdTLkoqMqg4sjyIbY6Ew/0Ty2mg/vok/J8BdvrlicvWemPT2b
 o48g==
X-Gm-Message-State: APjAAAVFcncbWKoAX807QrA56RCol67cgOjJotrCWjJ+7lTogKegqhNY
 3utKMwLsh16ls8sPBGbteexYyJFq2UM=
X-Google-Smtp-Source: APXvYqxLE4fYvGCctomIFSpKPbeKr7s3AvEJ9rY2FbqpZw6VG8yO92Bp2wAbJ6e3LZUPx0vNUsYnZQ==
X-Received: by 2002:a63:6b08:: with SMTP id g8mr75049037pgc.211.1556733056177; 
 Wed, 01 May 2019 10:50:56 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id h189sm84126158pfc.125.2019.05.01.10.50.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 10:50:55 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/5] coresight: Fix buffer size in snapshot mode
Date: Wed,  1 May 2019 11:50:48 -0600
Message-Id: <20190501175052.29667-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190501175052.29667-1-mathieu.poirier@linaro.org>
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_105057_000585_80A41AB1 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

In snapshot mode the buffer used by the sink devices need to be
equal to the ring buffer size in order for the user space mechanic
to work properly.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etb10.c | 23 +++++++++++++++++++
 .../hwtracing/coresight/coresight-tmc-etf.c   | 20 ++++++++++++++++
 .../hwtracing/coresight/coresight-tmc-etr.c   |  8 +++++--
 3 files changed, 49 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index 4ee4c80a4354..0764647b92bc 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -374,7 +374,30 @@ static void *etb_alloc_buffer(struct coresight_device *csdev,
 			      int nr_pages, bool overwrite)
 {
 	int node, cpu = event->cpu;
+	u32 capacity;
 	struct cs_buffers *buf;
+	struct etb_drvdata *drvdata;
+
+	/*
+	 * In snapsot mode the size of the perf ring buffer needs to be equal
+	 * to the size of the device's internal memory if we want to reuse the
+	 * generic AUX buffer management mechanic.
+	 *
+	 * For example (assuming 4096 byte page size):
+	 *
+	 *    # cat /sys/bus/coresight/devices/20010000.etb/mgmt/rdp
+	 *    0x2000
+	 *    # perf record -e cs_etm/@20010000.etf/ -S -m,8 --per-thread $APP
+	 *
+	 */
+	drvdata = dev_get_drvdata(csdev->dev.parent);
+	capacity = drvdata->buffer_depth * ETB_FRAME_SIZE_WORDS;
+
+	if (overwrite &&
+	    ((nr_pages << PAGE_SHIFT) != capacity)) {
+		dev_err(&csdev->dev, "Ring buffer not equal to device buffer");
+		return NULL;
+	}
 
 	if (cpu == -1)
 		cpu = smp_processor_id();
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index 2527b5d3b65e..7694833b13cb 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -380,6 +380,26 @@ static void *tmc_alloc_etf_buffer(struct coresight_device *csdev,
 {
 	int node, cpu = event->cpu;
 	struct cs_buffers *buf;
+	struct tmc_drvdata *drvdata;
+
+	/*
+	 * In snapsot mode the size of the perf ring buffer needs to be equal
+	 * to the size of the device's internal memory if we want to reuse the
+	 * generic AUX buffer management mechanic.
+	 *
+	 * For example (assuming 4096 byte page size):
+	 *
+	 *    # cat /sys/bus/coresight/devices/20010000.etf/buffer_size
+	 *    0x10000
+	 *    # perf record -e cs_etm/@20010000.etf/ -S -m,16 --per-thread $APP
+	 *
+	 */
+	drvdata = dev_get_drvdata(csdev->dev.parent);
+	if (overwrite &&
+	    ((nr_pages << PAGE_SHIFT) != drvdata->size)) {
+		dev_err(&csdev->dev, "Ring buffer not equal to device buffer");
+		return NULL;
+	}
 
 	if (cpu == -1)
 		cpu = smp_processor_id();
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index df6e4b0b84e9..b9881d6d41ba 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1188,9 +1188,13 @@ alloc_etr_buf(struct tmc_drvdata *drvdata, struct perf_event *event,
 
 	/*
 	 * Try to match the perf ring buffer size if it is larger
-	 * than the size requested via sysfs.
+	 * than the size requested via sysfs.  In snapsot mode the size
+	 * of the perf ring buffer needs to be equal to the allocated
+	 * size if we want to reuse the generic AUX buffer management
+	 * mechanic.
 	 */
-	if ((nr_pages << PAGE_SHIFT) > drvdata->size) {
+	if (snapshot ||
+	    (nr_pages << PAGE_SHIFT) > drvdata->size) {
 		etr_buf = tmc_alloc_etr_buf(drvdata, (nr_pages << PAGE_SHIFT),
 					    0, node, NULL);
 		if (!IS_ERR(etr_buf))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
