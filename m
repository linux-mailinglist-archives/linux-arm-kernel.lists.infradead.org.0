Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0A512444E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:19:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oOILYz3BIqkjr0CYzP7S/LXzIS8WgePMh/ttv00MNTs=; b=Dw6TZgnM8lmT8nCGmIjkfjdbKN
	302Z4+QIsSgDfK5K6pYZzcwqAksYAJdsTjjESuL/vwmrQNU0gHQdNoSHy1FuGIUA4YSh9eymkxFdB
	DVGUL98i4/Y3uX4J5PDa4KTNhZp+cJ/R00Dqn6uWFXFAld7DH3F+++DaO311JNLowSCXoUZuvOJTj
	bsLsvfBOYhnmFB/dNMO2mIuNP8IaBPFQtFIeJFkIwFwDk31hFU4SdMqNL4Xh7tSZkIA1WfKAXLk9M
	YXUxdR1GZvTCdSBDDNEpqZA8pvv2dDUAn61E/yljX+jEV9Ixj5lIJjLQvO/uGFG3K/NXAjhLWZT2z
	gvVT7JHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWQA-0005Xl-QU; Wed, 18 Dec 2019 10:19:10 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWOw-0004nD-Rk
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:17:56 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1EBB6C0D68;
 Wed, 18 Dec 2019 10:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576664273; bh=kXQSi8uEaR0nnXI5gYaHpPekaUtZSzYB55wAuRZ7ltQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=WHhfd1Ci7me3W4vU6X3JZxqEcwcVFvjymBZiB67Q/w8ILttW2DDQm0MPpV1+MaXNb
 An9XEhpLNa8PQROz4rnwSrsk3KWSts2R8lTOnsKUw+gOaHuEarlNs6wbvi2HJEXMlM
 c5eSsikRZN7+0zO9IwuYcO6tbMbRJwt7PGefCAlXVW3NUQBcEQZrCZNlnA9uKiFGbY
 DMlsddGGc+h0OFonSSGSefIO327ZRjwkdMtqowl6nIJwH8SKy44mq5LDUhJrDrhuki
 jKZD1k7/5cclhLmACorhLJIsA8e85X/tmKnPEeW8KzI4EXxxIsAnqO48kH8P58+cNi
 i4v7ZnEl7/Wig==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 80C95A0067;
 Wed, 18 Dec 2019 10:17:51 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v3 1/9] net: stmmac: selftests: Needs to check the number
 of Multicast regs
Date: Wed, 18 Dec 2019 11:17:35 +0100
Message-Id: <d69db25450cac262b0249ed4d02c54e4bcd93ada.1576664155.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1576664155.git.Jose.Abreu@synopsys.com>
References: <cover.1576664155.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1576664155.git.Jose.Abreu@synopsys.com>
References: <cover.1576664155.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_021755_034634_6D5CE2C3 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jakub Kicinski <jakub.kicinski@netronome.com>,
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

When running the MC and UC filter tests we setup a multicast address
that its expected to be blocked. If the number of available multicast
registers is zero, driver will always pass the multicast packets which
will fail the test.

Check if available multicast addresses is enough before running the
tests.

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
 drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index f3d8b9336b8e..13227909287c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -624,6 +624,8 @@ static int stmmac_test_mcfilt(struct stmmac_priv *priv)
 		return -EOPNOTSUPP;
 	if (netdev_uc_count(priv->dev) >= priv->hw->unicast_filter_entries)
 		return -EOPNOTSUPP;
+	if (netdev_mc_count(priv->dev) >= priv->hw->multicast_filter_bins)
+		return -EOPNOTSUPP;
 
 	while (--tries) {
 		/* We only need to check the mc_addr for collisions */
@@ -666,6 +668,8 @@ static int stmmac_test_ucfilt(struct stmmac_priv *priv)
 
 	if (stmmac_filter_check(priv))
 		return -EOPNOTSUPP;
+	if (netdev_uc_count(priv->dev) >= priv->hw->unicast_filter_entries)
+		return -EOPNOTSUPP;
 	if (netdev_mc_count(priv->dev) >= priv->hw->multicast_filter_bins)
 		return -EOPNOTSUPP;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
