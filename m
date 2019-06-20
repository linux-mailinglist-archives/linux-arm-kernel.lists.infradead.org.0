Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5CB4CF84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:49:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtnuG//i+kaM8zMdFv2bwVeMEm48PmJ+KXadbPz3toI=; b=U4bDpYnJJhZ4xn
	gnclydJBxJMRzvYbWR31xU1xhc2Y5xtYwmwEdlFobe9t3JvWroR8aq1/f/A3X+ah6pWEmYec3fNhg
	hHuZERBOJqr9SpimcWleyceL1gsJerj/Q9WogsUHIYIQBGh7dgDzhmuoKG+W7fU0hYUEBbvXQQ0VT
	YXxrWO6/AQTjzvGhcrORomMxOWX8m9TS5dRMgxH89Ihv4ILUttwdNIn8hfam6QLeiYohgwxyPPM2g
	fk9jmNKDiNdhLfsdPpTvk+PHdukAnwllxrDNLgk+AaZBS5aw88Gg1W5CAF3yFzWx6N/IRfmG728K5
	J/xJxDNHEQ28eJL+GXGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxRL-0002oN-Jx; Thu, 20 Jun 2019 13:49:23 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxPw-0001m9-DK
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:47:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1561038471; bh=m7Sy/4DzZNajn4t/pyAlTRZlWZO1B2wUdtC3i/m0PqY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e2jHhF8llhegj+YumzfHweNU4AcFBuYyNw3C2NpBPQlL75yxe4x21HWZsnVT/VE5F
 SsJ5b92WqsVrB/XW43pLVv/+I99QHesL6vv+3DbT6kssivKlPj8pZ0vFT0qDaCHtYZ
 OEQUEKts2joi/pC0HrSob7vsKCEQ3Ktv7FzkesLc=
From: megous@megous.com
To: linux-sunxi@googlegroups.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: [PATCH v7 1/6] net: stmmac: sun8i: add support for Allwinner H6 EMAC
Date: Thu, 20 Jun 2019 15:47:43 +0200
Message-Id: <20190620134748.17866-2-megous@megous.com>
In-Reply-To: <20190620134748.17866-1-megous@megous.com>
References: <20190620134748.17866-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_064756_619596_2747C612 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Ondrej Jirman <megous@megous.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, Jose Abreu <joabreu@synopsys.com>,
 Daniel Vetter <daniel@ffwll.ch>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

The EMAC on Allwinner H6 is just like the one on A64. The "internal PHY" on
H6 is on a co-packaged AC200 chip, and it's not really internal (it's
connected via RMII at PA GPIO bank).

Add support for the Allwinner H6 EMAC in the dwmac-sun8i driver.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 .../net/ethernet/stmicro/stmmac/dwmac-sun8i.c    | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
index b15c6d5dbd38..c3e94104474f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -138,6 +138,20 @@ static const struct emac_variant emac_variant_a64 = {
 	.tx_delay_max = 7,
 };
 
+static const struct emac_variant emac_variant_h6 = {
+	.default_syscon_value = 0x50000,
+	.syscon_field = &sun8i_syscon_reg_field,
+	/* The "Internal PHY" of H6 is not on the die. It's on the
+	 * co-packaged AC200 chip instead.
+	 */
+	.soc_has_internal_phy = false,
+	.support_mii = true,
+	.support_rmii = true,
+	.support_rgmii = true,
+	.rx_delay_max = 31,
+	.tx_delay_max = 7,
+};
+
 #define EMAC_BASIC_CTL0 0x00
 #define EMAC_BASIC_CTL1 0x04
 #define EMAC_INT_STA    0x08
@@ -1216,6 +1230,8 @@ static const struct of_device_id sun8i_dwmac_match[] = {
 		.data = &emac_variant_r40 },
 	{ .compatible = "allwinner,sun50i-a64-emac",
 		.data = &emac_variant_a64 },
+	{ .compatible = "allwinner,sun50i-h6-emac",
+		.data = &emac_variant_h6 },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, sun8i_dwmac_match);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
