Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D36A21B9340
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gRnONRkLDbRODo0GSYyI0TEue6V2goCZUgOYa6AXzE=; b=XpId5YdmnpMyiJ
	KQyDroSxnza5fYfAFbypPnKCci3QtnLTD/rvNyJSk4/M1onbubjIJ42aBgg4OXJHcj8pGkRSHNR6R
	p0CmfUA65EHU53UdL693ugyekJnBxB8f0AUjyRBRH0h/pUb/uT1Acfh1uI6eDd9DtjgXzdvZash6P
	W1pW9x+1B6xelI1U5m6szTqLN4Aj44XxYdznjpanGiYi6iKkYsrTgzwlgBzhj6kxkVS306j3kHmOs
	dRZk9ucL5Fhcsl7411kt2yCjYg+u5Hs4uK6lI9FvA8xcOogf/pc5mRMibe1czIZOH9PmAT4NzmbIk
	6qlYY1yBEucWrU2aJkRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmUD-0006Bq-9I; Sun, 26 Apr 2020 18:58:41 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSmTg-0005z9-LZ
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:58:09 +0000
Received: by mail-pj1-x1036.google.com with SMTP id a7so6374224pju.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 11:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4Nh28scNPsJXa8VBHQt4qXLeY3lEoVVK2enXEW037c0=;
 b=BdVhKtLAP0JExFZ1sxuVIzCP4UamXqGzOA3++lUZEsFGktO/3zTuXEeXwpJHFRA6FY
 3avnihY1WBEmDoPBBzZ1g4DoNSlELeEHrnEHsEGR8DPCqyyjvzRl13d4R0OJMzKE9a93
 13WwOc+ATON9XvG0YCvzqL5Da1nr39Jbr0gNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4Nh28scNPsJXa8VBHQt4qXLeY3lEoVVK2enXEW037c0=;
 b=s7IIH3Z7cEnKAjOSMW0PPqH6c2XiUDiZTsDED6egdMmNJbvFaUqkdR6EZrB6PN6XvU
 O4JrmkrzYyRrMCYzTfVM7WGAdYopy+lg9KsY04wSrIpTOrJsm1+chRwXXA2UYDwk3Nbo
 OwtX1xrAdJFZLXu+SfQVBc1di685GhWbn71+1D1mzXOxwepCs/nY4lnruqsI5dfvaRu9
 4w+gy0wbAf0dwCKHeRNEAyqjBblr1hdMOJHXXrxs3PvA2pIMAjpePSW/qvys6C0iCpcy
 IpBk4zN3fYakGrFtFdo0rMOuMCxPXrPZlUDDWyqAD94GyEvF0KcomuyQeBhjAtWrzBse
 vLHg==
X-Gm-Message-State: AGi0PuYRMFZAkLyAg40JBMmH8ZZFFkaBMdEfXxDhSs6t1qbU+/sRQCFj
 NDoXVudPYyxXQYDGwY9m/63oJA==
X-Google-Smtp-Source: APiQypJBNQXj9WHyF+IHGBzdHYcC2ttp7i7C/jxQ8C7MxpSFBYk7GD5NVXVTP8g1XaGKZmouC3xE1Q==
X-Received: by 2002:a17:90a:6fe4:: with SMTP id
 e91mr19725593pjk.28.1587927487680; 
 Sun, 26 Apr 2020 11:58:07 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id h27sm9425153pgb.90.2020.04.26.11.58.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 11:58:07 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 1/5] coresight: Include required headers in C files
Date: Sun, 26 Apr 2020 11:58:01 -0700
Message-Id: <20200426185805.14923-2-swboyd@chromium.org>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
In-Reply-To: <20200426185805.14923-1-swboyd@chromium.org>
References: <20200426185805.14923-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_115808_701481_ACC608AA 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1036 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/hwtracing/coresight/coresight-cti-platform.c |  8 +++++++-
 drivers/hwtracing/coresight/coresight-cti-sysfs.c    |  7 +++++++
 drivers/hwtracing/coresight/coresight-cti.h          | 10 +++++++++-
 3 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
index b44d83142b62..245f16c61af8 100644
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
index 1f8fb7c15e80..bed460541f15 100644
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
 
diff --git a/drivers/hwtracing/coresight/coresight-cti.h b/drivers/hwtracing/coresight/coresight-cti.h
index 004df3ab9dd0..d80123b905a8 100644
--- a/drivers/hwtracing/coresight/coresight-cti.h
+++ b/drivers/hwtracing/coresight/coresight-cti.h
@@ -7,8 +7,10 @@
 #ifndef _CORESIGHT_CORESIGHT_CTI_H
 #define _CORESIGHT_CORESIGHT_CTI_H
 
-#include <asm/local.h>
+#include <linux/list.h>
 #include <linux/spinlock.h>
+#include <linux/types.h>
+
 #include "coresight-priv.h"
 
 /*
@@ -52,6 +54,12 @@
  */
 #define CTIINOUTEN_MAX		32
 
+struct attribute;
+struct attribute_group;
+struct coresight_device;
+struct device;
+struct fwnode_handle;
+
 /**
  * Group of related trigger signals
  *
-- 
Sent by a computer, using git, on the internet


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
