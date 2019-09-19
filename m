Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68059B798F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 14:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hkzZTnGla9d7w2SM7nLQuSRNRoi2CbuYgTxDmZuw72A=; b=mVP92MQX44XpCe
	c070avO1YSvIB/iIBmiJslkI8z8mlMQrSouMsVlhoBxO8lR32RS+tSghPn6BYcHbpEdc4pQT+/CzT
	rPlYXk8JMb4txoQF6+cjgVpvloQ9+fWwnR5tyKrZFDzedPyHUTrpbpkF8V8QyMi+sDojlw0wcqkqc
	Jer5y1elTcbonEr+s5qIqHpd0nTESxGoBf2ww5ARpYTQgN4ZFy53OorJoQcDh8kwkUQ6P9SfjB21v
	NKgTpyXj3TWBA9TaEfZJ3CQfDLpAqaaqbTV1HKHJRrz6orhCj5Rp+U8jbchKKc5/u5ko3nKa1a1Vo
	0lBvXUEXyc9QME5/ejvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAveB-0005bv-VI; Thu, 19 Sep 2019 12:34:56 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvdr-0005bS-LJ
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 12:34:37 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1McGp2-1hfAig3hzo-00cgzT; Thu, 19 Sep 2019 14:34:22 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>, "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH] [v2] net: stmmac: selftest: avoid large stack usage
Date: Thu, 19 Sep 2019 14:33:43 +0200
Message-Id: <20190919123416.3070938-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:hwVGHTiOG4UXHOWG1ZQ0Jq2hjerVfrIdTmZglraj5oGfDcMkjJd
 lZQ3pTkKTCk025VehtgWkB4c8x3VxX4C3lZBTJB3DvjHbaazbTBT72d909SmFSvMpH+S3Uz
 JIwg3QkDBE5yMxexLwXZ4olOrjyvwAtwS8In6/V8uUaJQPy++4Zgn2HU8ypmltpow2eOyDc
 w0Yh6icl7CivOhhfRlQMA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:c9UPIDxfZwk=:sdxFKpNOGzRYdbJ3z8DWo1
 bqGnGL9NihWCprhmk50Aj2QHDIPlmok/y9GFE9lTnsCna6EsVYNB6MMbe8PoSgO/ZDe8cB/rN
 0nzIgWJlyARVmonQv2a8H6udfl3gzHuONecPTQHwS8BiP9Ha+kdknckDp6o77oWO0dMQ+w8ud
 lwGuTRqIqZFKIOKs8Ok9QOzyKjgMOzwyf1unkuiNpLnmck02uoWD/smwtXnPt0GA4VSCoTIqc
 d0nxmgFjhVMlBuc3OA/+aqrUxjr/kCeXBO/a6gzMdu0d6BB5eHX6aFRLoEpgZxHDBACXiLxHv
 XMUQCd56WP/r3eSG59YCgnXYwBqATNckLhDD4UTssu4tC1KDMzfKzHXZJG7vtgvJtl960wAXk
 GnrwQLsFt9DLj/B9I5J/niKefml5uvJFgqbqqWIVN2ZC1VaaroYty7IH3FmZCRX9k2jrmanXu
 lTqCQHO3oxR50ZwqzzpdWsAYKvF1rWhtgD0wX7vnWNMV755VGJ1/o5TCs5XfZB0TcHtJTiC9u
 nXOsOCZorUiCj7Hoent0M6C2PyXGmaRSp1R+tuhr+qMJX2OiOvXFd0TpPROpVaqmpJmwhs80o
 L18eQ1SsiiLHaDo0JF147ksAoMVox/m6Nsmqv37ImV3Zwb/DMWKR4me095686hw07g41u1g/g
 C/w6+Oj9f4FHFqVo6mS8wBlQmZzz1KDYzBL51wSDDWgC+pKFxDY+hnpBmrr0P4iZKw29zQS9c
 zd+oPGOyAjCuVSc+LKQez9MLR0ENSBm/Pw2giP403UP24zgk/dKjySnNFfdTGLo1N0BC/SW+X
 SHEYUb0Z3o8ClxL2/kVgCjuR/FpIfWYYyDK2GE8FY+YzDtFKEJ0aoepc1P9WdUxgpckXfhMub
 y/Jc3/qeFX+KcCNMNKSQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_053435_991418_3882BB15 
X-CRM114-Status: GOOD (  14.18  )
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

Fixes: 4647e021193d ("net: stmmac: selftests: Add selftest for L3/L4 Filters")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: simply configure function, based on feedback from Jose
---
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    |  5 ++---
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 14 ++++----------
 2 files changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index d5173dd02a71..2b277b2c586b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -523,19 +523,18 @@ static int dwxgmac2_rss_configure(struct mac_device_info *hw,
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
+		ret = dwxgmac2_rss_write_reg(ioaddr, true, i, cfg->key[i]);
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
