Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B237446F7B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 12:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I31IUYZ16KQtgzEYCTKfiUBccifrbwfQSNwm/9p692A=; b=WKZkjE5E0WfmWE
	HFU/mj0Zx28TES2LxY4jfzvzUvY+BBnu+3ud9Z+JINODRE367/Or6Fl2xRISdfB3CdvomCBIcST6b
	JeCTx4p0tw+z5tkmjv0hwvwmyxahic2bB1P9uVLfZWLfeDVbYjVnSsR2hXFZhlMUTxsRuQefjhHn6
	TX9XPndXairBjSKf3BWBuKEKD4orV8GWQLrCAPOGOD1As0QTExSruT6y7eyf5PE8NN0Ye6HCjGBZw
	2PZXNmrzAAsb8Od/a0J/3UR1vmjh/vMMkZFriisLIGvh/zlnKyP5bKn03b3XmrYl+38xMq+CKdyKz
	RJJp790tttysPYuivcUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc5ef-0005v2-Me; Sat, 15 Jun 2019 10:11:25 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc5d5-0003Us-Pd
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 10:09:49 +0000
Received: by mail-wm1-x344.google.com with SMTP id g135so4678703wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 03:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=21LzFx2Yc8y77IkHIvE2bMFa0+wAZqeT/XG4CmiYg9c=;
 b=Uci2wXZnDus0zk0ldy2dfk3d4aJr68Zw4QGrTtJh9KC/t6mdLM97KeoGnbhX0BDZp4
 mCtBky+GT+CCrAmPb6CQ3WtCzlRp7Bd9iwapxtrEqSZIR/E68kybbnIb+GcsDcnyzeeH
 zpwELa0AKEjwI8ChQ4ZuUIuhaHIGEs5H2TLn0aZu8bEJOjsIsyDtjaeXwJEqUfXieS7k
 At7tBj6NYhOwKcQm25Ft+x1l2BQgK16tOjck+Qnx/jf0ZDLLLhAtv6SgS5ylI0uDLeyA
 PHFr6f7aBVSaDPS6JmhjADnFyp7rJIq5as2BAIo+i/+7/I/A+y/gz9ebD91fo6lIx5x5
 XANQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=21LzFx2Yc8y77IkHIvE2bMFa0+wAZqeT/XG4CmiYg9c=;
 b=Xp19ZwtQeKCIygHK+dsRGJyknTZGbfmOyyp4XDB/x6jDIqb+NBgLmDfDFibjZCoWOB
 6H8pBR7CC+4CHxk0G+h7+14MmLrQauj6YnliWLon1G9ivbLd+JQ82xX5kEF9eDGEJk0/
 0knjrw9JQ3RMgu2UQUL819qXsFcbVbaeT4iw55uC0x9Ua+x6K96gL8UyRFklIUEi1CaX
 jWIF58zFtJN/g5aQ4s1Cs5JrVx6R1Ky52kOkZAms+Ge3wlwZFXEmtI+koEbt5cli/V95
 Q6UXiGornxS7aBGytMNZ1Vov/eTXuwstvObmMLg/nlb+MiLc8dkVsFfWb5Vs7r2QAt1n
 3NGw==
X-Gm-Message-State: APjAAAUucTWCZuE4cbaKmNMQlApt9HekOD+ZzljMV0i5X8aLCbc+demE
 heDbBU4G8HJ4ZCe0fgrjw+M=
X-Google-Smtp-Source: APXvYqzPm8dHyxHlzfDDjd2ma6Gj+6tSgX08AW5n9xYFU30GEctIRwfe1P7qrO8HGdN8b/koJ5+c5g==
X-Received: by 2002:a1c:cb43:: with SMTP id b64mr10850812wmg.135.1560593386042; 
 Sat, 15 Jun 2019 03:09:46 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C20E00A9A405DFDBBC0790.dip0.t-ipconnect.de.
 [2003:f1:33c2:e00:a9a4:5df:dbbc:790])
 by smtp.googlemail.com with ESMTPSA id f2sm9270513wrq.48.2019.06.15.03.09.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 03:09:45 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com, davem@davemloft.net
Subject: [PATCH net-next v1 4/5] net: stmmac: drop the reset delays from
 struct stmmac_mdio_bus_data
Date: Sat, 15 Jun 2019 12:09:31 +0200
Message-Id: <20190615100932.27101-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190615100932.27101-1-martin.blumenstingl@googlemail.com>
References: <20190615100932.27101-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_030947_833997_2CA71EBF 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Only OF platforms use the reset delays and these delays are only read in
stmmac_mdio_reset(). Move them from struct stmmac_mdio_bus_data to a
stack variable inside stmmac_mdio_reset() because that's the only usage
of these delays.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c | 15 ++++++++-------
 include/linux/stmmac.h                            |  3 ---
 2 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index 459ef8afe4fb..c9454cf4f189 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -252,6 +252,7 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 #ifdef CONFIG_OF
 	if (priv->device->of_node) {
 		struct gpio_desc *reset_gpio;
+		u32 delays[3];
 
 		reset_gpio = devm_gpiod_get_optional(priv->device,
 						     "snps,reset",
@@ -261,18 +262,18 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 
 		device_property_read_u32_array(priv->device,
 					       "snps,reset-delays-us",
-					       data->delays, 3);
+					       delays, ARRAY_SIZE(delays));
 
-		if (data->delays[0])
-			msleep(DIV_ROUND_UP(data->delays[0], 1000));
+		if (delays[0])
+			msleep(DIV_ROUND_UP(delays[0], 1000));
 
 		gpiod_set_value_cansleep(reset_gpio, 1);
-		if (data->delays[1])
-			msleep(DIV_ROUND_UP(data->delays[1], 1000));
+		if (delays[1])
+			msleep(DIV_ROUND_UP(delays[1], 1000));
 
 		gpiod_set_value_cansleep(reset_gpio, 0);
-		if (data->delays[2])
-			msleep(DIV_ROUND_UP(data->delays[2], 1000));
+		if (delays[2])
+			msleep(DIV_ROUND_UP(delays[2], 1000));
 	}
 #endif
 
diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
index fe865df82e48..96d97c908595 100644
--- a/include/linux/stmmac.h
+++ b/include/linux/stmmac.h
@@ -96,9 +96,6 @@ struct stmmac_mdio_bus_data {
 	unsigned int phy_mask;
 	int *irqs;
 	int probed_phy_irq;
-#ifdef CONFIG_OF
-	u32 delays[3];
-#endif
 };
 
 struct stmmac_dma_cfg {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
