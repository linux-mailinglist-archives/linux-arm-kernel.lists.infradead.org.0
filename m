Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF0DAB36A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 09:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zsJAo0Jg9NEQ/7xUCxpDJUMXjkS55OOI9+D/6gxG0EE=; b=PFEKxwfZKIkJKmMD7dOCY0EUfG
	lPd/klXXH76u/Q/yvx22ci0PQQDoYDivLdj2QrKWwATtwEHLPphPS9P67QzODOFZEjMQ6WEkhHWi/
	fNIV9Z98voj0kw77UTjwLJPVh6hjN9bQQOc2UgIyTz5yK2w+YIgTVc2dTEGAikshrRynxuzq7J9pR
	sGZ6JoZKtJTJA/uufndXFkgnURU/b9M49OCtJgyg2bXbwKDkv7CPNrtvpWsW5Uhou2SS3Q3Xzv2Kj
	ciAWpI8r0SEjzFKMmhnS4XpvT8kO3RH0L0+YDG446VuFiE7nM70r0t7kLtASjebLgjmK+VjsK6g+Z
	fkcVLDIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i68tP-0006ch-1F; Fri, 06 Sep 2019 07:42:51 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68s6-0005h3-Po
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 07:41:32 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2AE33C0E3C;
 Fri,  6 Sep 2019 07:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567755688; bh=jZCMlvgCMuP7tUeAHLlMp4idCMgk/I/cK3F4CsQd+PQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=ishy2uzL4O1BH/uU/Pa3nyGxn/4goiVJhORDkg31zNiVDoAlF5mzhMnrO4K//S78l
 M5w8LClhcaOfomTJJyC1Y8t0/MB3Bn4HQHGpbXPwx5s28vTGAiodYmdU3CNr96Yqpn
 Z9Fsn3Sn7ctltDHFBal6vHhGBXc7PcwaOM2A8FTRtBWNFAklk/WeAQOZEcUuFeIxNy
 dGiWO6o+WCI0WQZFzVazqZZtSJADj89mmVvkzoQZmV10bklpFZFT3/sLK2MnU8sH4o
 RiUARgV7YIBtTQt8Qy9isheuBEat0Tvbv7Ge3QBO+jYeXEd9Kl+jDigztFruV5U9fp
 dxI6hQxF0VEYA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id B9DA5A0062;
 Fri,  6 Sep 2019 07:41:26 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 2/5] net: stmmac: selftests: Set RX tail pointer in
 Flow Control test
Date: Fri,  6 Sep 2019 09:41:14 +0200
Message-Id: <9e6d4447eeefa45d7e61e6bb9e4f602981c85c23.1567755423.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567755423.git.joabreu@synopsys.com>
References: <cover.1567755423.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567755423.git.joabreu@synopsys.com>
References: <cover.1567755423.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_004130_838874_F2EE90FA 
X-CRM114-Status: GOOD (  10.65  )
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

We need to set the RX tail pointer so that RX engine starts working
again after finishing the Flow Control test.

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
 drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index dce34c081a1e..2943943bec43 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -722,8 +722,14 @@ static int stmmac_test_flowctrl(struct stmmac_priv *priv)
 
 	for (i = 0; i < rx_cnt; i++) {
 		struct stmmac_channel *ch = &priv->channel[i];
+		u32 tail;
 
+		tail = priv->rx_queue[i].dma_rx_phy +
+			(DMA_RX_SIZE * sizeof(struct dma_desc));
+
+		stmmac_set_rx_tail_ptr(priv, priv->ioaddr, tail, i);
 		stmmac_start_rx(priv, priv->ioaddr, i);
+
 		local_bh_disable();
 		napi_reschedule(&ch->rx_napi);
 		local_bh_enable();
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
