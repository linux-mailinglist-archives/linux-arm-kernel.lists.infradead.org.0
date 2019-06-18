Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1467B4A165
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7ra/gTypdUig4Kk8TDdlOfeZSyGiAFAtolOBp/eOwY=; b=dZR4LVm8BsE2sH
	pdHk2Hf1oGHFJ7a3bh1/l9r+MMkN8rhF9aVKQLjysT++++YZtYze9YnxqqpiX+7t4wDyiGID0pDgf
	axwSHn/SGyUMCX/VpKX4jafwBGcnkn7Qf75pq4yB+D8RNAJfTVBKE6HddZQm6YHIzMQSxk0+USNTW
	6cnmn2NfoOqA0VA8IsPofZPZ6yrSGbY57awTQ2ZtubITBNKzcCv14OupB2ErIag+7UhOyhMN9vRfG
	YZjJQzgKlOusyb3ZmiJ/840mP07Y9iEwZjaK+DC+DzqNAKdnyST+jn0gADHKd7MhWgQMQkOnMRvWr
	Z/Nbet0Z5p8coSW7w/lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdDkI-0003rM-5f; Tue, 18 Jun 2019 13:01:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDdP-0001kT-Em
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:54:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6D42C15;
 Tue, 18 Jun 2019 05:54:46 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B73A23F246;
 Tue, 18 Jun 2019 05:54:45 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH v1 3/5] coresight: etm4x: use octal permissions for
 module_params
Date: Tue, 18 Jun 2019 13:54:31 +0100
Message-Id: <20190618125433.9739-4-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190618125433.9739-1-andrew.murray@arm.com>
References: <20190618125433.9739-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_055447_582060_A428EA55 
X-CRM114-Status: GOOD (  10.18  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Checkpatch indicates that octal permissions are preferred for
module parameters. Let's use octal permissions instead.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index ae623415c431..885c4f2c691c 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -34,7 +34,7 @@
 #include "coresight-etm-perf.h"
 
 static int boot_enable;
-module_param_named(boot_enable, boot_enable, int, S_IRUGO);
+module_param_named(boot_enable, boot_enable, int, 0444);
 
 /* The number of ETMv4 currently registered */
 static int etm4_count;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
