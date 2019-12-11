Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C5611BDF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 21:32:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yXcc2z5OpfYgN9oAypQ6a6Q4GMgXysglb5VDQlYEjTc=; b=JCYrJE3NXaROkRMxRggiOU8zoQ
	vbdBw7V+1kNIT61h0fb4JrPcXHYlYKc4/bRC/2xghheMJsdTdymqPRFjzGbs2+J4FiNLhpNlgpEMJ
	41IY8aA7GRM3d7Sp67vjM1r/8wit76mgvL/e0RCWxraogDXXHlHLQbGUNc3Bn6OE0GfvD2S+0ipnB
	juJJx4pqGSMLnvnakOymth9rS9vl8tlc9g8wbZTkyPuaMoAOOZH3levlgGfA5j3cctAoZhN9F/y+7
	r4iZWr6LAJOCykxRMLR44SkKpw+NSh5ExvnY4txTanOX6P2so6QD/K7sugnkOUsbNosHeBnN30IqO
	2b7Aauag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if8f2-0000Ed-U6; Wed, 11 Dec 2019 20:32:40 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if8eN-0008FD-NE
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 20:32:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id b137so11305516pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 12:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nAMyfH4P60dFRDU7m+hosqMx6pv601HbAJ1pQGyNcMg=;
 b=B+s5PbZT4Zv9XI0AjaTATaBNhgYdHqBe7Fe7Fgk6Gne3AfcV6tuqSt2zTuOKkdpzGC
 dWt4Srz4rqMCpUQHt1SNCub76Jw4jI1uspbhQmdK19gtgOt8aLASF+eY4XxtuJ/D9cEF
 bigPSiDXbdFkXCZU9wq2ctSA4B3zePmC56PxF8jVdbfEsZ/e9xzLnSkYdpNBCWQ8FkEU
 c9l2+prZDlmxmUpMzrCUGeVxqvGBVNy2f4BESOpRxkOhb0iGulRPcnqXSTGp3yRw5IYm
 GoEtJlKtZR6oLs6rUesOmwDWLxwy0yk6zmH6Vw8dp/nCpSLBUpJ7kMKCdl+85uanBSvv
 Emxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nAMyfH4P60dFRDU7m+hosqMx6pv601HbAJ1pQGyNcMg=;
 b=EyC4iQhUyxcFFsuM2HvM9ljmMCfpel7BHBJXrvzMqkCUc9Uo/QDQmWFmqb4Rf4kiSL
 r/wPUiA4Fc4NvY/zq7n/Z4EuuXDTZ3FcEbFn4jYM6/DZ21fNTe4BNxVkDzuLn4J0A9AW
 6r/+Q/Lu/z6XlKmycICMXFjcgFKVuHVIOrhsyrOC3Z4oicMkHSpUkH0eVriL6oBkk280
 6+eZA3NQXWqA8DnfXmKrpxhrTVHiVSQy3pdInyhrdJTshntyvTLdcIsRbprhUdkV0NB2
 APNWfjG09TY9IX6wXGq3rwETmc1UkCKlDpJfS8DJc70aaK21M7kjPKamWSmfdbgyCr4v
 x+Nw==
X-Gm-Message-State: APjAAAXLRxurnLFZKY3AtNe6OgXETkmDQjNprBT4xaALqxX4mpp7VvPW
 YRTEvzF8QNNYWdMkkHvpy5QvGkmd
X-Google-Smtp-Source: APXvYqw905t0OmMYtvu4Tzun1VIheUVmOA2Ss2518GBDlhcYIjEyhuan6FZ4Ec2WugUBJLN5NY8CXg==
X-Received: by 2002:a63:5b0a:: with SMTP id p10mr6243248pgb.228.1576096318549; 
 Wed, 11 Dec 2019 12:31:58 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a19sm917570pju.11.2019.12.11.12.31.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 12:31:57 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	daniel.lezcano@linaro.org
Subject: [PATCH v2 2/6] thermal: brcmstb_thermal: Prepare to support a
 different process
Date: Wed, 11 Dec 2019 12:31:39 -0800
Message-Id: <20191211203143.2952-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211203143.2952-1-f.fainelli@gmail.com>
References: <20191211203143.2952-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_123159_758377_4E61D571 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

The driver is currently assuming that it is operating with a 28nm
process chip, which has a specific formula to convert temperature to a
code and vice versa. Update the code to support providing two key
values: offset and multiplier to derive the correct formulas.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/thermal/broadcom/brcmstb_thermal.c | 54 ++++++++++++++++------
 1 file changed, 39 insertions(+), 15 deletions(-)

diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 680f1a070606..68f89f7c7e7f 100644
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
+	struct brcmstb_thermal_params temp_params;
 };
 
 /* Convert a HW code to a temperature reading (millidegree celsius) */
-static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
+static inline int avs_tmon_code_to_temp(struct brcmstb_thermal_priv *priv,
 					u32 code)
 {
-	return (AVS_TMON_TEMP_OFFSET -
-		(int)((code & AVS_TMON_TEMP_MAX) * AVS_TMON_TEMP_SLOPE));
+	int offset = priv->temp_params.offset;
+	int mult = priv->temp_params.mult;
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
+	int offset = priv->temp_params.offset;
+	int mult = priv->temp_params.mult;
+
 	if (temp < AVS_TMON_TEMP_MIN)
-		return AVS_TMON_TEMP_MAX;	/* Maximum code value */
+		return AVS_TMON_TEMP_MASK;	/* Maximum code value */
 
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
@@ -282,19 +292,32 @@ static const struct thermal_zone_of_device_ops of_ops = {
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
@@ -304,6 +327,7 @@ static int brcmstb_thermal_probe(struct platform_device *pdev)
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
