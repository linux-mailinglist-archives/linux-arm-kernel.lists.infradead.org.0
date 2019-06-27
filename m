Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852E457E54
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 10:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOmM4N1NLgCXA3iqOqrSjZvrx7ul6TeZz6g2WHZoiOI=; b=fdYIy1K6/dd/J2
	rG1J8jrBLmcTC64Ngs8ZZvCmGSsr9ASWv+E4NHscwde2YaYpHVIvU1LFY/FcsoHbIuUL/kqzgXDKg
	gZKYJFdNzSOhuRyUxcDzPON0yfVRKWWVS9GE4ELggZmfWD3JGesa2m4im4howvrFifiSuf5yzk1XE
	nx9VPJzmBG5L5dbpgkt0ieX2hrlvVvQnngInYt0ik4UY/7Zl00yMoCXNSCnqfkPtAyGJ6SSd/uGF3
	H4tZ8xC1rg0rInjPI5Nvf145wI10ugBlXiEKaOXEVOwsyzb9YamgmjieqCUbkBuWBj18h4CGE5R38
	kUoeUqifFuiz2kG6WBFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPty-00064G-FF; Thu, 27 Jun 2019 08:37:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPsa-0005Ez-NQ
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 08:35:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B03DF11D4;
 Thu, 27 Jun 2019 01:35:36 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 518383F706;
 Thu, 27 Jun 2019 01:35:35 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH v2 3/5] coresight: etm4x: use module_param instead of
 module_param_named
Date: Thu, 27 Jun 2019 09:35:23 +0100
Message-Id: <20190627083525.37463-4-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627083525.37463-1-andrew.murray@arm.com>
References: <20190627083525.37463-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_013541_043001_6CCD0BC5 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
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
index 68e8e3954cef..a47f29ecdd38 100644
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
