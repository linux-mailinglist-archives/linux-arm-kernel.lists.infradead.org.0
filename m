Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D03B46F7C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 12:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9s2GJ85zTbtMwNVtnSrMwbOvO3Vlaur5NOx1j2D0/vc=; b=vDliLrau6MKa0S
	Hhiup15jswd2vMLccO6CPaQRHXEMDGmHDEgfdO4cNzkSTukG+gVTmgIAms/MKDf+VoBa8k0LfrdAU
	qXGfXk4xymoqc2S22P0wrRi6f9X7n50gtFihbqo9c42GE5sMhN6IC/BdC/ExSiq0PvB1kkzW6Z87t
	0jwFLczC8roFDZXdXLSwSOiI9/24ZXlwEhN0ocZWEOcd3COxVbNnM1d7NVlauOLfqeH4ZXz/D1IF5
	P1Lvoz7RqLvGj0SlX20PuMCGLu83mRsyF7ey9/hVNPt8Omu+4+AC5qzJ3AtORco0xcU+o4+oXKB+F
	UbAkzpkf7sPTfCpD1etg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc5ex-0006AO-Pt; Sat, 15 Jun 2019 10:11:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc5d7-0003VL-2d
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 10:09:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id c66so4711481wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 03:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+2oD/T2gc6N24fqNrzj6/wc7vB4Laq1g0xwvSr2ZKbs=;
 b=Tbn+fRxNzDPqt3dXwDOHmhvz1KRUKIeLE15UwPS7Aw07mlz4dq/T6LF2SVTNLz5mLZ
 PyoiOmkF/joUJFS6kUJ/0/MNwgoN57I6kkVuBeqWRwohMevKvE0F+dc/FzuBAMUyJ03v
 G8NweV2l51cLh0h8qJzK5Geqx3lDnoFEsPCKeP40L1LFRZuaIN8LHPrOhi4qaviSZvp6
 94HWbfFXG67h7zj8SJU0KrYlQ3HXdv1/j3vkRASNTrog5v0F+YrNvVeNrAs89dV6alZ4
 TI+WxthFrtSJ7iIYfJihpbsm66zotMRodljmY2LmrEbb64uArTJ3SjgFlzJhFZsHCgv0
 SZ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+2oD/T2gc6N24fqNrzj6/wc7vB4Laq1g0xwvSr2ZKbs=;
 b=bHiraVFeAlfw7OLc36fKXIkDfDlRzy++0OqiqmpFhEKMANUKzRvX3I2EUd6FqRApw+
 t8DH7Uo7QzLZZzfqKvS8ZDBpFttt9HwH9IySZ2lNLrkZ7lcSqZZ1Edf3Uasm9ZGLJYyc
 D3Rhtf27gIog2vAeg35jKG2dEwyJkZ7Ch2XoeN1LmrfjiFsko/LL2WhNXnr8YyrHwwSR
 8hkZnH0qxYusP9JJ80g1gV1PoUuSvePn+iobcUOXpLOUsIt4tRv8SGQ5MG+Gi+QsYZ5y
 6gbCztiTpBK6IlJv7u2oXQCj2dhMSEVp4u/0bFkizqZQGjSOc5kmdmYAYt4qcoLkHe5T
 LkyA==
X-Gm-Message-State: APjAAAVzw6TCX335mcoL3KAjRvitpYJ51oaRLgTciF8x5XILARZR/Yxo
 SyA4Ul0+1nEqzH0I9X1OV+A=
X-Google-Smtp-Source: APXvYqyWy5DuzLQIfgqm/qwN02Z8iZMe0vr3d729+Ve1oTg2V8Q3d6yjtc0DL1CeTDaOZ2WQ3MBHCw==
X-Received: by 2002:a1c:b6d4:: with SMTP id g203mr11100015wmf.19.1560593387236; 
 Sat, 15 Jun 2019 03:09:47 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C20E00A9A405DFDBBC0790.dip0.t-ipconnect.de.
 [2003:f1:33c2:e00:a9a4:5df:dbbc:790])
 by smtp.googlemail.com with ESMTPSA id f2sm9270513wrq.48.2019.06.15.03.09.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 03:09:46 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com, davem@davemloft.net
Subject: [PATCH net-next v1 5/5] net: stmmac: drop the phy_reset hook from
 struct stmmac_mdio_bus_data
Date: Sat, 15 Jun 2019 12:09:32 +0200
Message-Id: <20190615100932.27101-6-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190615100932.27101-1-martin.blumenstingl@googlemail.com>
References: <20190615100932.27101-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_030949_136554_72CDAEDD 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

The phy_reset hook is not set anywhere. Drop it to make
stmmac_mdio_reset() smaller.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c | 6 ------
 include/linux/stmmac.h                            | 1 -
 2 files changed, 7 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index c9454cf4f189..14aa3ee14082 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -247,7 +247,6 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 	struct net_device *ndev = bus->priv;
 	struct stmmac_priv *priv = netdev_priv(ndev);
 	unsigned int mii_address = priv->hw->mii.addr;
-	struct stmmac_mdio_bus_data *data = priv->plat->mdio_bus_data;
 
 #ifdef CONFIG_OF
 	if (priv->device->of_node) {
@@ -277,11 +276,6 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 	}
 #endif
 
-	if (data->phy_reset) {
-		netdev_dbg(ndev, "stmmac_mdio_reset: calling phy_reset\n");
-		data->phy_reset(priv->plat->bsp_priv);
-	}
-
 	/* This is a workaround for problems with the STE101P PHY.
 	 * It doesn't complete its reset until at least one clock cycle
 	 * on MDC, so perform a dummy mdio read. To be updated for GMAC4
diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
index 96d97c908595..9aad16c379e7 100644
--- a/include/linux/stmmac.h
+++ b/include/linux/stmmac.h
@@ -92,7 +92,6 @@
 /* Platfrom data for platform device structure's platform_data field */
 
 struct stmmac_mdio_bus_data {
-	int (*phy_reset)(void *priv);
 	unsigned int phy_mask;
 	int *irqs;
 	int probed_phy_irq;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
