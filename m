Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E58BB1A925C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 07:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0qjK0onbTJN4DCIYcNtiQZSPNFEH65pDOX4V3j7T9Y=; b=Bv0AvhRhXb/x0e
	3AilWmUn1xdYJK+LddJGLdeQb9hqyDZMqjsD/vZ+17IDHTgSVtoYrWbebKd9I9s94YTIICnFzlchX
	y6+6n8OnQG/mxrycXF8PlWrbf1O/yrzfJjqRJFSPDhy18sxurKyDaWMPgyyUUBV3CFp4ivKY20aUK
	KLLiIWe+wWeHXq1tGU6UHrKAfDwmdVZhTrdCfZ86YH7dcjEUYkSlepYNsRYRyEwqJtIULJhDRh3tg
	a2cfOIXnMLcFKoaAozn0J2msQEcvyDSsAEKpLks+aujNC3pRwNXTMpXCkbH+0i5PhbDaSTo+VAC3o
	hjZ0Fe5ihhrWQr2lUh9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOaUL-0002rp-SW; Wed, 15 Apr 2020 05:21:29 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOaU6-0002qo-G8; Wed, 15 Apr 2020 05:21:17 +0000
Received: by mail-lj1-f195.google.com with SMTP id l14so2271521ljj.5;
 Tue, 14 Apr 2020 22:21:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sp4Q0pxUVysVvGlDJYjuzQkE2LcHHYkVNEZ4IUcHcII=;
 b=pJCLdOj33xJbrWnAn0CW//A0rIqEb+EOrMgkLTHMqnpzT1m1XRsPpCiNHO2sKbtofj
 83LzVrzlkVkIEUODJr66W3qcbKrqgnT8qPlCzfxIxOd3359LCZgXCh9bQLSs82SuV+a7
 wBNA64Bb2knpxHTLWugZzIsp7AjLjK9CsQt8n4H/0wrN68qP7JanH/Mvvn+ONpMw8NnJ
 QUQMEbBNHT6iDlTVjceDuefS24v9KxNQ71Ga9CP6oWK96MEW7FV2iSZ0ePQUHoRIiQN4
 ka3suzO5YSX6ssCIES/PzMWtEQQsXixf00x5nctQOzI5cuzcOVz4oZD+tJnYywc4RJ7F
 Wqbg==
X-Gm-Message-State: AGi0Puahjek7w1AQqTec3WpkVdjPuvwIJMLQYeM0HhA3JaVt6Mlpm88z
 p3hRjbi+8ythUifyAQ3hf5k=
X-Google-Smtp-Source: APiQypIQX1wSKXAkcz60r9oRCF36MT2RSfDke5bEn20OI+gPi39MkUaeitmL6evYYxZpmXaDbLnNbg==
X-Received: by 2002:a2e:95d4:: with SMTP id y20mr2141039ljh.246.1586928072925; 
 Tue, 14 Apr 2020 22:21:12 -0700 (PDT)
Received: from localhost.localdomain
 (dc7t7ryyyyyyyyyyyyybt-3.rev.dnainternet.fi. [2001:14ba:16e1:b700::3])
 by smtp.gmail.com with ESMTPSA id 13sm10556471ljq.68.2020.04.14.22.21.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 22:21:11 -0700 (PDT)
Date: Wed, 15 Apr 2020 08:21:02 +0300
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH v10 05/11] power: supply: bd70528: use linear ranges
Message-ID: <88a69f3726d6031c83cde549157b93d737c8e828.1586925868.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1586925868.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1586925868.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_222114_541218_0EE2A661 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mazziesaccount[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Andrei Stefanescu <andrei.stefanescu@microchip.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Linus Walleij <linus.walleij@linaro.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 Sebastian Reichel <sre@kernel.org>, Andreas Kemnade <andreas@kemnade.info>,
 "Angelo G. Del Regno" <kholk11@gmail.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-samsung-soc@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Axel Lin <axel.lin@ingics.com>, Gregory CLEMENT <gregory.clement@bootlin.com>,
 linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, markus.laine@fi.rohmeurope.com,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>, devicetree@vger.kernel.org,
 Charles Keepax <ckeepax@opensource.cirrus.com>, linux-omap@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-arm-msm@vger.kernel.org, Richard Fitzgerald <rf@opensource.cirrus.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Baolin Wang <baolin.wang@linaro.org>, Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 mikko.mutanen@fi.rohmeurope.com, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, patches@opensource.cirrus.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change the bd70528 to use common linear_range code instead of
implementing a copy of it in this driver.

Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

Changes since v9:
 - Add commas to last struct members as suggested by Andy

 drivers/power/supply/Kconfig           |   1 +
 drivers/power/supply/bd70528-charger.c | 144 ++++++++++---------------
 2 files changed, 56 insertions(+), 89 deletions(-)

diff --git a/drivers/power/supply/Kconfig b/drivers/power/supply/Kconfig
index f3424fdce341..9f19636db922 100644
--- a/drivers/power/supply/Kconfig
+++ b/drivers/power/supply/Kconfig
@@ -695,6 +695,7 @@ config CHARGER_UCS1002
 config CHARGER_BD70528
 	tristate "ROHM bd70528 charger driver"
 	depends on MFD_ROHM_BD70528
+	select LINEAR_RANGES
 	default n
 	help
 	 Say Y here to enable support for getting battery status
diff --git a/drivers/power/supply/bd70528-charger.c b/drivers/power/supply/bd70528-charger.c
index 3b820110ecfa..7c1f0b99c71b 100644
--- a/drivers/power/supply/bd70528-charger.c
+++ b/drivers/power/supply/bd70528-charger.c
@@ -72,6 +72,7 @@
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/power_supply.h>
+#include <linux/linear_range.h>
 
 #define CHG_STAT_SUSPEND	0x0
 #define CHG_STAT_TRICKLE	0x1
@@ -335,38 +336,37 @@ static int bd70528_get_present(struct bd70528_psy *bdpsy, int *val)
 	return 0;
 }
 
-struct bd70528_linear_range {
-	int min;
-	int step;
-	int vals;
-	int low_sel;
-};
-
-static const struct bd70528_linear_range current_limit_ranges[] = {
+static const struct linear_range current_limit_ranges[] = {
 	{
 		.min = 5,
 		.step = 1,
-		.vals = 36,
-		.low_sel = 0,
+		.min_sel = 0,
+		.max_sel = 0x22,
 	},
 	{
 		.min = 40,
 		.step = 5,
-		.vals = 5,
-		.low_sel = 0x23,
+		.min_sel = 0x23,
+		.max_sel = 0x26,
 	},
 	{
 		.min = 60,
 		.step = 20,
-		.vals = 8,
-		.low_sel = 0x27,
+		.min_sel = 0x27,
+		.max_sel = 0x2d,
 	},
 	{
 		.min = 200,
 		.step = 50,
-		.vals = 7,
-		.low_sel = 0x2e,
-	}
+		.min_sel = 0x2e,
+		.max_sel = 0x34,
+	},
+	{
+		.min = 500,
+		.step = 0,
+		.min_sel = 0x35,
+		.max_sel = 0x3f,
+	},
 };
 
 /*
@@ -374,18 +374,18 @@ static const struct bd70528_linear_range current_limit_ranges[] = {
  * voltage for low temperatures. The driver currently only reads
  * the charge current at room temperature. We do set both though.
  */
-static const struct bd70528_linear_range warm_charge_curr[] = {
+static const struct linear_range warm_charge_curr[] = {
 	{
 		.min = 10,
 		.step = 10,
-		.vals = 20,
-		.low_sel = 0,
+		.min_sel = 0,
+		.max_sel = 0x12,
 	},
 	{
 		.min = 200,
 		.step = 25,
-		.vals = 13,
-		.low_sel = 0x13,
+		.min_sel = 0x13,
+		.max_sel = 0x1f,
 	},
 };
 
@@ -398,56 +398,6 @@ static const struct bd70528_linear_range warm_charge_curr[] = {
 #define MAX_WARM_CHG_CURR_SEL 0x1f
 #define MIN_CHG_CURR_SEL 0x0
 
-static int find_value_for_selector_low(const struct bd70528_linear_range *r,
-				       int selectors, unsigned int sel,
-				       unsigned int *val)
-{
-	int i;
-
-	for (i = 0; i < selectors; i++) {
-		if (r[i].low_sel <= sel && r[i].low_sel + r[i].vals >= sel) {
-			*val = r[i].min + (sel - r[i].low_sel) * r[i].step;
-			return 0;
-		}
-	}
-	return -EINVAL;
-}
-
-/*
- * For BD70528 voltage/current limits we happily accept any value which
- * belongs the range. We could check if value matching the selector is
- * desired by computing the range min + (sel - sel_low) * range step - but
- * I guess it is enough if we use voltage/current which is closest (below)
- * the requested?
- */
-static int find_selector_for_value_low(const struct bd70528_linear_range *r,
-				       int selectors, unsigned int val,
-				       unsigned int *sel, bool *found)
-{
-	int i;
-	int ret = -EINVAL;
-
-	*found = false;
-	for (i = 0; i < selectors; i++) {
-		if (r[i].min <= val) {
-			if (r[i].min + r[i].step * r[i].vals >= val) {
-				*found = true;
-				*sel = r[i].low_sel + (val - r[i].min) /
-				       r[i].step;
-				ret = 0;
-				break;
-			}
-			/*
-			 * If the range max is smaller than requested
-			 * we can set the max supported value from range
-			 */
-			*sel = r[i].low_sel + r[i].vals;
-			ret = 0;
-		}
-	}
-	return ret;
-}
-
 static int get_charge_current(struct bd70528_psy *bdpsy, int *ma)
 {
 	unsigned int sel;
@@ -463,9 +413,9 @@ static int get_charge_current(struct bd70528_psy *bdpsy, int *ma)
 
 	sel &= BD70528_MASK_CHG_CHG_CURR;
 
-	ret = find_value_for_selector_low(&warm_charge_curr[0],
-					  ARRAY_SIZE(warm_charge_curr), sel,
-					  ma);
+	ret = linear_range_get_value_array(&warm_charge_curr[0],
+					   ARRAY_SIZE(warm_charge_curr),
+					   sel, ma);
 	if (ret) {
 		dev_err(bdpsy->dev,
 			"Unknown charge current value 0x%x\n",
@@ -491,10 +441,9 @@ static int get_current_limit(struct bd70528_psy *bdpsy, int *ma)
 
 	sel &= BD70528_MASK_CHG_DCIN_ILIM;
 
-	ret = find_value_for_selector_low(&current_limit_ranges[0],
-					  ARRAY_SIZE(current_limit_ranges), sel,
-					  ma);
-
+	ret = linear_range_get_value_array(&current_limit_ranges[0],
+					   ARRAY_SIZE(current_limit_ranges),
+					   sel, ma);
 	if (ret) {
 		/* Unspecified values mean 500 mA */
 		*ma = 500;
@@ -588,15 +537,28 @@ static int set_charge_current(struct bd70528_psy *bdpsy, int ma)
 		goto set;
 	}
 
-	ret = find_selector_for_value_low(&warm_charge_curr[0],
-					  ARRAY_SIZE(warm_charge_curr), ma,
-					  &reg, &found);
+/*
+ * For BD70528 voltage/current limits we happily accept any value which
+ * belongs the range. We could check if value matching the selector is
+ * desired by computing the range min + (sel - sel_low) * range step - but
+ * I guess it is enough if we use voltage/current which is closest (below)
+ * the requested?
+ */
+
+	ret = linear_range_get_selector_low_array(warm_charge_curr,
+						  ARRAY_SIZE(warm_charge_curr),
+						  ma, &reg, &found);
 	if (ret) {
+		dev_err(bdpsy->dev,
+			 "Unsupported charge current %u mA\n", ma);
 		reg = MIN_CHG_CURR_SEL;
 		goto set;
 	}
 	if (!found) {
-		/* There was a gap in supported values and we hit it */
+		/*
+		 * There was a gap in supported values and we hit it.
+		 * Yet a smaller value was found so we use it.
+		 */
 		dev_warn(bdpsy->dev,
 			 "Unsupported charge current %u mA\n", ma);
 	}
@@ -648,17 +610,21 @@ static int set_current_limit(struct bd70528_psy *bdpsy, int ma)
 		goto set;
 	}
 
-	ret = find_selector_for_value_low(&current_limit_ranges[0],
-					  ARRAY_SIZE(current_limit_ranges), ma,
-					  &reg, &found);
+	ret = linear_range_get_selector_low_array(current_limit_ranges,
+					ARRAY_SIZE(current_limit_ranges),
+					ma, &reg, &found);
 	if (ret) {
+		dev_err(bdpsy->dev, "Unsupported current limit %umA\n", ma);
 		reg = MIN_CURR_LIMIT_SEL;
 		goto set;
 	}
 	if (!found) {
-		/* There was a gap in supported values and we hit it ?*/
-		dev_warn(bdpsy->dev, "Unsupported current limit %umA\n",
-			 ma);
+		/*
+		 * There was a gap in supported values and we hit it.
+		 * We found a smaller value from ranges and use it.
+		 * Warn user though.
+		 */
+		dev_warn(bdpsy->dev, "Unsupported current limit %umA\n", ma);
 	}
 
 set:
-- 
2.21.0


-- 
Matti Vaittinen, Linux device drivers
ROHM Semiconductors, Finland SWDC
Kiviharjunlenkki 1E
90220 OULU
FINLAND

~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
Simon says - in Latin please.
~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
Thanks to Simon Glass for the translation =] 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
