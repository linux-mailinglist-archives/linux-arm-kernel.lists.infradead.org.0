Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C51CD1E2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 04:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rrdu0YeTLYxZEO9xhzmde2ETRpPT+YnX+47A0x7lPRk=; b=qShQNO4hEgCUVe
	VC+wpZDDMO9Xy1zndVFfFEN/KDwns8WABtP93k1PLqAxTwRLvtVEyc/C9CxPPo2bHXZKNpDIBN1c3
	SzmOM4mzDzbMJUKHxlai5x7o2zFOA7atN1g93f9lk0bJhXsoREp+05eKlzeAtmeghruBJT3WbOU99
	H4YenNhjNCQeHrhW2St+Q4q3GwdwCwDK1c2qrgEj7mp/MW2vY/awppFCflnqGQVXIwZ2yzISygUWd
	SzWi26mGIr08dWRAeLgUaAGdJT9oy7IttIJjN/3U8IuDTAPbZuMPfoUvFnEni3YBHSS3ge8U59ZOj
	024L7mYfpon//DnoX3NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iINqt-0006WW-Nm; Thu, 10 Oct 2019 02:06:51 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iINq4-00064n-DU
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 02:06:01 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id C3C5221F69;
 Wed,  9 Oct 2019 22:05:59 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 09 Oct 2019 22:05:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=8kdG9zhIR956q
 GWhaPFWlTIP80VwjVLkxKENfTlDMS4=; b=T9pFEC/haKQdt6yfBtJSBGMvDidCG
 Wc7V7ru+eoWGwPQn9EL6H04eoPP74i1b32ctbp3u0h9y60Zmd5ldEpfc8WQArat1
 Kf9iWKdCsd1D/HqChep8+PaEr89/OEtOpfVGAoDNU/0l2XcwIQ3gyZDvXTrs1X+9
 3Gn8vDUaWohBPvVMfDX4egdTosQ8pBNGSLa6NhblaqSL/B8ymITsLFrXeawbzi03
 JTjXenIw1CA0knSIEo7aytt5ULQpvDFKjQ4YQKhA9eKpeykHXsfaeEP2CqhRQlKv
 a3Zfc0Ny07H3/5Tf8O7MOmC40ylwMfg645fOLJnC7ade1fef4l+7QsV/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=8kdG9zhIR956qGWhaPFWlTIP80VwjVLkxKENfTlDMS4=; b=vzmGa8Jl
 jmeLM7E89olc4fD/vvKJqaLXhB2HqLvceEvp27OauGTtDr8ADbFJQXv0TJEnzI5z
 kXEVTQhT2FAaqHJj4m+r8zVI1vrNJbrvQ8BT7PLFpb6xG8WenmSBDolYhMe0O4y5
 Mvqdauh2BjWfR2/92zJjXQVrsoi+boEGtTFocmatoQXA4HiTjwrv/qOzJ6lNgVN4
 bLXwRPsPW2EOIdZZpfnXSPykpNC3jh0ofL+40eAQV3vd9QctjgX7jxtmz9F0vyxD
 taiL15tudBLMe+/2aRBeLlfE+BsRS0bRVYrJeYrT5qf0i+soBdvUIobq6jlb0SZ8
 /fT93ZVW0FPmKA==
X-ME-Sender: <xms:B5KeXbVxFuO3-aitgcQhhs2p5qBvkrkRGH-ql_ViIfaTrJGwv2C29g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedriedvgdehjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 td
X-ME-Proxy: <xmx:B5KeXX39t0TUd5lmpFzMwU5YYATuC3t1ttl8lJkkisjHxuS_WtELMw>
 <xmx:B5KeXSYp_GaDcMGXCKEj9syTWGDZgCdZ_ed_FUm0HiIedyvkNQRyLw>
 <xmx:B5KeXaqyXFgQU-E10YIONlatb1Z7Mg5rHlZuN2UKHFtmBRwoNTJo5Q>
 <xmx:B5KeXWeYjp2gYpH70wSoy-OvAMz9B8GQdbfoWPt7vjJ2OahhZU12Tg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6CA8FD6005D;
 Wed,  9 Oct 2019 22:05:56 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-clk@vger.kernel.org
Subject: [PATCH v2 2/2] clk: aspeed: Add RMII RCLK gates for both AST2500 MACs
Date: Thu, 10 Oct 2019 12:36:55 +1030
Message-Id: <20191010020655.3776-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191010020655.3776-1-andrew@aj.id.au>
References: <20191010020655.3776-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_190600_651563_BC5A818E 
X-CRM114-Status: UNSURE (   9.72  )
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

RCLK is a fixed 50MHz clock derived from HPLL that is described by a
single gate for each MAC.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
v2: Drop "-gate" from clock names

 drivers/clk/clk-aspeed.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-aspeed.c b/drivers/clk/clk-aspeed.c
index abf06fb6453e..411ff5fb2c07 100644
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
+		hw = clk_hw_register_gate(dev, "mac1rclk", "mac12rclk", 0,
+				scu_base + ASPEED_MAC_CLK_DLY, 29, 0,
+				&aspeed_clk_lock);
+		if (IS_ERR(hw))
+			return PTR_ERR(hw);
+		aspeed_clk_data->hws[ASPEED_CLK_MAC1RCLK] = hw;
+
+		/* RMII2 50MHz (RCLK) output enable */
+		hw = clk_hw_register_gate(dev, "mac2rclk", "mac12rclk", 0,
+				scu_base + ASPEED_MAC_CLK_DLY, 30, 0,
+				&aspeed_clk_lock);
+		if (IS_ERR(hw))
+			return PTR_ERR(hw);
+		aspeed_clk_data->hws[ASPEED_CLK_MAC2RCLK] = hw;
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
