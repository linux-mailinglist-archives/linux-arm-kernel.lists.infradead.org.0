Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82511B9349
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:59:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvYhXtV8wnljUSJZPt+14zv3uA/aKEjWo+BofWjjkog=; b=tycUTmZt0Yxoom
	mQxJBn3JFf5NpRPAapjRLnGcTdLHUvJ0MQ3/PQZMjM61Nfu9r5HJm6SvN9Q69NOEFFClFFTLUslAv
	+UK7Zx6u8h7sxXJrXSnbSLgIW1KAsAiLJc4SQirPxHpJwqkFNQwUj2y6hBXYUGkWEOgNBQ1lelCbc
	7hNpJhThp7c/5Kl82ovA0wlf/IZU1y9lFu9/IrJCCVJDo8XMiZ07z0bp83iuAUTyEaYcfZMOJI6W8
	q11wU6vhylkHX2MFdtUj6KcWG9ziyKUVz4TISOwhA8FRRZ6jfbCnzS91Amzgk/Dx6qMfUWeT+gQAy
	NIyvhASKgCWkX2sse4zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmUl-0006jm-Si; Sun, 26 Apr 2020 18:59:15 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSmTi-00060B-Ga
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:58:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id t7so112503plr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 11:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l3i2flU80gai+judhhFKuvAvWyLfx9zeA9RGlgxWN5Q=;
 b=CKExp35RH6rrVYZf5vXfCon5651RmZbjoQsxKk1snxxhRAjxDEi5orr4cksepYMVpD
 1DQHiFpDBFUnh35DM04PSq8snNIsDjS4BOXIpMEzU0W4IVSQ/g8InAvfISr19ju4oGLV
 CIOT9LzT7Wsbd0uphG4020IVfSNaBCsWylkbY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l3i2flU80gai+judhhFKuvAvWyLfx9zeA9RGlgxWN5Q=;
 b=VwiNu3R8mZZt/qtl9+c8QAt1G9R26aBbqwuYdFhHM+U9hQTVjS/6FvBPIoel5oDiF0
 cx3BSnVRNuQOsyTE0MUgHF+VAIBUmESoThTJXsskEm/mx1/SkZp5S7sx9K6f5NSHlHpY
 RVvcIgcdba1wy437mGaEshjn0XHKn7lrGxGpEREXVYY6BxnC6X3HCf8oOfbY2D06Rt2Q
 /xP+24sJTEHQf5GyC+vQzhiwRtVPK0dPMZLpR2j6ZtnMreEZrbnQ0bFksi/pcMEy4Mj+
 CXNEbbmO7Rrf4NaCnS4ezhmfX17KADtYE3puaXjc5/v5WsfQOllurOFgeS9K6gAo31p7
 iNag==
X-Gm-Message-State: AGi0Pub9wfXPTcJfI8MEkuYgouRYDHV8LmdKYqydkBSJwK1QKVOxaDMp
 tsFS1qM9DkClsyk/NJTxE/BP3Q==
X-Google-Smtp-Source: APiQypL2aZCoe1BGEmB9HPKQE18g7LHRDsJ4fzgjvL2I+3C29fpVwxnrx/b12/hGVqc9MH0v0Mu/Uw==
X-Received: by 2002:a17:90a:b884:: with SMTP id
 o4mr18991300pjr.8.1587927489319; 
 Sun, 26 Apr 2020 11:58:09 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id h27sm9425153pgb.90.2020.04.26.11.58.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 11:58:08 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 3/5] coresight: Don't initialize variables unnecessarily
Date: Sun, 26 Apr 2020 11:58:03 -0700
Message-Id: <20200426185805.14923-4-swboyd@chromium.org>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
In-Reply-To: <20200426185805.14923-1-swboyd@chromium.org>
References: <20200426185805.14923-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_115810_583498_49906BD7 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

These variables are assigned again before they're used. Leave them
unassigned at first so that the compiler can detect problems in the
future with use before initialization.

Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/hwtracing/coresight/coresight-cti-sysfs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
index 7da846a3a829..77e14e770806 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -1043,8 +1043,8 @@ static int cti_create_con_sysfs_attr(struct device *dev,
 				     enum cti_conn_attr_type attr_type,
 				     int attr_idx)
 {
-	struct dev_ext_attribute *eattr = 0;
-	char *name = 0;
+	struct dev_ext_attribute *eattr;
+	char *name;
 
 	eattr = devm_kzalloc(dev, sizeof(struct dev_ext_attribute),
 				    GFP_KERNEL);
@@ -1163,8 +1163,8 @@ static int cti_create_cons_groups(struct device *dev, struct cti_device *ctidev)
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
Sent by a computer, using git, on the internet


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
