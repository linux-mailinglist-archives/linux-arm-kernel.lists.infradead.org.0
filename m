Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 065BF888A9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=02h9IEdFdFBsx/LWWP6mofsNtpr9gkUOQaCCmYDc33k=; b=H6ebvJCD01BK4i7zLYRNtPKe5T
	HkIoQADFJs7qoICpCgEs1MPYOJyWOFGz14Q1mfN3NVYjFTCcnf2YAqMpR46T4DlBGj4n6ko5lltJd
	perzyEAnvmGr6TX8DUWWkHOiTXthfXiODw3mQpUr5kW++sddyiWt7hyP+GtA8Ngx3WOK91TY0/cia
	J4RoH6BkLBA8qwbLdnrgIIcEXYyspIZg5+ZlBzl/4RI/xUCr324z2OgEa9xNW2TBA9Da1wbcW4FrJ
	gm7EX4XwgbhgpoEidYdUOFi6nKw39IS87mkz82978dLpk5K51uLHrVXzPPrAqh0ER4sM//lwZDy2+
	UYqtYKTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwK0H-0005GQ-5r; Sat, 10 Aug 2019 05:33:21 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJxA-0002Cm-GJ
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:30:10 +0000
Received: by mail-pg1-x543.google.com with SMTP id w3so9648521pgt.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=71DUVtj5Cvg/Wok9dZsUDEqRY7qzU/CKNT9zSocN+ao=;
 b=AHZ5OqTYDdsovC5n1BNsaS8kgOU6oa6y2cAM5Wbguuqk5X5JFfCB99NyHGj1db+4X6
 MdEl7N+AOMFOoTs6oYVoU/1LtNcBNYKSFh/+dcZryJAp6056TKQKoZKWgELUPsA/t+RU
 7mZeZnDlpJoV8qs/Fekb/eNC5INfy6h3z9PXVNwktXZjAtaIRvOAuFQTodDeVeyRTMMI
 c9sYeO6khNfyyoCr0gwVC/M6JZvyLAbXKVKzHnkA7bJSqXHlBS3k7WTu0XfCnBu1tJ5J
 dGASctZiWvoOEgrrTdIyvM1NBcDFX4TzCg75DRXDb7lYZiGB2YcX6EfvWA9XSIXjpFD0
 r70A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=71DUVtj5Cvg/Wok9dZsUDEqRY7qzU/CKNT9zSocN+ao=;
 b=KiOqV5S+0T4AwyTDslZUnO40K/C+4NhPo8m6yQjCgdMStkWK3P72C2E/gNWwv/JKol
 FgCNJKD8X3ApWOy9hTo4s0Dx5uQ8+vKeXn2Jqv7Sn09PlmI8S5PodVO75yMht8icinYC
 WGsdTeR/zhmi9sggkTc+q4tUfLHG0uNKOiijsioeam7OxrbSl/uA7mD0cC5sa4qPsmXI
 iiJdlBOKfRQr0OzE1YqTtkFND4AYQ0ypJn2LVK4IBxRmVzsuQQD1JVtHGmcAOxRJD8Ii
 hDiZbE79q40tFANRBjoBFLmuMEGsn1eoEEbvu+VKfTWF8BABFhfvIi6KYNMeToDBsqNR
 XRSw==
X-Gm-Message-State: APjAAAXYlf1wpN3siw43emyTgLt3z82cLJ5rPaG/e5DMJkDRJxG1g25t
 b+ZC/YNZJTZqmX2B1Zh3Hpo=
X-Google-Smtp-Source: APXvYqy0SbXHrw7PFXc5NqzKKuYBZBqpPz4Kx438X2kv6H5qephacghobTnQMk+4EBLFALhrbhee5Q==
X-Received: by 2002:aa7:8d98:: with SMTP id i24mr25671345pfr.199.1565415007779; 
 Fri, 09 Aug 2019 22:30:07 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id o12sm6113304pjr.22.2019.08.09.22.30.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:30:07 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 13/18] thermal: sun8i: add thermal driver for A64
Date: Sat, 10 Aug 2019 05:28:24 +0000
Message-Id: <20190810052829.6032-14-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_223008_902222_BBFA34A9 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vasily Khoruzhick <anarsoul@gmail.com>

Thermal sensor controller in A64 is similar to H3, but it has 3 sensors.
Extend H3 functions to add support for multiple sensors.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 drivers/thermal/sun8i_thermal.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index 41ce8cdc0546..3259081da841 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -515,6 +515,17 @@ static const struct ths_thermal_chip sun8i_h3_ths = {
 	.irq_ack = sun8i_h3_irq_ack,
 };
 
+static const struct ths_thermal_chip sun50i_a64_ths = {
+	.sensor_num = 3,
+	.offset = -2170,
+	.scale = -117,
+	.has_mod_clk = true,
+	.temp_data_base = SUN8I_THS_TEMP_DATA,
+	.calibrate = sun8i_h3_ths_calibrate,
+	.init = sun8i_h3_thermal_init,
+	.irq_ack = sun8i_h3_irq_ack,
+};
+
 static const struct ths_thermal_chip sun50i_h6_ths = {
 	.sensor_num = 2,
 	.offset = -2794,
@@ -528,6 +539,7 @@ static const struct ths_thermal_chip sun50i_h6_ths = {
 
 static const struct of_device_id of_ths_match[] = {
 	{ .compatible = "allwinner,sun8i-h3-ths", .data = &sun8i_h3_ths },
+	{ .compatible = "allwinner,sun50i-a64-ths", .data = &sun50i_a64_ths },
 	{ .compatible = "allwinner,sun50i-h6-ths", .data = &sun50i_h6_ths },
 	{ /* sentinel */ },
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
