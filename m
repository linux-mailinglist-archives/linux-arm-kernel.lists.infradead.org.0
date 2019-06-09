Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B723AB13
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 20:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=559q3X0VawOsw5RCjI1XCCzfTiIGc/qJyE4wTl7Wsvc=; b=jiSBFi4lmZ+BKH
	vmvkjsrDOSwVgL+VZdJLuV+A8y+oqqHr7FvfBP+cHWIlv+yfERfoQU1XsX2Lcxyx4dVVLbvCHyBJd
	mu4tJbkUh5Jv8o4Rv0Aa3q6w1pUki7cxbqVRc/sUSx0JcdAhrKfMHoVOe54BLENyugoVTqLHEtzer
	BoOXoDT+UX2yG/jO/ijpraAGyxXBcKpR5ZlQRioZzstxMBpOG9ClwWwO45Dl3n+rwm4mLYNyas6GA
	gKRV1+LeyHh77bLOltxgaVqqpTB6pI3RBnr6tdKqf1FwZQQsKpgQwtuGNuDbPjdFkbfJXJ8T0hpop
	64HKDULHqYyRD3lZvqZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha2Ed-0004vR-Jy; Sun, 09 Jun 2019 18:08:03 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha2DM-0003cy-A1; Sun, 09 Jun 2019 18:06:45 +0000
Received: by mail-wr1-x430.google.com with SMTP id v14so6885414wrr.4;
 Sun, 09 Jun 2019 11:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JK2PulRNGQmFo+RP5Op3ozfnTDQeRnONpdvKX0IfeL0=;
 b=eEMGV64K6Dkp3fWw3ioIkBFOiKweVwTU9WGCM5duGAqykGKN3LM2KtArW0Pcqsihni
 RbvbNv4Xah8lbvMgyLiLVabwbAp+b6WSEyBGlI6gzOmepc4mLHMKyjlrUk3YEfiFPDAr
 eW5X3IBGH1BFS6befrawNPAoFYfaUIKiATlEUiB2B3e15NmEMSRe+GOr+1yXhDtw1+of
 Bqc4aoX1zwxiG0jash5n+hSk7AkWEJXXL896PlcDaftDYIVA18qmWAMG4xwyYkboXO/N
 G5ZW3oobBaxoIWKHbIpaJJtVXl+AG4EsSbbM303lMrpyueFWrPx93mHsDDv7c2axUtNo
 E+eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JK2PulRNGQmFo+RP5Op3ozfnTDQeRnONpdvKX0IfeL0=;
 b=Nc24KLbWbN0cArHf0Ze6lm7WM5JaqKtV6TegFEuAGdQWz9H94iXi1Dlmy5UBwigvV5
 kxbCbMCuTuDVp0M1jLGbSWUUFKd4sd+uiDMMWYmPfSOGykOFM4ZgD52fVrVWRSLupfsr
 yS6pszHUM1l1xKlRsb+OczebKw3smu4+7vnEpEK0BGIEpA/JAUNd3Hql8wOhKEEM+zz0
 4qWO00wgxAjyAqJSTGg9qK8tzX4ds9PknKvs7TWs8rYAk6Tf6wc4QJdDL9uKJOgooV0u
 oelcokkXQDhxuUnUezm+yHdsEdA1/E+xkooVjGiqmMwG/TMp6LA0edIPlqSYL+4ElNkO
 Deog==
X-Gm-Message-State: APjAAAXnWkDgocLWtpz3yzYQtOIAKxMJ9TD29LrzQn7C1RM7tYnQMzX4
 mpMFbo1SZhNSwWyjVHYo4gk=
X-Google-Smtp-Source: APXvYqwR6AUeRy3jJYBszo8W1YC0z7PSrhbXvMQ6iABRsfpGm6KCOpQTGRtKGcOmO7GX0cLUzDix3A==
X-Received: by 2002:a5d:5510:: with SMTP id b16mr7107494wrv.267.1560103600015; 
 Sun, 09 Jun 2019 11:06:40 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400B42D8EB9D711C35E.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:b42d:8eb9:d711:c35e])
 by smtp.googlemail.com with ESMTPSA id h14sm2007731wrs.66.2019.06.09.11.06.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 11:06:39 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com
Subject: [RFC next v1 3/5] net: stmmac: use GPIO descriptors in
 stmmac_mdio_reset
Date: Sun,  9 Jun 2019 20:06:19 +0200
Message-Id: <20190609180621.7607-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_110644_353835_356E8BE0 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch stmmac_mdio_reset to use GPIO descriptors. GPIO core handles the
"snps,reset-gpio" for GPIO descriptors so we don't need to take care of
it inside the driver anymore.

The advantage of this is that we now preserve the GPIO flags which are
passed via devicetree. This is required on some newer Amlogic boards
which use an Open Drain pin for the reset GPIO. This pin can only output
a LOW signal or switch to input mode but it cannot output a HIGH signal.
There are already devicetree bindings for these special cases and GPIO
core already takes care of them but only if we use GPIO descriptors
instead of GPIO numbers.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../net/ethernet/stmicro/stmmac/stmmac_mdio.c | 27 +++++++++----------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index cb9aad090cc9..21bbe3ba3e8e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -20,11 +20,11 @@
   Maintainer: Giuseppe Cavallaro <peppe.cavallaro@st.com>
 *******************************************************************************/
 
+#include <linux/gpio/consumer.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/mii.h>
 #include <linux/of.h>
-#include <linux/of_gpio.h>
 #include <linux/of_mdio.h>
 #include <linux/phy.h>
 #include <linux/slab.h>
@@ -251,34 +251,33 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 
 #ifdef CONFIG_OF
 	if (priv->device->of_node) {
+		struct gpio_desc *reset_gpio;
+
 		if (data->reset_gpio < 0) {
 			struct device_node *np = priv->device->of_node;
 
-			data->reset_gpio = of_get_named_gpio(np,
-						"snps,reset-gpio", 0);
-			if (data->reset_gpio < 0)
-				return 0;
+			reset_gpio = devm_gpiod_get_optional(priv->device,
+							     "snps,reset",
+							     GPIOD_OUT_LOW);
+			if (IS_ERR(reset_gpio))
+				return PTR_ERR(reset_gpio);
 
-			data->active_low = of_property_read_bool(np,
-						"snps,reset-active-low");
 			of_property_read_u32_array(np,
 				"snps,reset-delays-us", data->delays, 3);
+		} else {
+			reset_gpio = gpio_to_desc(data->reset_gpio);
 
-			if (devm_gpio_request(priv->device, data->reset_gpio,
-					      "mdio-reset"))
-				return 0;
+			gpiod_direction_output(reset_gpio, 0);
 		}
 
-		gpio_direction_output(data->reset_gpio,
-				      data->active_low ? 1 : 0);
 		if (data->delays[0])
 			msleep(DIV_ROUND_UP(data->delays[0], 1000));
 
-		gpio_set_value(data->reset_gpio, data->active_low ? 0 : 1);
+		gpiod_set_value_cansleep(reset_gpio, 1);
 		if (data->delays[1])
 			msleep(DIV_ROUND_UP(data->delays[1], 1000));
 
-		gpio_set_value(data->reset_gpio, data->active_low ? 1 : 0);
+		gpiod_set_value_cansleep(reset_gpio, 0);
 		if (data->delays[2])
 			msleep(DIV_ROUND_UP(data->delays[2], 1000));
 	}
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
