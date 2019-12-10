Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FFB118339
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:14:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V1HkQOQLKfCtHGxFKBNDEAIS70gzMKVd9rBptGlW78w=; b=TA1YUIZosCvNc+
	Hsl/STwnNDbvXpyzLyjc8SgeJxIUsZ4A8pxWfT5YOXl9db6+7ZnJCRbt5umubl2cVl/tfdbp94oZ5
	vdu9gt7Gvad2UI+jenCniNqI3rXymotu6VDBkspUJx2J3hClKKsoXVtvpHLTTztcNMNHVBYmIRT8H
	aTkerAKDVH9/cR3FTw3pgP2o0583OBV50zNf18hyd/l43EELuZzVXRv15i9zRwKJzbBOOW3LXzp75
	NBh0/Z/knJPsem+AFSV0JLX5RhbQ2dUaLDhRTraDo8CMBFyg/poXq89UjCo/dnFvjOsrT2GztP6wz
	T2StCv1c8rduCOsPGChQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iebb6-0005tK-7N; Tue, 10 Dec 2019 09:14:24 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iebav-0005sa-7n
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:14:14 +0000
Received: by mail-pg1-x543.google.com with SMTP id x7so8581428pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 01:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rqFt7LYiGaMiHS6zNR6E1TcA8nx+ziLBCWAwkxGQf5E=;
 b=D1fkLSvsib5JK6nRPfIpjQYBwsMTT1T76hJU4YOna4SY4x9zCq0RTmUxg2bg4M/K+8
 1GGJ7u/H2TYoiV9FoN4lY6YAyuQLKgGKtw8whm2WkUTdxqQkMkfU6X0yZRoI2QQV0ERA
 0mFABveSFjq/rAs7GYi3sn1BwyQwO6e9/2sLJY4NnC8FwbQK5kPXQzlAJm2Lfda+47HX
 u/IMIZB7zBQmG2WdvxmMq1wvTk3VR417xW+DnJ482jRwoxJiOYfb2s5Xfny9NlKylgkZ
 teMHO830USWOEOQnhf5KqOs8kgW9XAqWaRyjfBgzLvpcqRn4GwIYR7pYr911GmjpYZeO
 Yu9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rqFt7LYiGaMiHS6zNR6E1TcA8nx+ziLBCWAwkxGQf5E=;
 b=Xn/rONjj2FPbwAd9qrIFCs/PaqdhOwM7G5k8jq3CuEcivorDjsdk5HPWA5gvEJKn5n
 rpX1OMBHw+/qlvdiSKOmJ3Q/gIm77jqzGWSMSHlEiJie2ahM+xyT7YBC4txHk4lXPOqO
 c7GkOb1plDqTGLOFK5/nP99ATSg/peQ1Kft/fNboo30ub0n1sL/0PEIdcPzJMg/LV0To
 i54/3AOdbEyszZ9+rIWH/hlR3Nr42n/UyRbxh/uSkdkqc2aijhUA6gYadOze+v+uaC1H
 imDtVBkoyYI8DLstBvPKraKmrWu/vUXNT2IPNmHdVkZ3Oo0KMGP+shsoSn6LDV/pqir0
 KmtQ==
X-Gm-Message-State: APjAAAW95flg/gMowJllfOovKf4cvxYKJebthief8h3TQvML1Znt++fp
 OaZYTIZTHcNJi+/z3dI5p0M=
X-Google-Smtp-Source: APXvYqzeP0ChOYN8FIPxN51uS0GDDAILHcIPOn/3Ojn9+m0DHD9ESMJvRLODYRoCCiyUU76hakHd0A==
X-Received: by 2002:a63:4416:: with SMTP id r22mr23393138pga.254.1575969252757; 
 Tue, 10 Dec 2019 01:14:12 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id r193sm2561351pfr.100.2019.12.10.01.14.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 01:14:12 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] Input: sun4i-ts - add a check for
 devm_thermal_zone_of_sensor_register
Date: Tue, 10 Dec 2019 17:14:01 +0800
Message-Id: <20191210091401.23388-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_011413_597113_65BFCB8E 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver misses a check for devm_thermal_zone_of_sensor_register().
Add a check to fix it.

Fixes: e28d0c9cd381 ("input: convert sun4i-ts to use devm_thermal_zone_of_sensor_register")
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/input/touchscreen/sun4i-ts.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/input/touchscreen/sun4i-ts.c b/drivers/input/touchscreen/sun4i-ts.c
index 0af0fe8c40d7..742a7e96c1b5 100644
--- a/drivers/input/touchscreen/sun4i-ts.c
+++ b/drivers/input/touchscreen/sun4i-ts.c
@@ -237,6 +237,7 @@ static int sun4i_ts_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 	struct device *hwmon;
+	struct thermal_zone_device *thermal;
 	int error;
 	u32 reg;
 	bool ts_attached;
@@ -355,7 +356,10 @@ static int sun4i_ts_probe(struct platform_device *pdev)
 	if (IS_ERR(hwmon))
 		return PTR_ERR(hwmon);
 
-	devm_thermal_zone_of_sensor_register(ts->dev, 0, ts, &sun4i_ts_tz_ops);
+	thermal = devm_thermal_zone_of_sensor_register(ts->dev, 0, ts,
+						       &sun4i_ts_tz_ops);
+	if (IS_ERR(thermal))
+		return PTR_ERR(thermal);
 
 	writel(TEMP_IRQ_EN(1), ts->base + TP_INT_FIFOC);
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
