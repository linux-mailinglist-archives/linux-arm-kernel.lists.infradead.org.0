Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DABEDB6D01
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 21:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BK7+prmzN31b63SMBQ+IjJrJ38/03rmLZ4uPSB/8430=; b=pbOXWHdNXOrfcu
	Azze2xE8mQFgiqpxSHz7qNu/yBddnAAASBSVrc1wPcsIyZ4feehVBAHLWYSibdun0T9b7QsTjHR3h
	X+bqcyxNaowFaqx3GZ2IRDStEMyp0EDobCe48Y8tLP8CqH3ByNHPm9jK5PzrOd+1NNNQgjghk9BNe
	DZFnubSaXxc1Qpdv3aFydtdwsKIGZTv1pLui9XkizzpAZdHC9+mjq5xUtiT4SPkIjsGzw3WQr8hw4
	6k3yTyVtk5xjC0r4R17xTk50jM83slznzSmss3H6z4h5cd5rhjXFFz/gRN4a1LfFnwhw4QTk1qREK
	W6k8AMa8PrOXPynLrpVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAg2w-0002lv-Cx; Wed, 18 Sep 2019 19:55:26 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAg2l-0002ku-VG
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 19:55:17 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N7iT4-1i5hwp41fW-014hEP; Wed, 18 Sep 2019 21:54:58 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>, "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH] stmmac: selftest: avoid large stack usage
Date: Wed, 18 Sep 2019 21:54:34 +0200
Message-Id: <20190918195454.2056139-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:N+l+qvP4iTKMClOZ10+3hqtOBzBcBQK6eoFXevu/u6P8UCjKnvn
 c+9RDnKQFkt60Yhr/1wdrGXs/h/qCzzQXDCSJhjlsU6+bEk+wiqjs8z/5yU3GcgyEGtC2mO
 3SD5GPJx4Fpy/j1i29G7oBOMQ2+OoTir7lMG6/ltVEOii1JDkWm0JQtO4aQGYz1M2Yb6zNv
 WFkT8hq38bCA3FJMEVH3A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1HosKkSRfoU=:b7Y0A535j0pAWaby1IDo4m
 kOy6Bd+X63LxUX6r1gVlDqzAoHO1wmOf7fMp67ntknUvwuoKWDI08ticRc1et/NxH2Pz3Ztc1
 azFGSYUV9W2A0RmNsI8CrjOIFuCQjsYs5oxyMB3GiEA6r+KyrxozwvqF+aHKVIGXX28XpPOEL
 TWF1EiXNAYCuJbPSOqPT7ccBt8fmRIHoMYurJLI/gf1nooBvgdwHWRNZZaOcAsgG1e2gFBK9a
 EfXBj0faIys9EuiWJJkgXT1INDk4x0hQfhnZJnLkmCcKePpkNyXlN7044PeIv8PTX/9NNlsNa
 4cTMTe/nUdhNLrlxc8c8GQsSvmMOtwff2oU5ZrKdWndUcRZ5GykriAHfu9BehqQZTYg6B1OQt
 b9MHoOJQlZ/s7DnSsf92cdC2+CYPCzDtUMBLxWNrU/qC0JF12ujfFYwLvl5kO7PxkytkPWY6f
 M3ljbyQUADlh0k1885oDO/KTU6iq4qyxcUnKqf4QEX9ZvjYDhTwdcDZf7SP7Ia2JYJ0XWZosp
 x4TCOrGE0GEThjwnhpICjDW0g4tjH/sxSTe7Vo0R0gqT+UhSR9sWJjQJoFFwqY4SEqe8Jw6HR
 LTZknHBNdHlgSPQSUUzmswGM+6zPm1aVVKLjnblgSzyhikNVkbnaLoHHS32Uo2QbYYCeTDeEt
 QEhv2bWATOmmB0Y3EMN11m9Ttmx+pnRMfXgfRJxTGcOZKjSoB6VpR2VOZqfTFXyQaedt026l3
 ZAqFvnENGhDBaE7vmydfRrLyrFWoeJXfXasA2E//AqyRdXcSZx+VnW6pHNIy/+JELjpYo/hmz
 fqwMdRRp7V2LR3gthNtA8F66fblYzFc5smxmXTTNykbmXE0H+DPsiyKpcAxKb0Ml99kYiQSyQ
 iPKy6AN1lEFHH2mS8u2A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_125516_302151_6F30B381 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Putting a struct stmmac_rss object on the stack is a bad idea,
as it exceeds the warning limit for a stack frame on 32-bit architectures:

drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c:1221:12: error: stack frame size of 1208 bytes in function '__stmmac_test_l3filt' [-Werror,-Wframe-larger-than=]
drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c:1338:12: error: stack frame size of 1208 bytes in function '__stmmac_test_l4filt' [-Werror,-Wframe-larger-than=]

As the object is the trivial empty case, change the called function
to accept a NULL pointer to mean the same thing and remove the
large variable in the two callers.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c   | 15 +++++++++++----
 .../ethernet/stmicro/stmmac/stmmac_selftests.c    | 14 ++++----------
 2 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index d5173dd02a71..c2f648062049 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -523,25 +523,32 @@ static int dwxgmac2_rss_configure(struct mac_device_info *hw,
 				  struct stmmac_rss *cfg, u32 num_rxq)
 {
 	void __iomem *ioaddr = hw->pcsr;
-	u32 *key = (u32 *)cfg->key;
 	int i, ret;
 	u32 value;
 
 	value = readl(ioaddr + XGMAC_RSS_CTRL);
-	if (!cfg->enable) {
+	if (!cfg || !cfg->enable) {
 		value &= ~XGMAC_RSSE;
 		writel(value, ioaddr + XGMAC_RSS_CTRL);
 		return 0;
 	}
 
 	for (i = 0; i < (sizeof(cfg->key) / sizeof(u32)); i++) {
-		ret = dwxgmac2_rss_write_reg(ioaddr, true, i, *key++);
+		if (cfg)
+			ret = dwxgmac2_rss_write_reg(ioaddr, true, i, cfg->key[i]);
+		else
+			ret = dwxgmac2_rss_write_reg(ioaddr, true, i, 0);
+
 		if (ret)
 			return ret;
 	}
 
 	for (i = 0; i < ARRAY_SIZE(cfg->table); i++) {
-		ret = dwxgmac2_rss_write_reg(ioaddr, false, i, cfg->table[i]);
+		if (cfg)
+			ret = dwxgmac2_rss_write_reg(ioaddr, false, i, cfg->table[i]);
+		else
+			ret = dwxgmac2_rss_write_reg(ioaddr, false, i, 0);
+
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index c56e89e1ae56..9c8d210b2d6a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -1233,12 +1233,9 @@ static int __stmmac_test_l3filt(struct stmmac_priv *priv, u32 dst, u32 src,
 		return -EOPNOTSUPP;
 	if (!priv->dma_cap.l3l4fnum)
 		return -EOPNOTSUPP;
-	if (priv->rss.enable) {
-		struct stmmac_rss rss = { .enable = false, };
-
-		stmmac_rss_configure(priv, priv->hw, &rss,
+	if (priv->rss.enable)
+		stmmac_rss_configure(priv, priv->hw, NULL,
 				     priv->plat->rx_queues_to_use);
-	}
 
 	dissector = kzalloc(sizeof(*dissector), GFP_KERNEL);
 	if (!dissector) {
@@ -1357,12 +1354,9 @@ static int __stmmac_test_l4filt(struct stmmac_priv *priv, u32 dst, u32 src,
 		return -EOPNOTSUPP;
 	if (!priv->dma_cap.l3l4fnum)
 		return -EOPNOTSUPP;
-	if (priv->rss.enable) {
-		struct stmmac_rss rss = { .enable = false, };
-
-		stmmac_rss_configure(priv, priv->hw, &rss,
+	if (priv->rss.enable)
+		stmmac_rss_configure(priv, priv->hw, NULL,
 				     priv->plat->rx_queues_to_use);
-	}
 
 	dissector = kzalloc(sizeof(*dissector), GFP_KERNEL);
 	if (!dissector) {
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
