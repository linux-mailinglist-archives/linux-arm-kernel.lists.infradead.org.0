Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 509AD11BDF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 21:32:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Mh4Cct/c1sx10UmSy5d0FCItaRvvXWHAR+JBpSayZ6c=; b=MDOyvW6W2zB+m1WcqlnfaeuL6B
	9UV5jKZlfXDUmLc/A+VNsN+rd+2LsSI7O1tmH/Zk086ifrWbxNcpIr5moPE++ugt6UCBb4/gM2cdq
	30FObNr3sgWXvWiXVRsyD1dCH2rug/J4C094aXfwCkjOzTDZ9tDdXFzQxDJye2QGW49C+jXDFy6ae
	9cet5v0m4mRb77M4KRwHeGR4/aUwWVjG2EES/SCoDMLlVL0B5884jDEsyXdTcIrICjwrCEc8wDRbY
	JfdcNk/ZqICnTuybce9YClMPgNhMchIi04CmJBrEclWPDYIV53frpA6qdb688CE8jt6xXwKRdELGx
	Cnv0/IAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if8ep-0008Sk-BC; Wed, 11 Dec 2019 20:32:27 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if8eM-0008Es-EI
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 20:31:59 +0000
Received: by mail-pg1-x542.google.com with SMTP id 6so11313556pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 12:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bUI3dxAJmLbR2verpuQbHht/NnNgFc4Xm8emQetKLeY=;
 b=ru6rpApkxWfLsDVpgRwLBm4hAo2TQvM8KsODhFgI3HwZBxEcNZ5tUFLlmKttn5uwFM
 2BnIPYTi5ylFrBcB8s09BZOmdUoYAJ7SQzUX7QqXg/iBpnqnloIPazKEXMdqVc4bujlN
 Kq08lbQl1wloiSnT8//5Ag0zpIfIBzeqVEgLpz1nNeQTUIRLw3+D+S+CKMEDBPezdokE
 wXLoS6KpgtIHgCaFUTTsBCmQ91mSWrWmkDuIQZR733e6sYdfmrrN10bGqqEW7+OAdsJ1
 ZzuGjMwRMEJfX9r8syaV0xN1yskgFxDejnGZ80dv7+agP88A7BjgumoMFyKNc9Fi3nvt
 pH9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bUI3dxAJmLbR2verpuQbHht/NnNgFc4Xm8emQetKLeY=;
 b=mXyuRsaqhzFnm7a+/8T3D7riVZr8/ZFKwAd/9597X+D8X4L2I0daSSF+S2X0KGmsIo
 XsLqYFRLPsrxXUUiLkQSVaHEYbY7Y0zs1mS5sEvvQWdvXJbIyMnnWOxaGAUb7m/lhZ+U
 B+GyKDmAYXdhbMNiWB9R5s3dsRYSaa8KeUwhqhz/pciruA2EjDDgXU/ErYRCMu6neBTZ
 BBimY1GRFDEoXXg+QhVaVHM+9n+vih6hTFHk7GkeM2EagG0+QmEv1Znl+IPP+6H3TxFA
 +soNxUeOw6sOz2HUKiyRElQ/xyzIGh+ImwlXGuPy26IzhAxbm9kOxDUMs0nR87HIm4fn
 r14A==
X-Gm-Message-State: APjAAAWcHoLY1tzUw5ljQNi4/XyPlfhV/20GjBMMFM1UkrKPWqIOcH7p
 Se/sDB6PKQkNGp7WMk7ybFYzZDXR
X-Google-Smtp-Source: APXvYqyQ8PN4Yo0D5f0TxdtgaqutssAvFXy5lB6UXK07VypUBLW+9PLuwlCGTEr6LBLosXGwZ9rWLA==
X-Received: by 2002:a63:214e:: with SMTP id s14mr6207807pgm.428.1576096317292; 
 Wed, 11 Dec 2019 12:31:57 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a19sm917570pju.11.2019.12.11.12.31.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 12:31:56 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	daniel.lezcano@linaro.org
Subject: [PATCH v2 1/6] thermal: brcmstb_thermal: Do not use DT coefficients
Date: Wed, 11 Dec 2019 12:31:38 -0800
Message-Id: <20191211203143.2952-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211203143.2952-1-f.fainelli@gmail.com>
References: <20191211203143.2952-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_123158_480579_CD1F83D2 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>
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
 drivers/thermal/broadcom/brcmstb_thermal.c | 31 +++++++---------------
 1 file changed, 9 insertions(+), 22 deletions(-)

diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 5825ac581f56..680f1a070606 100644
--- a/drivers/thermal/broadcom/brcmstb_thermal.c
+++ b/drivers/thermal/broadcom/brcmstb_thermal.c
@@ -49,7 +49,7 @@
 #define AVS_TMON_TP_TEST_ENABLE		0x20
 
 /* Default coefficients */
-#define AVS_TMON_TEMP_SLOPE		-487
+#define AVS_TMON_TEMP_SLOPE		487
 #define AVS_TMON_TEMP_OFFSET		410040
 
 /* HW related temperature constants */
@@ -108,23 +108,12 @@ struct brcmstb_thermal_priv {
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
+	return (AVS_TMON_TEMP_OFFSET -
+		(int)((code & AVS_TMON_TEMP_MAX) * AVS_TMON_TEMP_SLOPE));
 }
 
 /*
@@ -136,20 +125,18 @@ static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
 static inline u32 avs_tmon_temp_to_code(struct thermal_zone_device *tz,
 					int temp, bool low)
 {
-	int slope, offset;
-
 	if (temp < AVS_TMON_TEMP_MIN)
-		return AVS_TMON_TEMP_MAX; /* Maximum code value */
-
-	avs_tmon_get_coeffs(tz, &slope, &offset);
+		return AVS_TMON_TEMP_MAX;	/* Maximum code value */
 
-	if (temp >= offset)
+	if (temp >= AVS_TMON_TEMP_OFFSET)
 		return 0;	/* Minimum code value */
 
 	if (low)
-		return (u32)(DIV_ROUND_UP(offset - temp, abs(slope)));
+		return (u32)(DIV_ROUND_UP(AVS_TMON_TEMP_OFFSET - temp,
+					  AVS_TMON_TEMP_SLOPE));
 	else
-		return (u32)((offset - temp) / abs(slope));
+		return (u32)((AVS_TMON_TEMP_OFFSET - temp) /
+			      AVS_TMON_TEMP_SLOPE);
 }
 
 static int brcmstb_get_temp(void *data, int *temp)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
