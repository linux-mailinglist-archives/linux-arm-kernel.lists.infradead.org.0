Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE774888AB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RITx/LEFtU0dTei1kXayEDVzMPKzr8h7VK7pFtkrLdU=; b=rCWbSD3I6mvWZ9bgB/KGbblAut
	5HlN+AQ5OtMWHXiEw++7v7LZh0y/K15KBGHZ5akP7y1TkT991ywgSFGUXhABAmGSCTxAVkIV+0p5u
	BNddgKU7UrCA/e+7XEYTuLwXP23R1+8CjrOWkmfHW0YkVXkUm0UucnIlPLDa8KwcLVfh/Wbl44u+C
	dVUWRZsIFY1tv3D+xS60Wqxtc7LZWSQ3ZzyV6TdEAuIvipWpwfskTPahipDJGMWdHB7nrwgcINNoy
	lytTLtoE4dijRF9cLqFGRX04U0bSfnTBUmX+W0CMuvNS735hwk6hTIln2AP6biYNGL0PI4/s0oM+z
	od3lIrGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwK0p-0005i2-5k; Sat, 10 Aug 2019 05:33:55 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJxI-0002s5-VP
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:30:18 +0000
Received: by mail-pl1-x643.google.com with SMTP id 4so38767642pld.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iiVQJk9D8CfuggMoVj1p+aqwNp2abkAIMeZ4iA8Pj/0=;
 b=ZPRFOqHEq7Cw2ufw3Mm2fY9Oaz3hac0l3Xu5PsEOGPLF7COULFq05vg+XsWinezM2a
 DZ0T6vL1hWwTe2xwQZll89TldlAUZRYW405qeLdMQcjU3/IGu+ZWJJew0nSuWonus/zJ
 3JLaJenIBmaVCH5FZrduNe0PsSup6K0UKslPlWsK8BA/E8H8JA9+iYl6ErJ8ZnZ29/fe
 OZOCVbAzbxScW9VeRy7Gh84k7HOBfX5j1DeoW/PqwkCJtokhft4JzptwnZPYRzsKe0PT
 0A4y/DS2aRJJGlOsoMiG5W01lR8r2O5CEj7S5GST3f7YsPykvQ1a66hOE3UM1BDrjdfZ
 UZtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iiVQJk9D8CfuggMoVj1p+aqwNp2abkAIMeZ4iA8Pj/0=;
 b=Okev9ifSDqBs53DalvaEsQD1aWUkCbhjzlLe9hcuwQwHnGjnG8gfUugzosMGeX5x1N
 nZced8laoljfk7Tpvnd39ZgpK4r4qren/hx6C4Xvbg4CrFCtjlZNUELmFmYwAt1nzRiU
 oI8E5Gq5Im6qcaOXcS5GUvH8nj8wT8aomK96jff66b3j83rO1yespZLi4PS4cDt9/K0h
 f7eFiwiA9guKUmOr+XX4axu/RGpEUuixj/YZW2pOJTLpj00sLfe5dOAYzGC5KOiBM3fJ
 h4uuE4KYZiwPKlh/5JXuGGJNP1fgXchw4BM5S383S4Rle3c8t6vtVJmlEzAflU2NdnKC
 1/vw==
X-Gm-Message-State: APjAAAV1NQ0ynJ461z2Ya46+GOesRG9V2YeZVUeGTo32gtvvegVYpduM
 aevF9t+Hd8qXnLPMMyinc+o=
X-Google-Smtp-Source: APXvYqyJvqnqpxM/3lHUXCDIW0XlM04lSny/PBrutlyVaXbNaFDXGDzHAnGo7L7W6ut3mw/ucA2TpA==
X-Received: by 2002:a17:902:1101:: with SMTP id
 d1mr22881836pla.212.1565415016564; 
 Fri, 09 Aug 2019 22:30:16 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id z4sm86286175pgp.80.2019.08.09.22.30.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:30:16 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 15/18] thermal: sun8i: allow to use custom temperature
 calculation function
Date: Sat, 10 Aug 2019 05:28:26 +0000
Message-Id: <20190810052829.6032-16-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_223017_162183_5BCC9341 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: devicetree@vger.kernel.org, Icenowy Zheng <icenowy@aosc.io>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

The H5 temperature calculation function is strange. Firstly, it's
segmented. Secondly, the formula of two sensors are different in the
second segment.

Allow to use a custom temperature calculation function, in case of
the function is complex.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 drivers/thermal/sun8i_thermal.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index 3259081da841..a761e2afda08 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -76,6 +76,7 @@ struct ths_thermal_chip {
 				     u16 *caldata, int callen);
 	int		(*init)(struct ths_device *tmdev);
 	int             (*irq_ack)(struct ths_device *tmdev);
+	int		(*calc_temp)(int id, int reg);
 };
 
 struct ths_device {
@@ -90,9 +91,12 @@ struct ths_device {
 
 /* Temp Unit: millidegree Celsius */
 static int sun8i_ths_reg2temp(struct ths_device *tmdev,
-			      int reg)
+			      int id, int reg)
 {
-	return (reg + tmdev->chip->offset) * tmdev->chip->scale;
+	if (tmdev->chip->calc_temp)
+		return tmdev->chip->calc_temp(id, reg);
+	else
+		return (reg + tmdev->chip->offset) * tmdev->chip->scale;
 }
 
 static int sun8i_ths_get_temp(void *data, int *temp)
@@ -108,7 +112,7 @@ static int sun8i_ths_get_temp(void *data, int *temp)
 	if (!val)
 		return -EAGAIN;
 
-	*temp = sun8i_ths_reg2temp(tmdev, val);
+	*temp = sun8i_ths_reg2temp(tmdev, s->id, val);
 	/*
 	 * XX - According to the original sdk, there are some platforms(rarely)
 	 * that add a fixed offset value after calculating the temperature
@@ -232,7 +236,7 @@ static int sun50i_h6_ths_calibrate(struct ths_device *tmdev,
 
 	for (i = 0; i < tmdev->chip->sensor_num; i++) {
 		int reg = (int)caldata[i + 1];
-		int sensor_temp = sun8i_ths_reg2temp(tmdev, reg);
+		int sensor_temp = sun8i_ths_reg2temp(tmdev, i, reg);
 		int delta, cdata, offset;
 
 		/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
