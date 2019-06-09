Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656203AB11
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 20:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oc/jA/PP6dEbeZyBMcB9Xmr5Wdtuf9I8KcQZx5HzF98=; b=LW+DqAhQVNTBej
	3b2SVYW0oxbzISAfa4f6KwR+ghmqQRYZ17fm9DzzK96YYJVpS1SHg9q3BlsbNAxseKSdiss/Vqrax
	Gu+C4f8h+KEQlssj4PjPR8PMYyGvbC+pGJDhVlczpEKJ+FlC12ko/S1OZ8kdlPJHTmG++ESoDlKzr
	ML0vuuT4kQYIrf4G6TCb5umb0++HkQi+/kssGI8ptJcsM3UDaY1MZL87sfpHJDsrKsodz1ej7QWcL
	SuVc7btp83qVrBfNKeb385oCJthzP0I/CfmkHK5UryDNFhVffZ/kAD6H8E1luo7Oldh6OgBPWGFns
	JQymdm1hNRAoc0xxmq/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha2ET-0004Zu-En; Sun, 09 Jun 2019 18:07:53 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha2DK-0003dS-EM; Sun, 09 Jun 2019 18:06:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id d18so6885699wrs.5;
 Sun, 09 Jun 2019 11:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TqXz/MCeI1smMWv/lBknpm+xQVHD8zLca+ZLsE7CsxM=;
 b=cIHMqIRAANO+YYtVflRdIOjyQQiMyWzgkuArvUa0ZqXdUEqWrZg3+SELonp5CYakHf
 BJtfzZRheP6EXq3w7YoHV48guAMmSuNCBd5yDk2RB0PBGz8nDE5rP0VBKTcTXyzWKBTH
 6vYOaOV1L+zjpdS3SmQAV/uqx+ovVKWNAAM6Tc9ddILTVFboRbYhmcSTtlHMM25fNug8
 NkhrSFSp8+5Zf/FfVE5ZoO1byAYom2+3a/fU8uOXg9HhK0x9/kClKI9qWgvcWGHMCngP
 qSjp1dBKcd4BN5iIKvpBLLouWqZg81JlhCHVqceAo+bHxNLH0sfqhVbG1qeJA0eJPpL1
 9wmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TqXz/MCeI1smMWv/lBknpm+xQVHD8zLca+ZLsE7CsxM=;
 b=BI2sCYILEP/VeLEzEY6D0ZxSaE0M84cOjapajS3eLa0BZEWoU6nMsM40ies6w+m3lN
 RGvr4MkMipOhU0klPJEGCio1MCFwQdWIWO/nNtb6W3qbYJwY3NpBSu9SX5g9+bfIxKBX
 PbmEX2RJeHo+uvoj0aCLKDrrXgRBFd6ZBhadL5NCFHmXQ8FqDMAmpyhcW1hEhsFL45pq
 SfiKdcgDi06DX52/i1pJgC9NNoZRSGo3UMoCDgR265envRti5oMZLEWerd8hdLwMC0TB
 Q4CprJWb9SC+Q8scrfaeoj0bieSfipuZIFfXeoU5HTpTY4yFnOK7CUHLYA1GNCsWJyml
 QDnQ==
X-Gm-Message-State: APjAAAVEv1oBQCuvUw0JLXFYJ99cjkkJYcrE93DI0g3fpk34bkmElF7r
 bveB9SujZ19EZIWzZn2NrUI=
X-Google-Smtp-Source: APXvYqx/9JrA/M8rWMKnXIIb7nHkPwhbRW1rK3/nUNwz5X/AHp/yd/w5vWfFZrKKVybNXW+yf7lcMQ==
X-Received: by 2002:a5d:694a:: with SMTP id r10mr19273919wrw.345.1560103601231; 
 Sun, 09 Jun 2019 11:06:41 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400B42D8EB9D711C35E.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:b42d:8eb9:d711:c35e])
 by smtp.googlemail.com with ESMTPSA id h14sm2007731wrs.66.2019.06.09.11.06.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 11:06:40 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com
Subject: [RFC next v1 4/5] net: stmmac: use device_property_read_u32_array to
 read the reset delays
Date: Sun,  9 Jun 2019 20:06:20 +0200
Message-Id: <20190609180621.7607-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_110642_480420_734FB38E 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Change stmmac_mdio_reset() to use device_property_read_u32_array()
instead of of_property_read_u32_array().

This is meant as a cleanup because we can drop the struct device_node
variable. Also it will make it easier to get rid of struct
stmmac_mdio_bus_data (or at least make it private) in the future because
non-OF platforms can now pass the reset delays as device properties.

No functional changes (neither for OF platforms nor for ones that are
not using OF, because the modified code is still contained in an "if
(priv->device->of_node)").

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index 21bbe3ba3e8e..4614f1f2bffb 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -24,9 +24,9 @@
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/mii.h>
-#include <linux/of.h>
 #include <linux/of_mdio.h>
 #include <linux/phy.h>
+#include <linux/property.h>
 #include <linux/slab.h>
 
 #include "dwxgmac2.h"
@@ -254,16 +254,15 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 		struct gpio_desc *reset_gpio;
 
 		if (data->reset_gpio < 0) {
-			struct device_node *np = priv->device->of_node;
-
 			reset_gpio = devm_gpiod_get_optional(priv->device,
 							     "snps,reset",
 							     GPIOD_OUT_LOW);
 			if (IS_ERR(reset_gpio))
 				return PTR_ERR(reset_gpio);
 
-			of_property_read_u32_array(np,
-				"snps,reset-delays-us", data->delays, 3);
+			device_property_read_u32_array(priv->device,
+						       "snps,reset-delays-us",
+						       data->delays, 3);
 		} else {
 			reset_gpio = gpio_to_desc(data->reset_gpio);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
