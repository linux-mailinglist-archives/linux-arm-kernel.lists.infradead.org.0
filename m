Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8EA13B2BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 20:08:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wTERvQnos8jT2QY7BElWVLW8K6peDosgEGyjxiakOW8=; b=IOmWgf9oaXoSZ9ShyMsFIer9av
	l06KeOND615srzrfNka3w1rh3jnLIzbdts31NY9LluRtSa27ZHBq/hpBPzwypPv0sn4k5lkxGGFyz
	70u9nnL9YGMtM2HufYHx1XiPxMwaDEPD5s7u0E5+s3jMglr46W/lb0TO+3xTxx7tzssEDkMLKqc0x
	wg1HpUbeHuToALUNK3z7XruqY9JaGcinrev/TfIWdahMvnjqz+c/0/jY3Vs2jnSTU9nI5xFc/Gu9l
	rzxVqZpx/c0NiZwnQa4ccw05kFFdFb7iGTGuDj062RXZroL+XtCN6LvwWWREWc7GvTy0cWR3YrHTj
	kZGZyRRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irRXy-0006x5-8t; Tue, 14 Jan 2020 19:08:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irRWI-0005LZ-25
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 19:06:35 +0000
Received: by mail-pf1-x443.google.com with SMTP id 2so7009610pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 11:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pdqFhCoobMXuCQErm2fyAM9nvtAnhN2zKc0BHszTXso=;
 b=XICSL1Rk08ZtNKUFEan9CneKTurtx+KU4l8I9KYCJJvel3de5/tnLtPzCWmhy5tWuS
 zVJOubUDyYYgFfZMSuVu6UORRh4R0C8s21pJ1m/QNOMDcN3ZLNKu/6MtF1C9jqskKbOZ
 zQLTmkbcdraiIGNfhTHDULSOzrM2hc1dNAwqe4eEVeDCY8lkA9HxRZe0yO31aeVjm+oh
 oi+SZ1Q/rG55ihhOiS8a/ZCTXezKkZLpDbz5NYUpjM3zWRQKgzd88Ppyk0X1fuc5uiLC
 06SOKTxr+xAuXG8NScl6LMDuQXAeHzzqiG27mfSvgm80c77vroHU+MzrVg/XPZE4V+Ic
 s1SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pdqFhCoobMXuCQErm2fyAM9nvtAnhN2zKc0BHszTXso=;
 b=tBUCp/qpFSpIwWPcaj7u4Z+JqDOk1h2MKp666NNjYNy/9yb9V3+RBbD9FyZSTGZVlb
 XeNYTZsLBTCDQAy/29+p8a6zEVByG0I0oxqdf45C4qYnhkiPGnTL/BrXrk1JBZsgG8AJ
 imp5HEBZS4KmsVSg9ixCOtSud5cAsWh95jC2ot6pJSX/ysAVEDTOIPsiFsZINlCWc1Fw
 3onpsUraC8BHtVb5PX8sR5GGRO1kDUgYhdRr5BYPm0DRWKHhPKSynZ+3Grx9A4/kLODx
 lqlZfXS+Y31XGmxQDZHcYgZ4UK+A6KksVhK4pPsb2xJMeigBtPlyroySsX6lpOTCMjez
 qmpw==
X-Gm-Message-State: APjAAAU5MOIacED9xs5aaXlSnFVuRtyDvUKWJtiHGmrycaVzwujrfZyx
 q20PYJlzJF8m9Ew3PMzqw00=
X-Google-Smtp-Source: APXvYqzRroJjj7y1B13WecukIAzkgxjPBRhiKYGRxVC0DQon8cavTK407Wh+9iS54uf7EUBtSdwnPg==
X-Received: by 2002:aa7:9111:: with SMTP id 17mr27652957pfh.163.1579028789694; 
 Tue, 14 Jan 2020 11:06:29 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a195sm19284528pfa.120.2020.01.14.11.06.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 11:06:29 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 6/6] thermal: brcmstb_thermal: Register different ops per
 process
Date: Tue, 14 Jan 2020 11:06:07 -0800
Message-Id: <20200114190607.29339-7-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200114190607.29339-1-f.fainelli@gmail.com>
References: <20200114190607.29339-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_110630_096457_CE531870 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since we do not have interrupts on BCM7216, we cannot have trip point
crossing, the thermal subsystem expects us to provide a NULL set_trips
operation in that case, so make it possible to provide per-process
thermal_zone_of_device_ops

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/thermal/broadcom/brcmstb_thermal.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 6ded4b9c53be..8df5edef1ded 100644
--- a/drivers/thermal/broadcom/brcmstb_thermal.c
+++ b/drivers/thermal/broadcom/brcmstb_thermal.c
@@ -105,6 +105,7 @@ static struct avs_tmon_trip avs_tmon_trips[] = {
 struct brcmstb_thermal_params {
 	unsigned int offset;
 	unsigned int mult;
+	const struct thermal_zone_of_device_ops *of_ops;
 };
 
 struct brcmstb_thermal_priv {
@@ -287,19 +288,25 @@ static int brcmstb_set_trips(void *data, int low, int high)
 	return 0;
 }
 
-static const struct thermal_zone_of_device_ops of_ops = {
+static const struct thermal_zone_of_device_ops brcmstb_16nm_of_ops = {
 	.get_temp	= brcmstb_get_temp,
-	.set_trips	= brcmstb_set_trips,
 };
 
 static const struct brcmstb_thermal_params brcmstb_16nm_params = {
 	.offset	= 457829,
 	.mult	= 557,
+	.of_ops	= &brcmstb_16nm_of_ops,
+};
+
+static const struct thermal_zone_of_device_ops brcmstb_28nm_of_ops = {
+	.get_temp	= brcmstb_get_temp,
+	.set_trips	= brcmstb_set_trips,
 };
 
 static const struct brcmstb_thermal_params brcmstb_28nm_params = {
 	.offset	= 410040,
 	.mult	= 487,
+	.of_ops	= &brcmstb_28nm_of_ops,
 };
 
 static const struct of_device_id brcmstb_thermal_id_table[] = {
@@ -311,6 +318,7 @@ MODULE_DEVICE_TABLE(of, brcmstb_thermal_id_table);
 
 static int brcmstb_thermal_probe(struct platform_device *pdev)
 {
+	const struct thermal_zone_of_device_ops *of_ops;
 	struct thermal_zone_device *thermal;
 	struct brcmstb_thermal_priv *priv;
 	struct resource *res;
@@ -331,9 +339,10 @@ static int brcmstb_thermal_probe(struct platform_device *pdev)
 
 	priv->dev = &pdev->dev;
 	platform_set_drvdata(pdev, priv);
+	of_ops = priv->temp_params->of_ops;
 
 	thermal = devm_thermal_zone_of_sensor_register(&pdev->dev, 0, priv,
-						       &of_ops);
+						       of_ops);
 	if (IS_ERR(thermal)) {
 		ret = PTR_ERR(thermal);
 		dev_err(&pdev->dev, "could not register sensor: %d\n", ret);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
