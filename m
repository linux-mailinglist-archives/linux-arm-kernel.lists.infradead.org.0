Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E5043036
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 21:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Jc+vzkMzpIFd6FbbCI+zw9qQAUHHgNkHZEmtNc94f8=; b=WkwX8pUFWx5LTC
	F9SFni5KWTyGjuRHQ2VD6d+o4mG5ajQuhNmbUes4f7nBHk7DdSuFdIPVZqCZMlZIyyaoiYGF1JoSL
	1pRnVGO4nvRVNH2aouMYgcEoU5NJxMZkdvblz4a44celVHbmRrCtGB8h1zDdaxkA+kdpYmEYMm5cN
	iOlyaE8yvYoxrUJWMKxL21TfzHCyqAk65ONCOoWFOjAB9z60XW7HD/QjIIkZC6fAkCvRf3+0B2wvj
	WEqm+pgvyGLE051MmlH8gr5wlVWAL+56tjOsgBqR0rdIkh84xA4AVWmvrX/wgWOUIcDVXWz4TDa+a
	4FvSkw9gJ9vcsSfLDIJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb8yO-0004cZ-Lo; Wed, 12 Jun 2019 19:31:52 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb8yC-0004VN-4C
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 19:31:41 +0000
Received: by mail-wm1-x342.google.com with SMTP id c66so7727607wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 12:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GRfoFY5xQdWZ+zyZrF8x4tIZrgk1L2WHamAGKM9+HbI=;
 b=cW8ArLx8R6N5xr2r4LBArrHMDLSr4xhtVhXTwo3cyH0pZ/Ul6OiDLvY2QJnAMERvEa
 9GrVEbOvQJLUAuXBKGRrL8k65d+/0f9Cjja/chMLJZhUR0raNc2wwZ47FKlQlN6Nbx/D
 ejpOw4FfY3PrAM3/7MbYX81LqOGrDuDgiBOb/dwgC+53qCoR1xA1PNqMkd5YUX34sCoN
 q49RuefrUfE/Onr+8uxvEZPe0Az08fWHcsYGxEKx1v6UfnZEeoMx2hg+uI/Png6MHmPd
 us7w/AZSrYIVyB7zLRaZ1nX/1Hdx7saB9BgGgjZIZ2AAPqhn6lDoAVz5GoKKWx6ghSbE
 a3NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GRfoFY5xQdWZ+zyZrF8x4tIZrgk1L2WHamAGKM9+HbI=;
 b=kH8Wf0sxtIR+DmTaXbA2ajSYGR4bHYpUtCPQCkoqHHEz+c+Cmi4r/eKn+y4HDLL6Hh
 ZEp5PxjnsFX73XfoJQsCzyPOjfWM9K/JopMjDx7UAtz40zSDj34dUqPbCtur9giqgRXW
 eTLeZR+7DcOr+kPj9TPCGJoLZtdpjsDP1VxpNGOIeTMg34PaR+SmYrqg3N9wzBMgHObj
 TC/8DMyKYyBR45iIOdkMrcKD+IBtjwpv6ZMHcZ17ErJR7LsZ33GdkXusIq1JyhJLqQAh
 McSKd0tea9nNTbtS6LIrLJ+l0B4E1wO6LJjwcegFLHHUuHGX5qmNJ3dVCah0cNWGf0a+
 ZR9A==
X-Gm-Message-State: APjAAAVdizkuIr37CZbwBgeAVXWZY6blmwyaTqsMbgaq2VTzXZBFgHiu
 eq9rYk8wizk5UOtGT60n9hU=
X-Google-Smtp-Source: APXvYqzJTIuqNtlPTGYXYCdx+JjK4QSoXYxNTFy2H98HO1zZ/AhRoqP4/zsWF3ehw7sYe6DLw8k+1Q==
X-Received: by 2002:a1c:f515:: with SMTP id t21mr573668wmh.39.1560367895665;
 Wed, 12 Jun 2019 12:31:35 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q15sm379054wrr.19.2019.06.12.12.31.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 12:31:35 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com, davem@davemloft.net, andrew@lunn.ch
Subject: [PATCH net-next v2 1/1] net: stmmac: use GPIO descriptors in
 stmmac_mdio_reset
Date: Wed, 12 Jun 2019 21:31:15 +0200
Message-Id: <20190612193115.6751-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612193115.6751-1-martin.blumenstingl@googlemail.com>
References: <20190612193115.6751-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_123140_165117_7649387E 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: maxime.ripard@bootlin.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
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
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../net/ethernet/stmicro/stmmac/stmmac_mdio.c | 27 +++++++++----------
 include/linux/stmmac.h                        |  2 +-
 2 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index 093a223fe408..f1c39dd048e7 100644
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
@@ -251,37 +251,36 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 
 #ifdef CONFIG_OF
 	if (priv->device->of_node) {
+		struct gpio_desc *reset_gpio;
+
 		if (data->reset_gpio < 0) {
 			struct device_node *np = priv->device->of_node;
 
 			if (!np)
 				return 0;
 
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
diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
index 4335bd771ce5..816edb545592 100644
--- a/include/linux/stmmac.h
+++ b/include/linux/stmmac.h
@@ -97,7 +97,7 @@ struct stmmac_mdio_bus_data {
 	int *irqs;
 	int probed_phy_irq;
 #ifdef CONFIG_OF
-	int reset_gpio, active_low;
+	int reset_gpio;
 	u32 delays[3];
 #endif
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
