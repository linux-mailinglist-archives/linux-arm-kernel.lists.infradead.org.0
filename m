Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C04778238B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pGD/wt1E6pkQRaTMNKACrSqPnPAjeHHiUjr3tr9WDZg=; b=S+jIe7Ki6asx6TeyWW0su6MpYl
	C6EO9Xyhj9cBbebymnHAhGGM73YeqZkExQ8kSin0KXU5x+/+TCG1e7VMrB2KVEA0nCHZSPe5sugCy
	fOOkA6LGit3BxSBE/iAx93QaME6FbGb30/WLFDn4xrMfpY3LvkRcOiYQqUJ45b61rEEHehrlxuW8b
	Xaqn8ntTINYkmkBxyyxOyG7W8rUiKuZ3cLSMG2tZB+Wqs1NwOZh4MMrphWA2lkwOqQxrXsOyAq3e4
	Ynk/wAw26dLeLD+PAnd4sIVzvmedk/LGWibbDltSfQZc4CfATn/Exch5I2eMkEzS2t7HGRqbf2Cl/
	RzPS8W4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugOr-0006mP-BF; Mon, 05 Aug 2019 17:03:57 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hugMR-0004RD-4N
 for linux-arm-kernel@bombadil.infradead.org; Mon, 05 Aug 2019 17:01:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lgQIEuhsKsRNdvOhP1JjszenvS68ZH9A7UdnNMX8HYo=; b=PxuMoQNo9TXL6UcRfZJsegzUr
 Ylp36I4xne+RiyZlA9yCFtbITGTQv9KETfAI90ddOa4Ul2dHzcQuwnO/HdbOyo6AyIq8lJYKW0Pps
 bdKVrHFtoCs5IJLGgAzGqA6wdOSXg98/hfLyzu21Vi45Jh60egs1HT2qG+PQAgW0V3OTb1ivEp0WP
 Fq5ZfB1vze5wTQJY9juLH5SjStMO/SEgR6MsWtak1ErKAKoFsSxD9qxZYIA0q6Qu3UvDJglYAZFQV
 3X7x4tsyi8ri1b1vwiIrC2W5FDrRyMMUEDpvRPgaofS59Qp+B1a29oohmDKrwpeyLy1tG8wB740Kh
 5kj21mfuw==;
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hug7L-0005Mw-3k
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:45:55 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 90648C01CB;
 Mon,  5 Aug 2019 16:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565023529; bh=5rsdUdBHQz4ySGEcEjpDwyTBFPmIAx2XyhhtzKk0wgY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=gGOsf8pztGa5XIpmEi7L6DGFv0NEe3CGLJBzJj/qISRz54eQTDqaauHVH6ywdegt4
 ihDNK71diG1sDh9cf5eN7dUdNQkHAUIuvbGrTXl941665VqXTU3Z7CEG7B8HmNVxKv
 3KLFUKfCoflGQ6+JejHEjh/YRoAc/8yv2CqXaIN6yjtqFIuwnnSPyiiz3IJLuntXeo
 PxwWOoj+LL7bkIIywOWmmZFFNdA94WhBYUMz1KhvSJKhh2DuhnDfO0uF3GBkE9vldL
 pu+ys6uUAuJydUNmHnuVbidNi5St8oEgGHCjo8ccbd257tnaqjMzZU+RYssqyUZ2zP
 1hENaM00dP09g==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 4EE24A00A1;
 Mon,  5 Aug 2019 16:45:28 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 22/26] net: stmmac: selftests: Add tests for SA
 Insertion/Replacement
Date: Mon,  5 Aug 2019 18:44:49 +0200
Message-Id: <1b73c6178ba810ac201c525c562a17dc85610324.1565022597.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_174551_475386_700D78A5 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add 4 new tests:
	- SA Insertion (register based)
	- SA Insertion (descriptor based)
	- SA Replacament (register based)
	- SA Replacement (descriptor based)

Signed-off-by: Jose Abreu <joabreu@synopsys.com>
---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 98 +++++++++++++++++++++-
 1 file changed, 97 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index abab84f2ef8b..acfab86431b1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -45,6 +45,7 @@ struct stmmac_packet_attrs {
 	int size;
 	int remove_sa;
 	u8 id;
+	int sarc;
 };
 
 static u8 stmmac_test_next_id;
@@ -230,7 +231,10 @@ static int stmmac_test_loopback_validate(struct sk_buff *skb,
 		if (!ether_addr_equal(ehdr->h_dest, tpriv->packet->dst))
 			goto out;
 	}
-	if (tpriv->packet->src) {
+	if (tpriv->packet->sarc) {
+		if (!ether_addr_equal(ehdr->h_source, ehdr->h_dest))
+			goto out;
+	} else if (tpriv->packet->src) {
 		if (!ether_addr_equal(ehdr->h_source, tpriv->packet->src))
 			goto out;
 	}
@@ -1004,6 +1008,82 @@ static int stmmac_test_rxp(struct stmmac_priv *priv)
 }
 #endif
 
+static int stmmac_test_desc_sai(struct stmmac_priv *priv)
+{
+	unsigned char src[ETH_ALEN] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
+	struct stmmac_packet_attrs attr = { };
+	int ret;
+
+	attr.remove_sa = true;
+	attr.sarc = true;
+	attr.src = src;
+	attr.dst = priv->dev->dev_addr;
+
+	priv->sarc_type = 0x1;
+
+	ret = __stmmac_test_loopback(priv, &attr);
+
+	priv->sarc_type = 0x0;
+	return ret;
+}
+
+static int stmmac_test_desc_sar(struct stmmac_priv *priv)
+{
+	unsigned char src[ETH_ALEN] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
+	struct stmmac_packet_attrs attr = { };
+	int ret;
+
+	attr.sarc = true;
+	attr.src = src;
+	attr.dst = priv->dev->dev_addr;
+
+	priv->sarc_type = 0x2;
+
+	ret = __stmmac_test_loopback(priv, &attr);
+
+	priv->sarc_type = 0x0;
+	return ret;
+}
+
+static int stmmac_test_reg_sai(struct stmmac_priv *priv)
+{
+	unsigned char src[ETH_ALEN] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
+	struct stmmac_packet_attrs attr = { };
+	int ret;
+
+	attr.remove_sa = true;
+	attr.sarc = true;
+	attr.src = src;
+	attr.dst = priv->dev->dev_addr;
+
+	if (stmmac_sarc_configure(priv, priv->ioaddr, 0x2))
+		return -EOPNOTSUPP;
+
+	ret = __stmmac_test_loopback(priv, &attr);
+
+	stmmac_sarc_configure(priv, priv->ioaddr, 0x0);
+	return ret;
+}
+
+static int stmmac_test_reg_sar(struct stmmac_priv *priv)
+{
+	unsigned char src[ETH_ALEN] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
+	struct stmmac_packet_attrs attr = { };
+	int ret;
+
+	attr.sarc = true;
+	attr.src = src;
+	attr.dst = priv->dev->dev_addr;
+
+	if (stmmac_sarc_configure(priv, priv->ioaddr, 0x3))
+		return -EOPNOTSUPP;
+
+	ret = __stmmac_test_loopback(priv, &attr);
+
+	stmmac_sarc_configure(priv, priv->ioaddr, 0x0);
+	return ret;
+}
+
 #define STMMAC_LOOPBACK_NONE	0
 #define STMMAC_LOOPBACK_MAC	1
 #define STMMAC_LOOPBACK_PHY	2
@@ -1065,6 +1145,22 @@ static const struct stmmac_test {
 		.name = "Flexible RX Parser   ",
 		.lb = STMMAC_LOOPBACK_PHY,
 		.fn = stmmac_test_rxp,
+	}, {
+		.name = "SA Insertion (desc)  ",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_desc_sai,
+	}, {
+		.name = "SA Replacement (desc)",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_desc_sar,
+	}, {
+		.name = "SA Insertion (reg)  ",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_reg_sai,
+	}, {
+		.name = "SA Replacement (reg)",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_reg_sar,
 	},
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
