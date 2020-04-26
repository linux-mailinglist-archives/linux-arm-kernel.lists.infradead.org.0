Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E16711B934A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7EXup/HATnalcXRmRne56QfVv7VMtbqeScFtyXZXek=; b=A8qYLda/gx94rT
	3g3zYScqsfjB+atZeiTXAD1z1SCJsmner3+xLDtu9sQf5AuxHEAXpEwZaUbRCuXRd0DlC1GwVMUWH
	SRymzWA14c/7vFnkNZwzpTIciZarRJGVXn0vByKKjnuTjYsXsGdPneW2zFlnMFCHXMeJqvjhRVchF
	jtVtxAtrTV2HusCK97YKYu7wmt+Q6hZV06Dh/zRxco/v0Srdy+Bgpzr988WWHG0XHZpSzQNL0SZsB
	ZgDD5JrWvPJcLYq6jm22FmvVR264u6iDHO84E3XYacw970WLLvgaSRgT2LjrKKTllQUHJooEoKJKA
	cGkEb6P410AktOt4d/dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmV0-0006z0-8D; Sun, 26 Apr 2020 18:59:30 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSmTj-00060p-9Q
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:58:13 +0000
Received: by mail-pl1-x641.google.com with SMTP id c21so5218785plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 11:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gpZt5E1cSry4QDL3jmZLHdrOTZu3mS+7CXPfuznfxa0=;
 b=bz50d4RFZxXlsiYmc7eURFKnPKA8T97a4cJLMR9MKiedXJK661qh2I+r0rKGBepfSu
 dI0iNH4GSNHq7CJKJKinUa1pL3VmdVdxyoDAoum4WFs9CkQ5nsUaWc90rCKNPhIBv2C7
 pxn8MIthIPm3ObUUy5SyaegcU/VqLPeW3FRc8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gpZt5E1cSry4QDL3jmZLHdrOTZu3mS+7CXPfuznfxa0=;
 b=mU4sd3xYChNx2DvG6Vhpo/A4ntVYz4XZykf2WdAAsel62s83W50znmxPDPXdKTM3PG
 ZCuMzW5Nd98NfM+WGiNv0POjLGk9zJkxxro7iEMChDSLTmA9AIKi3VZcYZJtarCHnxQ+
 XLfttuoWrRCy5QNmTkx6ibOIq3eK7Bj8SR4+lkay+WqDFUYAvtxPzraLb0ri/6haMHAf
 qBlppgVbiuAVsDDm90my893VcPZcN/jNxKT8l07+mBU9telNp9rnSD4kY8V9QM3aMG8o
 dDnUDxJkdbmcFyRihphPbQ4eIvNOIvnzZjpmVlojPFOaIIOfzQ5I8MLGdfQkDyhaNDqu
 /IRw==
X-Gm-Message-State: AGi0Pubs96aMCUscVyGEFOTPRT1pfWcevoTYfnckyBJDODzlj7e4PqyV
 C+M75Z+QQu9K1jWZarK6hViD4jcMS0M=
X-Google-Smtp-Source: APiQypLSk4G4qJYhxhL3iDl2db9jRsm+BPlCR5fOXBSFr23B/iAKgpxCxjBmCxA4xcH9swcCmtX5tw==
X-Received: by 2002:a17:90a:9295:: with SMTP id
 n21mr19939827pjo.195.1587927490198; 
 Sun, 26 Apr 2020 11:58:10 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id h27sm9425153pgb.90.2020.04.26.11.58.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 11:58:09 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 4/5] coresight: Initialize arg in sparse friendly way
Date: Sun, 26 Apr 2020 11:58:04 -0700
Message-Id: <20200426185805.14923-5-swboyd@chromium.org>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
In-Reply-To: <20200426185805.14923-1-swboyd@chromium.org>
References: <20200426185805.14923-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_115811_340059_F6912FCD 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: Mike Leach <mike.leach@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sparse gets annoyed when this initializer is 0 but the first struct
member is a pointer. Just use { } to initialize instead so that sparse
is quiet.

Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/hwtracing/coresight/coresight-etm3x.c | 2 +-
 drivers/hwtracing/coresight/coresight-etm4x.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
index e2cb6873c3f2..bf22dcfd3327 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x.c
@@ -504,7 +504,7 @@ static int etm_enable_perf(struct coresight_device *csdev,
 static int etm_enable_sysfs(struct coresight_device *csdev)
 {
 	struct etm_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
-	struct etm_enable_arg arg = { 0 };
+	struct etm_enable_arg arg = { };
 	int ret;
 
 	spin_lock(&drvdata->spinlock);
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index a90d757f7043..0f850efc1c82 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -412,7 +412,7 @@ static int etm4_enable_perf(struct coresight_device *csdev,
 static int etm4_enable_sysfs(struct coresight_device *csdev)
 {
 	struct etmv4_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
-	struct etm4_enable_arg arg = { 0 };
+	struct etm4_enable_arg arg = { };
 	int ret;
 
 	spin_lock(&drvdata->spinlock);
-- 
Sent by a computer, using git, on the internet


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
