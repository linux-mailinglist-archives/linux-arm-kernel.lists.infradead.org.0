Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 625D21A9268
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 07:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Phduylau0SPq0CMuTZQPQyknB6ZkhJ8bABa8NIt8rzk=; b=YdL24kt8yvJWxb
	7HvO3l39QN8HOfMbfvM9t4tu4jT06k45ldN0vKf/gcSOw3r7nl9JxSeg62DzESysCkyWFpWyDgsjM
	S2nPMK7ngq7+fRQ5LTGgqtgwmLQ8eFK89KL/Gc8hA9T/xNVf2mDRnv32ygp4SUzHGKkmIZMqK6UGm
	/z+0UEz6OcWKjfhUxMNdQiJjQyO3zwCAKuXxK2FBX040fqpNyfV3wZJb6S3e11n2GCN/flumrLZCZ
	6UZSYSPjV6A8gZY0d6k+lcnhW3/baeOmPHuD09Jn4gawIIiNuiXvxW+jNzXKjS+KqdMyWcfSb/VoR
	Qv4yiORxGog1UA1hcwsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOaWu-0004vD-CV; Wed, 15 Apr 2020 05:24:08 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOaWh-0004ly-2L; Wed, 15 Apr 2020 05:23:56 +0000
Received: by mail-lj1-f196.google.com with SMTP id r7so2215236ljg.13;
 Tue, 14 Apr 2020 22:23:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Xn9Q8ChOHkxUVnDeeTwgLZBFu3TEywEF5Z2h0O3M1C0=;
 b=GIg7d9t+GmiHKf+OdKeviTNjxM+hjR1d1EprTszvwr6XXFihQ3E6G11QjBI/2825KX
 cWiNrQlfQw8ujt2zE3DJVzxxJOF6ViSW6R6ahZpni/OTzg2GZr/2ytq5tyjQyWfvd9wU
 7sL0nLcYx3q278fnT1hsgm/uWpgwX976HuBJt/hMUby1aWwAOkyncyXUsyCovhNDT2BL
 yofvJ9wEqTpR4x7icY4sTpbjiu2NiIsp6aeFdq+4T6cjNyDkc32ti6Ztg8jotjjqtfh+
 uxvCsg7pDf9c3eRhXZ6Ecswau6ycGFKfSdXe0AbAP4vTtIcQDzZkT0Z/USjpyK40uW+Y
 r6SA==
X-Gm-Message-State: AGi0PuZHAAE/91uQuaD7PvcazwyDwyCSCxphercGCsuGJy37zq05K8iY
 LeXpravSma3PkOiou5Gfroc=
X-Google-Smtp-Source: APiQypIfDzBniZFbyisLp4Pq8zJBJItdtrZHPhml/j/D03MYAHGrLz8PFQ6no6EUS7HP3RRXobtT1Q==
X-Received: by 2002:a2e:84c4:: with SMTP id q4mr2027173ljh.206.1586928233640; 
 Tue, 14 Apr 2020 22:23:53 -0700 (PDT)
Received: from localhost.localdomain
 (dc7t7ryyyyyyyyyyyyybt-3.rev.dnainternet.fi. [2001:14ba:16e1:b700::3])
 by smtp.gmail.com with ESMTPSA id q129sm5166921ljb.50.2020.04.14.22.23.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 22:23:53 -0700 (PDT)
Date: Wed, 15 Apr 2020 08:23:40 +0300
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH v10 10/11] power: supply: Fix Kconfig help text indentiation
Message-ID: <23314fb63b66f5f4816e052f0d7ff0e7927c0e78.1586925868.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1586925868.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1586925868.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_222355_107080_F0955379 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mazziesaccount[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
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

Indent the help text as explained in
Documentation/process/coding-style.rst

Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

No changes since v9

I just learned the help text in Kconfigs should be indented by two
spaces. I fixed this for BD99954 as suggested by Randy and decided
that I could do this for few other entries as well while I was at
it anyways.

 drivers/power/supply/Kconfig | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/power/supply/Kconfig b/drivers/power/supply/Kconfig
index 436680ee8523..ec028e47c3c2 100644
--- a/drivers/power/supply/Kconfig
+++ b/drivers/power/supply/Kconfig
@@ -415,7 +415,7 @@ config CHARGER_PCF50633
 	tristate "NXP PCF50633 MBC"
 	depends on MFD_PCF50633
 	help
-	 Say Y to include support for NXP PCF50633 Main Battery Charger.
+	  Say Y to include support for NXP PCF50633 Main Battery Charger.
 
 config BATTERY_RX51
 	tristate "Nokia RX-51 (N900) battery driver"
@@ -609,15 +609,15 @@ config CHARGER_TPS65090
 	tristate "TPS65090 battery charger driver"
 	depends on MFD_TPS65090
 	help
-	 Say Y here to enable support for battery charging with TPS65090
-	 PMIC chips.
+	  Say Y here to enable support for battery charging with TPS65090
+	  PMIC chips.
 
 config CHARGER_TPS65217
 	tristate "TPS65217 battery charger driver"
 	depends on MFD_TPS65217
 	help
-	 Say Y here to enable support for battery charging with TPS65217
-	 PMIC chips.
+	  Say Y here to enable support for battery charging with TPS65217
+	  PMIC chips.
 
 config BATTERY_GAUGE_LTC2941
 	tristate "LTC2941/LTC2943 Battery Gauge Driver"
@@ -671,16 +671,16 @@ config CHARGER_SC2731
 	tristate "Spreadtrum SC2731 charger driver"
 	depends on MFD_SC27XX_PMIC || COMPILE_TEST
 	help
-	 Say Y here to enable support for battery charging with SC2731
-	 PMIC chips.
+	  Say Y here to enable support for battery charging with SC2731
+	  PMIC chips.
 
 config FUEL_GAUGE_SC27XX
 	tristate "Spreadtrum SC27XX fuel gauge driver"
 	depends on MFD_SC27XX_PMIC || COMPILE_TEST
 	depends on IIO
 	help
-	 Say Y here to enable support for fuel gauge with SC27XX
-	 PMIC chips.
+	  Say Y here to enable support for fuel gauge with SC27XX
+	  PMIC chips.
 
 config CHARGER_UCS1002
 	tristate "Microchip UCS1002 USB Port Power Controller"
@@ -698,9 +698,9 @@ config CHARGER_BD70528
 	select LINEAR_RANGES
 	default n
 	help
-	 Say Y here to enable support for getting battery status
-	 information and altering charger configurations from charger
-	 block of the ROHM BD70528 Power Management IC.
+	  Say Y here to enable support for getting battery status
+	  information and altering charger configurations from charger
+	  block of the ROHM BD70528 Power Management IC.
 
 config CHARGER_BD99954
 	tristate "ROHM bd99954 charger driver"
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
