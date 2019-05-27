Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EF72B90A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 18:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Eh5hfoVg3DytDxaXK+tV7FOlWMXN9BZwVChWdJje38=; b=nBZoWy6jpkg/LE
	OZWn3yDxdpbIxIp6HKYHAx/kYyRYktFjurtBYU983Ph+1dlUwQzdBQr/TEDV8KJrH0eFDuXpnbipa
	qBPx1hRN1v8CXhllmzGOLvVHFKnCtQ21r8aM8B8CwQOVLeHGjGP1k46FjtthoAHqiN4dMiQPAPrVV
	BVXCijJXyhBk6FtlzSlcO5e4srCYS5i4AEDwtj0zZTVjyVydX/WE+XLp42ONVMWWY1GHrKeheywo6
	zVL0pr1sdvZbyqDLvjFNu2IdxlUzoY51kZr7WvM/sP3ox9zsib9mgU86q7ptGNqmEBktY8HwFTP++
	PTEXb693zz3QVYGXER6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVIPn-0003IR-W9; Mon, 27 May 2019 16:24:00 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVIOX-00029r-PM
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 16:22:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558974159; bh=W1eysqnIHUZkksJlW6Nnyz1rUD5/k0fxV0/y2AwBQ70=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jtRJyTN0mda0dMEzqcL/RsuQH3ecGfIJExMPybYmhP/91ewbQ8PMdd0t02M7thPNb
 GLx+i1A+NAnqwhvXQb8kcP73pcszhszejUdUlmzP1pa+CTgXFB7L4O3QLKLmKczsFa
 br6uJjWMkUjgR9ciFeZpdqhKN/3ii65yVduiLv/Y=
From: megous@megous.com
To: linux-sunxi@googlegroups.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 1/6] net: stmmac: sun8i: add support for Allwinner H6 EMAC
Date: Mon, 27 May 2019 18:22:32 +0200
Message-Id: <20190527162237.18495-2-megous@megous.com>
In-Reply-To: <20190527162237.18495-1-megous@megous.com>
References: <20190527162237.18495-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_092242_161158_B524D385 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
index ba124a4da793..3258dec84d55 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -147,6 +147,20 @@ static const struct emac_variant emac_variant_a64 = {
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
@@ -1212,6 +1226,8 @@ static const struct of_device_id sun8i_dwmac_match[] = {
 		.data = &emac_variant_r40 },
 	{ .compatible = "allwinner,sun50i-a64-emac",
 		.data = &emac_variant_a64 },
+	{ .compatible = "allwinner,sun50i-h6-emac",
+		.data = &emac_variant_h6 },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, sun8i_dwmac_match);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
