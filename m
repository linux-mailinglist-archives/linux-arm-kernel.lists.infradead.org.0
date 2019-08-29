Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9204EA280A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FrudU1iu4sM8CPMjqBhjltbVGR/mnseBjO7LfP/b7FY=; b=SfTTHJazeeXnXifHe9hCg0D831
	ohcHkSi/vNO46qexZNrL+bADPkSpN7WFdSriJYqw3gXKDqsgubUGtODB/XtndtiaGcB9Tv9FXXFiS
	ldc6r+ijK9hw3GFyXlAchT6o8SGaCw8w7dky1F/rWyHqGjhMwAaOkEUxg/tgNrT1ANarca+3m25Zy
	u4DRM1idnL0MY5FRAFj9u114r8UXP6xZhhzXe8RxafL5Lhj33skxdAYN7dRgxMBzzJv2R7RGbgZ6+
	s74X8aUUFf4bHCZNBNAui4A/HEUR2yYJubty9HMvGx2Fo4FcwjYY1W+hSKrxk5AfyAvDah/ti/mxO
	8mTDZg6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R5G-0007gd-VF; Thu, 29 Aug 2019 20:31:55 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2M-0003nj-Q4
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:56 +0000
Received: by mail-pl1-x643.google.com with SMTP id f19so2133873plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=b5zJyHlGDBqJC4HV7eqiak/P9biAFuBrVePMCjU9nus=;
 b=VTwS4Mc0pVj27mlJ5xepGnvcaqPh/UJCcP/KLu6p9ra7So8wPeYMCmrxsZnHIJ0OrY
 f7vpEzs9HwB+ffsTuYmT+qIyVhoakqVTO6HYZThv3dw/m5S3wp/TbPcrcg8IFxUCys9y
 qritYw3DHoK8arwDK9wzF1I34qsPAMGoMuSVdTtJg+DFFc6OmbMESaUGBdLO8K2fm7iB
 4xtkPXWLUsTIcRjV84fO9ZJ2pUog7X/V/YRuFwasVUugkZIefWNRgEtxy0m/9EjGdu7z
 YAHR5a5jVQn6facq2dLwz8HsdIWfpm1lGZypRCGb8Y73mwRecvThVRuU7p4Y9bSqysqV
 wOUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=b5zJyHlGDBqJC4HV7eqiak/P9biAFuBrVePMCjU9nus=;
 b=fBTqLIgys9DtQ1fwukjt8Gjyx5kKZdwIDJIrZAKiUYCE7Lz7R0uQun4s6XRrU9woAj
 wZlA3QPhi2ULa9KT0ggz51gKbLhHR3OSPkSXEdSvB9ipYLrXYA1KHRn99X6fsncJvvmM
 AETsBcZYMvEba/6xz4UcyAwQEBCzDSFUi97BE/K8/PUZ2LTckHpk91wCPOfplHlJcEDN
 dfa2So3FQgmTH3QYgGF3XCwg0LHg4z8kQnTN1wdyaWJfqgWFZx2gMGnLQAGSbKQjg1Ry
 LmkNy7QZevGgUr4q2ljKnffNsFATmT6qdCFYRRCApr2AHJEgiCRQSq0/AD8tu0xAsya5
 79dw==
X-Gm-Message-State: APjAAAXFtv9O7WnB92WCWWp7fLRbsaNI0J1/c/zp6109CSX6VQFE6aHI
 lAzk39jMi9Nf3F10uFRzzhLV1w==
X-Google-Smtp-Source: APXvYqxj8IoMZ8U7Kq3keglcixLYKy0eYCesSSj31JynTzBtpDYoGp8Tqj280M9iNofK0Jq/bKMUWA==
X-Received: by 2002:a17:902:2f05:: with SMTP id
 s5mr11991108plb.170.1567110533892; 
 Thu, 29 Aug 2019 13:28:53 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:53 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 11/17] coresight: etm4x: use module_param instead of
 module_param_named
Date: Thu, 29 Aug 2019 14:28:36 -0600
Message-Id: <20190829202842.580-12-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132854_927040_A1C500CB 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

From: Andrew Murray <andrew.murray@arm.com>

Given that the user-exposed module parameter for 'boot_enable' matches
the variable that it sets, let's use module_param instead of
module_param_named.

Let's also use octal permissions (checkpatch recommends this) and
provide a module parameter description.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
