Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB895EA33B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 19:22:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9Fc/G2aFrQJ/6O5fXzJHdz3d+36asdnjHalfMDo03eA=; b=djHY9QJ06S3TwE+pSdtIyVhKAl
	JLflQh7DloQnmUeelckF3OIWj6fMiT+VrTIdJH1ufeFSTu//1N0Itwu6jzMcFWW5jDA+MeZsOXV85
	ZFdbicvlxfx3mK/8Mb3h7GGvnKxkVtfp+MG4V5ilMTNTbI/gI0zcAVlPvOQWHQ1nHb7rM1ziYwYf+
	WeLkabiftH9jUL7qv29zoncIAQGwEJcELcukL8npAqvvMDN1Dp0WAdh3m4qDFEfwQre/VOvtcw3LP
	RXkgZrz2pbJBicQnKtWKexap0DUHFE9rOhdLOyUelJk/ukRkGh/c/bK70iAjZydwUlaHYxgieT7O8
	GLQWAMrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPsbw-0004BH-2v; Wed, 30 Oct 2019 18:22:24 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPsbV-0003xf-Uo
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 18:21:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id j22so2024999pgh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 11:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pa+oF3hZUeqW4RFci5wsFzOB4YnQ5ce9tEfET98r1hc=;
 b=U6u7pFKLSGa+JRMgqp9kblGervY+IyWiO4wkunKZZffv48BI4ukJQ0upxCU7W7V0vS
 rUEBcdhd1VLbIROucxSZkiAYojKyNSaHvFhzi8C+kM1n1yZEzD7wvq/gUdwdxZzF9HEz
 rZyyiky/nP14K16AaM+Fsn37480Gehzpy5UWbnHUCTzx59BcWb5eo9BG0obS8Uda52ye
 wDUjb3ICAFs/9WtQh3wSF75fq79usIy807BBD26bbPNi/jjpi8lbc0E8c6mK70f3IcGH
 JdZ92gch8Q0y6UKW3K0mZO3ofEFxDeeZn/KGOd/IMCfcHr4gdWPbeMX9AKcrmEmHgPgm
 IZVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pa+oF3hZUeqW4RFci5wsFzOB4YnQ5ce9tEfET98r1hc=;
 b=pjB7RZjdfF8blHFApjjgPH+MYQ1FUrNjq+f96LMwOZxcbnWIIIPBUNUtgvHzZ/m5Gg
 A0LIOOI40WUiw/UL8DUUgrayooZjr/G467dSj97pqFVfOaJyeJFsfhhyGz9hZrBGIXfc
 zXj+Juq2x/ky+caHeMnGh/Dp0zmfcklhOT9RKyeFbuF3OKET7ELuk/RG62athp28jN0i
 eujHy4vdEduQxkgX0Gfhzl/xGAX4jLsEeeyCq4qaWb3muyN4F4jcVBV4uig6Hgfr/TL5
 7nW2Jy+XT7Xqd9CUo5A+QWiKdrxP2thaNtBpS6bBcoTx9pJIny+luBIIt4bUCcjcjrRs
 pPLA==
X-Gm-Message-State: APjAAAXUW0jrQidwgs/pUrTvd+V57y0RdOff+Anc85l/rt2M4dlEXZHa
 JRgQp/8xa1Vb58fPW+CHxJ8=
X-Google-Smtp-Source: APXvYqxSBks/kNKPqH1UTcXtmYr83X3kp7jWIIIyY0d24Kn7LnwX7gSlsY6ZvmhmTYMDEBWihXEkKw==
X-Received: by 2002:a17:90a:a00e:: with SMTP id
 q14mr795480pjp.132.1572459717112; 
 Wed, 30 Oct 2019 11:21:57 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z5sm521637pgi.19.2019.10.30.11.21.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 11:21:56 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] thermal: brcmstb_thermal: Prepare to support a different
 process
Date: Wed, 30 Oct 2019 11:21:28 -0700
Message-Id: <20191030182132.25763-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030182132.25763-1-f.fainelli@gmail.com>
References: <20191030182132.25763-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_112158_023297_708DC9EC 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

The driver is currently assuming that it is operating with a 28nm
process chip, which has a specific formula to convert temperature to a
code and vice versa. Update the code to support providing two key
values: offset and multiplier to derive the correct formulas.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/thermal/broadcom/brcmstb_thermal.c | 49 +++++++++++++++++-----
 1 file changed, 38 insertions(+), 11 deletions(-)

diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 42482af0422e..2ad4eeb79f9c 100644
--- a/drivers/thermal/broadcom/brcmstb_thermal.c
+++ b/drivers/thermal/broadcom/brcmstb_thermal.c
@@ -93,17 +93,27 @@ static struct avs_tmon_trip avs_tmon_trips[] = {
 	},
 };
 
+struct brcmstb_thermal_params {
+	unsigned int offset;
+	unsigned int mult;
+};
+
 struct brcmstb_thermal_priv {
 	void __iomem *tmon_base;
 	struct device *dev;
 	struct thermal_zone_device *thermal;
+	/* Process specific thermal parameters used for calculations */
+	struct brcmstb_thermal_params temp_params;
 };
 
 /* Convert a HW code to a temperature reading (millidegree celsius) */
-static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
+static inline int avs_tmon_code_to_temp(struct brcmstb_thermal_priv *priv,
 					u32 code)
 {
-	return (410040 - (int)((code & 0x3FF) * 487));
+	int offset = priv->temp_params.offset;
+	int mult = priv->temp_params.mult;
+
+	return (offset - (int)((code & 0x3FF) * mult));
 }
 
 /*
@@ -112,19 +122,22 @@ static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
  * @temp: temperature to convert
  * @low: if true, round toward the low side
  */
-static inline u32 avs_tmon_temp_to_code(struct thermal_zone_device *tz,
+static inline u32 avs_tmon_temp_to_code(struct brcmstb_thermal_priv *priv,
 					int temp, bool low)
 {
+	int offset = priv->temp_params.offset;
+	int mult = priv->temp_params.mult;
+
 	if (temp < -88161)
 		return 0x3FF;	/* Maximum code value */
 
-	if (temp >= 410040)
+	if (temp >= offset)
 		return 0;	/* Minimum code value */
 
 	if (low)
-		return (u32)(DIV_ROUND_UP(410040 - temp, 487));
+		return (u32)(DIV_ROUND_UP(offset - temp, mult));
 	else
-		return (u32)((410040 - temp) / 487);
+		return (u32)((offset - temp) / mult);
 }
 
 static int brcmstb_get_temp(void *data, int *temp)
@@ -142,7 +155,7 @@ static int brcmstb_get_temp(void *data, int *temp)
 
 	val = (val & AVS_TMON_STATUS_data_msk) >> AVS_TMON_STATUS_data_shift;
 
-	t = avs_tmon_code_to_temp(priv->thermal, val);
+	t = avs_tmon_code_to_temp(priv, val);
 	if (t < 0)
 		*temp = 0;
 	else
@@ -176,7 +189,7 @@ static int avs_tmon_get_trip_temp(struct brcmstb_thermal_priv *priv,
 	val &= trip->reg_msk;
 	val >>= trip->reg_shift;
 
-	return avs_tmon_code_to_temp(priv->thermal, val);
+	return avs_tmon_code_to_temp(priv, val);
 }
 
 static void avs_tmon_set_trip_temp(struct brcmstb_thermal_priv *priv,
@@ -189,7 +202,7 @@ static void avs_tmon_set_trip_temp(struct brcmstb_thermal_priv *priv,
 	dev_dbg(priv->dev, "set temp %d to %d\n", type, temp);
 
 	/* round toward low temp for the low interrupt */
-	val = avs_tmon_temp_to_code(priv->thermal, temp,
+	val = avs_tmon_temp_to_code(priv, temp,
 				    type == TMON_TRIP_TYPE_LOW);
 
 	val <<= trip->reg_shift;
@@ -206,7 +219,7 @@ static int avs_tmon_get_intr_temp(struct brcmstb_thermal_priv *priv)
 	u32 val;
 
 	val = __raw_readl(priv->tmon_base + AVS_TMON_TEMP_INT_CODE);
-	return avs_tmon_code_to_temp(priv->thermal, val);
+	return avs_tmon_code_to_temp(priv, val);
 }
 
 static irqreturn_t brcmstb_tmon_irq_thread(int irq, void *data)
@@ -270,19 +283,32 @@ static const struct thermal_zone_of_device_ops of_ops = {
 	.set_trips	= brcmstb_set_trips,
 };
 
+static const struct brcmstb_thermal_params brcmstb_28nm_params = {
+	.offset	= 410040,
+	.mult	= 487,
+};
+
 static const struct of_device_id brcmstb_thermal_id_table[] = {
-	{ .compatible = "brcm,avs-tmon" },
+	{ .compatible = "brcm,avs-tmon", .data = &brcmstb_28nm_params },
 	{},
 };
 MODULE_DEVICE_TABLE(of, brcmstb_thermal_id_table);
 
 static int brcmstb_thermal_probe(struct platform_device *pdev)
 {
+	const struct brcmstb_thermal_params *params;
+	const struct of_device_id *of_id = NULL;
 	struct thermal_zone_device *thermal;
 	struct brcmstb_thermal_priv *priv;
 	struct resource *res;
 	int irq, ret;
 
+	of_id = of_match_node(brcmstb_thermal_id_table, pdev->dev.of_node);
+	if (!of_id || !of_id->data)
+		return -EINVAL;
+
+	params = of_id->data;
+
 	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
@@ -292,6 +318,7 @@ static int brcmstb_thermal_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->tmon_base))
 		return PTR_ERR(priv->tmon_base);
 
+	memcpy(&priv->temp_params, params, sizeof(priv->temp_params));
 	priv->dev = &pdev->dev;
 	platform_set_drvdata(pdev, priv);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
