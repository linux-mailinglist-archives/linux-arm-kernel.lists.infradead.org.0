Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 438701D83FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:09:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cTR7FzVkp8RVPn+uqwPpr6sMpXSzglxkvZp9+Yj4JA=; b=kn62qui9TLSinf
	Dv/hZV8ji9Gbi+lrhN8fvI2vj/sA9g9XePoTVAMJOahFEqB7/H8dC3Sp1Ecw3qy2QgWnVZCfm18lO
	C/CMd8zx5t8NAZSwiLoRcB0poQNDgzpc2r2/OJU3PuHMdwrPSCZGqggS2aAxXUbv79u/WYHVUfHph
	SjlYfJ764O7nPRDe+QSfi77m9rjKO38S5/FmFtR7O35L40IGIYm9C1fTTXs5X4UOnuTXu6n9HzrY/
	vbOAJ+5pdSagCSsQvTAjXzaY2eV3P8qNtnTJmHMKUyOPSUZM9TDouDatkm5PERHa+UgEVpLJwRlWm
	0Q03CymowZlXwvg886wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakCd-0002Y1-Q7; Mon, 18 May 2020 18:09:27 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6R-0003Tr-Fp
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:03:05 +0000
Received: by mail-pl1-x636.google.com with SMTP id a13so2992644pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=frOK4OZDYhbgzHRdQmb2gRizrXDsUQpDoZuLWDJWtp4=;
 b=UWiaQNZgB0xYbQXioPaR6Njc3Lx8ppjNgiEvvjsOcLyXCy8sH+c+1MhEW5fSflvGTv
 nr/kHdFTUx9HiYUj8eWPNSYYNpGPbdHf9I2s3WfI1NhNB2/EB0uQZbegnwpcudldktWH
 7qw7sGadxZ/+wUfGacwqfWu99FQLnvbV62dwr4tBG+Th/rlOcut4xiz1r7OoZyTAaHSL
 cAzQliOfTUKDpMDET2xPclq95oOfVdofrrGyUAmhfJQc1BrTPGLqvXzpIjDJnhYX7HRK
 EBWnaAhmAUvLj5YJ5QF5eLhYiQRwuS8vyqJmJoW7rIjC1ZnA0SQfRUjmHEq7ZZTqting
 cXyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=frOK4OZDYhbgzHRdQmb2gRizrXDsUQpDoZuLWDJWtp4=;
 b=W2MaMgOHJ4fpnikyE8MkowIWcRkzB60wHDViyRvCo+letOVjhnM/oBYGMWYKz148SQ
 lgxPeNlbJF5QqCWDILxIGD1l06+8St0P3RPVYzSh/pM8n9ta5mwJQuxrXnaZGlfI5n0H
 ulVQoOZ8j4aqY0RYxrjwD9MIWzup6K4nxqh23xrbdObk459KyFGgHSIWEe8Glp6MDVX1
 2zYahPdm2bHbMEXA1fi5RoMn+EDzGh7uWOAsV1TIv07fql2wvSJaXydtb0IboHFT1Iuf
 0hlJjC5O4RC1AKkKJebuVJaDgjtoyAOGAZx8igZk/TayOMgThMbZfW0SD07eAUQjW3sm
 VLxQ==
X-Gm-Message-State: AOAM530HPl3PbxoPbo/rbfJbyHF6atPsz1/tQOqtVJBLt1FFdVFIRmfQ
 eeXMw6DIEp2d3skkv2v5LNdFkQ==
X-Google-Smtp-Source: ABdhPJxkYwWR9jeiOA5WL3hNF6RXRP/I47uBCD/qn9sPl6MufOqWoFuFXSYb7KhIKd8zrp/W5DpBbg==
X-Received: by 2002:a17:90a:f493:: with SMTP id
 bx19mr565656pjb.45.1589824982250; 
 Mon, 18 May 2020 11:03:02 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.03.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:03:01 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 19/23] coresight: Include required headers in C files
Date: Mon, 18 May 2020 12:02:38 -0600
Message-Id: <20200518180242.7916-20-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110303_549321_F9CFE165 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:636 listed in]
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

From: Stephen Boyd <swboyd@chromium.org>

We should include headers that C files use in the C files that use them
and avoid relying on implicit includes as much as possible. This helps
avoid compiler errors in the future about missing declarations when
header files change includes in the future.

Cc: Douglas Anderson <dianders@chromium.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-cti-platform.c    |  8 +++++++-
 drivers/hwtracing/coresight/coresight-cti-sysfs.c   |  6 ++++++
 drivers/hwtracing/coresight/coresight-cti.c         | 13 +++++++++++++
 drivers/hwtracing/coresight/coresight-cti.h         |  8 +++++++-
 4 files changed, 33 insertions(+), 2 deletions(-)

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
index aeea39cbd161..392757f3a019 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -4,7 +4,13 @@
  * Author: Mike Leach <mike.leach@linaro.org>
  */
 
+#include <linux/atomic.h>
 #include <linux/coresight.h>
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
