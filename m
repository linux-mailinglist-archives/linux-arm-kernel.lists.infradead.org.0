Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 868541BC793
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 20:11:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhdVnjntHYvpzf8CZngnUH9Gkabtn9bmiblmlh5JnMU=; b=VTzEsiCMSw3l2S
	wobiz9fwYCpnyaGkPQGmo6pmb81r/giVBbA1bBQC7XywUU23bcWOlFW4I+WO84P0xPcDxzdgoDcGb
	BwuTmYCRG3PVc6peUxP9HKO9gZ34/fcDlY7PVBbZAib2Wkpvw5/DgHGDdZor3WG2Ft51DtJWGDjRS
	WuJkgT4rBA77RGMlfkZnpU+osue6EcPLwWIemygvDiD3uU/KvGBhB/9Ix7xqFx+xNfJNxAwLyp9Wa
	G5IS2Nhkf1vqoMxMTwp8d3uIiSIEfCvImXyo5xTzKDMwuJbob7aXXhttFbDD5nf6gwZOLF/T3yOgC
	PRrCmwP7r4nwv7j6yqvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTUh7-0005q9-T6; Tue, 28 Apr 2020 18:10:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTUgP-0005cJ-J9
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 18:10:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id d184so11093648pfd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 11:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pzR0VAatcGCv2TaFAPhug2WYMJZ8JLRsVVUKQdZJepo=;
 b=jdkX6l3UqUCLDCTewHorQRjMf21oxTo6rOvLVMIJNk2uIdHTHZzvqWa5kgmcPOrxUi
 NWQEMSjo6yk0IWsdl+dHB1UVJNpsjboN+5JgTrsmDUL1lhFMxR4mEfucfx3Ejm52yNJq
 4AVDhISobCn3yLHKS0nzOIqhewaE+HztbgNOw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pzR0VAatcGCv2TaFAPhug2WYMJZ8JLRsVVUKQdZJepo=;
 b=GDY2/4IIsc/K+f0GwSDE0jCQbCeOfNa48YhAHvPDQWO6mz/gOA9owZvI8SnvXyaPW2
 8Bqk0JCqtq0CEdlvMEnO99POuMFf+N1GJtpNhYwKBEpi4EjQsln7VE+kbSMZgQckRr0H
 OddP4utirkMo9J0Z2Dvv6cL5DtrhMy/gK/sqR95HA/7JtkH661tlf4Oo4lmNP7dHW3Dh
 QR98uUFv48+awi3wRYVYc3gZRlwSJg3mpbkkVjbr1DiSVJVThGw7tSaY/tToQrT4LH3D
 k2FGbktyu2SG28Nc4cG+WGCZQVOwvyBND8KOLsqWbvrnlA+8h2SunIlb5RTE8W/nAs3d
 bPOA==
X-Gm-Message-State: AGi0PuZtdgUsxUNTl97hNLAc/8Gtvkap4lYyIiBPwQ3HUxigtz0Q7gvu
 PtnzfYb4jwr0VMQyC1U8+TBI4Q==
X-Google-Smtp-Source: APiQypIbQFQdy+iWWUMbbuNFGA5jRE5oHCH/IGvzlWQeCyuF1u6U87LYpWBmIbmboyJidQzTnibkxQ==
X-Received: by 2002:aa7:9ac9:: with SMTP id x9mr12944651pfp.304.1588097412814; 
 Tue, 28 Apr 2020 11:10:12 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id h197sm16260910pfe.208.2020.04.28.11.10.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 11:10:12 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v2 1/2] coresight: Include required headers in C files
Date: Tue, 28 Apr 2020 11:10:09 -0700
Message-Id: <20200428181010.170568-2-swboyd@chromium.org>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
In-Reply-To: <20200428181010.170568-1-swboyd@chromium.org>
References: <20200428181010.170568-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_111013_651914_BE2C19AD 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We should include headers that C files use in the C files that use them
and avoid relying on implicit includes as much as possible. This helps
avoid compiler errors in the future about missing declarations when
header files change includes in the future.

Cc: Douglas Anderson <dianders@chromium.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../hwtracing/coresight/coresight-cti-platform.c    |  8 +++++++-
 drivers/hwtracing/coresight/coresight-cti-sysfs.c   |  7 +++++++
 drivers/hwtracing/coresight/coresight-cti.c         | 13 +++++++++++++
 drivers/hwtracing/coresight/coresight-cti.h         |  8 +++++++-
 4 files changed, 34 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
index c6c0c9b4827e..ab3bd4ed0910 100644
--- a/drivers/hwtracing/coresight/coresight-cti-platform.c
+++ b/drivers/hwtracing/coresight/coresight-cti-platform.c
@@ -2,11 +2,17 @@
 /*
  * Copyright (c) 2019, The Linaro Limited. All rights reserved.
  */
+#include <linux/coresight.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/of.h>
+#include <linux/property.h>
+#include <linux/slab.h>
 
 #include <dt-bindings/arm/coresight-cti-dt.h>
-#include <linux/of.h>
 
 #include "coresight-cti.h"
+#include "coresight-priv.h"
 
 /* Number of CTI signals in the v8 architecturally defined connection */
 #define NR_V8PE_IN_SIGS		2
diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
index aeea39cbd161..77e14e770806 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -4,7 +4,14 @@
  * Author: Mike Leach <mike.leach@linaro.org>
  */
 
+#include <linux/atomic.h>
 #include <linux/coresight.h>
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include <linux/spinlock.h>
+#include <linux/sysfs.h>
 
 #include "coresight-cti.h"
 
diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index 7fc1fc8d7738..be61c1705916 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -4,7 +4,20 @@
  * Author: Mike Leach <mike.leach@linaro.org>
  */
 
+#include <linux/amba/bus.h>
+#include <linux/atomic.h>
+#include <linux/bits.h>
+#include <linux/coresight.h>
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/mutex.h>
+#include <linux/pm_runtime.h>
 #include <linux/property.h>
+#include <linux/spinlock.h>
+
+#include "coresight-priv.h"
 #include "coresight-cti.h"
 
 /**
diff --git a/drivers/hwtracing/coresight/coresight-cti.h b/drivers/hwtracing/coresight/coresight-cti.h
index 004df3ab9dd0..acf7b545e6b9 100644
--- a/drivers/hwtracing/coresight/coresight-cti.h
+++ b/drivers/hwtracing/coresight/coresight-cti.h
@@ -7,8 +7,14 @@
 #ifndef _CORESIGHT_CORESIGHT_CTI_H
 #define _CORESIGHT_CORESIGHT_CTI_H
 
-#include <asm/local.h>
+#include <linux/coresight.h>
+#include <linux/device.h>
+#include <linux/fwnode.h>
+#include <linux/list.h>
 #include <linux/spinlock.h>
+#include <linux/sysfs.h>
+#include <linux/types.h>
+
 #include "coresight-priv.h"
 
 /*
-- 
Sent by a computer, using git, on the internet


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
