Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43313647CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 16:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yHlGgQFRj+pjsMCFqr26Ya3EXuj4Fexp49/q11taj9s=; b=FnKNdIH+yoNK3B
	yTt9dqbayouY7kJQjunBKNHzYHdP/yuo8wDmQNR+F1QUdRrhSzCgoAXdLf2CGLiMZEoWdnkjjPj49
	cbSwMQKjoRGDSb7BgJRpPS6dga+6nZo0mKAolZ3cI9JfCTNu7ZBrvwZcAMm5Nl++VtbEt1QivmU5W
	zqBtjwJaH7hf4xzkeueB0l7vugYlmflKQXEmjvvLoHWEm5XzkTtNcsHlLge/Lz1edlFcARUF5OMoq
	ubsCKqCUtaSYVkUyc6wix3lKuPexhyLkzK7IP1L/3giIkSHX905vjOqDEbTbaOucEoHqTKrBY1V6p
	e2d8bDY9jhxmJs9iLbAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDIu-0005vT-LT; Wed, 10 Jul 2019 14:10:40 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDIg-0005ul-Js
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 14:10:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id DE6A3220A3;
 Wed, 10 Jul 2019 10:10:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 10 Jul 2019 10:10:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=oEpi+6+0w26RCxBP4UT6DzJfnA
 X/f9uFoVKZM8Skn8A=; b=Kz5a5tTxNyorBcpc+UNoDcGZpcJKbJC4GIVEch3yMC
 Rhi3ealHNcRancfrfjCRkHgsXQBmT1B55ANVKy9S0SYuEXYdroWXy0G07sMA8BBu
 CNfXnuAcI29EpjBlakDLLMqJoDttEkzNecg47h2RUXU1qbU9dd8jxbmfMo8c6CCx
 JWv0ZjpQM9BrCMhVMUC+TOrNNlvnMI4HmRrZGmFAAvXzPpaneWpaDx+DjaOshBYJ
 +xeGhGESLn9jBWUshcUU4fISJVA1ndYMFre96rIbKJ1bUHoWzgQE+pPLAqV+Pcdm
 s4I8NUEB/03sBb3bmRYxRqSPNvwouIcf98U1twAUiSFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=oEpi+6+0w26RCxBP4
 UT6DzJfnAX/f9uFoVKZM8Skn8A=; b=sjRKgULhpy0LQqshO1disWZtV/hBTF9wo
 ZlAq/FM7O7aKxYNtCcqCk4YlTvJnGeahvgjtCzKNEG9HHZYqmo7YQrpDfR87kEel
 cCu4WeDaL7nywSRsLUsOTMrGDmmZ7O9pOuEAw3Qfn5var7OQan+RAd5ysijMJHJX
 2ljMxd/j3wTifFaNlE1OuYsNbaXSUhvuWwH/AeU8YncMNVDdFAYIl9LVCtcAD5QE
 We94FlOQojDdQXn54u0ZVO5FMX6EkhRqePNBPDUZ/tzquYgK+gbEu8vkmte+kF4D
 dFX0pYQuJyC2tUI+FMTn+3y8FdT1cDdSlJc1h2twwidxoLj3AGz5Q==
X-ME-Sender: <xms:yvElXSJ4SG24WGntwpZq-QBpuocYYGJTvyrV03fgEaxsujcTvdUypQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeeigdejgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomheptehnughrvgifucfl
 vghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedugedrvddrke
 ehrddvvdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgr
 uhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:yvElXfIcN6wa89Aem-4o4cq38mA6Xrmkk5-Hb03MnH6UqQb-FaOebg>
 <xmx:yvElXakMZ5-q5tbO8BrhEtIai9q7FXkPuMj5my6h0KhtqgbRPes0XA>
 <xmx:yvElXVOODzsYKupGZl8u3YtjMfBeq7L7n73PZ5VZAYzn400fbDUcNA>
 <xmx:y_ElXVuCWTBgi4BF9t9TP_KiIZHwFybqQBRRBBabXpVOomzIsQPZeg>
Received: from localhost.localdomain
 (ppp14-2-85-22.adl-apt-pir-bras31.tpg.internode.on.net [14.2.85.22])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9E52780064;
 Wed, 10 Jul 2019 10:10:14 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-clk@vger.kernel.org
Subject: [PATCH] clk: aspeed: Add SDIO gate
Date: Wed, 10 Jul 2019 23:40:09 +0930
Message-Id: <20190710141009.20651-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_071026_916936_DBB10A11 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
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
Cc: linux-aspeed@lists.ozlabs.org, sboyd@kernel.org, mturquette@baylibre.com,
 ryanchen.aspeed@gmail.com, linux-kernel@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joel Stanley <joel@jms.id.au>

The clock divisor comes with an enable bit (gate). This was not
implemented as we didn't have access to SD hardware when writing the
driver. Now that we can test it, add the gate as a parent to the
divisor.

There is no reason to expose the gate separately, so users will enable
it by turning on the ASPEED_CLK_SDIO divisor.

Signed-off-by: Joel Stanley <joel@jms.id.au>
[aj: Minor style cleanup]
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/clk/clk-aspeed.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/clk-aspeed.c b/drivers/clk/clk-aspeed.c
index 42b4df6ba249..898291501f45 100644
--- a/drivers/clk/clk-aspeed.c
+++ b/drivers/clk/clk-aspeed.c
@@ -500,9 +500,14 @@ static int aspeed_clk_probe(struct platform_device *pdev)
 		return PTR_ERR(hw);
 	aspeed_clk_data->hws[ASPEED_CLK_MPLL] =	hw;
 
-	/* SD/SDIO clock divider (TODO: There's a gate too) */
-	hw = clk_hw_register_divider_table(dev, "sdio", "hpll", 0,
-			scu_base + ASPEED_CLK_SELECTION, 12, 3, 0,
+	/* SD/SDIO clock divider and gate */
+	hw = clk_hw_register_gate(dev, "sd_extclk_gate", "hpll", 0,
+				  scu_base + ASPEED_CLK_SELECTION, 15, 0,
+				  &aspeed_clk_lock);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+	hw = clk_hw_register_divider_table(dev, "sd_extclk", "sd_extclk_gate",
+			0, scu_base + ASPEED_CLK_SELECTION, 12, 3, 0,
 			soc_data->div_table,
 			&aspeed_clk_lock);
 	if (IS_ERR(hw))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
