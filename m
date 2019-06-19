Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C768B4BFAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uLEZNd3dpcfHhQJT7FbQ80y6uVig4un0hq3VxFKxj8Q=; b=qXXMPwFVcreoYSsyTqGMgZvh6t
	ZTF18MVKwssA1KYBGIGoqctrmLrxFXXOYXOxqXnhvzscw8D9pe8bD46+7AWL/KelSl09GtoSsfB21
	8ZXCbxWEDKqAQxjW/iLVcfBr4nDimHUUDuE3CtU3E0LbyQeJnpal2SB6oyywjeMaUfGpyU9694XPv
	YaZ+qLmgeztbAqY7VxwBD0GWzXtpqXLkiH+qZy0DEdyh7ads6kE6mSX649Ap8UKtKQdS3dy6OCCgo
	we1UMz/0sL8PxZPJlHzjMTklRexHytdWl30QgUNx+D8O+l1pcjosi7FIRxlZZ+XJ/uDyilp/RFzzZ
	JF7bR0QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeSQ-00020a-LJ; Wed, 19 Jun 2019 17:33:14 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePI-00078P-Ub
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:02 +0000
Received: by mail-pf1-x444.google.com with SMTP id m30so10158289pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0wsJZXo9A14FgE/m5MQDcxOKCwD8FwUJ59OhI9p4wbc=;
 b=uSuk7FT94w5mdtgT0LCcJsrRUSiksk7CTFHdvKqho/DSuxnTqoKm50P52npIFiAhJT
 CKlRVZKp4yWKQ2Ew8IEwpREbkWxOjBRPDlLHCp0JPGKKLGMaNq7hE9j6YOiptIEkCjzd
 hCn1yAB9IXG7cXJ/tdEesJJ+kL7/+r7ClxFTO6X0skvmh/zVRLD5fsxu4P/OYIRhAEzA
 oZHhBR++FCRzSnuDh9MBw2fzNGkw0b8bPlEUl4EeI1yv7CaQ6HpJQfbjIuVksKwD5SP0
 VTgfVhIKHmglTDmzph7kavKbZaG049/4Cg/f59xgSg21q7QXaNzdyPKURhJugzVWbDSJ
 Pshg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0wsJZXo9A14FgE/m5MQDcxOKCwD8FwUJ59OhI9p4wbc=;
 b=A6JOnjqG3r5BicwLZUzpKf2+FcexDqQdtfm2NFn7WcV3lYhie/jAUAVxqtV66bawK0
 t/S6mfs3oBzUkXWxRyCIE63BkEEnkoBMp8JOqMhAM45rtHvWmI/l8FSqaZyEJ6kIO8yo
 xeJ1gHH2PdecpkWyfEHDdJrWrAArTURfmBCtLyHcFnpx6W/ib6GUCKwI00/rDVgJ/Zlw
 yOFfG+7u+FIwWOkrvXC0+wDAd2YgzOV7wEjJeYw6e5DKsyBG7dr+WuhDdGqlYnK7uHQG
 z3DfecK4gGJ128j9OfVWu42WgxpQiR16OcHQAnnTPc8WVkRsPrRtEuF7I0tz9isL3YsW
 9cdQ==
X-Gm-Message-State: APjAAAVj6gmrDrlf/XhQI/T6IlhgZ+K61gUXvJjUh1aAIHKMuY7gYQp4
 4wIcF9ZmrZCmwXKHcWWIZU1GSw==
X-Google-Smtp-Source: APXvYqzZrqE8kycjjUeWiySvzYw8XMuIQ+uVWIE06DJ9i4K05OSyU0HircWVQiF8/B4+iBTfLZO/7A==
X-Received: by 2002:a65:63c3:: with SMTP id n3mr8653125pgv.139.1560965400132; 
 Wed, 19 Jun 2019 10:30:00 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.29.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:29:59 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 09/45] coresight: catu: Cleanup device specific data
Date: Wed, 19 Jun 2019 11:29:13 -0600
Message-Id: <20190619172949.4522-10-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103001_037476_1B567EC9 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Switch to using the CoreSight device instead of the real
amba device.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-catu.c | 13 +++++++------
 drivers/hwtracing/coresight/coresight-catu.h |  1 -
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-catu.c b/drivers/hwtracing/coresight/coresight-catu.c
index d948a72aa6a3..63109c98765c 100644
--- a/drivers/hwtracing/coresight/coresight-catu.c
+++ b/drivers/hwtracing/coresight/coresight-catu.c
@@ -408,13 +408,14 @@ static int catu_enable_hw(struct catu_drvdata *drvdata, void *data)
 	int rc;
 	u32 control, mode;
 	struct etr_buf *etr_buf = data;
+	struct device *dev = &drvdata->csdev->dev;
 
 	if (catu_wait_for_ready(drvdata))
-		dev_warn(drvdata->dev, "Timeout while waiting for READY\n");
+		dev_warn(dev, "Timeout while waiting for READY\n");
 
 	control = catu_read_control(drvdata);
 	if (control & BIT(CATU_CONTROL_ENABLE)) {
-		dev_warn(drvdata->dev, "CATU is already enabled\n");
+		dev_warn(dev, "CATU is already enabled\n");
 		return -EBUSY;
 	}
 
@@ -440,7 +441,7 @@ static int catu_enable_hw(struct catu_drvdata *drvdata, void *data)
 	catu_write_irqen(drvdata, 0);
 	catu_write_mode(drvdata, mode);
 	catu_write_control(drvdata, control);
-	dev_dbg(drvdata->dev, "Enabled in %s mode\n",
+	dev_dbg(dev, "Enabled in %s mode\n",
 		(mode == CATU_MODE_PASS_THROUGH) ?
 		"Pass through" :
 		"Translate");
@@ -461,15 +462,16 @@ static int catu_enable(struct coresight_device *csdev, void *data)
 static int catu_disable_hw(struct catu_drvdata *drvdata)
 {
 	int rc = 0;
+	struct device *dev = &drvdata->csdev->dev;
 
 	catu_write_control(drvdata, 0);
 	coresight_disclaim_device_unlocked(drvdata->base);
 	if (catu_wait_for_ready(drvdata)) {
-		dev_info(drvdata->dev, "Timeout while waiting for READY\n");
+		dev_info(dev, "Timeout while waiting for READY\n");
 		rc = -EAGAIN;
 	}
 
-	dev_dbg(drvdata->dev, "Disabled\n");
+	dev_dbg(dev, "Disabled\n");
 	return rc;
 }
 
@@ -519,7 +521,6 @@ static int catu_probe(struct amba_device *adev, const struct amba_id *id)
 		goto out;
 	}
 
-	drvdata->dev = dev;
 	dev_set_drvdata(dev, drvdata);
 	base = devm_ioremap_resource(dev, &adev->res);
 	if (IS_ERR(base)) {
diff --git a/drivers/hwtracing/coresight/coresight-catu.h b/drivers/hwtracing/coresight/coresight-catu.h
index 1d2ad183fd92..80ceee3c739c 100644
--- a/drivers/hwtracing/coresight/coresight-catu.h
+++ b/drivers/hwtracing/coresight/coresight-catu.h
@@ -61,7 +61,6 @@
 #define CATU_IRQEN_OFF		0x0
 
 struct catu_drvdata {
-	struct device *dev;
 	void __iomem *base;
 	struct coresight_device *csdev;
 	int irq;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
