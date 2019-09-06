Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 893BFAB368
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 09:42:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uRxXmdYMxLjLLdjjmpeizBOiaG2C7gQamOBaY3v0ye0=; b=LF5aLZuGjrDDjNE248p47+FIbE
	8duiK7Ee/V1aqB6IFyKxIulYgi0tsDAqRN9+/+9sl40KQg7LCB1DwajurSFtpUH/YLf4taJQckDZN
	8Q/QkB0+ih3Wqd4A39pDDY96iBL59NJV6gMUXCuve8hAZvfLYbZQxilquJgNiwNdgfxFZAVMcmztO
	HZIOjUoJYsW0H7490hAxjGBOAsKwgH8l/9utgJT0JjNxKvKErDkABUtVsrcmKhxNCzSqHCChPBq1j
	ASBzlfGw0tFz/m8Gkd/Awi3vBfsa1PK7g2XmX0jyVsYdmmhgVpqSOxy5Ka9VSNusj7KlgZtQRuNtp
	kORjgCjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i68ss-00069x-Pl; Fri, 06 Sep 2019 07:42:19 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68s6-0005h1-48
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 07:41:32 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 47E3DC0E3D;
 Fri,  6 Sep 2019 07:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567755688; bh=EBL9Jc4mlbrbWU2YRFXqsB+Tqzg4pzZ34sKsco1vIEQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=awJF23K6k9+arQCYwI+jPTTiKkv2d8nThws2/sPR3Y/nm3WjIajWFCJz8xuvb/RJX
 3n1UMBse2Vhho1bpGAOIM7zGorF/99uTp6EthLOY467PhoG8P0e+di9VlUhIku4geT
 pVxdTCSLjViSXlutMbpsW4NAiw02XMUEf4vpNGpO39Y4uosXn2YdOYMppVO7UGF9zQ
 JiJ8pjgF4EBP0wp7FqhkJjRmF68lZZXr9c2+pqUNmW6Q9eAp17oRWDTrTdeoxaZ/oT
 M7beHJfcBibNCxiRlmeRblQJkAPPZuh4gDsUU+Brl8cVF3wHVzVxAL6pmRYOlh/mY5
 3nbE+sr8nU3rQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id E359EA0069;
 Fri,  6 Sep 2019 07:41:26 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 4/5] net: stmmac: selftests: Add Split Header test
Date: Fri,  6 Sep 2019 09:41:16 +0200
Message-Id: <b789f9f19115714646565c821e10f1a1e76a55c5.1567755423.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567755423.git.joabreu@synopsys.com>
References: <cover.1567755423.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567755423.git.joabreu@synopsys.com>
References: <cover.1567755423.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_004130_174591_073D1469 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a test to validate that Split Header feature is working correctly.
It works by using the rececently introduced counter that increments each
time a packet with split header is received.

Signed-off-by: Jose Abreu <joabreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index 2943943bec43..c56e89e1ae56 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -1603,6 +1603,44 @@ static int stmmac_test_mjumbo(struct stmmac_priv *priv)
 	return 0;
 }
 
+static int stmmac_test_sph(struct stmmac_priv *priv)
+{
+	unsigned long cnt_end, cnt_start = priv->xstats.rx_split_hdr_pkt_n;
+	struct stmmac_packet_attrs attr = { };
+	int ret;
+
+	if (!priv->sph)
+		return -EOPNOTSUPP;
+
+	/* Check for UDP first */
+	attr.dst = priv->dev->dev_addr;
+	attr.tcp = false;
+
+	ret = __stmmac_test_loopback(priv, &attr);
+	if (ret)
+		return ret;
+
+	cnt_end = priv->xstats.rx_split_hdr_pkt_n;
+	if (cnt_end <= cnt_start)
+		return -EINVAL;
+
+	/* Check for TCP now */
+	cnt_start = cnt_end;
+
+	attr.dst = priv->dev->dev_addr;
+	attr.tcp = true;
+
+	ret = __stmmac_test_loopback(priv, &attr);
+	if (ret)
+		return ret;
+
+	cnt_end = priv->xstats.rx_split_hdr_pkt_n;
+	if (cnt_end <= cnt_start)
+		return -EINVAL;
+
+	return 0;
+}
+
 #define STMMAC_LOOPBACK_NONE	0
 #define STMMAC_LOOPBACK_MAC	1
 #define STMMAC_LOOPBACK_PHY	2
@@ -1724,6 +1762,10 @@ static const struct stmmac_test {
 		.name = "Multichannel Jumbo  ",
 		.lb = STMMAC_LOOPBACK_PHY,
 		.fn = stmmac_test_mjumbo,
+	}, {
+		.name = "Split Header        ",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_sph,
 	},
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
