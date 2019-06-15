Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE9546F79
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 12:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6hucd6g6nC3URNZeslg1K865W5pFWDznuLNGf0t+To=; b=q7tb9PniasXatF
	uJ199H+J/5b08WpanvgyWNqjHBXHvgnzEo7xPDaqqXa6RCGYnnbb2hCabjZwQfvIcLoGZFpOg7fzH
	16tnUGtRDf8RwEtE2xLslnl6jNh04HhPBuIShoTLR7SUKp1UaaGdfS2Jh0FSysUgi802rRQWPhbPU
	mzeFD8IOfnBZTZlA2FW0JRsHrSQXkJYN1nvuCBmILJjP1zHWeCwI7WNrwTWG74r/GmuQwLBM0nwVD
	fFDQiesXsw3LHgDQXjwlWOo5wrxtI8o1cI+km2qp6k5D1lZXsA1Nz+9G7wee1CjGXQBvIjqqYMIyd
	NQKOtHuA7O0ZACR2V5hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc5eN-0005eS-I3; Sat, 15 Jun 2019 10:11:07 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc5d4-0003Ua-J3
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 10:09:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id d18so4987431wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 03:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bZFU7NFpVfVeHlWdzqsP9W+7pyjV+Qkejc+qbCNG2JI=;
 b=kS071LzwgDU6YqnKn98IPviy/GgCUK0RM+EhTYLxlVneNva93160H8wS+XdNcNfRoR
 rylBQviUW+BOLyLwgO+Y/eD1tFldIBZnj5CSu5t/lMErK7NwsGNaQFYkDMidrz5MeNJD
 l4e1JC0QRccodXh/5TuRuF7Y/zv8ASzHjQBdOEqDvuP0dpYy1yCCYKclsnrM15ibmpR1
 SyEMoSQg/HiT0nD/lErdb0jRfRUTB3xlvwEEPPEeig+HV+a2PZSaSRdRKZ2BmGRDtp+f
 TCeaxMbpUGV8cSq7zugSmcBvgn35AbExvvonMeS6BE11STmktZQv9DKDCjsFYcdIi2KC
 uREg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bZFU7NFpVfVeHlWdzqsP9W+7pyjV+Qkejc+qbCNG2JI=;
 b=TGWenFRbdNcCaJiycF2Kwan5im7PHMVFyPedshxgp1N4OM5JYEU05+4YbUtwBWwPhD
 ZuUlvXh2Z3iBpPpRTMiuTF+Hr6kSzsgYeHgH/AOQ46WEqggVlGqOxtc8nTL5bcaoMhEu
 A9NpPmgrZetLMjhGjXeZhnGjiUTV3lob/bJzZl7aeL8HJbbK8viD1CybP86sYrsO+7r4
 N+eq5kqabSLZhvS21jLfhKIsz6l1riggb+rI8BMK6imaDKW2GsxpIFuhvDrCSM8o+1fL
 zxddLRn5PszbnygmfM0ikxTuHJ5njOH4NRdUMdy81lCVY3ck59whZT97grSqAUkGl/n3
 GxpA==
X-Gm-Message-State: APjAAAXv4lmWC6028GbzrwOCqOmX0C6TNvoU2N/muHfOMWAABXSPpW58
 6+2vcPCK9K6dTAK0dVuNEXI=
X-Google-Smtp-Source: APXvYqx0/fov4P+lnmI2fLd5hg9jAgZR94PgXgj/0RSR6XIrP2w7HMaZ7iddBld9yhXqDa6274scSw==
X-Received: by 2002:a5d:4001:: with SMTP id n1mr51838065wrp.293.1560593384926; 
 Sat, 15 Jun 2019 03:09:44 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C20E00A9A405DFDBBC0790.dip0.t-ipconnect.de.
 [2003:f1:33c2:e00:a9a4:5df:dbbc:790])
 by smtp.googlemail.com with ESMTPSA id f2sm9270513wrq.48.2019.06.15.03.09.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 03:09:44 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com, davem@davemloft.net
Subject: [PATCH net-next v1 3/5] net: stmmac: drop the reset GPIO from struct
 stmmac_mdio_bus_data
Date: Sat, 15 Jun 2019 12:09:30 +0200
Message-Id: <20190615100932.27101-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190615100932.27101-1-martin.blumenstingl@googlemail.com>
References: <20190615100932.27101-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_030946_624533_F510F00E 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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

No platform uses the "reset_gpio" field from stmmac_mdio_bus_data
anymore. Drop it so we don't get any new consumers either.

Plain GPIO numbers are being deprecated in favor of GPIO descriptors. If
needed any new non-OF platform can add a GPIO descriptor lookup table.
devm_gpiod_get_optional() will find the GPIO in that case.

Suggested-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../net/ethernet/stmicro/stmmac/stmmac_mdio.c | 29 ++++++-------------
 include/linux/stmmac.h                        |  1 -
 2 files changed, 9 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index 4614f1f2bffb..459ef8afe4fb 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -253,21 +253,15 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 	if (priv->device->of_node) {
 		struct gpio_desc *reset_gpio;
 
-		if (data->reset_gpio < 0) {
-			reset_gpio = devm_gpiod_get_optional(priv->device,
-							     "snps,reset",
-							     GPIOD_OUT_LOW);
-			if (IS_ERR(reset_gpio))
-				return PTR_ERR(reset_gpio);
-
-			device_property_read_u32_array(priv->device,
-						       "snps,reset-delays-us",
-						       data->delays, 3);
-		} else {
-			reset_gpio = gpio_to_desc(data->reset_gpio);
-
-			gpiod_direction_output(reset_gpio, 0);
-		}
+		reset_gpio = devm_gpiod_get_optional(priv->device,
+						     "snps,reset",
+						     GPIOD_OUT_LOW);
+		if (IS_ERR(reset_gpio))
+			return PTR_ERR(reset_gpio);
+
+		device_property_read_u32_array(priv->device,
+					       "snps,reset-delays-us",
+					       data->delays, 3);
 
 		if (data->delays[0])
 			msleep(DIV_ROUND_UP(data->delays[0], 1000));
@@ -323,11 +317,6 @@ int stmmac_mdio_register(struct net_device *ndev)
 	if (mdio_bus_data->irqs)
 		memcpy(new_bus->irq, mdio_bus_data->irqs, sizeof(new_bus->irq));
 
-#ifdef CONFIG_OF
-	if (priv->device->of_node)
-		mdio_bus_data->reset_gpio = -1;
-#endif
-
 	new_bus->name = "stmmac";
 
 	if (priv->plat->has_xgmac) {
diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
index 816edb545592..fe865df82e48 100644
--- a/include/linux/stmmac.h
+++ b/include/linux/stmmac.h
@@ -97,7 +97,6 @@ struct stmmac_mdio_bus_data {
 	int *irqs;
 	int probed_phy_irq;
 #ifdef CONFIG_OF
-	int reset_gpio;
 	u32 delays[3];
 #endif
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
