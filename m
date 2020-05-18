Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1D31D83E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YveaISje1MZAgA3PFJ//w0gWW6X2nnpF4plXLwA1Z2o=; b=KN7cu44PGG4Q9U
	Z//QApsdPiw/UJMJAq01DvBemb8RiwdTYNmtPt6T+asWnKCizZCvflL6c8PlxpqR4VBMtvUpZGE1V
	y9FCg44gd+EDkXK34fjV9OLHarEQA3U+ONtrhvz4W1kubMHwCm5rfEwKG3O7ys6fLkqlqMSFZRC8b
	zKuogYjAJPKEXuxAE1+ZCwfTXPXiZqKmi5kmQUwIpjgtpyE/xc92zNQQaKkNgp/o6gOKO0ucksY4o
	Qw2ykJphGINsR4q32r6ypjeCCGdvlWQh6h1NzuZpiP2AxDgQmcOEbz3XOFxsiSTIcldj/1UMQEo/q
	ir3DgS5T7QcSThRwBbAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakBz-0001qp-0X; Mon, 18 May 2020 18:08:47 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6P-0003Rf-7w
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:03:02 +0000
Received: by mail-pl1-x641.google.com with SMTP id u22so4529411plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mLFkeFv5HWGKptJ0s4V6OJj0VEk0WD3tjVOmDK300SM=;
 b=eDW9yGFrhHY4198g/3hhoOz+a/sYeJvLXzPJOiUD26CyVyH3wB3AOxsIM5QYvG7QEE
 LOWhoLqm3hrnEhz2ylxvDQ3VWbdmm/g7rv2nC1Plg6fsq9SL3InsZy2vRdhFupoYo57s
 ZvsdFfJcKmyf5mOMK/wLMInA60Yd4tbK6hQ6zmwPHds+yI5++0wXqhBbNH+T8d2PtEm2
 mhnxSc0m+sjWNNUh8pBHYNnVxPBEK2a6OfKTDCD51OM8XlzwWIedqXepNDyefdDPIKQE
 UOwovpEhHGARLuJKCwHQbJwW0OsvQj3HXzQ20dtdRpzmbX2OuXFmRVRQEu6n23deNOBT
 pGZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mLFkeFv5HWGKptJ0s4V6OJj0VEk0WD3tjVOmDK300SM=;
 b=gYIJm4EEdqqYI22ReympMDGF1C9EDDfAP7LluT1LUKrg6vG2XrranNPNgNyeCL2rCg
 ekPYlS2i8RXempJUgdcI6d39x/7rSPQmfHg57rj6Eikov7fm+H4q9KUiUlPFtj5gxxf6
 0iQyGjIHzBWXzg+yhuMqXcb3Ttto/XrY7qEd5OjZi9ky9S6IoYEYCUGv3TSbJHvDEDQ1
 dhVNJB9O0Lpi1tIh2HhcSK1BWUQygc5iAHS77g04M1ZLMrL+i9KqvyPlXB8+xsE8ie3K
 FSkjRFvUWGZ8PBo/CfuFN1JcXg4/tq8R21FpibzOUeFEv8D47lVbIPe5uTda9oCcJx/f
 L9Fw==
X-Gm-Message-State: AOAM530HOSgB5Alix9ewKd3d4m3KKtqtvzbLjejbHC9ntq287qKe5Q4f
 qUh5haH0cA43A+xDgbpxXPVTfIh12w8=
X-Google-Smtp-Source: ABdhPJxyhKMdyxNcOviUJfI2E/9h9DHTBdz7Y+r0lx75bOQbaxOfvyt/E0KChUzDc+T6kSKusUwUjg==
X-Received: by 2002:a17:90a:7046:: with SMTP id
 f64mr534460pjk.205.1589824980575; 
 Mon, 18 May 2020 11:03:00 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:03:00 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 17/23] coresight: Don't initialize variables unnecessarily
Date: Mon, 18 May 2020 12:02:36 -0600
Message-Id: <20200518180242.7916-18-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110301_340831_94987E28 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

These variables are assigned again before they're used. Leave them
unassigned at first so that the compiler can detect problems in the
future with use before initialization.

Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-cti-sysfs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
index a095db03d2bc..aeea39cbd161 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -1036,8 +1036,8 @@ static int cti_create_con_sysfs_attr(struct device *dev,
 				     enum cti_conn_attr_type attr_type,
 				     int attr_idx)
 {
-	struct dev_ext_attribute *eattr = 0;
-	char *name = 0;
+	struct dev_ext_attribute *eattr;
+	char *name;
 
 	eattr = devm_kzalloc(dev, sizeof(struct dev_ext_attribute),
 				    GFP_KERNEL);
@@ -1156,8 +1156,8 @@ static int cti_create_cons_groups(struct device *dev, struct cti_device *ctidev)
 int cti_create_cons_sysfs(struct device *dev, struct cti_drvdata *drvdata)
 {
 	struct cti_device *ctidev = &drvdata->ctidev;
-	int err = 0, con_idx = 0, i;
-	struct cti_trig_con *tc = NULL;
+	int err, con_idx = 0, i;
+	struct cti_trig_con *tc;
 
 	err = cti_create_cons_groups(dev, ctidev);
 	if (err)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
