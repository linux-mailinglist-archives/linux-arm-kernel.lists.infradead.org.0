Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D0A22DF2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:08:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tnIhDXe+mni+FWdisW/F0UEa5zMdAZMCb7cJ+ZVhvs=; b=csFQaUPZalE0Zn
	hE0Y6guNna2Ll+Mn5Wz7mGaQHPGj40t7Xws166uVPZCux5UjsEU77KTBE9N39DrXIpXVVkHIUK4r8
	6THXdL4vpdKqiQfuFuGpdP+ZDUlsIgVC7qmVfc2YlqcPuzUlRe600/6gjnsrzvIohriXBHj2eTLp8
	sbI6rSxmWhRBenpwEgyeKfndcB7RXOr/LAfbF0e7R1Vba4yv92AYpv3NBEiZ9Tn7GSMGtoEDIuvKh
	U+A+7WSEZcCoYKATkBJ37iqS1km97loZ3fJLzWk/IMZvHhBlk6ImD37upv3ndvULxABmBi0Z0PG9p
	cIuFg1wlx/6asTllVceA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdLK-0004Sy-E0; Mon, 20 May 2019 08:08:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdIg-0001Ir-H8
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:05:40 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09F842146F;
 Mon, 20 May 2019 08:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558339537;
 bh=CWNcXcAiiwq60Rxoas+cEOG2AqiMII6Upp6sD2Byv84=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wHL45ANTG59HHoxXdcVLam0z457jT6PGVw7gbBmpJftjcCdyD/mrtLx1lsNkgVWwo
 J9JwEpJ5ituKo+ZjXt0AJmt5eSu7ZGwYR/0a8pi6HflCi4AduivatUjdceTLe9+qf6
 mSiax4axNXHRhdVmOHZANQesx4KwOT8/X+nRpQjk=
Received: by wens.tw (Postfix, from userid 1000)
 id 75FEE60527; Mon, 20 May 2019 16:05:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH 08/25] clk: sunxi-ng: switch to of_clk_hw_register() for
 registering clks
Date: Mon, 20 May 2019 16:04:04 +0800
Message-Id: <20190520080421.12575-9-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520080421.12575-1-wens@kernel.org>
References: <20190520080421.12575-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010538_759573_C457AE8C 
X-CRM114-Status: GOOD (  14.02  )
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

Commit 89a5ddcc799d ("clk: Add of_clk_hw_register() API for early clk
drivers") introduces a new API for registering clks, which allows the
user to directly specify a device node, even if there is no struct
device attached to it. The device node is used for local DT clock-names
matching.

Switch to of_clk_hw_register() so that local DT clock-names matching
works.

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
