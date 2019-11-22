Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF2A10624A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 07:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aFgjjmqPtWTbkyEsfus4PVYbjnik0CTh89UEtplxOmQ=; b=Fzf0ej3mLkE+T+
	sxytRkAs/0T2E3WJbstnu2FEF3/1kzG/BSinnPcZXByYmI/jU4BdH0yHy/OtA62mRCqhlIHamRhKg
	ecUz0fcK2UrmdabrlkpS420r08JHD2nuho7vp0qUWXpCZPbqyV5xPZ2wcCFtZAmm5tH0KbDL2Hc10
	rAG9+fHsl1nl0MQpT87U0plApLZ0/0pdPHDG6cG6pqd3QFUgJHWE9eHH10SaSAYuw/zyNxG3NcUI/
	U9SKzlsYBDIVNsnD0RBeUInB+2ZhmilGsTMGEMFSNZ0CjaalNmwc5zLDYEhvvf/mt8EBZiSEk93TM
	qF1xZNGVJqqFc9DmkRJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY22Z-0008Sa-HG; Fri, 22 Nov 2019 06:03:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1wY-0001Ff-R6
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:57:25 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE79C20854;
 Fri, 22 Nov 2019 05:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574402241;
 bh=zCX38j0ApMKwif385tSeV5oiDGYMeI09N9Vdg67Tctw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1zrN+x+CsbkTCkyZIFwfFbnhvbjVXaxlUJNyDmP1merkzFk2HtRJQQdLzLLCdpSGG
 i46xtC08XkC9BHq7PFtu9W6mb+ajy0cJ1pc78NLhSI26Dr2xZhQQE1snC28BCkirAz
 65tMMt0lB/phGaXBouwGCHKuQ4nxxlimH7XaUhDA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 086/127] net: stmicro: fix a missing check of
 clk_prepare
Date: Fri, 22 Nov 2019 00:55:04 -0500
Message-Id: <20191122055544.3299-85-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122055544.3299-1-sashal@kernel.org>
References: <20191122055544.3299-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_215722_977765_BDF0616E 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 Kangjie Lu <kjlu@umn.edu>, linux-stm32@st-md-mailman.stormreply.com,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kangjie Lu <kjlu@umn.edu>

[ Upstream commit f86a3b83833e7cfe558ca4d70b64ebc48903efec ]

clk_prepare() could fail, so let's check its status, and if it fails,
return its error code upstream.

Signed-off-by: Kangjie Lu <kjlu@umn.edu>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c
index d07520fb969e6..62ccbd47c1db2 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c
@@ -59,7 +59,9 @@ static int sun7i_gmac_init(struct platform_device *pdev, void *priv)
 		gmac->clk_enabled = 1;
 	} else {
 		clk_set_rate(gmac->tx_clk, SUN7I_GMAC_MII_RATE);
-		clk_prepare(gmac->tx_clk);
+		ret = clk_prepare(gmac->tx_clk);
+		if (ret)
+			return ret;
 	}
 
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
