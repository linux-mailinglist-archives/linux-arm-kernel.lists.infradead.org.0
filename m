Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DD4C1D03
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:21:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=56S/yKq4DVoj71YNAlHv0xwLhiE2NghoAPtYREExzlk=; b=UEWK0nruVpVxwH3b8ACFQAXR0N
	Dp9iQ2mwJrJtMbvo/x7SjBiVaHl3vkg7vcc+fi8pMc0zK/Gwm6PmBoz9Cdzd6B5xRhoEYBWyvcrCA
	1yDPurhw6zzbSirE+W3LaVbK7KQc+CGu5JGiAeTsLxeFNygnuM+30oW/Fkw0jpl8MYyIKJF5o8D4z
	G7mOmsLGM593sdJitAL4NXxn9pN7AlyN5EAJuncJUK/ThfEgxuZ8SyQGhO3uE95kmgbys4jRmqNN8
	oC5UYwjVGrzIgInnlzphx5gghKqBknc5w4JWXTvx4dhPG0rah+Iv6U3qeKjEdmroIU1sn+x1Fr5q+
	BECETJ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqvd-0007zz-TH; Mon, 30 Sep 2019 08:21:09 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqu0-0005ee-Om
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:19:34 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2C859C037C;
 Mon, 30 Sep 2019 08:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1569831566; bh=VsdVW+VCuIfZ9PxVxUbdgy4kpT/QeuAHKi9XUjOtZD8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=Kzw3waQETCU/A0RcuxbLrk/MUiGKZ7IhDthDyr/vWbsCHXayfKVcOpeintm6YM2Q7
 l6xkUCr006LClfeEx9HEX4LaO5Nwz8l0zCIETOPhsypUxOFxxMQgoebMCd1JhFiuRv
 fOwuNYl8hNa0/99nNybQFdqF4a4avPDtSGnxQ+4WovB/nLpU9+0TcYiN7HFgnjT4kt
 frOSOaZRcbRdDVFBTDgTwu3RWOtglEWEy29X+0N5fJwgdNWkV4Mti2uM6ATkpl0LXR
 LyyiUnpdQKQggIrPIJ7NzXHb8GmHGBVuwNOGMaGGVWu+n45nxm1UABNeKDSyEuQS+Q
 1CFp/9yjmtVtQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id AA895A0091;
 Mon, 30 Sep 2019 08:19:23 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 net 9/9] net: stmmac: xgmac: Fix RSS writing wrong keys
Date: Mon, 30 Sep 2019 10:19:13 +0200
Message-Id: <8879f74a8cc5dffdb14d553c321d64c63ea9fe2d.1569831229.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1569831228.git.Jose.Abreu@synopsys.com>
References: <cover.1569831228.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1569831228.git.Jose.Abreu@synopsys.com>
References: <cover.1569831228.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_011928_960464_90CC73AB 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit b6b6cc9acd7b, changed the call to dwxgmac2_rss_write_reg()
passing it the variable cfg->key[i].

As key is an u8 but we write 32 bits at a time we need to cast it into
an u32 so that the correct key values are written. Notice that the for
loop already takes this into account so we don't try to write past the
keys size.

Fixes: b6b6cc9acd7b ("net: stmmac: selftest: avoid large stack usage")
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
Cc: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index 4a1f52474dbc..5031398e612c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -523,8 +523,8 @@ static int dwxgmac2_rss_configure(struct mac_device_info *hw,
 				  struct stmmac_rss *cfg, u32 num_rxq)
 {
 	void __iomem *ioaddr = hw->pcsr;
+	u32 value, *key;
 	int i, ret;
-	u32 value;
 
 	value = readl(ioaddr + XGMAC_RSS_CTRL);
 	if (!cfg || !cfg->enable) {
@@ -533,8 +533,9 @@ static int dwxgmac2_rss_configure(struct mac_device_info *hw,
 		return 0;
 	}
 
+	key = (u32 *)cfg->key;
 	for (i = 0; i < (ARRAY_SIZE(cfg->key) / sizeof(u32)); i++) {
-		ret = dwxgmac2_rss_write_reg(ioaddr, true, i, cfg->key[i]);
+		ret = dwxgmac2_rss_write_reg(ioaddr, true, i, key[i]);
 		if (ret)
 			return ret;
 	}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
