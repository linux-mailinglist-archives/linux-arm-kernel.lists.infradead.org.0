Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AD622DFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WcraCxqDm6Nf3SHi/WAz2D+mqONFhjBtlToWgNKQzGk=; b=a0YWcoR0tZo/GY
	NtSBb+gs8dX1F8+gUXwtJA0IpDoaMS564/nz7H3oYTJhamlTDy6GXiC9NBvE/5V5hng4O4f99PLmc
	pyhPc2b2Te3gKeX3HWODcSwQT5eDU3KMEXR547cdohxDzWZWxf3ETZvr4V+pnb+GDAeF8WUDinQBr
	u7rA1NoFhjYQBI8X2DOE2CaiTwti3GMly7Sll96lScfaznkY7fKCSVaPeVqPXxIHJcjlbsO5WXYRn
	J3OzWMao3ZN3FT/Ui3Hp8FybvJ+VDpBLrEyEuEF5MwD6/zofmLTjT8VRjxwsHMBGwWZ4qD6G38bTw
	SN2hzspM+2y8GdnxGVEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdMH-0005mb-OB; Mon, 20 May 2019 08:09:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdIi-0001Ma-P9
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:05:55 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 687C321721;
 Mon, 20 May 2019 08:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558339539;
 bh=PhBmKtxTxx8I3oL/+mtaeyEVJsEH/irrYiLTee+PY7I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AVmprhBAuXUJYz4nrGjnrrxxaybLcfGu/fl8sL9LfdAewjLK+Po4KMiargqlNca2l
 69wpldoMtSDxV6WSuP0oLNax7q5XOWJ+d3I5nF8NmYDUD9eM3JeixR1Vthq7qwpg6q
 ioenPXwnTmZ8e0FXMPBph39Un8QlGts7307S+Tyc=
Received: by wens.tw (Postfix, from userid 1000)
 id D2F286584F; Mon, 20 May 2019 16:05:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH 22/25] clk: sunxi-ng: h6-r: Use local parent references for
 CLK_FIXED_FACTOR
Date: Mon, 20 May 2019 16:04:18 +0800
Message-Id: <20190520080421.12575-23-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520080421.12575-1-wens@kernel.org>
References: <20190520080421.12575-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010541_217186_3C446E40 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

With the new clk parenting code and CLK_FIXED_FACTOR_{HW,FW_NAME}
macros, we can reference parents locally via pointers to struct clk_hw
or DT clock-names.

Convert existing CLK_FIXED_FACTOR definitions to either the _HW or
_FW_NAME variant based on whether the parent clock is internal or
external to the CCU.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c b/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
index 27554eaf6929..36cd25bfd8da 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
@@ -49,7 +49,7 @@ static struct ccu_div ar100_clk = {
 	},
 };
 
-static CLK_FIXED_FACTOR(r_ahb_clk, "r-ahb", "ar100", 1, 1, 0);
+static CLK_FIXED_FACTOR_HW(r_ahb_clk, "r-ahb", &ar100_clk.common.hw, 1, 1, 0);
 
 static struct ccu_div r_apb1_clk = {
 	.div		= _SUNXI_CCU_DIV(0, 2),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
