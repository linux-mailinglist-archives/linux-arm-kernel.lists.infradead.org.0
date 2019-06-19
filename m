Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98364BFB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1Y6DP6NZ022P9C/JTSaTxnfdcK3rFrHjP4IVnjaCQwI=; b=Kf/ghVj1EHTt67e5yD3iq7vORm
	i+cghTiXlDAESaE5cPiFLo1lK51utYxYIsFfG1KvF3S5KhE8zyaNmysFM1boOlyY5HcxoaxFZ0qPf
	Ue4yevreo7w0bsSOxybzDUEm0BKPjcbSBjUbxHsoHynJQ5QaERx+6GDUrJ9M4mV9BhDGLj0c28YfY
	wKIFc0Jd6+/zx6Gf2+cw85ecPoPJD7jlayBZeCmf/jZQsozE3ciYD9RgrQC+u52YRXh+8M8e9wmpg
	nnWxhm2vcI+lcQ6XMh/WHzMUMUE7Hl8gCfcnuxbQnrQi9yFVVvFK1vjxIQCt8DQBbQvHpMF/+EW8O
	pGZEv/AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeTj-00030Q-Im; Wed, 19 Jun 2019 17:34:35 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePQ-0007bT-B4
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id x15so21845pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bUxFfPS39P9fdU4kY1BrfLqP1exnSRK81MEC3yDEPu0=;
 b=mI5HlunS1Zl4dApBNACKFOMxFMjwRL01V7dJfcljXwL7g4an/CGfsy9xi5001tN8Xl
 BtiVhdW0EbX96BlnIORI9eBF6tf1KS2v3qe6BO92DwGY/nj2Z882eBuU3N0dfoLWOXtg
 qMPAYO0l5HDCY6rgM2AVYa3E3Wnn2tGH1kwW8HFQ4AsjtWMjob89uoB1KDaLiuZQLpR/
 s5vwW18MwDku3Rj+DFK6zxX36vw/Zc58JunI2hO7JkuAf3zEZo/hZRcXYHL89fcRMjdQ
 1bCZJJQUzwdJdcA/9VIYyO4DInbqlCFvb6nAHPRS4eLJ+nr+U2eGbZbtkEkBvIXqVScM
 AO8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bUxFfPS39P9fdU4kY1BrfLqP1exnSRK81MEC3yDEPu0=;
 b=dcU6ptBoOvWPmCJlNBA0xf350kLyGWe9yzNggD4OiQGanCLDFx807OE3hWo2bC61IG
 YrFE/f7zDe8SLq8YIbvL1a2GeMQTJ36OONLgCBQLQPufxchgxNiiYOcmtMsrQBDercSf
 TGkdGJBp9cjpLo34E/MxJ4cIkVY5jLKI3iIu6JXnzfEc04aNF1AFwBifIYEOwoDNfq/F
 qk8Q6ZcmObbnKr+fP0W/vF2bn2hwkVQSHTsJVhftSXheqGzeoHwHBekX22gg7QkSlxwj
 v6EWUrEltL2gU6f6R5dzcxJKNqVBwXHXKUvrMqX3o56fdF0KZ52M82hWmvDA0G5e1AQ5
 KpRg==
X-Gm-Message-State: APjAAAW/r5xfi4meQRp6tjlC51KTgkyBkS3DH+ckbsQkV2Hy48lLOE52
 2bu8701a8WLCyC8yMixmz4qnzTL12uUEGg==
X-Google-Smtp-Source: APXvYqxKuUXJHQwgNUp0GvkNZoW8yDkDBhQH6SLvUIRN/+cdQSskwMEa25VCKgvu9Hj+5CoV+BHB2Q==
X-Received: by 2002:aa7:83d4:: with SMTP id j20mr130779372pfn.90.1560965405824; 
 Wed, 19 Jun 2019 10:30:05 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:05 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 15/45] coresight: Rename of_coresight to coresight-platform
Date: Wed, 19 Jun 2019 11:29:19 -0600
Message-Id: <20190619172949.4522-16-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103008_850095_E1DBFF25 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Rename the firmware handling file to a more generic
name, in preparation for adding ACPI support. Right now
we only support DT and we have all the platform handling
code in of_coresight.c. Let us rename the file to
coresight-platform.c in order to keep the platform handling
in a single place for DT and the upcoming ACPI support.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/Makefile                           | 3 +--
 .../coresight/{of_coresight.c => coresight-platform.c}         | 3 ++-
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename drivers/hwtracing/coresight/{of_coresight.c => coresight-platform.c} (99%)

diff --git a/drivers/hwtracing/coresight/Makefile b/drivers/hwtracing/coresight/Makefile
index 3b435aa42af5..3c0ac421e211 100644
--- a/drivers/hwtracing/coresight/Makefile
+++ b/drivers/hwtracing/coresight/Makefile
@@ -2,8 +2,7 @@
 #
 # Makefile for CoreSight drivers.
 #
-obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o
-obj-$(CONFIG_OF) += of_coresight.o
+obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o coresight-platform.o
 obj-$(CONFIG_CORESIGHT_LINK_AND_SINK_TMC) += coresight-tmc.o \
 					     coresight-tmc-etf.o \
 					     coresight-tmc-etr.o
diff --git a/drivers/hwtracing/coresight/of_coresight.c b/drivers/hwtracing/coresight/coresight-platform.c
similarity index 99%
rename from drivers/hwtracing/coresight/of_coresight.c
rename to drivers/hwtracing/coresight/coresight-platform.c
index 7045930fc958..514cc2b67c36 100644
--- a/drivers/hwtracing/coresight/of_coresight.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -17,7 +17,7 @@
 #include <linux/cpumask.h>
 #include <asm/smp_plat.h>
 
-
+#ifdef CONFIG_OF
 static int of_dev_node_match(struct device *dev, void *data)
 {
 	return dev->of_node == data;
@@ -295,3 +295,4 @@ of_get_coresight_platform_data(struct device *dev,
 	return pdata;
 }
 EXPORT_SYMBOL_GPL(of_get_coresight_platform_data);
+#endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
