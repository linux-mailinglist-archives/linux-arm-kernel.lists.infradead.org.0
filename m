Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9EEA280E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pQXmWw/v0dXZb8ulqL+J5iswLiezTtebuw9FdTowNIc=; b=YxalVxL6fImcZCgbRw0RexAt9M
	Jb4QLIr+85E4kqkBz/B5oeqz9IyAaqx3r9zPcbLbON+IcEhNl7BQ9FdETnoY/xF0EL4n3f3cAv8C7
	JHjZfV1otHkVwpylJ323Qb8YlpT1Vxf+4LFkqa+CY1cIMXU/2oI9lEYxWPRLnXcwLW3001//3YAT1
	mMr6eDyfoMRRc4c69K6nZz0NClm6V6oSLjmv5V6oy04k2xRBD/65brceQjJ9Bf7buR9FaxIbk/hRi
	6uFY5i2juaEaVmWNOS1cAKlnTb8WRs1wKDyMSrvSRPWOCysvdvpfC5jUtsq2ggOD1kIl/mbZcbKuG
	UsMcN+4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R69-000062-7W; Thu, 29 Aug 2019 20:32:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2Q-0003sW-HH
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:29:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id w26so2837144pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=E6JJPDmvISX991Wh+NJW8zwoICYYRk5QMIwlhnt3CGg=;
 b=zuLKb5Kwu59QP18+LohC8fxu31X9MGkRLi4sOAryHBSlKK71nBfZ8/rhAPwp3TxzBP
 ifuDvwW9s/3/3CJ+mQGBKYp/4ZcMcRgbO4biVflJ34GlGs1WC+7qigIqeq+oD2Wmo/Lg
 /EOY7kNIvrvMrfvufovvnaRJ/GmX/DcuyrN9f2oFjIyCfkJd0CVlpywcUtNkoFzbyX04
 bauAb1q1On7LhyPMF+bkZjj7hMfc+GTzDSbLnVfYmWDnBWjznqDJ9ZSH+Bs0QjwY2MGA
 J8HbZTu69yBgB2t+/1VsMVL7GJgdGk9LbEbmWK3JgZixvBl/qR6pcP5oDYVrImOWfngT
 ExSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=E6JJPDmvISX991Wh+NJW8zwoICYYRk5QMIwlhnt3CGg=;
 b=L5cveAZCEn8Y1ut4NnlHjsagwglMRtK9Btt9SfBDO01ShixXmBEwe3mTPvcEH9PJkE
 us3bKVJopsB9BnJlC8wt0ngZ5C5PsnKMp6NOi/zWJHv6GyLfrRQisQpZFWPj+aq5r7oP
 fmAG5+Cu0T2sb95diDC8fWO/Zzb7lgfOyF17K9vUB7QjMZYoNksHgiEiV4NV8AcR26pG
 1AYoGmiNTfHOdHhSXuqFUN9Vp9ZjkxPHQxif5PuBf3lgNfSQ9IAJBsmu/VPi6yw5SF3E
 Puw5k7cGD8KHittRZi29IlLdLB5VTCWuqTFgdmqCIxNE7v8JWHW2TdJWKWhPnn08tJsw
 ePmw==
X-Gm-Message-State: APjAAAV7T0JbJThkctmjWb8xPbPv0+HrdySeuQ/X0B4OKLFVrmTa3oVz
 faRU3H6ix9ldmwJ6mnJzk31l8QNnf/A=
X-Google-Smtp-Source: APXvYqxpXbXRC4EmUBxFTrlHoSF6YCdKHrNTCHRs7FfRzMVzvj6/n2B98LpvIm/x1GIJ2h1Zgdm3gA==
X-Received: by 2002:a65:6108:: with SMTP id z8mr9980441pgu.289.1567110537766; 
 Thu, 29 Aug 2019 13:28:57 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:57 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 15/17] coresight: tmc: Make memory width mask computation into
 a function
Date: Thu, 29 Aug 2019 14:28:40 -0600
Message-Id: <20190829202842.580-16-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132858_642837_C5797250 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Make the computation of a memory mask representing the width of the memory
bus into a function so that it can be re-used by the ETR driver.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Leo Yan <leo.yan@linaro.org>
---
 .../hwtracing/coresight/coresight-tmc-etf.c   | 23 ++-------------
 drivers/hwtracing/coresight/coresight-tmc.c   | 28 +++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   |  1 +
 3 files changed, 31 insertions(+), 21 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index 23b7ff00af5c..807416b75ecc 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -479,30 +479,11 @@ static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
 	 * traces.
 	 */
 	if (!buf->snapshot && to_read > handle->size) {
-		u32 mask = 0;
-
-		/*
-		 * The value written to RRP must be byte-address aligned to
-		 * the width of the trace memory databus _and_ to a frame
-		 * boundary (16 byte), whichever is the biggest. For example,
-		 * for 32-bit, 64-bit and 128-bit wide trace memory, the four
-		 * LSBs must be 0s. For 256-bit wide trace memory, the five
-		 * LSBs must be 0s.
-		 */
-		switch (drvdata->memwidth) {
-		case TMC_MEM_INTF_WIDTH_32BITS:
-		case TMC_MEM_INTF_WIDTH_64BITS:
-		case TMC_MEM_INTF_WIDTH_128BITS:
-			mask = GENMASK(31, 4);
-			break;
-		case TMC_MEM_INTF_WIDTH_256BITS:
-			mask = GENMASK(31, 5);
-			break;
-		}
+		u32 mask = tmc_get_memwidth_mask(drvdata);
 
 		/*
 		 * Make sure the new size is aligned in accordance with the
-		 * requirement explained above.
+		 * requirement explained in function tmc_get_memwidth_mask().
 		 */
 		to_read = handle->size & mask;
 		/* Move the RAM read pointer up */
diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index 3055bf8e2236..1cf82fa58289 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -70,6 +70,34 @@ void tmc_disable_hw(struct tmc_drvdata *drvdata)
 	writel_relaxed(0x0, drvdata->base + TMC_CTL);
 }
 
+u32 tmc_get_memwidth_mask(struct tmc_drvdata *drvdata)
+{
+	u32 mask = 0;
+
+	/*
+	 * When moving RRP or an offset address forward, the new values must
+	 * be byte-address aligned to the width of the trace memory databus
+	 * _and_ to a frame boundary (16 byte), whichever is the biggest. For
+	 * example, for 32-bit, 64-bit and 128-bit wide trace memory, the four
+	 * LSBs must be 0s. For 256-bit wide trace memory, the five LSBs must
+	 * be 0s.
+	 */
+	switch (drvdata->memwidth) {
+	case TMC_MEM_INTF_WIDTH_32BITS:
+	/* fallthrough */
+	case TMC_MEM_INTF_WIDTH_64BITS:
+	/* fallthrough */
+	case TMC_MEM_INTF_WIDTH_128BITS:
+		mask = GENMASK(31, 4);
+		break;
+	case TMC_MEM_INTF_WIDTH_256BITS:
+		mask = GENMASK(31, 5);
+		break;
+	}
+
+	return mask;
+}
+
 static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 {
 	int ret = 0;
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 9dbcdf453e22..71de978575f3 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -255,6 +255,7 @@ void tmc_wait_for_tmcready(struct tmc_drvdata *drvdata);
 void tmc_flush_and_stop(struct tmc_drvdata *drvdata);
 void tmc_enable_hw(struct tmc_drvdata *drvdata);
 void tmc_disable_hw(struct tmc_drvdata *drvdata);
+u32 tmc_get_memwidth_mask(struct tmc_drvdata *drvdata);
 
 /* ETB/ETF functions */
 int tmc_read_prepare_etb(struct tmc_drvdata *drvdata);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
