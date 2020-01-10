Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC8C136C8C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:57:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Qb5tfTHz8kH5KQniXGYBwPvDMnS4FQxHVKfwPf5oVAU=; b=Ftzs9//iXShVu3jTGq8tEQjoli
	pAC3XlmhEibQ2t2wG8YcGcC6pFjagVruIrweoEXZU8ZcPuZ6l8tiUFXj+RWa4Ugop6v8hyVOOvzCN
	9ICQ8xhFtxSkjD7iBwbTbFLzkuBkPb0dkCqRG7H1j0bLpp+wPWuFH1CuYR5pfKVDjnpWs98vLXbcJ
	I/d0DWaxpKQSZiJPcNXgeWkGN0OrvpVQEIWBXQkN8MOis9/+0QUqRrTZN78uDKo/GOjZwdBURuVOD
	2UOXjnjQ1FXBLE2ubwliIDgWKaU27+2/eSnz63dIdFqAs3jnPlW3Ep31yFNsPalP/ciDgo9TwL042
	+m3YucYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipsuy-0001jn-PQ; Fri, 10 Jan 2020 11:57:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipss5-0006eD-2F
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 11:54:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B75DB13A1;
 Fri, 10 Jan 2020 03:54:32 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 97D9A3F534;
 Fri, 10 Jan 2020 03:54:31 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH 07/14] net: axienet: Fix SGMII support
Date: Fri, 10 Jan 2020 11:54:08 +0000
Message-Id: <20200110115415.75683-8-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110115415.75683-1-andre.przywara@arm.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_035433_198791_80A7FF2F 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Robert Hancock <hancock@sedsystems.ca>, netdev@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With SGMII, the MAC and the PHY can negotiate the link speed between
themselves, without the host needing to mediate between them.
Linux recognises this, and will call phylink's mac_config with the speed
member set to SPEED_UNKNOWN (-1).
Currently the axienet driver will bail out and complain about an
unsupported link speed.

Teach axienet's mac_config callback to leave the MAC's speed setting
alone if the requested speed is SPEED_UNKNOWN.

This fixes axienet operation when the hardware is using SGMII.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../net/ethernet/xilinx/xilinx_axienet_main.c | 21 ++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 8d2b67cbecf9..e83c7b005f50 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1512,20 +1512,21 @@ static void axienet_mac_config(struct phylink_config *config, unsigned int mode,
 {
 	struct net_device *ndev = to_net_dev(config->dev);
 	struct axienet_local *lp = netdev_priv(ndev);
-	u32 emmc_reg, fcc_reg;
+	u32 fcc_reg, speed_reg = ~0;
 
-	emmc_reg = axienet_ior(lp, XAE_EMMC_OFFSET);
-	emmc_reg &= ~XAE_EMMC_LINKSPEED_MASK;
 
 	switch (state->speed) {
+	case SPEED_UNKNOWN:
+		/* Keep the current MAC speed setting. Used for SGMII. */
+		break;
 	case SPEED_1000:
-		emmc_reg |= XAE_EMMC_LINKSPD_1000;
+		speed_reg = XAE_EMMC_LINKSPD_1000;
 		break;
 	case SPEED_100:
-		emmc_reg |= XAE_EMMC_LINKSPD_100;
+		speed_reg = XAE_EMMC_LINKSPD_100;
 		break;
 	case SPEED_10:
-		emmc_reg |= XAE_EMMC_LINKSPD_10;
+		speed_reg = XAE_EMMC_LINKSPD_10;
 		break;
 	default:
 		dev_err(&ndev->dev,
@@ -1533,7 +1534,13 @@ static void axienet_mac_config(struct phylink_config *config, unsigned int mode,
 		break;
 	}
 
-	axienet_iow(lp, XAE_EMMC_OFFSET, emmc_reg);
+	if (speed_reg != ~0) {
+		u32 emmc_reg = axienet_ior(lp, XAE_EMMC_OFFSET);
+
+		emmc_reg &= ~XAE_EMMC_LINKSPEED_MASK;
+		emmc_reg |= speed_reg;
+		axienet_iow(lp, XAE_EMMC_OFFSET, emmc_reg);
+	}
 
 	fcc_reg = axienet_ior(lp, XAE_FCC_OFFSET);
 	if (state->pause & MLO_PAUSE_TX)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
