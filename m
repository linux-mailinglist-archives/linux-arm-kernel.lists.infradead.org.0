Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA50B4FCFD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 18:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fHOV1r2TlnZE6Wbip8pzN3dctLKA+7DuyXPYiAeNTPA=; b=dVbiAWq0Q/bibV8Bt28bl5bcql
	bRXBu0v6707MHtl5qOrik7UOWaFdu+curUYa7RYitrJyksqUlqSNSHCYUS2XQzqRCgKqnD2iR/8SK
	2YfVzdco94AylgCrmK0oZmh+EJMmY+FI7Rt56z9+IbNDGG0MHIIoRUzRbY2IzUDtwm0S5pNuolV9P
	mZWWUIWtbs0viiBEHFVdJn6c0eYx2g2j2gyAR3lC5rmq+TXZJhMr/114ZP0NrPRq9pKq2Iywk3+CY
	wbQJ7UZ+FjfcFBsFIipoT0/cRYhgU2BOSPQOxQNh+fxbvwKVNntq+IUhHoZ1xSeI4bgoovXF+DgpL
	LNW7XPBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf5cX-0005vO-3M; Sun, 23 Jun 2019 16:45:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf5ZW-0002hy-Je
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 16:42:32 +0000
Received: by mail-pl1-x641.google.com with SMTP id k8so5512473plt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 09:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ddH5x5C4Xtp9rpA7ryYSwYalCmUTcgexoa3qISyw2Ug=;
 b=tsMXbUAgFpwgrGExbojVFp6U+eGCSeVvQ9COwf0RIP4o6x6lu/cIpPJiU6z+BFl/nK
 9uFezX6fSwPv9SbDVCJn3nhgK/wYhAFSTfVVRRAhcNasUfzmZNRNBq5NprqM6MXbisSq
 rP+DULOHG0lJXd/9kgnzSrzrblAND0GWor0omm6c0+wmv5e+fOLhzGZjm7zOzgfuEABy
 EfrYFjcW3IBzwSMs9sbgOeJ77y8uOu5Y7HxeZXjGZXnEXTILq1rFPK51guGEWRnO8mqK
 Fl40iQX/QBS5ZgxCR5H+2+oJHs4rCVb6WIRs3UE5BrsYv6TcH8ldw/s+ObnC9wRjr8gT
 JZNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ddH5x5C4Xtp9rpA7ryYSwYalCmUTcgexoa3qISyw2Ug=;
 b=pk4Gl62lf84sE6KZEYIsiEyzvQgoMOU2trzprVtfmUVqmQyS77Qh/eD9UTNYnUduoe
 H/r1gYnVh4rTRbJkQ7CSXNpWIC70J4MtsoK1ir9ZEJDvzeLtjUsIDw3UAPyp4aTP5Qhx
 ndibyDeyE0wWFMigauzzwrxrcnRANogqBz1/fUeL4qKdWD45FFQdY1b8yjWtCARgB9ys
 B5wYZd+DX6w7cp/D4pV8I7HjsT/ueB1vkhJKqRZ7IJVuYDM78hZULu5kKBLpotL2WhYQ
 GM9fVE4vVSIcM3YT2b/TbbY8++gIA5X2BQUy6eSx49IYWzF1FCfC8fqo2KOl+5X08RSx
 aO7g==
X-Gm-Message-State: APjAAAUjuTRK8KiLTCXcNqNDxMyt3jsBVR80fjkkaVu/Mi9Pkg/ZCdxk
 JpBS8YhPSnSuhhuZDn11sek=
X-Google-Smtp-Source: APXvYqykivldidC6OTPZpmATBM7ATqQAb23IP4aVg9WLyjsROhNPDhwqIZxuE7cbseWPK8Nr0H/tlQ==
X-Received: by 2002:a17:902:27e6:: with SMTP id
 i35mr142206227plg.190.1561308149084; 
 Sun, 23 Jun 2019 09:42:29 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id l13sm7708993pjq.20.2019.06.23.09.42.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Jun 2019 09:42:28 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v4 08/11] thermal: sun8i: support ahb clocks
Date: Sun, 23 Jun 2019 12:42:03 -0400
Message-Id: <20190623164206.7467-9-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190623164206.7467-1-tiny.windzz@gmail.com>
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_094230_924386_39ED8328 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

H3 has extra clock, so introduce something in ths_thermal_chip/ths_device
and adds the process of the clock.

This is pre-work for supprt it.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/thermal/sun8i_thermal.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index ed1c19bb27cf..04f53ffb6a14 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -54,6 +54,7 @@ struct tsensor {
 };
 
 struct ths_thermal_chip {
+	bool            has_ahb_clk;
 	int		sensor_num;
 	int		offset;
 	int		scale;
@@ -69,6 +70,7 @@ struct ths_device {
 	struct regmap				*regmap;
 	struct reset_control			*reset;
 	struct clk				*bus_clk;
+	struct clk                              *ahb_clk;
 	struct tsensor				sensor[MAX_SENSOR_NUM];
 };
 
@@ -280,6 +282,12 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
 	if (IS_ERR(tmdev->bus_clk))
 		return PTR_ERR(tmdev->bus_clk);
 
+	if (tmdev->chip->has_ahb_clk) {
+		tmdev->ahb_clk = devm_clk_get(&pdev->dev, "ahb");
+		if (IS_ERR(tmdev->ahb_clk))
+			return PTR_ERR(tmdev->ahb_clk);
+	}
+
 	ret = reset_control_deassert(tmdev->reset);
 	if (ret)
 		return ret;
@@ -288,12 +296,18 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
 	if (ret)
 		goto assert_reset;
 
-	ret = sun50i_ths_calibrate(tmdev);
+	ret = clk_prepare_enable(tmdev->ahb_clk);
 	if (ret)
 		goto bus_disable;
 
+	ret = sun50i_ths_calibrate(tmdev);
+	if (ret)
+		goto ahb_disable;
+
 	return 0;
 
+ahb_disable:
+	clk_disable_unprepare(tmdev->ahb_clk);
 bus_disable:
 	clk_disable_unprepare(tmdev->bus_clk);
 assert_reset:
@@ -401,6 +415,7 @@ static int sun8i_ths_remove(struct platform_device *pdev)
 {
 	struct ths_device *tmdev = platform_get_drvdata(pdev);
 
+	clk_disable_unprepare(tmdev->ahb_clk);
 	clk_disable_unprepare(tmdev->bus_clk);
 	reset_control_assert(tmdev->reset);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
