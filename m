Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AD9CF881
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 13:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HAjNu0Flxmnely1Qfr4DNVlINBz1UlPkGRym6DVZ9dM=; b=pYPlEVpIkzix7b
	k4pjKq5JF8J5XWLDF5GedFIJW0O7vATdFwNKVQ2vK9jMaBMuMiyCfqRgBVS9dY8Y9+EcYUgm3XKyn
	0ChY1dMxT/YoBX795O0TXJ4M/s7giBrSl/Dut1MNowAICYuO+/q5GeVwfeJUa7rVJE7UmAlgTzFNQ
	ZKh0mfa32+u5O4lUveJ4H1IlJ0eiYEwpqjQFAK0AEiSBxARedHg+A6ZuxjoIXb/tDC/GyVPkr5auO
	2Jm8iuWCpbuR/m/S9fxPgU2ry8gab+yyRclxx4g3T4ndAkWNXzrES2SsQN6h+LwrIEQcxLBG78655
	gKVgsnYZXoxWfQP7uZ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHnlv-0006qM-TR; Tue, 08 Oct 2019 11:35:19 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnlA-0006RW-EW
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 11:34:33 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id C46B221AF1;
 Tue,  8 Oct 2019 07:34:31 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 08 Oct 2019 07:34:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=IomXpyVOXZ8Uv
 1dPMisUUdf86QeS1crpf/LOXGB55i0=; b=dIgBzducLtm3bjO9Leg5vJzPwNDZA
 tD3kxhrpI+XDTH4bNxgAYJb23dsHyzJQAp39K5TEMP5ilJjObK5wkBZSHea6mEwh
 7sHbTuw0IAUCD1bwZ1sJpvgpa0qYvcuWrdhkEFw6/NMXuDHmLuiaCtGj+JwZtTrq
 +RLvW1+ampAFaghMuHzTuFTVAxdzW7XBGTLGT2AAAEmzZSa9zuMdsXpXlZr2Ntfh
 Fd/iPM+vS2aE2HyFSvVmAggOcYYcrK9hoZ/Xf6VEsgvyyWJEA7uAIX0NenHQ65Gr
 xr/AvWCpg/ayCkerE0ULc8NwwIU9Ri774XG4V8zsF+g53MJ1HkQUy3lFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=IomXpyVOXZ8Uv1dPMisUUdf86QeS1crpf/LOXGB55i0=; b=Mvlrt3Tc
 WpZePURq8P27c6YFdUo8xibi6zt7wN4rHEOGaZEThpmYXOiSpyrQa234C8KBcsf5
 DgzLwtorIZykfr+ZrPFz6vOrwuY6+8nMBdvZErHf19D5eYt6vq7kebUz6QVq1Rv5
 0gFDl6jekAXvkUMRc1DuqVe36k1q8LKQeo1k3Su0xPRz/AccWukw4wgYqtee9C+U
 tG7Uy+v6Rex3bJeqGLLF1IBIQzSxIpZvq8ruFLUvHfM/1CK1BwdLF4ywOA8d6kJv
 Xv0LYoF+3sdy+OwQjj77YBj975e8TwaH6DsW1GOovL0EVm+Atm1ecshlX16GHqga
 SKKp4f1l0lEA8w==
X-ME-Sender: <xms:R3ScXXewqj993nwdvy0W9R9zdTXZH7uZcxxC2q5SIwlY4z4uVXXRsQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrheelgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtfedrheejrddvudehrddujeeknecurfgrrhgrmhepmh
 grihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihii
 vgepud
X-ME-Proxy: <xmx:R3ScXU1dR1Bwcvkr4RpIDdfRxdiSD7XOcELq7uR29_Pj-uiIrQCPRA>
 <xmx:R3ScXX72jGXhSp9et4Ozz8fLijIADE2FOAGkly9RVWGnVmCZpibj2g>
 <xmx:R3ScXTcVyfIMYvYIORliDqx3idVHfkqApo0sKBaavfyGMizkx1Sgvw>
 <xmx:R3ScXfojpt_Rnuw48x2uiNvV2OK7aeA6NrKTls2tfOWU6JiXlw_g3A>
Received: from mistburn.lan (203-57-215-178.dyn.iinet.net.au [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id E1EBCD6005B;
 Tue,  8 Oct 2019 07:34:27 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-clk@vger.kernel.org
Subject: [PATCH 2/2] clk: aspeed: Add RMII RCLK gates for both AST2500 MACs
Date: Tue,  8 Oct 2019 22:05:23 +1030
Message-Id: <20191008113523.13601-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008113523.13601-1-andrew@aj.id.au>
References: <20191008113523.13601-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_043432_633017_BA71990D 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RCLK is a fixed 50MHz clock derived from HPLL that is described by a
single gate for each MAC.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/clk/clk-aspeed.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-aspeed.c b/drivers/clk/clk-aspeed.c
index abf06fb6453e..867d8771bb1e 100644
--- a/drivers/clk/clk-aspeed.c
+++ b/drivers/clk/clk-aspeed.c
@@ -14,7 +14,7 @@
 
 #include "clk-aspeed.h"
 
-#define ASPEED_NUM_CLKS		36
+#define ASPEED_NUM_CLKS		38
 
 #define ASPEED_RESET2_OFFSET	32
 
@@ -28,6 +28,7 @@
 #define  AST2400_HPLL_BYPASS_EN	BIT(17)
 #define ASPEED_MISC_CTRL	0x2c
 #define  UART_DIV13_EN		BIT(12)
+#define ASPEED_MAC_CLK_DLY	0x48
 #define ASPEED_STRAP		0x70
 #define  CLKIN_25MHZ_EN		BIT(23)
 #define  AST2400_CLK_SOURCE_SEL	BIT(18)
@@ -462,6 +463,30 @@ static int aspeed_clk_probe(struct platform_device *pdev)
 		return PTR_ERR(hw);
 	aspeed_clk_data->hws[ASPEED_CLK_MAC] = hw;
 
+	if (of_device_is_compatible(pdev->dev.of_node, "aspeed,ast2500-scu")) {
+		/* RMII 50MHz RCLK */
+		hw = clk_hw_register_fixed_rate(dev, "mac12rclk", "hpll", 0,
+						50000000);
+		if (IS_ERR(hw))
+			return PTR_ERR(hw);
+
+		/* RMII1 50MHz (RCLK) output enable */
+		hw = clk_hw_register_gate(dev, "mac1rclk-gate", "mac12rclk", 0,
+				scu_base + ASPEED_MAC_CLK_DLY, 29, 0,
+				&aspeed_clk_lock);
+		if (IS_ERR(hw))
+			return PTR_ERR(hw);
+		aspeed_clk_data->hws[ASPEED_CLK_GATE_MAC1RCLK] = hw;
+
+		/* RMII2 50MHz (RCLK) output enable */
+		hw = clk_hw_register_gate(dev, "mac2rclk-gate", "mac12rclk", 0,
+				scu_base + ASPEED_MAC_CLK_DLY, 30, 0,
+				&aspeed_clk_lock);
+		if (IS_ERR(hw))
+			return PTR_ERR(hw);
+		aspeed_clk_data->hws[ASPEED_CLK_GATE_MAC2RCLK] = hw;
+	}
+
 	/* LPC Host (LHCLK) clock divider */
 	hw = clk_hw_register_divider_table(dev, "lhclk", "hpll", 0,
 			scu_base + ASPEED_CLK_SELECTION, 20, 3, 0,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
