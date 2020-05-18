Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163B41D83BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0f0uzoz4cE5aStXKa9yFtQmtIWFLr4nby2SkGS0b8nc=; b=Xdsyhw3dLLXsN5
	P7X7q3/A1W0Hy7JVgWfkByjQ69fFmjbWRdbg09PGbDl0ukjNQSRiWmOpyQ6CrHTd1+RgJgz5zSaFd
	W9Idpn4ht9Z122O611PqnznLTNd6zVLEtzGGxQ/rtlD20yHJYIIlVmNzNetnCXk5URGmKCykNVmrV
	wMCtDLuwU3m72AvzTD4dABhpGW6Ja602dxwteizdS9FVRR8owQgDluzg8xg//iF7eMJ0AmV6I7pd8
	/ztZfYozBjFC9Cl5rUX8iKTJ06ZEk8BO9xvv0PKVAqh/RUr+4xKWPIyFRJLmijcYC4FDa10G+fW5v
	U/J5kdYYvTRzld8ISLog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakBS-0001IQ-F0; Mon, 18 May 2020 18:08:14 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6N-0003PX-8H
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:03:01 +0000
Received: by mail-pj1-x1043.google.com with SMTP id l73so223771pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qI0hkZLl1p40lpmoqUP5FQkPLM/cVGruUyPdGcb4wIQ=;
 b=v7rWz7edbqHgcpapNTcdBkkA49gPIQn9qCOdOWX8oswt5q6lNAOVvsk1B8bRpUKMgR
 V4rLEToL+vznxN6V51xzvHyi5SPHiZ536ZXjjZoyZpAPKS9dcQ5Bh8uS/Zz7Bu9iFiGN
 viTvAVkzFbmABREoO94u8xSroYUz6TiRqc2M3l3yy3Fvh8cpViYns3W5Rx41tuOqXBek
 NzTUMh94cOHdFbYLrTUo86P60ddnETRFCJ+4E9i/9HKgo5c6ETsbX3Busz+cmB3vx00p
 MFldLgSi0CsnmHYpZgDjDdFF6PwCZ5S1dINmBFKM1YF0JZBCjzS4JSlJVbPCtdrgfJwM
 ocGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qI0hkZLl1p40lpmoqUP5FQkPLM/cVGruUyPdGcb4wIQ=;
 b=ny4K1EF3LhWAcQIlSzJsuUOeG2KisBpIy2mdCyMh8/Mcv9LMebEAL3y4BCWlonppTb
 G4wSXkaiHxbJnKjwPUUlTT717UlKV9lXatb4ydRE1bNvl5oSFljNs7LkTQeQtQafh0j1
 dRU7P7MhqgWVcSc79Df1RKPLtdzYUqPmvlJ6ZW4Eq3lXD8cGlHrA0QKZJNk1OzzoX4m4
 jaXWSnSKvqz2e+vt5pCJxd3FrYbifo9rI4BX9HefSBmPUgjJcb9iB8uJTqDdTSAI2ZcI
 YeHJVrcqbAdogNppuyLFJ0JJJxEaqLMUhzN4CvcQgzw+igQKHm23+n9Oo8iLewec88z4
 MxsQ==
X-Gm-Message-State: AOAM531E78eOP/srkrOv1GloJYFQnb1u9rBgEjHV0CKH3MgAemThDLWf
 xvVpIHcGFb5ecIJjn2x2rcM9+th40do=
X-Google-Smtp-Source: ABdhPJwrsp4UxKFu/aIe6tugBNFzecrOXHzIRK2MK354U6zTOpapPG8A2PpDhYcYC5ub/H9BD/nkzg==
X-Received: by 2002:a17:90a:c284:: with SMTP id f4mr680374pjt.68.1589824977944; 
 Mon, 18 May 2020 11:02:57 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:57 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 14/23] coresight: etmv4: Update default filter and
 initialisation
Date: Mon, 18 May 2020 12:02:33 -0600
Message-Id: <20200518180242.7916-15-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110259_358197_0A97BD86 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

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

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
index 94c5f204998e..0b2c7c7efacb 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
