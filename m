Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F400ED1E34
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 04:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2sVVCHtK5nGYDW5TJzxEHxo57qmsLe1M/usgY7wxZ4=; b=i8iwFTqZEbMFyS
	ruTFB1fa4Ch2fvU2ottMrTX9ZQgw6rpkwQ6nkcHGEbLyUhi8OHZkv3tlgcWDR9lOScrGZ+4mo5rhM
	z1QS1Xpfv+fSssmna4sFT1Ax2pIeFe9Y27d7AftA0kG6On6v2yS3vCTDnMMTkgAz6B9WR6eAqwA87
	GqQV74XjyskLv1mLaDyUfrcqeN7wdnQco0W0IXwtmpwe5QCT7Dqy0aXbzrlPzmcEJww1R9PHdpvbr
	SyhtK/n/2us3BW9Nb8fLITi1CgU72m1IrIuY5/y2lMysvNIEPzUBl4CTqAvt1aJoTUdKo56L5659z
	QEhh0F9gh83xFlSpn2fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iINrp-0007cu-Dx; Thu, 10 Oct 2019 02:07:49 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iINqY-0006Qg-S6
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 02:06:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id E78A120B51;
 Wed,  9 Oct 2019 22:06:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 09 Oct 2019 22:06:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=gXUmnVUli/y3V
 yBEI1euJF3NoxsH2wWbrvVYjkbZXEc=; b=PcALcLoSErFFMgcGP3yoKmL5V9SR2
 Aq5Xd4l476/HxSLI+yD27EJ6md1PgnZHryesUb8rpM6nAGyFh28WVnRZa0LWwFZh
 KOtCOydKJe5hJuwDZjyoH2EsAK80M90iaYX93mVNFfi2aPCZWm4p9CZzWNDIP2s4
 WPzFJ8tlKz22qY5NyMO4I4v1CImj8YuRXzkNGFijAKxu7SoI+3kkm2uzX46TU0AY
 tZ/CC2ItEhNavB9ZVpoS1OlBqGzzI6gMp0Jg/zxjG4p0oETbFBl7AQ/AqBgz4Gk6
 e6xCHNlZ7Cc839QkbXAGhNASiN7Hq/FVdWiZLRUwv/ibqO8RiC+vSH78Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=gXUmnVUli/y3VyBEI1euJF3NoxsH2wWbrvVYjkbZXEc=; b=OADQjVjK
 8QHHZgsoAIicXVU7HvxV8g9SfcvScREj+avAdguj54fEc5jb0yDPPUnk/+Hls98t
 hOIybqyEiRw95fVOpQ8pYfqiTlicvtLo24uGc+LC179XrozvDOf1UHfTIP00qMJJ
 6jgPYxmceyMSxhsPX3K3nG1ieuTfDlFEnpDQZaG+6DfmpiSoQigkr5hC0MxjiMN0
 oxEb6eitUwqLipp1bEr682gP5lbubawTIzmpC1cpFQUjfyOg8EsBT5AJD+rjIvYw
 A3Dy1Zcdqldj4+Yu24SNHW1w6TbAkY6dKTtr+lBk3DozitTURhVjgvyaiVhIdeCV
 72NyBGJXpUBZyQ==
X-ME-Sender: <xms:JJKeXTx1g7CIjuMVtqLDktx2bbUcFz9tA0WJcTJCNgNewOVzag5PdA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedriedvgdehjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 vd
X-ME-Proxy: <xmx:JJKeXe-MO_XqAvPbUVol9xOSbV3gt0s1wGp4V1acWt7vPeW2Z4D0OQ>
 <xmx:JJKeXYbJnw-D09bRU5ROZpXO_yMa_z88GdPn55mVmxgMrYKxlKR1XQ>
 <xmx:JJKeXa8RGO0C0KVNB9AnsEaBKy123ptoMlIPTPpHkS5lA5rcdgeYMg>
 <xmx:JJKeXXHWJNjxUJvz0ZZBJOdC4h51Q6dpz5TsczpHK6uuxDliBn9p4w>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7F6F98005C;
 Wed,  9 Oct 2019 22:06:25 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-clk@vger.kernel.org
Subject: [PATCH v2 2/2] clk: ast2600: Add RMII RCLK gates for all four MACs
Date: Thu, 10 Oct 2019 12:37:25 +1030
Message-Id: <20191010020725.3990-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191010020725.3990-1-andrew@aj.id.au>
References: <20191010020725.3990-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_190631_572060_E3B1DDA7 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

RCLK is a fixed 50MHz clock derived from HPLL/HCLK that is described by a
single gate for each MAC.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/clk/clk-ast2600.c | 47 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 46 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-ast2600.c b/drivers/clk/clk-ast2600.c
index 1c1bb39bb04e..85acc7cdc83c 100644
--- a/drivers/clk/clk-ast2600.c
+++ b/drivers/clk/clk-ast2600.c
@@ -15,7 +15,7 @@
 
 #include "clk-aspeed.h"
 
-#define ASPEED_G6_NUM_CLKS		67
+#define ASPEED_G6_NUM_CLKS		71
 
 #define ASPEED_G6_SILICON_REV		0x004
 
@@ -40,6 +40,9 @@
 
 #define ASPEED_G6_STRAP1		0x500
 
+#define ASPEED_MAC12_CLK_DLY		0x340
+#define ASPEED_MAC34_CLK_DLY		0x350
+
 /* Globally visible clocks */
 static DEFINE_SPINLOCK(aspeed_g6_clk_lock);
 
@@ -485,6 +488,11 @@ static int aspeed_g6_clk_probe(struct platform_device *pdev)
 		return PTR_ERR(hw);
 	aspeed_g6_clk_data->hws[ASPEED_CLK_SDIO] = hw;
 
+	/* MAC1/2 RMII 50MHz RCLK */
+	hw = clk_hw_register_fixed_rate(dev, "mac12rclk", "hpll", 0, 50000000);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+
 	/* MAC1/2 AHB bus clock divider */
 	hw = clk_hw_register_divider_table(dev, "mac12", "hpll", 0,
 			scu_g6_base + ASPEED_G6_CLK_SELECTION1, 16, 3, 0,
@@ -494,6 +502,27 @@ static int aspeed_g6_clk_probe(struct platform_device *pdev)
 		return PTR_ERR(hw);
 	aspeed_g6_clk_data->hws[ASPEED_CLK_MAC12] = hw;
 
+	/* RMII1 50MHz (RCLK) output enable */
+	hw = clk_hw_register_gate(dev, "mac1rclk", "mac12rclk", 0,
+			scu_g6_base + ASPEED_MAC12_CLK_DLY, 29, 0,
+			&aspeed_g6_clk_lock);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+	aspeed_g6_clk_data->hws[ASPEED_CLK_MAC1RCLK] = hw;
+
+	/* RMII2 50MHz (RCLK) output enable */
+	hw = clk_hw_register_gate(dev, "mac2rclk", "mac12rclk", 0,
+			scu_g6_base + ASPEED_MAC12_CLK_DLY, 30, 0,
+			&aspeed_g6_clk_lock);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+	aspeed_g6_clk_data->hws[ASPEED_CLK_MAC2RCLK] = hw;
+
+	/* MAC1/2 RMII 50MHz RCLK */
+	hw = clk_hw_register_fixed_rate(dev, "mac34rclk", "hclk", 0, 50000000);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+
 	/* MAC3/4 AHB bus clock divider */
 	hw = clk_hw_register_divider_table(dev, "mac34", "hpll", 0,
 			scu_g6_base + 0x310, 24, 3, 0,
@@ -503,6 +532,22 @@ static int aspeed_g6_clk_probe(struct platform_device *pdev)
 		return PTR_ERR(hw);
 	aspeed_g6_clk_data->hws[ASPEED_CLK_MAC34] = hw;
 
+	/* RMII3 50MHz (RCLK) output enable */
+	hw = clk_hw_register_gate(dev, "mac3rclk", "mac34rclk", 0,
+			scu_g6_base + ASPEED_MAC34_CLK_DLY, 29, 0,
+			&aspeed_g6_clk_lock);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+	aspeed_g6_clk_data->hws[ASPEED_CLK_MAC3RCLK] = hw;
+
+	/* RMII4 50MHz (RCLK) output enable */
+	hw = clk_hw_register_gate(dev, "mac4rclk", "mac34rclk", 0,
+			scu_g6_base + ASPEED_MAC34_CLK_DLY, 30, 0,
+			&aspeed_g6_clk_lock);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+	aspeed_g6_clk_data->hws[ASPEED_CLK_MAC4RCLK] = hw;
+
 	/* LPC Host (LHCLK) clock divider */
 	hw = clk_hw_register_divider_table(dev, "lhclk", "hpll", 0,
 			scu_g6_base + ASPEED_G6_CLK_SELECTION1, 20, 3, 0,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
