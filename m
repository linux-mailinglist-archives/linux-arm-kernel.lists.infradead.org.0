Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECEA7637C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jMI7xdI6XZ8GOPkz6EphTjwyu43sF/vwcOYUBJFFaWg=; b=oIfa6zNI01u8h6
	BnXV1EdSBnalaWRXLSsn8m0rRuRIvj/Y+6DTTzAOOf7iealF5dzUdG+dcRlVssqMEh+Vx/5Y/HlpD
	wwsikeetXaGXMcAofQJrPTSMzGgDrCiwJgO0iQ9yWgk0iOx9/KZy1k2TX+SV+oOg6zQxIy3L4x3oR
	Q0l4WaKCSXx15hDDFm7vVLHCIS3ZRxYu9RV6gfklM++T1eOKvJZ5mra+8UW0Sioq9hxKBLI688yTd
	+dxghziURRwvEWCFaYIXqERmaRJwCdTn6nMGCHfqOV9EfQrxJB5Uj3q3LoRWMkEqR50ZsWaNrU9AZ
	EuclaJNCsTI8NRC91Utg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxS6-0004Qc-8U; Fri, 26 Jul 2019 10:27:54 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxRw-0004Pm-92
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:27:45 +0000
Received: by mail-ed1-x541.google.com with SMTP id w13so52872925eds.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 03:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fgttaSu7/U77TvA6+GrlVNqDjBSP1cH/fJcE2FiVPSc=;
 b=Xq7dFVT2BAh2OKlWZADYRxsgSTDnQyREt3lSe51iX1a4VbZ5tbKueNdrd8Tl55F0fH
 jE3HFiLoW8gJBQlPDGPk09oV2PXFmSxEwhfiga28IsSjQuAMyh4iZz9h/hztR9xouEnd
 sqIB7z6gCSaIlN39Lb+vWX3jNLyTJ3SmcVHqvm1x0WsB54H9SOBztWS7rYaON6kYgWk5
 bhSswDrnGIsOjLJshXfCPLprUZ4ieqHvqFCwH8muxoHfuCX/cVp+2R3n3jCysfYL+MwC
 t99y8R7UaVlbRoQhdBAUbmy7gOX+/ySaOLp618i6NcMZT6wRk6d4Z0iX4GpyPt/RNhGW
 iYZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fgttaSu7/U77TvA6+GrlVNqDjBSP1cH/fJcE2FiVPSc=;
 b=NwUgHmfjIeIAK1GtkRYkgrpLZVdHhOcoERUnFkE/gZah0SgGpHc++68isA50LzgzlD
 5X+q145Qbd/mhXd+LvBwmcM27thCoY04u9xERe0UhnIx3s3jDAlWssIiHiXD8GWFuI6o
 Do0O+4+9TxHFiR905kk3WNXQS4McUar3XjOEe4OkWrobkGIY17FFA+l6JPJ9xkwVrfU3
 HDr7LoazB0yKH9fvowB7utRSTt2FAAd5+/uqrmyeli8qCGuKQGCH6DYURjBJ1Xhu9UUy
 3SrbXfiFr7A7rOqIxnqxKXDHBJ2tHtKLQlC/JQZHAjZMC6aiCkk5951DWTAVxgTtsfBl
 bhLw==
X-Gm-Message-State: APjAAAViK4BUSiw3DLRDPFxQxKaRT3BYJBtBdW2UsbH5b8Jstsu+2GpV
 Rwf/5gQG/g3G3pKU0/rcQXQ=
X-Google-Smtp-Source: APXvYqwQ4adhOOkffJ+ooQljdZOK2+c+FVkKICz8TXR5in66XUj5Vqepfv9d8dlyGCxc9wsvjX1kJA==
X-Received: by 2002:a50:b3b8:: with SMTP id s53mr81412876edd.61.1564136862640; 
 Fri, 26 Jul 2019 03:27:42 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id v12sm10210515ejj.52.2019.07.26.03.27.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 03:27:42 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next 1/2] net: stmmac: Make MDIO bus reset optional
Date: Fri, 26 Jul 2019 12:27:40 +0200
Message-Id: <20190726102741.27872-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_032744_322529_8B430000 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 Jon Hunter <jonathanh@nvidia.com>, Jose Abreu <joabreu@synopsys.com>,
 linux-tegra@vger.kernel.org, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The Tegra EQOS driver already resets the MDIO bus at probe time via the
reset GPIO specified in the phy-reset-gpios device tree property. There
is no need to reset the bus again later on.

This avoids the need to query the device tree for the snps,reset GPIO,
which is not part of the Tegra EQOS device tree bindings. This quiesces
an error message from the generic bus reset code if it doesn't find the
snps,reset related delays.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c | 3 +++
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c       | 4 +++-
 drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c        | 1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c   | 8 +++++++-
 include/linux/stmmac.h                                  | 1 +
 5 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c
index 3a14cdd01f5f..66933332c68e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c
@@ -333,6 +333,9 @@ static void *tegra_eqos_probe(struct platform_device *pdev,
 	usleep_range(2000, 4000);
 	gpiod_set_value(eqos->reset, 0);
 
+	/* MDIO bus was already reset just above */
+	data->mdio_bus_data->needs_reset = false;
+
 	eqos->rst = devm_reset_control_get(&pdev->dev, "eqos");
 	if (IS_ERR(eqos->rst)) {
 		err = PTR_ERR(eqos->rst);
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index 4304c1abc5d1..40c42637ad75 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -348,7 +348,9 @@ int stmmac_mdio_register(struct net_device *ndev)
 		max_addr = PHY_MAX_ADDR;
 	}
 
-	new_bus->reset = &stmmac_mdio_reset;
+	if (mdio_bus_data->needs_reset)
+		new_bus->reset = &stmmac_mdio_reset;
+
 	snprintf(new_bus->id, MII_BUS_ID_SIZE, "%s-%x",
 		 new_bus->name, priv->plat->bus_id);
 	new_bus->priv = ndev;
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
index 86f9c07a38cf..d5d08e11c353 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
@@ -63,6 +63,7 @@ static void common_default_data(struct plat_stmmacenet_data *plat)
 	plat->has_gmac = 1;
 	plat->force_sf_dma_mode = 1;
 
+	plat->mdio_bus_data->needs_reset = true;
 	plat->mdio_bus_data->phy_mask = 0;
 
 	/* Set default value for multicast hash bins */
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index 73fc2524372e..333b09564b88 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -342,10 +342,16 @@ static int stmmac_dt_phy(struct plat_stmmacenet_data *plat,
 		mdio = true;
 	}
 
-	if (mdio)
+	if (mdio) {
 		plat->mdio_bus_data =
 			devm_kzalloc(dev, sizeof(struct stmmac_mdio_bus_data),
 				     GFP_KERNEL);
+		if (!plat->mdio_bus_data)
+			return -ENOMEM;
+
+		plat->mdio_bus_data->needs_reset = true;
+	}
+
 	return 0;
 }
 
diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
index 7d06241582dd..7b3e354bcd3c 100644
--- a/include/linux/stmmac.h
+++ b/include/linux/stmmac.h
@@ -81,6 +81,7 @@ struct stmmac_mdio_bus_data {
 	unsigned int phy_mask;
 	int *irqs;
 	int probed_phy_irq;
+	bool needs_reset;
 };
 
 struct stmmac_dma_cfg {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
