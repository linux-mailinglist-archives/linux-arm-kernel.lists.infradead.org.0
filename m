Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8083A13B2A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 20:06:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Mh4Cct/c1sx10UmSy5d0FCItaRvvXWHAR+JBpSayZ6c=; b=MJktGJ0KP6fpMLGoQtqmFgqpmB
	W6DFHomryo3sYM0E6XELzqSoK6KydhqEEmYawNTrKGtq1n6B9rB60F7ox1t3P2zbr9H9Le/13Af3u
	9Wy9ILfXPSYLWoUajPIEWPd6Tf0BNCRmcJLwL3DJWVb7YoHPlNTidYe2KK71xCqbHGobMpkQoIDS+
	2BLS3XMe6ZCGJ7UMLv9ruiFcK6uwk2wEHuDy6TWTusPhbjlGYA496xlqrSL47umSXNSHwc4mHnnTV
	plLsAlndxXQVb+i7LctIMRWmdRRMvLLw+VQmgi7NGHWYpF0hvWc0vePk2mQB74dat1fruLgHWTXLR
	3eTpmTlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irRWP-0005MF-Mc; Tue, 14 Jan 2020 19:06:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irRWC-0005Jg-Re
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 19:06:30 +0000
Received: by mail-pl1-x641.google.com with SMTP id p27so5589390pli.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 11:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bUI3dxAJmLbR2verpuQbHht/NnNgFc4Xm8emQetKLeY=;
 b=H9zkXg6jxTLY3Zf994WcfVL5r28Y6dR2Q/ybE2c3Pi4qGR4BhL9EQpP7HqLnUNzOYC
 FLZAhk3XvPUAy9TUjqZvHJH2n55NqnaycqLyKThGj7c6im+6KTrl0Z6OG3xIRZPfrVKn
 nx84xIZWKJQeOS3ysCePa31x+8S3tqikkbkAksyShUdp/TnewAhU74/OfhbPbWXYd3a0
 vfLOeFtIrTCcU1CaxH9/s30yHznb3jZQOlv4BNqipoJ/R7SasP5dZxbsluPD9yzZjH9f
 cl/WuLgExWG9lJf1Jpf4pTm4ZsIZjpemmYa2Bi/9No866yj+TzOSHlQHe2LVMTmU7Uif
 5ySg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bUI3dxAJmLbR2verpuQbHht/NnNgFc4Xm8emQetKLeY=;
 b=rZDCKzCEKX2NAT/jQw7lPIgXRvBCSro6+GJyBS7jmVuHem9nwlsMM2/A+S2pbCmZ/b
 JM37LaUc+e3yqtTY9LQ31i5APcVMQwM8ZWlksNfS3W5GBbBVx0yq1DJABD1afY3HfECp
 m+bluAFq/8mHcCMNBKFBWRylmygoMPcVA+z/QxU5B1xrGzSgKMD3hGgHKNaN9CmTWFI6
 mTbqtOHi5xfW6DFiazeWZLMsbxtnzDrXwCWkrgMneIVM7ue4IHcuwYbpQ737BefWDW95
 l2G+G6X47ugUqMc/gOhKw/sQGw7v1WAaECKB7H3qIXGjYqAJb0RKKXCwttmRSirTyV6I
 W4Ig==
X-Gm-Message-State: APjAAAURg61GqxFFmn3gTxsl3uWQEhHn6xF+7UupaF7LwabI8V+EezNP
 dRPiQ0NImyPIcvU/ncrXf8U=
X-Google-Smtp-Source: APXvYqzaeyStl5zxy5XUEqSmclev0JfVwR009tJs/43CxE4oEzpicozRzjtH2tejfJTVfAa+Osvy/w==
X-Received: by 2002:a17:90b:30c8:: with SMTP id
 hi8mr30814632pjb.73.1579028784213; 
 Tue, 14 Jan 2020 11:06:24 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a195sm19284528pfa.120.2020.01.14.11.06.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 11:06:23 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 1/6] thermal: brcmstb_thermal: Do not use DT coefficients
Date: Tue, 14 Jan 2020 11:06:02 -0800
Message-Id: <20200114190607.29339-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200114190607.29339-1-f.fainelli@gmail.com>
References: <20200114190607.29339-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_110624_894482_94F1C3A9 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
