Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A478C3C8A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwC0jkUvGC6EhVriJeDccsc3pwMjDL49VbGam0YM9Zo=; b=GpVG3jrGHh7rDt
	d2Yzdv1lN2qsf8+HppfmC+vfMnHHxd/jGeQbD17ojov+Q+d/9lsSJ9k8tkP4u3nrJeGSz4sK9ifqO
	Tl+Dw/SszqptuukJzHAxUkuw8GG4Txq23mcSbKwfOr8X1KEFM0dXQi2AymTOnNm1M8vOJb+4HEEZo
	lG9sfOv8vmR8lZLtnghW89/vDqHUezylI8GT0aBxZGWyc5nJvw/PmVKt4zl5KUy3siDIbHyKfYsi0
	nVEwsFlik6tZ5qO1eyNMKZ5cRzz8ilbwAfWyPvAz22cLz/Pmnx65MzoiClSQRM9hQAr4egN4d95hY
	P18S+6AFUg12N8BrbS/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hads5-0002zD-D0; Tue, 11 Jun 2019 10:19:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadqF-0001Xl-Hh
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:17:24 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 290F1205F4;
 Tue, 11 Jun 2019 10:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560248243;
 bh=/09KXtWMPv1zDkULx4kUbHsUHwiB0AovEkKYAfE+tjE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YrENXfBzzImZk3E1jcAAmytgqJelWHx7GPPcLLtW59aeb2j+mMwraPZUBnJrO9vxb
 zGslfYs8c45q6f2PMNSs/rJeHf8GaHfbAT9FEIn8O7k1FVCUnZyx+bE7ckjYy17JBE
 SIOa3YxkEfgEnWIFfSB04UndiVN9XazPD10GwAAE=
Received: by wens.tw (Postfix, from userid 1000)
 id 3F187603E3; Tue, 11 Jun 2019 18:17:18 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 08/25] clk: sunxi-ng: switch to of_clk_hw_register() for
 registering clks
Date: Tue, 11 Jun 2019 18:16:41 +0800
Message-Id: <20190611101658.23855-9-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611101658.23855-1-wens@kernel.org>
References: <20190611101658.23855-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_031723_620988_E3C1CEBC 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Commit 89a5ddcc799d ("clk: Add of_clk_hw_register() API for early clk
drivers") introduces a new API for registering clks, which allows the
user to directly specify a device node, even if there is no struct
device attached to it. The device node is used for local DT clock-names
matching.

Switch to of_clk_hw_register() so that local DT clock-names matching
works.

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/clk/sunxi-ng/ccu_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu_common.c b/drivers/clk/sunxi-ng/ccu_common.c
index 40aac316128f..f1db29854934 100644
--- a/drivers/clk/sunxi-ng/ccu_common.c
+++ b/drivers/clk/sunxi-ng/ccu_common.c
@@ -110,7 +110,7 @@ int sunxi_ccu_probe(struct device_node *node, void __iomem *reg,
 		if (!hw)
 			continue;
 
-		ret = clk_hw_register(NULL, hw);
+		ret = of_clk_hw_register(node, hw);
 		if (ret) {
 			pr_err("Couldn't register clock %d - %s\n",
 			       i, clk_hw_get_name(hw));
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
