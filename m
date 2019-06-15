Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CDD46F78
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 12:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ol0UDrTcv885S/T6O+WqhDapV7/uOw8ow79tRtDiJMc=; b=cu7+0JIylZCnf3
	Lz+N7b8UhDnpRM1dtoPoDKFqGwLJ5HKWoIhPZGzZzOPlQJseZcKKhpNQSQnfPjfq1y9FSz5SM058W
	2qsXYByw7ngk/0oGPEaltSGi0u0bfTaLGWo9mEBM/zPC1HtlBAauHp5NAZbYt8yUbNUcSqlY1Huu2
	8wdbLLnITNSidCOjqXKnF/TxLIPF1dz+cSbauzZr2XAEKgjRkXngGTACjkAFQ1c2B+PO6oOtKTf5y
	CbyOXAKaWlHEuOd7Bs1CIbyQ2NUOxitE4Jvww+SsK4EHcYKbSkNHraRVQ6/sBII9yZbuXB64qFpbU
	moQ405lKfiefnn+XuCBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc5e2-0005ID-LT; Sat, 15 Jun 2019 10:10:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc5d4-0003Tz-9t
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 10:09:47 +0000
Received: by mail-wr1-x443.google.com with SMTP id d18so4987410wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 03:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H+yWWY9tEBVeyv5Kuo7PN/KU7l8anqtZ9YKcn1BGMX8=;
 b=F2OUqJoOIhLqTWwNr+ox+F1uAsR57hiVV8JfO+cpLJ+ookCiS0zuXCRXK8gGWzl/+R
 PDY1O8QaYoiP3yvbTfWAmfJeS5rJWUdFAwG3W3e4t90qk9pz3aI1v+ccxNgXd0/UznZp
 QtGGlMmhaHXW/GHro/Opuc6TPNoz26ugUrr7wmtGlQ0F0t0IcySE7Eoam7Uv0i3FKZ9a
 z3JXpiFFPUqZ3tyoU8mwJLUv+vllWShP1R9CfI6jNEUvNc6RDfrBkjAstnbnHBw6k835
 nAFOrC7gkIquBYE4lDwWQrgkuZtRGC89LOBskczxEyGhm03WUBUEnYdM7mq9LXezgZce
 xgWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H+yWWY9tEBVeyv5Kuo7PN/KU7l8anqtZ9YKcn1BGMX8=;
 b=QE6yf3MSHNpWYSQO2mZVgU+w3MHNC9Zct4z8wv3cS5nr9vXQ89+XdVetVS1tX50Z8M
 t0F4sHGNukpNnStS4GXOvImt3f3+SFqDEYvnf7ZpkIUVHfw/KjBuITXlFtWQNzSSM4A/
 jov36I1Wv3utraGKPTwo2E3nChTrMQmAeI86x3XlAhAlx2M3wolWJ2VYHkAXYF6zv7vC
 wkd+m42BkPCUSoTdcUu+5HAe8M7p83UfjNx44QW8J5DQOlRQJ3wx6odo688z52W4Tj79
 Z3opmCJ893yCWD4guOqz7y+O0WSghxRIwqEnlZWIdT7lF5UTTjwsze+7IzxNKJx+yIL8
 8xbg==
X-Gm-Message-State: APjAAAXLJv4uGNdyVZuci+ZjfsVylkVeq3E8/PC5LSwGkaS0i5rb2MOD
 89vl+F8+Tz/S3+cfUHDtLCE=
X-Google-Smtp-Source: APXvYqxLGsoHfLPnFj28nDTuYbhsnM6ZxMGBs0QlhKr1dIDBWN6DREupTQWYfM4lOTVfZ3WkVTuzGg==
X-Received: by 2002:adf:df10:: with SMTP id y16mr9612659wrl.302.1560593383691; 
 Sat, 15 Jun 2019 03:09:43 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C20E00A9A405DFDBBC0790.dip0.t-ipconnect.de.
 [2003:f1:33c2:e00:a9a4:5df:dbbc:790])
 by smtp.googlemail.com with ESMTPSA id f2sm9270513wrq.48.2019.06.15.03.09.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 03:09:43 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com, davem@davemloft.net
Subject: [PATCH net-next v1 2/5] net: stmmac: use
 device_property_read_u32_array to read the reset delays
Date: Sat, 15 Jun 2019 12:09:29 +0200
Message-Id: <20190615100932.27101-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190615100932.27101-1-martin.blumenstingl@googlemail.com>
References: <20190615100932.27101-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_030946_342294_B0233CAD 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>, andrew@lunn.ch,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
