Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF05DC6DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 16:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0McrMOqLNco+HYppk65TzS33M2pF7LTHlzvlBw0Ar68=; b=TbDiwCmWRXP7jp
	lDNSAJI8fpGM9qXOtUeruhKCufpdN1bsf8jSxECteQH84UrBLTMgJ/Yhs4lGwbHxCWmVLbAqnX7bu
	7i+1pmovj2esPn5HmeJx2s6BtXvDyxGdJHg6vKM/2+um00BCiVqLzrjy31utYhRfYPoQzOyPjWk9E
	NbbAjTNjONva2iQc33z0KVkl19r/AiSj34RvtPZJtc0bgoCCoinLKgFeJXrH7yjoMOkg9ISPiL6Hg
	18vTtK/xjmWKPTSgobHq42+b0+7v2SdU6e+sIsAbStoq9Y3etRxkQFWXYZ4DTYEwLCAOClOzCK38n
	dzJqzZUaWMr5e8sVMEBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLSt2-0001ro-Ac; Fri, 18 Oct 2019 14:05:48 +0000
Received: from unicorn.mansr.com ([81.2.72.234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLSsq-0001qp-06
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 14:05:37 +0000
Received: by unicorn.mansr.com (Postfix, from userid 51770)
 id A8DB71560D; Fri, 18 Oct 2019 15:05:19 +0100 (BST)
From: Mans Rullgard <mans@mansr.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>
Subject: [PATCH] net: ethernet: dwmac-sun8i: show message only when switching
 to promisc
Date: Fri, 18 Oct 2019 15:05:14 +0100
Message-Id: <20191018140514.21454-1-mans@mansr.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_070536_201789_8E8F4040 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Printing the info message every time more than the max number of mac
addresses are requested generates unnecessary log spam.  Showing it only
when the hw is not already in promiscous mode is equally informative
without being annoying.

Signed-off-by: Mans Rullgard <mans@mansr.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
index 79c91526f3ec..5be2de1f1179 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -646,7 +646,8 @@ static void sun8i_dwmac_set_filter(struct mac_device_info *hw,
 			}
 		}
 	} else {
-		netdev_info(dev, "Too many address, switching to promiscuous\n");
+		if (readl(ioaddr + EMAC_RX_FRM_FLT) != EMAC_FRM_FLT_RXALL)
+			netdev_info(dev, "Too many address, switching to promiscuous\n");
 		v = EMAC_FRM_FLT_RXALL;
 	}
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
