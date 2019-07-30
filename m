Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E197A903
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 14:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bOgMnHh5RsteL4xdevLL3i1fwplZcQkW8CErwBLMG8=; b=n8GZJ9iPZbB9sB
	7ki2vyPuYqVFkqgx3ZwmFf9TjTZpKTKl4NqrD1TeyamW6mHFfirWizPlvLzRwUhwea5QjxbvqaCyQ
	GQm6+y0OOSPw15EwAmE5eIULublz+yeHzNEADxt91bcjgx5rqY+nzGwD0sU7JXCwAXPrTHqMiJ0a7
	cWlQVV+bSVIwaan2MLptG5gr5bWPiIyreiTR1oLSO03L8JNkA9f9W3qqRbfN9HmCTI1XNRxjkA53V
	XsVpu6iECj2UxOvyzTm7BijhQhC5Ee6T2maaT7JUTeY9JUjFqIwnkXP07OwwAtciSNFVq19xsWGsE
	J0Ew5jEBX7rWbaZVE1qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRcu-0006IG-Lh; Tue, 30 Jul 2019 12:53:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRbv-0005fE-G4
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 12:52:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C05628;
 Tue, 30 Jul 2019 05:52:11 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 782003F575;
 Tue, 30 Jul 2019 05:52:09 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH v4 3/6] coresight: etm4x: use module_param instead of
 module_param_named
Date: Tue, 30 Jul 2019 13:51:54 +0100
Message-Id: <20190730125157.884-4-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190730125157.884-1-andrew.murray@arm.com>
References: <20190730125157.884-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_055211_599995_54472E72 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Al.Grant@arm.com, coresight@lists.linaro.org, Leo Yan <leo.yan@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Given that the user-exposed module parameter for 'boot_enable' matches
the variable that it sets, let's use module_param instead of
module_param_named.

Let's also use octal permissions (checkpatch recommends this) and
provide a module parameter description.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index ec9468880c71..615bdbf7c9b7 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -34,7 +34,8 @@
 #include "coresight-etm-perf.h"
 
 static int boot_enable;
-module_param_named(boot_enable, boot_enable, int, S_IRUGO);
+module_param(boot_enable, int, 0444);
+MODULE_PARM_DESC(boot_enable, "Enable tracing on boot");
 
 /* The number of ETMv4 currently registered */
 static int etm4_count;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
