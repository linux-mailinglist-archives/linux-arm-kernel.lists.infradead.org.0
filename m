Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C5A125747
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:55:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iHwMkyuoWmD+8p05cg7+97QYFPtAt6xoh1G8WLrGLd8=; b=eJV
	GLgzXbdbhZiNN2JLC1A8X+nd20VeofS8LbDpollhTydzk+QeoGwwLfZVj9DjxVddGLdWrJh9Igpfm
	JFE6YPCViCIE0G8K7pzrvsW/MEd/w3blhHh58sD9oV4qKQZe5YRNJ/5krcN7iP1ugDNs191SDBeUk
	Azo0qhxEktAX0gvC5nRS2AxfZ7PNVeM2NnW8mZ/Yr0b6+mN3+ZEf6/9zciLPZXnd+yH3cFhcD6erm
	zVkZBUnZBYE4gPM7XQPA3BgvmcJLoS8MvsV52HGvxbDS+Sx2PU7MVQMau3S4ucm3r4x5dSGBiVv2U
	u38TJaHll6lhVDSXPcU6d3bhW7jD7PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihiDx-00077W-69; Wed, 18 Dec 2019 22:55:21 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihiDo-00075U-KV
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 22:55:14 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 24FFE404CE;
 Wed, 18 Dec 2019 22:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576709710; bh=NmmAeVmnmq3Fk3aycE9gni+itLeoZyRuQ/a6zLOcV60=;
 h=From:To:Cc:Subject:Date:From;
 b=Wvu0gldDwPpxJWUQXxfo2aRX/YGR+qOXDA2VVvDJ8+Vts8IjZvT57pEk78sSboFLx
 6Hem0NrYrW39UYOyTbYNkbyLkl1D6zFaMHnG182kS2r4PN3/UHS9HV7npOXXZWTUuA
 bn77A0Pm8uCQ/fceXsvabo2pgyJzreB3EzjDlW+nPrSgHfGr4kdPV4ICm/ePZLUIVb
 6QmUAS4y3I46NwUMAZCIljYcrnG6nRp+D2wbnx3QxNEVnEpW6J0x1Wx1nRInIRaSZY
 VuMsmlO1cnOqRSev+2JAVlqoq2y9jH+eIjX+WKF2OGir2O5al8XMgrx+RUNfw+Upso
 luGV7g1tnmsTg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id B5A83A0060;
 Wed, 18 Dec 2019 22:55:05 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next] net: stmmac: tc: Fix TAPRIO division operation
Date: Wed, 18 Dec 2019 23:55:01 +0100
Message-Id: <b8ffd4685fac31a39ef5ba91485e685b21ead753.1576709577.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_145512_700879_19AAD40A 
X-CRM114-Status: GOOD (  11.47  )
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

For ARCHs that don't support 64 bits division we need to use the
helpers.

Fixes: b60189e0392f ("net: stmmac: Integrate EST with TAPRIO scheduler API")
Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

---
Completely untested as my setup is offline due to power-outrage. Carefull
review needed.
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
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
index 8ff8f9b9bb22..6c4686b77516 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
@@ -599,6 +599,7 @@ static int tc_setup_taprio(struct stmmac_priv *priv,
 	struct timespec64 time;
 	bool fpe = false;
 	int i, ret = 0;
+	u64 ctr;
 
 	if (!priv->dma_cap.estsel)
 		return -EOPNOTSUPP;
@@ -694,8 +695,9 @@ static int tc_setup_taprio(struct stmmac_priv *priv,
 	priv->plat->est->btr[0] = (u32)time.tv_nsec;
 	priv->plat->est->btr[1] = (u32)time.tv_sec;
 
-	priv->plat->est->ctr[0] = (u32)(qopt->cycle_time % NSEC_PER_SEC);
-	priv->plat->est->ctr[1] = (u32)(qopt->cycle_time / NSEC_PER_SEC);
+	ctr = qopt->cycle_time;
+	priv->plat->est->ctr[0] = do_div(ctr, NSEC_PER_SEC);
+	priv->plat->est->ctr[1] = (u32)ctr;
 
 	if (fpe && !priv->dma_cap.fpesel)
 		return -EOPNOTSUPP;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
