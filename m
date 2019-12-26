Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8DF12AE8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 21:38:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMMdnato15Fnvasspssbw5SLDbM33dt4dMs9WRlv9ME=; b=TAtplcnJxWIWaw
	YuxHeyCoSkAGRR2f/0YkJmXslMlo/E5bM/tYlgTX5P3w4dZVCnsN1f+reMU6FOUHvd/VAO3bPfurD
	Uaxw/1zS0mYJt3VT9ldSu/iT2KdaZo2Vvx2OF929kvLtZJfEcjUMfrPa39dPsKYX7+57y//2R8RDj
	7BzBXZIyKUvUNYFCkG5XVOx6R+nCF1s45verZqkSKYT7TwKzAzPVfbBApMQDp4ChH6elSmFInVI+J
	3jBU42o6+J9j9FiYCnLvEzuYCJPjWuh7ZlKDXXiaTdsnZypKK1lIThxRvGBPZhhTeIK0nF4LWystX
	vQTbpNdb4TA59eLmG1tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikZtN-0005gN-QB; Thu, 26 Dec 2019 20:37:57 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikZsh-00058s-EI; Thu, 26 Dec 2019 20:37:17 +0000
Received: by mail-wm1-x32d.google.com with SMTP id d139so5670933wmd.0;
 Thu, 26 Dec 2019 12:37:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RjzvH91MnVV7aITjjuXlbaOaZ4rQFhkSbeJltjOfK8A=;
 b=s+drKSEiN/qOoiDdlcEy0bXE+J5Pc5IJ0dzfAXtyoK1ioUgP35H6WcIHPxSGqsGjoj
 IgA7AzNURTPzCOEPtnsnNSbP8evDBzz/bQOmXHjd6aofJ7+iAtnsiWmtO7Mo9eEzI4pR
 rL359/EItc2wt8MqMa1xQKhWBrl4ilmXxnGU8LFBOIVqVPFmkasHP5mcoF06myENwmzK
 V0Fa7vSNiZ5ley+IA3SqIkpBIc45TksTRnyHAYerI+9KOPfC/M8EQ15BryuYrHMW0Oqd
 UfIakJmOvV2/ULXcu1BKOVCHq42Kccr2MfE3rBanZ6ZsW33GF+sXcsF/njXcHJDo7P4o
 MIJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RjzvH91MnVV7aITjjuXlbaOaZ4rQFhkSbeJltjOfK8A=;
 b=Hq0g4QTk4jkbb2w9tWRAAjzl0fwoZOkp63TgHiImLihlQA2UfR/1NIxQ/Mu+yo0gqo
 3PzTJGoxyyJPOM+NF+lkO0ucviO2pdqF3r4junuzqlFKAr7Ezy7ckGgrQJv4iP2ODHqM
 dbrh4euoKmquos9C7RoqwWQmFzCaxf7E2SXArrK/rVGVVjYZ+5X9H2JkGKf9fdgmzI69
 16F+SmjaTWcbtmXIqfyXEKx+FVmB1LeFdzfZe7+Qmixm7mCwKulXVEfQV4wbAQ3akV8Y
 xFIFNiAholQwrBt2PGetWXhPDkgRHu7C/EaON2br8zmsBuxe+DtBf9BH9ueYsKZ3PgQV
 YoDw==
X-Gm-Message-State: APjAAAUXP7QNsKy29qkRq7DSY5X6QJ5Ds52kRdpoMOnMyXPuI3PU4MGT
 1H80/O0JlZ6Q3r9Dux0j8dQ=
X-Google-Smtp-Source: APXvYqw2MZbGNvdpTY6PKEXi82D3m+l0OOPUiJU+ERQgG9SfmDopfpP3drcdmqJBbzAUiexFFSEACA==
X-Received: by 2002:a7b:ca4c:: with SMTP id m12mr15100035wml.176.1577392633660; 
 Thu, 26 Dec 2019 12:37:13 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q3sm32911665wrn.33.2019.12.26.12.37.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 12:37:13 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: andrew@lunn.ch, f.fainelli@gmail.com, linux-amlogic@lists.infradead.org,
 jianxin.pan@amlogic.com
Subject: [RFC v1 2/2] net: stmmac: dwmac-meson8b: add support for the RX delay
 configuration
Date: Thu, 26 Dec 2019 21:36:55 +0100
Message-Id: <20191226203655.4046170-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191226203655.4046170-1-martin.blumenstingl@googlemail.com>
References: <20191226203655.4046170-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_123715_477161_74C6C730 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DO NOT MERGE THIS!

Test results:
- Akaso M8S (not upstream yet) Meson8m2 with RMII PHY: no change
- Odroid-C1 Meson8b with RTL8211F RGMII PHY:
  phy-mode = "rgmii" still works
  phy-mode = "rgmii-id" works now
- Khadas VIM2 GXM with RTL8211F RGMII PHY:
  phy-mode = "rgmii" is now broken!
  phy-mode = "rgmii-id" works

The public A311D datasheet [0] mentions these bits in the PRG_ETH0 (also
call PRG_ETH0_REG) register:
- bit[13]: RMII & RGMII mode, Enable data delay adjustment and
  calibration logic.
- bit[14]: Set RXDV and RXD setup time, data is aligned with index 0.
  When set to 1, auto delay and skew.
- bit[19:15]:  Set bit14 to 0. RMII & RGMII mode. Capture input data at
  clock index equal to adj_delay.
- bit[24:20]: RMII & RGMII mode. 5 Bits correspondent to
  {RXDV, RXD[3:0]}, set to 1 will delay the data capture by 1 cycle.
(do all of these bits have the same meaning for all supported SoCs:
Meson8b, Meson8m2, GXBB, GXL, GXM, AXG, G12A, G12B, SM1?)

The public "Amlogic Ethernet controller user guide" recommends the
following settings.
RMII: adj_enable = 1, adj_setup = 0, adj_delay = 18, adj_skew = 0x0
RGMII: adj_enable = 1, adj_setup = 1, adj_delay = 4, adj_skew = 0xc
(shouldn't adj_delay be 0 for the RGMII mode based on the register
description above?)

Do we need to expose adj_delay and adj_skew to devicetree?
How do I know which value to set for each board?

[0] https://dl.khadas.com/Hardware/VIM3/Datasheet/A311D_Datasheet_01_Wesion.pdf
[1] http://openlinux.amlogic.com/@api/deki/files/75/=Amlogic_Ethenet_controller_user_Guide.pdf

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../ethernet/stmicro/stmmac/dwmac-meson8b.c   | 59 ++++++++++---------
 1 file changed, 32 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
index 1483761ab1e6..af25eb1aea41 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
@@ -33,6 +33,10 @@
 #define PRG_ETH0_CLK_M250_SEL_SHIFT	4
 #define PRG_ETH0_CLK_M250_SEL_MASK	GENMASK(4, 4)
 
+/* TX clock delay in ns = "8ns / 4 * tx_dly_val" (where 8ns are exactly one
+ * cycle of the 125MHz RGMII TX clock):
+ * 0ns = 0x0, 2ns = 0x1, 4ns = 0x2, 6ns = 0x3
+ */
 #define PRG_ETH0_TXDLY_MASK		GENMASK(6, 5)
 
 /* divider for the result of m250_sel */
@@ -44,6 +48,11 @@
 #define PRG_ETH0_INVERTED_RMII_CLK	BIT(11)
 #define PRG_ETH0_TX_AND_PHY_REF_CLK	BIT(12)
 
+#define PRG_ETH0_ADJ_ENABLE		BIT(13)
+#define PRG_ETH0_ADJ_SETUP		BIT(14)
+#define PRG_ETH0_ADJ_DELAY		GENMASK(19, 15)
+#define PRG_ETH0_ADJ_SKEW		GENMASK(24, 20)
+
 #define MUX_CLK_NUM_PARENTS		2
 
 struct meson8b_dwmac;
@@ -241,29 +250,38 @@ static int meson_axg_set_phy_mode(struct meson8b_dwmac *dwmac)
 
 static int meson8b_init_prg_eth(struct meson8b_dwmac *dwmac)
 {
+	u8 tx_dly_val = dwmac->tx_delay_ns >> 1;
+	u32 delay_config;
 	int ret;
-	u8 tx_dly_val = 0;
 
 	switch (dwmac->phy_mode) {
 	case PHY_INTERFACE_MODE_RGMII:
+		delay_config = FIELD_PREP(PRG_ETH0_TXDLY_MASK, tx_dly_val);
+		delay_config |= PRG_ETH0_ADJ_ENABLE | PRG_ETH0_ADJ_SETUP;
+		break;
 	case PHY_INTERFACE_MODE_RGMII_RXID:
-		/* TX clock delay in ns = "8ns / 4 * tx_dly_val" (where
-		 * 8ns are exactly one cycle of the 125MHz RGMII TX clock):
-		 * 0ns = 0x0, 2ns = 0x1, 4ns = 0x2, 6ns = 0x3
-		 */
-		tx_dly_val = dwmac->tx_delay_ns >> 1;
-		/* fall through */
-
-	case PHY_INTERFACE_MODE_RGMII_ID:
+		delay_config = FIELD_PREP(PRG_ETH0_TXDLY_MASK, tx_dly_val);
+		break;
 	case PHY_INTERFACE_MODE_RGMII_TXID:
+		delay_config = PRG_ETH0_ADJ_ENABLE | PRG_ETH0_ADJ_SETUP;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_ID:
+	case PHY_INTERFACE_MODE_RMII:
+	default:
+		delay_config = 0;
+		break;
+	};
+
+	meson8b_dwmac_mask_bits(dwmac, PRG_ETH0, PRG_ETH0_TXDLY_MASK |
+				PRG_ETH0_ADJ_ENABLE | PRG_ETH0_ADJ_SETUP |
+				PRG_ETH0_ADJ_DELAY | PRG_ETH0_ADJ_SKEW,
+				delay_config);
+
+	if (phy_interface_mode_is_rgmii(dwmac->phy_mode)) {
 		/* only relevant for RMII mode -> disable in RGMII mode */
 		meson8b_dwmac_mask_bits(dwmac, PRG_ETH0,
 					PRG_ETH0_INVERTED_RMII_CLK, 0);
 
-		meson8b_dwmac_mask_bits(dwmac, PRG_ETH0, PRG_ETH0_TXDLY_MASK,
-					FIELD_PREP(PRG_ETH0_TXDLY_MASK,
-						   tx_dly_val));
-
 		/* Configure the 125MHz RGMII TX clock, the IP block changes
 		 * the output automatically (= without us having to configure
 		 * a register) based on the line-speed (125MHz for Gbit speeds,
@@ -286,24 +304,11 @@ static int meson8b_init_prg_eth(struct meson8b_dwmac *dwmac)
 		devm_add_action_or_reset(dwmac->dev,
 					(void(*)(void *))clk_disable_unprepare,
 					dwmac->rgmii_tx_clk);
-		break;
-
-	case PHY_INTERFACE_MODE_RMII:
+	} else {
 		/* invert internal clk_rmii_i to generate 25/2.5 tx_rx_clk */
 		meson8b_dwmac_mask_bits(dwmac, PRG_ETH0,
 					PRG_ETH0_INVERTED_RMII_CLK,
 					PRG_ETH0_INVERTED_RMII_CLK);
-
-		/* TX clock delay cannot be configured in RMII mode */
-		meson8b_dwmac_mask_bits(dwmac, PRG_ETH0, PRG_ETH0_TXDLY_MASK,
-					0);
-
-		break;
-
-	default:
-		dev_err(dwmac->dev, "unsupported phy-mode %s\n",
-			phy_modes(dwmac->phy_mode));
-		return -EINVAL;
 	}
 
 	/* enable TX_CLK and PHY_REF_CLK generator */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
