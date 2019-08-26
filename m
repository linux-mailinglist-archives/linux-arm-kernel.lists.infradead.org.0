Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E109D6FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 21:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YYiXofLJVe1486qhHN96/CJdzAj/p9uCcGOFQ11JH2I=; b=ZoIEbCtJRMOwxckN4siGGT6787
	9eMdr6juHEyhGXBxUzV3IHHjiYj8pbRVmuno0TjsNwPYlsqsN8n+JVHAjULDD7dRytD9ho0xo9s+a
	kEkyke/bsHPz4LTWuz5hZtLCKWAMWlZIgMkGUKLHmLWT+tF5qJ+rqrIf+WLajc7SjeF+EgYLMYrSk
	/w5FlohSyFE1VaME+ydCXK2gLwnleBwI2L9Yrng1nFv0MdEt7tebHKBTy4Wtq33nQH5EbKP10x89c
	HVQWgtDW9KGB+1nesTvyMSLF2Kg4jMfkNEGTxpFSdBlOgo6EGXX1ZHDrLroPNyKcSzsAS1f9qPUaF
	W17xzhPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Kwo-0008Sh-Ln; Mon, 26 Aug 2019 19:46:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KwK-0008Hp-SN
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 19:46:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id d85so12476106pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 12:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+5gWSemuxt3HHekdvm6tHeI05f3zrGiyld+SNG7Me4c=;
 b=q+kCsyIhcHwX5PX5Heefbpn6+r19P5CgbzOJ0ob5RuW98znrXBiS792y4boZ+rVNaJ
 M+ihgxSmoDQMJ+8XpYQdD+q5pt3pp7I+nn6ZxT9eKedY5mLdtrImcmHsMwIEHvhVtROe
 iZoKeSnbFOFecoRcOXPPLqnXdSS7UoKQ9i9PeHoNmDMNngrCcJE+7b5LXMB0hJkwayxz
 v9s95u8L49mXYMwLsI0dHCPJzp0cdmBXdq0JJSegSUSRKG5MvCr4ymz1OJtiLrcrykgP
 d0kCYhrhh2J3k1tV08sTrAKXExvQU1jAyYSAcMoF6J1GACPiO7ClpggY8Vvb9VM7/Jzp
 vZXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+5gWSemuxt3HHekdvm6tHeI05f3zrGiyld+SNG7Me4c=;
 b=KPCuqrvuM4vkflxuv4EwIOCkjygZ35WOiZiW4wbnp93VNKWgKxKB0Xhw3gKTENCeYS
 3KXbcvQXHqwMg3CkkU+dpaImGkJ0ReeIklbC2S/zgL1o0e3IsM0v0NR+60nEZ38iWJPm
 HXq5BQ5nG7gLVi/+RU0gQrHXCuTrHR+CIoYDnbM7u95w+4O1Kf1w8GJnpAy/E9nQa589
 mcLBgzftCWx+SGtwDXyZh4cBNnpInqAnGcnA4R3DJbfE+Ag+Ypt33xDbbULwQzzorMny
 Vgq4gYR+gNl975o2HCUTFHQW2Cp0oYF0bBuCRq0+KiOFHFhmZU7EdZ0UwuKgB5ZjU3sK
 AGuA==
X-Gm-Message-State: APjAAAXR74Vw2O36tAgXjCIKOlmbBv/xqE0rCDkzSZ0tvu0ga3BRab6F
 mnDVdy6OrVaP+olBz0olH78ccg==
X-Google-Smtp-Source: APXvYqxQJvl5Xv1RjaA+GrKsEkiQ+ZZVKrENE/rXFhJs+p7tMSQsIT7tcUQnhRDrQlO3L6w7a1sZPw==
X-Received: by 2002:a63:9245:: with SMTP id s5mr18318356pgn.123.1566848767985; 
 Mon, 26 Aug 2019 12:46:07 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c35sm13214789pgl.72.2019.08.26.12.46.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 12:46:07 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: suzuki.poulose@arm.com,
	leo.yan@linaro.org,
	mike.leach@arm.com
Subject: [PATCH v2 1/3] coresight: tmc: Make memory width mask computation
 into a function
Date: Mon, 26 Aug 2019 13:46:03 -0600
Message-Id: <20190826194605.3791-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826194605.3791-1-mathieu.poirier@linaro.org>
References: <20190826194605.3791-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_124608_914143_57D57B06 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexander.shishkin@linux.intel.com, yabinc@google.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make the computation of a memory mask representing the width of the memory
bus into a function so that it can be re-used by the ETR driver.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
