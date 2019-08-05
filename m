Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B53F822EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4fECGTwIOGKtiW0PxVY6ORw+1lgmTa+HMrTw97YIFDY=; b=dXVI2pSQD58aPzbSpV8Zsgi6if
	4wbiuvDpKeNV0i0cMbA5aU9+rGNv17WitK68ga/g71n75LYQ70wr1J2YMaQRVojwop69febgqAT74
	GGd4eWwLBpBY6KvAggRU/+X6vlBwJd/G23VKVj5feZMn5BMxS6S9Io7qezFj19+YUrelc36gmY+sm
	CPEjoBpjiXF0usJ+Q19+RLyughOreOmz4T3JPWwCTY5hDT0JnuoeOseraGBjggIUbubBcJ1hKToRd
	M2oKPCuhRCzC9sudKB28TR1I8Q3K/bUyvQF4rawElYtVVuZDr3g0IFrphqZScsDG6HKEyQANvS0Xv
	JC/7CRPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hug8m-0005b4-MJ; Mon, 05 Aug 2019 16:47:20 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hug71-0004D0-H4
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:45:36 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9EE9BC01AA;
 Mon,  5 Aug 2019 16:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565023529; bh=aTDnCXcniV6uvBzYE58A0TIJ6PhSk7VA//+4NwG8t7k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=VZ3nhSd25VX1ZTWVBt76NJf/dbL5rJJvKCDZbo84nMneh3Y9RKrJ+zMM7lIDRvE6M
 FfhcpHthvaLjryhS85Ub/Lz9W/GlSGepfwy6B+uod38DJHf5CGBhOjThsgDDh0Wc/X
 6HPL/vRUZZdxQ+EKv1hhPV90jlIFIrBI/rFQ57OEywiS5N/wcpcZr97afr7DLlacII
 tRoxEieG8rgWO88xGLGc7jLTxOQhKPFOz9HrVE+8H6wer9BZtLuggIkD48A9BpHb0k
 wiepy3aucbK6a0ClVrgwRtqkOyQpp/8F7YJ1fFaTNApGHEC5aYwJ946em5XbseFddC
 TKdw2mByKGdzg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 64B02A0074;
 Mon,  5 Aug 2019 16:45:27 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 07/26] net: stmmac: selftests: Add RSS test
Date: Mon,  5 Aug 2019 18:44:34 +0200
Message-Id: <060d0e29c13f75123d8dfa17de5fcbb679048fc7.1565022597.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_094531_585861_60943DCE 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Add a test for RSS in the stmmac selftests.

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
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c    | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index a97b1ea76438..83b775a8cedc 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -700,6 +700,21 @@ static int stmmac_test_flowctrl(struct stmmac_priv *priv)
 	return ret;
 }
 
+static int stmmac_test_rss(struct stmmac_priv *priv)
+{
+	struct stmmac_packet_attrs attr = { };
+
+	if (!priv->dma_cap.rssen || !priv->rss.enable)
+		return -EOPNOTSUPP;
+
+	attr.dst = priv->dev->dev_addr;
+	attr.exp_hash = true;
+	attr.sport = 0x321;
+	attr.dport = 0x123;
+
+	return __stmmac_test_loopback(priv, &attr);
+}
+
 #define STMMAC_LOOPBACK_NONE	0
 #define STMMAC_LOOPBACK_MAC	1
 #define STMMAC_LOOPBACK_PHY	2
@@ -745,6 +760,10 @@ static const struct stmmac_test {
 		.name = "Flow Control         ",
 		.lb = STMMAC_LOOPBACK_PHY,
 		.fn = stmmac_test_flowctrl,
+	}, {
+		.name = "RSS                  ",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_rss,
 	},
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
