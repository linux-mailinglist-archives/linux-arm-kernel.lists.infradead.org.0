Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B46EAE42
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 12:03:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=leRNJr3BQWDGjIcsUXJ/wNkBLjnGQO7AVP+Q/6p3LME=; b=GuA3qfKmYN7ZslE27pMv4OiK65
	jnoWzbjpSCWCJB8/qOAM2/CRCEY+JCveJnQj4JrxqT6YCzYjXss+vlewCwB7skkWGbZKa1kqHO7yu
	eip2xzwKUmqX3JSfZPDBQm1FdXum3c4VqXuJr/tcrLZNJUhG7XymnuJBrW2I0kq0v53Z5Trs11mlj
	Wbwz0Kwazda7mvfB1nfSSB0tpNEYSCjMXQSnb2/SfmQ8li8U6xeGsEmoxpZJjY6HVVhpk1Zik/Evz
	+ESEbNeaQMDmM/0GlJR+Jn+1bTWTT36jUg/77p0WcjhEnAJdDwuo9A4ClVBbv1HEkDtjgG0+zDX+1
	7pUqIIzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ8Ei-0005pP-GG; Thu, 31 Oct 2019 11:03:28 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ8CQ-0003yZ-Sa
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 11:01:14 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 66806C08AA;
 Thu, 31 Oct 2019 11:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572519662; bh=Q+UDeno5GnhmSyT5W8M9Y8gTmSOsEE9Q4RrmGSlZXyc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=ZK5LoStkqnbplKc8x9GSOGsuW2/ACUvLLh1+iWqHyzq951If9HCC4BO7kMmgOWGG6
 E963/BaYB8gy2oSXL6VkPvDwMy2GwGErebq26WgRb23+jk7SeXJPFBifEloP6TvFjR
 dUB9RHtMtQQXx6o14wBglNh5j4Tk9lTxAAdkdGxkT16/ByhXSCGrrdk3wdjcY2nspH
 A3brGQsGJAmVTt2s/BKq3qUCVA5p4EWw2tgxJcExmnn94Ho4zAyr7B2rA4IE5koteL
 f+u3A/EAvW8TYIhjfLmr4pRoOKycvun5GYGKImFYnOu+CiNq+dpCi5vCKrCU+kow+D
 OiG4na/hm/VAQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 17088A006E;
 Thu, 31 Oct 2019 11:01:00 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v2 04/10] net: stmmac: selftests: Prevent false positives
 in filter tests
Date: Thu, 31 Oct 2019 12:00:42 +0100
Message-Id: <dc16b10c11279308be7ac462980c9c67962d5bde.1572519070.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1572519070.git.Jose.Abreu@synopsys.com>
References: <cover.1572519070.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1572519070.git.Jose.Abreu@synopsys.com>
References: <cover.1572519070.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_040107_079269_9C2D9D28 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

In L2 tests that filter packets by destination MAC address we need to
prevent false positives that can occur if we add an address that
collides with the existing ones.

To fix this, lets manually check if the new address to be added is
already present in the NIC and use a different one if so. For Hash
filtering this also envolves converting the address to the hash.

Fixes: 091810dbded9 ("net: stmmac: Introduce selftests support")
Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

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
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 134 +++++++++++++++------
 1 file changed, 94 insertions(+), 40 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index 0b5db52149bc..f3d8b9336b8e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -6,7 +6,9 @@
  * Author: Jose Abreu <joabreu@synopsys.com>
  */
 
+#include <linux/bitrev.h>
 #include <linux/completion.h>
+#include <linux/crc32.h>
 #include <linux/ethtool.h>
 #include <linux/ip.h>
 #include <linux/phy.h>
@@ -485,12 +487,48 @@ static int stmmac_filter_check(struct stmmac_priv *priv)
 	return -EOPNOTSUPP;
 }
 
+static bool stmmac_hash_check(struct stmmac_priv *priv, unsigned char *addr)
+{
+	int mc_offset = 32 - priv->hw->mcast_bits_log2;
+	struct netdev_hw_addr *ha;
+	u32 hash, hash_nr;
+
+	/* First compute the hash for desired addr */
+	hash = bitrev32(~crc32_le(~0, addr, 6)) >> mc_offset;
+	hash_nr = hash >> 5;
+	hash = 1 << (hash & 0x1f);
+
+	/* Now, check if it collides with any existing one */
+	netdev_for_each_mc_addr(ha, priv->dev) {
+		u32 nr = bitrev32(~crc32_le(~0, ha->addr, ETH_ALEN)) >> mc_offset;
+		if (((nr >> 5) == hash_nr) && ((1 << (nr & 0x1f)) == hash))
+			return false;
+	}
+
+	/* No collisions, address is good to go */
+	return true;
+}
+
+static bool stmmac_perfect_check(struct stmmac_priv *priv, unsigned char *addr)
+{
+	struct netdev_hw_addr *ha;
+
+	/* Check if it collides with any existing one */
+	netdev_for_each_uc_addr(ha, priv->dev) {
+		if (!memcmp(ha->addr, addr, ETH_ALEN))
+			return false;
+	}
+
+	/* No collisions, address is good to go */
+	return true;
+}
+
 static int stmmac_test_hfilt(struct stmmac_priv *priv)
 {
-	unsigned char gd_addr[ETH_ALEN] = {0x01, 0xee, 0xdd, 0xcc, 0xbb, 0xaa};
-	unsigned char bd_addr[ETH_ALEN] = {0x01, 0x01, 0x02, 0x03, 0x04, 0x05};
+	unsigned char gd_addr[ETH_ALEN] = {0xf1, 0xee, 0xdd, 0xcc, 0xbb, 0xaa};
+	unsigned char bd_addr[ETH_ALEN] = {0xf1, 0xff, 0xff, 0xff, 0xff, 0xff};
 	struct stmmac_packet_attrs attr = { };
-	int ret;
+	int ret, tries = 256;
 
 	ret = stmmac_filter_check(priv);
 	if (ret)
@@ -499,6 +537,16 @@ static int stmmac_test_hfilt(struct stmmac_priv *priv)
 	if (netdev_mc_count(priv->dev) >= priv->hw->multicast_filter_bins)
 		return -EOPNOTSUPP;
 
+	while (--tries) {
+		/* We only need to check the bd_addr for collisions */
+		bd_addr[ETH_ALEN - 1] = tries;
+		if (stmmac_hash_check(priv, bd_addr))
+			break;
+	}
+
+	if (!tries)
+		return -EOPNOTSUPP;
+
 	ret = dev_mc_add(priv->dev, gd_addr);
 	if (ret)
 		return ret;
@@ -523,13 +571,25 @@ static int stmmac_test_hfilt(struct stmmac_priv *priv)
 
 static int stmmac_test_pfilt(struct stmmac_priv *priv)
 {
-	unsigned char gd_addr[ETH_ALEN] = {0x00, 0x01, 0x44, 0x55, 0x66, 0x77};
-	unsigned char bd_addr[ETH_ALEN] = {0x08, 0x00, 0x22, 0x33, 0x44, 0x55};
+	unsigned char gd_addr[ETH_ALEN] = {0xf0, 0x01, 0x44, 0x55, 0x66, 0x77};
+	unsigned char bd_addr[ETH_ALEN] = {0xf0, 0xff, 0xff, 0xff, 0xff, 0xff};
 	struct stmmac_packet_attrs attr = { };
-	int ret;
+	int ret, tries = 256;
 
 	if (stmmac_filter_check(priv))
 		return -EOPNOTSUPP;
+	if (netdev_uc_count(priv->dev) >= priv->hw->unicast_filter_entries)
+		return -EOPNOTSUPP;
+
+	while (--tries) {
+		/* We only need to check the bd_addr for collisions */
+		bd_addr[ETH_ALEN - 1] = tries;
+		if (stmmac_perfect_check(priv, bd_addr))
+			break;
+	}
+
+	if (!tries)
+		return -EOPNOTSUPP;
 
 	ret = dev_uc_add(priv->dev, gd_addr);
 	if (ret)
@@ -553,39 +613,31 @@ static int stmmac_test_pfilt(struct stmmac_priv *priv)
 	return ret;
 }
 
-static int stmmac_dummy_sync(struct net_device *netdev, const u8 *addr)
-{
-	return 0;
-}
-
-static void stmmac_test_set_rx_mode(struct net_device *netdev)
-{
-	/* As we are in test mode of ethtool we already own the rtnl lock
-	 * so no address will change from user. We can just call the
-	 * ndo_set_rx_mode() callback directly */
-	if (netdev->netdev_ops->ndo_set_rx_mode)
-		netdev->netdev_ops->ndo_set_rx_mode(netdev);
-}
-
 static int stmmac_test_mcfilt(struct stmmac_priv *priv)
 {
-	unsigned char uc_addr[ETH_ALEN] = {0x00, 0x01, 0x44, 0x55, 0x66, 0x77};
-	unsigned char mc_addr[ETH_ALEN] = {0x01, 0x01, 0x44, 0x55, 0x66, 0x77};
+	unsigned char uc_addr[ETH_ALEN] = {0xf0, 0xff, 0xff, 0xff, 0xff, 0xff};
+	unsigned char mc_addr[ETH_ALEN] = {0xf1, 0xff, 0xff, 0xff, 0xff, 0xff};
 	struct stmmac_packet_attrs attr = { };
-	int ret;
+	int ret, tries = 256;
 
 	if (stmmac_filter_check(priv))
 		return -EOPNOTSUPP;
-	if (!priv->hw->multicast_filter_bins)
+	if (netdev_uc_count(priv->dev) >= priv->hw->unicast_filter_entries)
 		return -EOPNOTSUPP;
 
-	/* Remove all MC addresses */
-	__dev_mc_unsync(priv->dev, NULL);
-	stmmac_test_set_rx_mode(priv->dev);
+	while (--tries) {
+		/* We only need to check the mc_addr for collisions */
+		mc_addr[ETH_ALEN - 1] = tries;
+		if (stmmac_hash_check(priv, mc_addr))
+			break;
+	}
+
+	if (!tries)
+		return -EOPNOTSUPP;
 
 	ret = dev_uc_add(priv->dev, uc_addr);
 	if (ret)
-		goto cleanup;
+		return ret;
 
 	attr.dst = uc_addr;
 
@@ -602,30 +654,34 @@ static int stmmac_test_mcfilt(struct stmmac_priv *priv)
 
 cleanup:
 	dev_uc_del(priv->dev, uc_addr);
-	__dev_mc_sync(priv->dev, stmmac_dummy_sync, NULL);
-	stmmac_test_set_rx_mode(priv->dev);
 	return ret;
 }
 
 static int stmmac_test_ucfilt(struct stmmac_priv *priv)
 {
-	unsigned char uc_addr[ETH_ALEN] = {0x00, 0x01, 0x44, 0x55, 0x66, 0x77};
-	unsigned char mc_addr[ETH_ALEN] = {0x01, 0x01, 0x44, 0x55, 0x66, 0x77};
+	unsigned char uc_addr[ETH_ALEN] = {0xf0, 0xff, 0xff, 0xff, 0xff, 0xff};
+	unsigned char mc_addr[ETH_ALEN] = {0xf1, 0xff, 0xff, 0xff, 0xff, 0xff};
 	struct stmmac_packet_attrs attr = { };
-	int ret;
+	int ret, tries = 256;
 
 	if (stmmac_filter_check(priv))
 		return -EOPNOTSUPP;
-	if (!priv->hw->multicast_filter_bins)
+	if (netdev_mc_count(priv->dev) >= priv->hw->multicast_filter_bins)
 		return -EOPNOTSUPP;
 
-	/* Remove all UC addresses */
-	__dev_uc_unsync(priv->dev, NULL);
-	stmmac_test_set_rx_mode(priv->dev);
+	while (--tries) {
+		/* We only need to check the uc_addr for collisions */
+		uc_addr[ETH_ALEN - 1] = tries;
+		if (stmmac_perfect_check(priv, uc_addr))
+			break;
+	}
+
+	if (!tries)
+		return -EOPNOTSUPP;
 
 	ret = dev_mc_add(priv->dev, mc_addr);
 	if (ret)
-		goto cleanup;
+		return ret;
 
 	attr.dst = mc_addr;
 
@@ -642,8 +698,6 @@ static int stmmac_test_ucfilt(struct stmmac_priv *priv)
 
 cleanup:
 	dev_mc_del(priv->dev, mc_addr);
-	__dev_uc_sync(priv->dev, stmmac_dummy_sync, NULL);
-	stmmac_test_set_rx_mode(priv->dev);
 	return ret;
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
