Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3051AB24F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 22:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eBWwdA/CvghvBPrLkQPnMOKiHINmv3UlpaPnvMbeDXI=; b=kix
	01YrKnim8F+e3QHAmSQOH90ZlkEXL8o4L8KgtL5jkvJ+pPnCbfn33xJ66/15JFzXlIOcACDtRnTmW
	u4lx5ULBGfzNFatO8FTiHT17N+ww88bf/8iRb09U/HAGE6L7RKlbnJSYXhOe8UfAzZMDkTfGDyHDS
	oaIl86Kqo8xWAuyNnGG8XvVlK9Lo9udyTht61Oyi9fm6/4xjp8YLFwoeew7otQHqLn6mpXnsBNmBZ
	yG/BC6QgrGCw8YPjwC6vZ8e4fB+VJSoTmOzpsV4aZImgMh6VMXPthsm0eA7tkrJichIjf3DLHBqua
	Tm7CFKdxPX2DSQAfMdPuRWepjAPwAOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOoN5-0005UA-8D; Wed, 15 Apr 2020 20:10:55 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOoMq-0005Oe-0s
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 20:10:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id c195so833717wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 13:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=sJzLz93/UiolFq2dsahGKdrn+vVdj7yMyWtuVNbCVFM=;
 b=HAJTTe/sI2iWQDloS67Cz44wSjm2HiK0x/kUQHCjLzIbHGt09yXLxK3MOmvYw0KWnY
 C2XlPdu5YAHiRbAlZz8uctFS9M//FA2qo4kle/04m5s0/ZlqrizXX564VC3GLUY/5O7T
 Es2XZXVDbUIDQIB3sSmxq4RrEgkiSGqyWXVzfwo6kPF7R4TyVyFPr8DcrrrzGbJseq5k
 Q3nO6vKpH0/WQaOLclxR7Qen2+j3+6l9TA/o0lCc4yhXWuCX9XX/Cfx3Am+cy7PoQYyi
 OvEz3JPOxLUMOsIh+fx99wcJxwcIAp/pYbFxvU0fsIdJ0gbZbO8Aiqk+tnDcLM3EC+PI
 YnHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sJzLz93/UiolFq2dsahGKdrn+vVdj7yMyWtuVNbCVFM=;
 b=uoa8d93w7mv3wWOpWKEM2N3soIvEUTtekQo+Bs/z/K6Px+DPYm7cQwAR7E97SQsndP
 +52sEsyJCMTgcC0egLGPHbMoRhDdIIWFxdVM653OMfqErDtzc4RwfTCTYZUZj0e5kpRP
 HittC0+VmwR96qIsCVdfle6CPBF1Kespa2r9Kqz8tl8TGmEbCJvRqwIPEgTtM+hBhpD/
 s2bUsAcghhIWENCEou5ZXcMTXOBDKwm+ewk9hSl1WDC1Rt2bHtPYNTSUXevMeOdmM6au
 2LxgMEnyg5KOTIlJNAkmvi8HJI5G0PAgzls+wNZ0RNC3ERclDfbAIXja2JDEr2UE4Pta
 +KQA==
X-Gm-Message-State: AGi0PuYjCFFhDCDf4rhilfegPQVPngnPvgjq0zxFsNx6gZ2TFg0eIR63
 +TrDDzbutf6xxiojfWcmNSI3kAwCFiSwrQ==
X-Google-Smtp-Source: APiQypJoX3YOPhmzSNIwbZKlFy92vaeJY2GOVQoCHSdHGYqNsqdbdyLzhC//At9/5LWsDx6IOu53/w==
X-Received: by 2002:a7b:c959:: with SMTP id i25mr987587wml.20.1586981436531;
 Wed, 15 Apr 2020 13:10:36 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:8bee:312:6092:58f2])
 by smtp.gmail.com with ESMTPSA id 5sm787712wmg.34.2020.04.15.13.10.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 13:10:35 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH] coresight: etmv4: Update default filter and initialisation.
Date: Wed, 15 Apr 2020 21:10:30 +0100
Message-Id: <20200415201030.15617-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_131040_624542_239C531B 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mike Leach <mike.leach@linaro.org>, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Differing default states set on driver init / perf init and as a result
of a sysfs reset.

The ETMv4 can be programmed to trace the entire instruction address range
without the need to use address comparator filter resources.
(Described in the ETMv4.x technical reference manual)

sysfs reset was using this method, perf and default driver init were setup
with an address range comparator for the entire address range.

The perf / driver init has been altered to use the method without needing
any comparator address hardware.

Minor adjustment to the vinst_ctrl register initialisation to ensure
correct zero initialisation.

Applies to Linux 5.7-rc1, tested on Juno-r1 and DB410c platforms.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         |  2 +-
 drivers/hwtracing/coresight/coresight-etm4x.c | 23 +++++--------------
 2 files changed, 7 insertions(+), 18 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index ce41482431f9..b673e738bc9a 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -205,7 +205,7 @@ static ssize_t reset_store(struct device *dev,
 	 * started state. ARM recommends start-stop logic is set before
 	 * each trace run.
 	 */
-	config->vinst_ctrl |= BIT(0);
+	config->vinst_ctrl = BIT(0);
 	if (drvdata->nr_addr_cmp == true) {
 		config->mode |= ETM_MODE_VIEWINST_STARTSTOP;
 		/* SSSTATUS, bit[9] */
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index a90d757f7043..58ae5498ecf1 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -791,7 +791,7 @@ static void etm4_set_default_config(struct etmv4_config *config)
 	config->ts_ctrl = 0x0;
 
 	/* TRCVICTLR::EVENT = 0x01, select the always on logic */
-	config->vinst_ctrl |= BIT(0);
+	config->vinst_ctrl = BIT(0);
 }
 
 static u64 etm4_get_ns_access_type(struct etmv4_config *config)
@@ -894,17 +894,8 @@ static void etm4_set_start_stop_filter(struct etmv4_config *config,
 
 static void etm4_set_default_filter(struct etmv4_config *config)
 {
-	u64 start, stop;
-
-	/*
-	 * Configure address range comparator '0' to encompass all
-	 * possible addresses.
-	 */
-	start = 0x0;
-	stop = ~0x0;
-
-	etm4_set_comparator_filter(config, start, stop,
-				   ETM_DEFAULT_ADDR_COMP);
+	/* Trace everything 'default' filter achieved by no filtering */
+	config->viiectlr = 0x0;
 
 	/*
 	 * TRCVICTLR::SSSTATUS == 1, the start-stop logic is
@@ -925,11 +916,9 @@ static void etm4_set_default(struct etmv4_config *config)
 	/*
 	 * Make default initialisation trace everything
 	 *
-	 * Select the "always true" resource selector on the
-	 * "Enablign Event" line and configure address range comparator
-	 * '0' to trace all the possible address range.  From there
-	 * configure the "include/exclude" engine to include address
-	 * range comparator '0'.
+	 * This is done by a minimum default config sufficient to enable
+	 * full instruction trace - with a default filter for trace all
+	 * achieved by having no filtering.
 	 */
 	etm4_set_default_config(config);
 	etm4_set_default_filter(config);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
