Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA4313B2B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 20:07:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=adyGpZ7GKA+nZCWe0JA0J/zZInLBv9d1ujwll8+Iilc=; b=abMu/LqNthPD8cWrE+OIzNHlM4
	21oZ0JpAfmWZ0UIRx1d/juTOC8vuKNDzaWo0mO8jlkEC9rSvW/3L5MIOZzZDEwXDm/KXlSIwyyCGV
	b8/ZdnN6G7vwUE/0p8S2Vpfu5vpfktmvkoZj8WEj5Iruvl57gFVbeKvdTHakejxhjvdaUQD3EMh7D
	Q2tI1iwCyzrEZAGsKoieV70+igrInLBQx40+V/6HCmkGsDzPfroSbssmN0VVdu7gFPdnuBUT9wDfi
	/4b4/6DAvTZJ8ePZ3a7bDy6sSydX5GwdXVquaqLTbaar+cxi3FKGzXvNd0D5U76qx5+x/EUdpP3b1
	7a5B+3GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irRWm-0005Vq-3p; Tue, 14 Jan 2020 19:07:00 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irRWD-0005Jx-Ql
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 19:06:31 +0000
Received: by mail-pf1-x441.google.com with SMTP id p14so7027001pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 11:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Bf0QfjjCsEX6qf2wgGfocQt3AiGtxcihlNrld2yiLRI=;
 b=FSwE2eZhaM7nJ7cTgrrBAV6iKrrO/hGwchd/X7aWSYE2ukOUFyVX655ZvOD15Z+Hmp
 T91KugPoI8ZJ/ViKtd5gHA74xwYojhutrSgCUx31ZArAOd37a/2iwEw+blOhxOg1+RIZ
 pSAuHklHQku2gfAbnAN0TomOhoMfbK26PxKtLk0bDEVqkGXc2SS7CKiD2h6NQDC6XXk1
 C4FsSEgU3pq9bMfDV0Ii4eHpAVI03rm/xMNWEqj8jLLtZ5eNPOOw3pLWvL/elZ1OSic1
 cz5Br4dWgqteE8oBdldD2wWlfJzsS1IiEihJfp2cQUaOizLplbRvaGSJPeo4AE+/e9Oo
 M5wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Bf0QfjjCsEX6qf2wgGfocQt3AiGtxcihlNrld2yiLRI=;
 b=cF3fGy7idqdaZJZY5cVdt0MYg4Co+mbpiv2Fl73ADb5hmx8TmFPNeY94pMjH6XsghC
 ZYlrZ4wFMabe8IIzqLO67AvzVx5pvjw9Q0QTW/vKGVOzCbz3KMskYoXhJf30lQkvNqLf
 jfiyvII3ZGgqrhZc2Tcqg0biGti0xJCrre+hovz7Eghx3YBJIKCKi7xQBgZ0TVBkfRO0
 QVETv2aC7ur3QEYPnq6L6fAn6uMb7vaUX9hxUTtHiXa6XREe7WeKEZ3iAdPWSQyGT2AO
 rBB+y6snSp4IQOKNsA44dFo3ZJkYaXQRB/fHX+OjRCkZHdcKufwPNJvsIQ58eqC3bHdV
 T1Jw==
X-Gm-Message-State: APjAAAX0wnZBVQVTq9ZhPr6cLBzsf/o4Kvq3odGJXBbUwWQXrF3Mrx5L
 UVjNyXkoYz/Julg27hl6Gm4=
X-Google-Smtp-Source: APXvYqynKjbTkRhlt7ZhyxsnDVhelk0OAduVnKYo4JAVKCKxwfB13+aOcP4ENHL5soycSATHTCi7Aw==
X-Received: by 2002:a63:d00f:: with SMTP id z15mr28363045pgf.143.1579028785296; 
 Tue, 14 Jan 2020 11:06:25 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a195sm19284528pfa.120.2020.01.14.11.06.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 11:06:24 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 2/6] thermal: brcmstb_thermal: Prepare to support a
 different process
Date: Tue, 14 Jan 2020 11:06:03 -0800
Message-Id: <20200114190607.29339-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200114190607.29339-1-f.fainelli@gmail.com>
References: <20200114190607.29339-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_110625_863416_A5AC8686 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

The driver is currently assuming that it is operating with a 28nm
process chip, which has a specific formula to convert temperature to a
code and vice versa. Update the code to support providing two key
values: offset and multiplier to derive the correct formulas.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/thermal/broadcom/brcmstb_thermal.c | 47 +++++++++++++++-------
 1 file changed, 33 insertions(+), 14 deletions(-)

diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 680f1a070606..2d555e7b884a 100644
--- a/drivers/thermal/broadcom/brcmstb_thermal.c
+++ b/drivers/thermal/broadcom/brcmstb_thermal.c
@@ -102,18 +102,27 @@ static struct avs_tmon_trip avs_tmon_trips[] = {
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
+	const struct brcmstb_thermal_params *temp_params;
 };
 
 /* Convert a HW code to a temperature reading (millidegree celsius) */
-static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
+static inline int avs_tmon_code_to_temp(struct brcmstb_thermal_priv *priv,
 					u32 code)
 {
-	return (AVS_TMON_TEMP_OFFSET -
-		(int)((code & AVS_TMON_TEMP_MAX) * AVS_TMON_TEMP_SLOPE));
+	int offset = priv->temp_params->offset;
+	int mult = priv->temp_params->mult;
+
+	return (offset - (int)((code & AVS_TMON_TEMP_MASK) * mult));
 }
 
 /*
@@ -122,21 +131,22 @@ static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
  * @temp: temperature to convert
  * @low: if true, round toward the low side
  */
-static inline u32 avs_tmon_temp_to_code(struct thermal_zone_device *tz,
+static inline u32 avs_tmon_temp_to_code(struct brcmstb_thermal_priv *priv,
 					int temp, bool low)
 {
+	int offset = priv->temp_params->offset;
+	int mult = priv->temp_params->mult;
+
 	if (temp < AVS_TMON_TEMP_MIN)
 		return AVS_TMON_TEMP_MAX;	/* Maximum code value */
 
-	if (temp >= AVS_TMON_TEMP_OFFSET)
+	if (temp >= offset)
 		return 0;	/* Minimum code value */
 
 	if (low)
-		return (u32)(DIV_ROUND_UP(AVS_TMON_TEMP_OFFSET - temp,
-					  AVS_TMON_TEMP_SLOPE));
+		return (u32)(DIV_ROUND_UP(offset - temp, mult));
 	else
-		return (u32)((AVS_TMON_TEMP_OFFSET - temp) /
-			      AVS_TMON_TEMP_SLOPE);
+		return (u32)((offset - temp) / mult);
 }
 
 static int brcmstb_get_temp(void *data, int *temp)
@@ -154,7 +164,7 @@ static int brcmstb_get_temp(void *data, int *temp)
 
 	val = (val & AVS_TMON_STATUS_data_msk) >> AVS_TMON_STATUS_data_shift;
 
-	t = avs_tmon_code_to_temp(priv->thermal, val);
+	t = avs_tmon_code_to_temp(priv, val);
 	if (t < 0)
 		*temp = 0;
 	else
@@ -188,7 +198,7 @@ static int avs_tmon_get_trip_temp(struct brcmstb_thermal_priv *priv,
 	val &= trip->reg_msk;
 	val >>= trip->reg_shift;
 
-	return avs_tmon_code_to_temp(priv->thermal, val);
+	return avs_tmon_code_to_temp(priv, val);
 }
 
 static void avs_tmon_set_trip_temp(struct brcmstb_thermal_priv *priv,
@@ -201,7 +211,7 @@ static void avs_tmon_set_trip_temp(struct brcmstb_thermal_priv *priv,
 	dev_dbg(priv->dev, "set temp %d to %d\n", type, temp);
 
 	/* round toward low temp for the low interrupt */
-	val = avs_tmon_temp_to_code(priv->thermal, temp,
+	val = avs_tmon_temp_to_code(priv, temp,
 				    type == TMON_TRIP_TYPE_LOW);
 
 	val <<= trip->reg_shift;
@@ -218,7 +228,7 @@ static int avs_tmon_get_intr_temp(struct brcmstb_thermal_priv *priv)
 	u32 val;
 
 	val = __raw_readl(priv->tmon_base + AVS_TMON_TEMP_INT_CODE);
-	return avs_tmon_code_to_temp(priv->thermal, val);
+	return avs_tmon_code_to_temp(priv, val);
 }
 
 static irqreturn_t brcmstb_tmon_irq_thread(int irq, void *data)
@@ -282,8 +292,13 @@ static const struct thermal_zone_of_device_ops of_ops = {
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
@@ -299,6 +314,10 @@ static int brcmstb_thermal_probe(struct platform_device *pdev)
 	if (!priv)
 		return -ENOMEM;
 
+	priv->temp_params = of_device_get_match_data(&pdev->dev);
+	if (!priv->temp_params)
+		return -EINVAL;
+
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	priv->tmon_base = devm_ioremap_resource(&pdev->dev, res);
 	if (IS_ERR(priv->tmon_base))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
