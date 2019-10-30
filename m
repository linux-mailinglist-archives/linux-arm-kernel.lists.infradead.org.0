Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729DBEA32E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 19:22:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H1sECeZJNf46QJsti6GwCj+7nVR0fDQS8BlD+eY6quU=; b=iaWV16CHju94OW0A365qaerGie
	p/k4hsF+2CpnXyY2Rgbh/Dtu41FXpDSuUHfsh+dZeVAEejGoiLTd+7vnTZr/Af2+zfCINsq0zVDBW
	SLzUNlhNvPjg0MSlBUTq9ECT+83qZaxmEE0ux/kM/S4+IRjSB8KfZcx3ODYyHhf/WGcsWJtjxGyMX
	LalU99HDP89Iv1hZUJW1LUIXxIojcgdXUqfGpZEn7qRRMr54TA/6PciSQEzQCVdKTJmZxvbO1Q17Q
	nARLKnV4Hzs+thPZg/fRF2A5DhUpKFbx2PqUmqEVcJPX+q32be4zugGskzEOeiq7cyAv0htbo4m2k
	SexRKXQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPsbf-0003xy-4j; Wed, 30 Oct 2019 18:22:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPsbP-0003pj-Oq
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 18:21:53 +0000
Received: by mail-pg1-x544.google.com with SMTP id c23so1331080pgn.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 11:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=I6P5H/5uV7JacgxYkaFeE2k/FEa8xgvahkSEI1tPpC4=;
 b=AJmJh+mWDb0JsKw8h0qqyPLlnyvhhllDzfwONbL/lWjh03d2I/+24d6dCsaPEnkWel
 6n8KRJYnHfGrE+9DyTj7Y/Za63OHx7Pg9gg3rx7JlrAUCmLQSixoYvnXB5Ksv5j1zgEM
 /GgskK1TI4aXZs/B79FXMWWANtjAxwGekTHXlSmt8PamTkLU/2UCKeI2X+wZVRluBsnT
 oez67NfdmkJ6UHYoDiI/EJsRALrPV/7asy6s+OPN/9+4NsqO8KdseLSjYjfPFPH4rBhd
 KNqmoHJZZ6DxhSN9B4z+3x0jjqLDEv0X9Hs162pRRx51bc0SM3+UjmMaNbM5h4kRLF1J
 KI9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=I6P5H/5uV7JacgxYkaFeE2k/FEa8xgvahkSEI1tPpC4=;
 b=VyBVHz2iP8MXcVzbOqGePmpNjFbfxrSRCWTyjEP9CUfui1+gA/fRwUxdbPCCNbbWXh
 ql0ih5yMI/aLB1/x9wQL668mElXhKgcrqKJjG3lTfgmiLCXCwRqADEQnPmSIowc+PhQU
 PbLhlExiYHjfkX4kdliq9rL7bBDwG4eO3SyoAAlBvuI5wGzlGFxrSjbe86oLkb9/8qur
 2+Yfi8dk2JA5o56/V69QoT3YKHFkGh7DZPzmHj6abWZtSi6fzPI+wAgZ/59OllC1xI/t
 4V3Lw45T5PwswrlzcIkZCcUBaeVQnNY6NbigZSZRLtOpn23d7jmOcl3DpB23n9XYkKzL
 U8gw==
X-Gm-Message-State: APjAAAW2AjfmZN22SCmbeC2N/Zf4iGJ7+I72f3qCBAv9YXnMbeEjFJK0
 QEbF/gJluRm1YmMVLaqLg8s=
X-Google-Smtp-Source: APXvYqw6qm/6KxOPBYJT/5NALIlwWu5lWetRg4AhEbAVKFFHyKHBtdirXo9dY9wHdGsKgzRFzc/UJA==
X-Received: by 2002:a62:4d04:: with SMTP id a4mr764111pfb.60.1572459710934;
 Wed, 30 Oct 2019 11:21:50 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z5sm521637pgi.19.2019.10.30.11.21.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 11:21:50 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/6] thermal: brcmstb_thermal: Do not use DT coefficients
Date: Wed, 30 Oct 2019 11:21:27 -0700
Message-Id: <20191030182132.25763-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030182132.25763-1-f.fainelli@gmail.com>
References: <20191030182132.25763-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_112151_840469_D25360AA 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At the time the brcmstb_thermal driver and its binding were merged, the
DT binding did not make the coefficients properties a mandatory one,
therefore all users of the brcmstb_thermal driver out there have a non
functional implementation with zero coefficients. Even if these
properties were provided, the formula used for computation is incorrect.

The coefficients are entirely process specific (right now, only 28nm is
supported) and not board or SoC specific, it is therefore appropriate to
hard code them in the driver given the compatibility string we are
probed with which has to be updated whenever a new process is
introduced.

We remove the existing coefficients definition since subsequent patches
are going to add support for a new process and will introduce new
coefficients as well.

Fixes: 9e03cf1b2dd5 ("thermal: add brcmstb AVS TMON driver")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/thermal/broadcom/brcmstb_thermal.c | 37 ++++------------------
 1 file changed, 6 insertions(+), 31 deletions(-)

diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 5825ac581f56..42482af0422e 100644
--- a/drivers/thermal/broadcom/brcmstb_thermal.c
+++ b/drivers/thermal/broadcom/brcmstb_thermal.c
@@ -48,15 +48,6 @@
 #define AVS_TMON_TEMP_INT_CODE		0x1c
 #define AVS_TMON_TP_TEST_ENABLE		0x20
 
-/* Default coefficients */
-#define AVS_TMON_TEMP_SLOPE		-487
-#define AVS_TMON_TEMP_OFFSET		410040
-
-/* HW related temperature constants */
-#define AVS_TMON_TEMP_MAX		0x3ff
-#define AVS_TMON_TEMP_MIN		-88161
-#define AVS_TMON_TEMP_MASK		AVS_TMON_TEMP_MAX
-
 enum avs_tmon_trip_type {
 	TMON_TRIP_TYPE_LOW = 0,
 	TMON_TRIP_TYPE_HIGH,
@@ -108,23 +99,11 @@ struct brcmstb_thermal_priv {
 	struct thermal_zone_device *thermal;
 };
 
-static void avs_tmon_get_coeffs(struct thermal_zone_device *tz, int *slope,
-				int *offset)
-{
-	*slope = thermal_zone_get_slope(tz);
-	*offset = thermal_zone_get_offset(tz);
-}
-
 /* Convert a HW code to a temperature reading (millidegree celsius) */
 static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
 					u32 code)
 {
-	const int val = code & AVS_TMON_TEMP_MASK;
-	int slope, offset;
-
-	avs_tmon_get_coeffs(tz, &slope, &offset);
-
-	return slope * val + offset;
+	return (410040 - (int)((code & 0x3FF) * 487));
 }
 
 /*
@@ -136,20 +115,16 @@ static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
 static inline u32 avs_tmon_temp_to_code(struct thermal_zone_device *tz,
 					int temp, bool low)
 {
-	int slope, offset;
-
-	if (temp < AVS_TMON_TEMP_MIN)
-		return AVS_TMON_TEMP_MAX; /* Maximum code value */
-
-	avs_tmon_get_coeffs(tz, &slope, &offset);
+	if (temp < -88161)
+		return 0x3FF;	/* Maximum code value */
 
-	if (temp >= offset)
+	if (temp >= 410040)
 		return 0;	/* Minimum code value */
 
 	if (low)
-		return (u32)(DIV_ROUND_UP(offset - temp, abs(slope)));
+		return (u32)(DIV_ROUND_UP(410040 - temp, 487));
 	else
-		return (u32)((offset - temp) / abs(slope));
+		return (u32)((410040 - temp) / 487);
 }
 
 static int brcmstb_get_temp(void *data, int *temp)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
