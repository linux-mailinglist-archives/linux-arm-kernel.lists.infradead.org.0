Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15568A0FE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 05:17:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6dUgMqHtBGJFbSpQC01jXJwDqfJWa8kJWpeMQleH6W8=; b=QiN+F3Gr//8lhd
	An96acBb0gaB3CTtQD0tfIvBs2CvC33k2gF1QKpI3Q5IsyBlkq6ezs0JhiFpr1AsbThh09F0EVJFV
	cbOd/0dRcpJSZAphqKL4A8Ww/lRDcRHDr6ldXszX64BCCUeaWqZQWa8EEPFWT1e8B3EOUD6D3oi9Q
	6EEi+fpbN2P5abxt4snDZJCxrUZl4FdcmjBPTvJ9MhYlaGMaScUNyEFP4Os2wc0JbS5P7M4SWw38x
	+XuFpFjHaoVramGh3EvCeKutNZJuxM47oX4D2VqYVon27hDEG/8kBj7RH7wDWF6QpC/sdwH6CQ29u
	AIQhzBHXDZxvM3cyyiEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3AwW-0004bW-MI; Thu, 29 Aug 2019 03:17:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3AwN-0004b4-If; Thu, 29 Aug 2019 03:17:40 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5E9DB22CF8;
 Thu, 29 Aug 2019 03:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567048658;
 bh=u98FcVu0HBkillng09TqWFlGgpgWVWpnghz9szhnReI=;
 h=From:To:Cc:Subject:Date:From;
 b=HAD4xrCfip0e9CQw3xO5Qsd40IdOaU7J/AldbwBXqtbzk8rjpl8hI756VTkNodh/u
 TBVn9ukdcGLCetH0FJeWue86+GoA3/LG0UkyCNfplVPqTMn8dzCqF1PTy5FJwAL/4s
 TIBsO4qGmnx83Y6eLXMQ9gHQfu+oUhFvlJ2Qz6jQ=
Received: by wens.tw (Postfix, from userid 1000)
 id BA06A5FCC3; Thu, 29 Aug 2019 11:17:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>, "David S. Miller" <davem@davemloft.net>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH netdev] net: stmmac: dwmac-rk: Don't fail if phy regulator is
 absent
Date: Thu, 29 Aug 2019 11:17:24 +0800
Message-Id: <20190829031724.20865-1-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_201739_643203_96815E07 
X-CRM114-Status: GOOD (  12.35  )
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
Cc: linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The devicetree binding lists the phy phy as optional. As such, the
driver should not bail out if it can't find a regulator. Instead it
should just skip the remaining regulator related code and continue
on normally.

Skip the remainder of phy_power_on() if a regulator supply isn't
available. This also gets rid of the bogus return code.

Fixes: 2e12f536635f ("net: stmmac: dwmac-rk: Use standard devicetree property for phy regulator")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---

On a separate note, maybe we should add this file to the Rockchip
entry in MAINTAINERS?

---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 4644b2aeeba1..e2e469c37a4d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1194,10 +1194,8 @@ static int phy_power_on(struct rk_priv_data *bsp_priv, bool enable)
 	int ret;
 	struct device *dev = &bsp_priv->pdev->dev;
 
-	if (!ldo) {
-		dev_err(dev, "no regulator found\n");
-		return -1;
-	}
+	if (!ldo)
+		return 0;
 
 	if (enable) {
 		ret = regulator_enable(ldo);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
