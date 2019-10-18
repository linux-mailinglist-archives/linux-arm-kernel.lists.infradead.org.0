Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C107FDC31F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQ/V+mZTSgf4NFBfkuv/jLc4ypr5suBYYiJEHHKKQ1I=; b=CYLlOZYfeFMjpq
	XV32mvGi3Xw+g5ZXsmAJJto3Kr5nY431gcZ1wkt21i5b5noNKZhfExa4uxS60xTv9R71BJyyO8DvD
	Zt/9OZdN3bMcxeLp/MDIrS8IhEpvRb4RTScCYEdhI86SXE9qn7V/Vl3TztUbiUHD2Ya/oljpLuSft
	GzVR7rHRJwzfcADZFiJcpL9UOfZLgDsQ2ZTpoy3glDDeQuVLCd4GcldSvuPgg8BmAIEn7YXjD4T87
	H/PyehCz7QWJBZ2rYobVuxbSRHZ8R6+kDX8qE0j87C5cczyk4kegEWcLqegLXzIxqNpfqAWGSClGo
	z8jXQXr/s6MY5R0xoHMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPuu-0006KO-Q9; Fri, 18 Oct 2019 10:55:32 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPty-0004O6-60
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:54:36 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 03:54:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,311,1566889200"; d="scan'208";a="348045947"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga004.jf.intel.com with ESMTP; 18 Oct 2019 03:54:30 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id DA70D1CB; Fri, 18 Oct 2019 13:54:29 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-spi@vger.kernel.org
Subject: [PATCH v1 2/5] spi: pxa2xx: Sort headers
Date: Fri, 18 Oct 2019 13:54:26 +0300
Message-Id: <20191018105429.82782-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018105429.82782-1-andriy.shevchenko@linux.intel.com>
References: <20191018105429.82782-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_035434_230651_DB3277A8 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort the headers in alphabetic order in order to ease the maintenance
for this part.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/spi/spi-pxa2xx.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index 59d1406a9c96..670734b3d56a 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -4,27 +4,27 @@
  * Copyright (C) 2013, Intel Corporation
  */
 
+#include <linux/acpi.h>
 #include <linux/bitops.h>
-#include <linux/init.h>
-#include <linux/module.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
 #include <linux/device.h>
-#include <linux/ioport.h>
-#include <linux/errno.h>
 #include <linux/err.h>
+#include <linux/errno.h>
+#include <linux/gpio/consumer.h>
+#include <linux/gpio.h>
+#include <linux/init.h>
 #include <linux/interrupt.h>
+#include <linux/ioport.h>
 #include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
 #include <linux/pci.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/slab.h>
 #include <linux/spi/pxa2xx_spi.h>
 #include <linux/spi/spi.h>
-#include <linux/delay.h>
-#include <linux/gpio.h>
-#include <linux/gpio/consumer.h>
-#include <linux/slab.h>
-#include <linux/clk.h>
-#include <linux/pm_runtime.h>
-#include <linux/acpi.h>
-#include <linux/of_device.h>
 
 #include "spi-pxa2xx.h"
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
