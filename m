Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A38154BFB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1ZZ2djJqg1UUhk281J5g55FLutkOBgOqpLPGHfwveyw=; b=uhhKjCH665sTkTqAXmRhHnTvs0
	gwBvKsa+Go6FPaVsOD/rphsRkvzrl5b5RkuSxZ2Iyz/m9H8Od02pS4dj2G98cvl9MZS/dZmv0g/aQ
	OpmkF41yNliqiOLJLJlihIOdI+pJPOTXjEdvX/PbXpvxrkEL5W0Y91TgXMdoJXmguUT8CkrBgeJwZ
	sl59A1caE4n5U8tc71Q6OX+MjNjdCoxkUcZM6NczS2mXOelfgSXotzr55QQBNLcFM01/pHmcN0itx
	iahACCLo834A50xj05PqmiZ2X0obSy6wcCWHUFUM7AouJLdDq7PiWfIVStTKDK4PhrOHL7M1IZp4x
	7DLlTnIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeTR-0002kL-7k; Wed, 19 Jun 2019 17:34:17 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePM-0007F4-Rf
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:09 +0000
Received: by mail-pg1-x543.google.com with SMTP id s21so29762pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OjYsJsrxVFriL99Ses2BUVQeARKKndkJ4ZL7nCdVEZg=;
 b=vXQvBMHBlWrLFmS3uYX9FW7Y9hHnEL6H04HHaGXwEQb3a53f1FramvbnKb82GJTD3E
 uH2JgqWyl44FwSfa2ajCrVM3w7EeE7LxXZDWmvI1dbxAEomFXCLC6FYU1yTg/YxBqRDp
 wmxZgxtOTF7jhTdc2lOnPnumZrpM1Gm9//Ypm9p4r1qhwUZYC0M/35QGzezupKttClni
 Me2HyphANwhUgE0aV9A/qLMmlHA8euQ1QSH0EuUk5l7+gcRz/9eJuQFqqCKL+BKAiW0s
 vtcxOVNNiUls11qeh1htR24CAugONn1sAmK6O2PggskyLB1FVpp0JTpfsuQe/jNQPmPj
 OqTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OjYsJsrxVFriL99Ses2BUVQeARKKndkJ4ZL7nCdVEZg=;
 b=M19CF/dI2ix9cGo2k6yFZKj7m2NTzlMh99ECL/YZ9M4Fvq7MgmUzXjiImnOcHVkGYE
 aBJhMR0hKzWTf1sQfG6faxe43ykC2tHLetrfyU7cQDrm2w/GyLnspZsyh34QRZ1/Kat7
 nbvyjUJvZvlGYtCQRXLSaiPlcpIUKLi8BH1EziLwWhRBJuW6hD9y1W9Xd9xMVQm5DVrK
 Qg/uT+RMXamYCKIgFAU0LTVGDgCsuM1hE+I7ORwg/ZPve+Gm8UTqVVmQewYcxOqtp1Dd
 CeY/GHHzogjrl+RbXqRfByhI9PARRjXNUDrGA+Ttqvto0y3l2RTfrHLiyMMaNR1XwV9t
 g2pg==
X-Gm-Message-State: APjAAAUeM6jscyiPHQQN098uxwjAQAQYhRvEpHyuqvgjcN8fZ3AHCajr
 +zvxLlQ4nRJ2wy7pOTtEQanWNg==
X-Google-Smtp-Source: APXvYqw6YJjvWzHdoDLvTRsCfjvHZ75S+kf2RMB+x9kSN2SWprU0LsGjzkIJaza/EqZmV01xBTk1Mg==
X-Received: by 2002:a63:ca0f:: with SMTP id n15mr8401290pgi.197.1560965401795; 
 Wed, 19 Jun 2019 10:30:01 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:01 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 11/45] coresight: stm: Cleanup device specific data
Date: Wed, 19 Jun 2019 11:29:15 -0600
Message-Id: <20190619172949.4522-12-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103005_358570_605977AE 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Keep track of the STM coresight device which is a child device
of the AMBA device. Since we can get to the coresight_device
from the "device" instance, remove the explicit field.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-stm.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-stm.c b/drivers/hwtracing/coresight/coresight-stm.c
index 9f8a844ed7aa..8f504849b782 100644
--- a/drivers/hwtracing/coresight/coresight-stm.c
+++ b/drivers/hwtracing/coresight/coresight-stm.c
@@ -110,7 +110,6 @@ struct channel_space {
 /**
  * struct stm_drvdata - specifics associated to an STM component
  * @base:		memory mapped base address for this component.
- * @dev:		the device entity associated to this component.
  * @atclk:		optional clock for the core parts of the STM.
  * @csdev:		component vitals needed by the framework.
  * @spinlock:		only one at a time pls.
@@ -128,7 +127,6 @@ struct channel_space {
  */
 struct stm_drvdata {
 	void __iomem		*base;
-	struct device		*dev;
 	struct clk		*atclk;
 	struct coresight_device	*csdev;
 	spinlock_t		spinlock;
@@ -205,13 +203,13 @@ static int stm_enable(struct coresight_device *csdev,
 	if (val)
 		return -EBUSY;
 
-	pm_runtime_get_sync(drvdata->dev);
+	pm_runtime_get_sync(csdev->dev.parent);
 
 	spin_lock(&drvdata->spinlock);
 	stm_enable_hw(drvdata);
 	spin_unlock(&drvdata->spinlock);
 
-	dev_dbg(drvdata->dev, "STM tracing enabled\n");
+	dev_dbg(&csdev->dev, "STM tracing enabled\n");
 	return 0;
 }
 
@@ -271,10 +269,10 @@ static void stm_disable(struct coresight_device *csdev,
 		/* Wait until the engine has completely stopped */
 		coresight_timeout(drvdata->base, STMTCSR, STMTCSR_BUSY_BIT, 0);
 
-		pm_runtime_put(drvdata->dev);
+		pm_runtime_put(csdev->dev.parent);
 
 		local_set(&drvdata->mode, CS_MODE_DISABLED);
-		dev_dbg(drvdata->dev, "STM tracing disabled\n");
+		dev_dbg(&csdev->dev, "STM tracing disabled\n");
 	}
 }
 
@@ -763,9 +761,10 @@ static void stm_init_default_data(struct stm_drvdata *drvdata)
 	bitmap_clear(drvdata->chs.guaranteed, 0, drvdata->numsp);
 }
 
-static void stm_init_generic_data(struct stm_drvdata *drvdata)
+static void stm_init_generic_data(struct stm_drvdata *drvdata,
+				  const char *name)
 {
-	drvdata->stm.name = dev_name(drvdata->dev);
+	drvdata->stm.name = name;
 
 	/*
 	 * MasterIDs are assigned at HW design phase. As such the core is
@@ -807,7 +806,6 @@ static int stm_probe(struct amba_device *adev, const struct amba_id *id)
 	if (!drvdata)
 		return -ENOMEM;
 
-	drvdata->dev = &adev->dev;
 	drvdata->atclk = devm_clk_get(&adev->dev, "atclk"); /* optional */
 	if (!IS_ERR(drvdata->atclk)) {
 		ret = clk_prepare_enable(drvdata->atclk);
@@ -848,7 +846,7 @@ static int stm_probe(struct amba_device *adev, const struct amba_id *id)
 	spin_lock_init(&drvdata->spinlock);
 
 	stm_init_default_data(drvdata);
-	stm_init_generic_data(drvdata);
+	stm_init_generic_data(drvdata, dev_name(dev));
 
 	if (stm_register_device(dev, &drvdata->stm, THIS_MODULE)) {
 		dev_info(dev,
@@ -870,7 +868,8 @@ static int stm_probe(struct amba_device *adev, const struct amba_id *id)
 
 	pm_runtime_put(&adev->dev);
 
-	dev_info(dev, "%s initialized\n", (char *)coresight_get_uci_data(id));
+	dev_info(&drvdata->csdev->dev, "%s initialized\n",
+		 (char *)coresight_get_uci_data(id));
 	return 0;
 
 stm_unregister:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
