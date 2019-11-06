Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE996F170A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 14:29:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WzIwe68G4CGXE89J0JH0V6wwn/VtPrufGSjjSeN2nec=; b=hLwV5nc+U+27883H4n0KkKsrmL
	WS41pJK6B+OLlv+MQd98LIPJTkxvVbWa7nqkkmNIC1B7vpMwQulDtvyWqyKyY6TEiUtkQuqjQgmdI
	D98oYrJEfkV6cKjm0AsiTXzaoExo/nP8HesUZadz/MnX/sfgGV8FMvdwKwbuuD9rUctSr1mLG1Rg0
	xQ/srZP/RINNgd11xZMrr9Z90Bs37Wf7oViKUDoDKTJ1w6tgbe+XQq8yFHva87qDVvYpnqsVe9naE
	0Fn39F5mpnU9Hj/LMcEo/G669UK6OKpCxWQW6mD/Xjv7QGef7Tb5TvV/BIuqb55UFseXR6Q6kM+je
	Kd1r3hzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLN9-0003eO-Jr; Wed, 06 Nov 2019 13:29:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLMq-0003Zz-Bu
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 13:29:02 +0000
Received: by mail-pf1-x442.google.com with SMTP id p26so18875288pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 05:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=2JC2BSAON2aTYfWnY286zBqdcBgF1dUkhFpgqH52P8A=;
 b=GmREb2gAFzVBw1JzE2epBfRKDBD9/8BHb4WsdWVr5lOtzpidmIw5GF3ZoJMBmiR2Lc
 hkiJAEHW0blLAPRX292U+12+AsV/FjNwUbuecXH9XavsxZR5ZGdmfy8qUOiga8JBaCHQ
 rCdQcLyLGFupMzXBlQpqtMxOpCb8qylIQELk0s8wrkVmGkfF79umn2K6WDk4xLVOpiLI
 5RJyH9RUJzoadMkubpIwpy0T4PfwtaRawxNZF/W2TAMXRAOFzifYXQJu6tRRIoAW2IM2
 ZhYtAHd6FSX09lWSsG6PADFFgZ4VKpmYAIPfmwW7hzVEJ1wgNQYi8uk7j2YsIzi3VNI/
 dNYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=2JC2BSAON2aTYfWnY286zBqdcBgF1dUkhFpgqH52P8A=;
 b=EOu4cst/AkZpcbOEamKGCQR6g4Nx/vR2Y8pcjllG7+Wc5IFtu5Nv26urrMOYP24dSk
 ChPzrpMeElSrGAVsfv+8jt+Sx/iOc9oW2R5xeUVisDpjqDLvcwWzGGC9ct2Ipza4DXWO
 iyaJk4GYJts33Qqmm1SvRjd9x5ykDiKptCwZBAIt7/oLO1LPRFyxzdAiIfdR9HJxA+ir
 6msZFdBZPGhjjXdSC0C05gMrwPDi0R3y2MsqNM+pW6kRMZC34rKx7QTzlLIrJQ/JR58y
 CvY38XlqjXSqheSuF5YOqucddXvw5BahdljpLFlSsYfmz3WiXB0Fq0Ur9vmOvhgVpUMd
 kXfQ==
X-Gm-Message-State: APjAAAXrDYx5Wa6tgRJf4D/n5htrV4Y5wJeewlWANQ5Xfz3XC8IIPm4z
 biu+yUFmIFBX3dD6HnJyEYnFcA==
X-Google-Smtp-Source: APXvYqzT7yY171Uj3lkOCncUrwz2j9jISfZ79+XTPrykw/o8bUa0kJNh8nso8pz12NOQBzd7gSDYaw==
X-Received: by 2002:aa7:9192:: with SMTP id x18mr3340660pfa.229.1573046939554; 
 Wed, 06 Nov 2019 05:28:59 -0800 (PST)
Received: from localhost ([49.248.202.230])
 by smtp.gmail.com with ESMTPSA id q8sm20785909pgg.15.2019.11.06.05.28.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 06 Nov 2019 05:28:59 -0800 (PST)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, edubezval@gmail.com,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>, Javi Merino <javi.merino@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jun Nie <jun.nie@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Zhang Rui <rui.zhang@intel.com>
Subject: [PATCH 06/11] thermal: mediatek: Appease the kernel-doc deity
Date: Wed,  6 Nov 2019 18:58:22 +0530
Message-Id: <2961e4ac4b32ea7db8b5f6916751a5c02ee85960.1573046440.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1573046440.git.amit.kucheria@linaro.org>
References: <cover.1573046440.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1573046440.git.amit.kucheria@linaro.org>
References: <cover.1573046440.git.amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_052900_440098_2FE7EFFB 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [49.248.202.230 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace a comment starting with /** by simply /* to avoid having it
interpreted as a kernel-doc comment. Describe missing function
parameters where needed.

Fixes up the following warnings when compiled with make W=1:

linux.git/drivers/thermal/mtk_thermal.c:374: warning: cannot understand
function prototype: 'const struct mtk_thermal_data mt8173_thermal_data =
'
linux.git/drivers/thermal/mtk_thermal.c:413: warning: cannot understand
function prototype: 'const struct mtk_thermal_data mt2701_thermal_data =
'
linux.git/drivers/thermal/mtk_thermal.c:443: warning: cannot understand
function prototype: 'const struct mtk_thermal_data mt2712_thermal_data =
'
linux.git/drivers/thermal/mtk_thermal.c:499: warning: cannot understand
function prototype: 'const struct mtk_thermal_data mt8183_thermal_data =
'
linux.git/drivers/thermal/mtk_thermal.c:529: warning: Function parameter
or member 'sensno' not described in 'raw_to_mcelsius'

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 drivers/thermal/mtk_thermal.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
index acf4854cbb8b8..76e30603d4d58 100644
--- a/drivers/thermal/mtk_thermal.c
+++ b/drivers/thermal/mtk_thermal.c
@@ -358,7 +358,7 @@ static const int mt7622_mux_values[MT7622_NUM_SENSORS] = { 0, };
 static const int mt7622_vts_index[MT7622_NUM_SENSORS] = { VTS1 };
 static const int mt7622_tc_offset[MT7622_NUM_CONTROLLER] = { 0x0, };
 
-/**
+/*
  * The MT8173 thermal controller has four banks. Each bank can read up to
  * four temperature sensors simultaneously. The MT8173 has a total of 5
  * temperature sensors. We use each bank to measure a certain area of the
@@ -400,7 +400,7 @@ static const struct mtk_thermal_data mt8173_thermal_data = {
 	.sensor_mux_values = mt8173_mux_values,
 };
 
-/**
+/*
  * The MT2701 thermal controller has one bank, which can read up to
  * three temperature sensors simultaneously. The MT2701 has a total of 3
  * temperature sensors.
@@ -430,7 +430,7 @@ static const struct mtk_thermal_data mt2701_thermal_data = {
 	.sensor_mux_values = mt2701_mux_values,
 };
 
-/**
+/*
  * The MT2712 thermal controller has one bank, which can read up to
  * four temperature sensors simultaneously. The MT2712 has a total of 4
  * temperature sensors.
@@ -484,7 +484,7 @@ static const struct mtk_thermal_data mt7622_thermal_data = {
 	.sensor_mux_values = mt7622_mux_values,
 };
 
-/**
+/*
  * The MT8183 thermal controller has one bank for the current SW framework.
  * The MT8183 has a total of 6 temperature sensors.
  * There are two thermal controller to control the six sensor.
@@ -495,7 +495,6 @@ static const struct mtk_thermal_data mt7622_thermal_data = {
  * data, and this indeed needs the temperatures of the individual banks
  * for making better decisions.
  */
-
 static const struct mtk_thermal_data mt8183_thermal_data = {
 	.auxadc_channel = MT8183_TEMP_AUXADC_CHANNEL,
 	.num_banks = MT8183_NUM_SENSORS_PER_ZONE,
@@ -519,7 +518,8 @@ static const struct mtk_thermal_data mt8183_thermal_data = {
 
 /**
  * raw_to_mcelsius - convert a raw ADC value to mcelsius
- * @mt:		The thermal controller
+ * @mt:	The thermal controller
+ * @sensno:	sensor number
  * @raw:	raw ADC value
  *
  * This converts the raw ADC value to mcelsius using the SoC specific
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
