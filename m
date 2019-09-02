Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FD1A50AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hkug3Q8oK1CdiM4hZAO8/Bendqt9sy/V3HV6Lr86EgA=; b=Km9rI5iZT+9tz0kYwwFE1vomQg
	yXm2QoGv/ithFWoYTNnzo7BTUq82a/7JWPfCHsG1jVYqG+PDDjTi1LUyJst/nFsYpEVolcPcqPs0U
	dbdl5LPfGJvwoxOrr1iDZWL9x52jpD5x6CxGDxxfoiKIM2hJsg8loUKt5jKAfRDiD0RC18Sux0P5G
	owgP412FuGs6IYL8dpQ+8FEtcw1J9G9Gisa3RrqABg7usHcV5jwJ4GFR06Jae4VdT62SM5m0qNmbJ
	Zi4o2a0gE1ndZOHitkvRKMBJCdIa6oe5h8+6vxoXDT84gYnkEmPseWUFmnADmEpswbqTMoyZPKYON
	BZil22jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hJB-0004mH-RO; Mon, 02 Sep 2019 08:03:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hIF-00047c-7D
 for linux-arm-kernel@bombadil.infradead.org; Mon, 02 Sep 2019 08:02:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=se2KJe8cR9UlCss6A1xFhP5IR/befRVJlqBQCm/vVks=; b=VHCGUk/O3A1IXXAUpG81iq6W9
 1Z6WgFwSIMRY9ccA9RsKrU4g78mNMuJ3rivW2GAaBgVleCAehTHDGVhKF0P71O3jxl5ISnMcsmzS5
 qiKa9TeP3yT9a6idKzTw6phg4w7eV2lOZ/qN4BwARvMjDgqSfaZbE17xs4Xs+frkdO24+9FllYU3J
 WXZI8GDyw1X+eMe1BaBu4I20nqdakh+gLNKEa76j3HXJvnt+U3tIOq15R05DpDQg0RedSr76XRtZ8
 c1SzH1H/B4qq1R7PlnvJUYmF2fYNA1BKmwmow3wniVGsNSIDP8tGza6MBOc1Bc3fDN4FgHDm+IgLD
 2frjF4QIA==;
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hIU-0003ZB-Vn
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 08:02:49 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 6F2FCC0418;
 Mon,  2 Sep 2019 08:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567411337; bh=KtB3Uov2hN4nf9kUa8PMFbl3ixv9iikyZQaPSyHRMNw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=HZkq/hvcG7zb3ZsmDrcm2MWAEu4O4wftlN9W0W90xfGrMwyBOJrjthcTc3QP5flSU
 2gWBUynEPd+sm+nPVWOKhd4PjRcs567J1k1lhK0/dAdtCPN861A3mNtGqrAcFdA91Z
 ZpwUT2p+0b2ZDyz3Ajng+2QdN1K/BHeGojbpdU3OZok5SEjhRFtNuTatAdiLKhgaAF
 EPSNzzDhP4oVsvhIbBNcLfgnP77M/49Z7lbVgTyCUU1A8wzKk8oDVn2TlJ2niLHdwu
 Fei5Ujv1tDJrE8AYISH9NOe5yBi8j1ugSeEjS/hpQ/EcP8hMjjGysLqaV3mk8UzXXy
 wHTHTfXLp061Q==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 1CBFCA0068;
 Mon,  2 Sep 2019 08:02:15 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 02/13] net: stmmac: xgmac: Add RBU handling in DMA
 interrupt
Date: Mon,  2 Sep 2019 10:01:44 +0200
Message-Id: <dd52c10ba74b26a99ac3f1e32c21b37c6450f9f8.1567410970.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567410970.git.joabreu@synopsys.com>
References: <cover.1567410970.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567410970.git.joabreu@synopsys.com>
References: <cover.1567410970.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_090247_300847_F1B85C4E 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
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
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the handling of Receive Buffer Unavailable interrupt in the DMA
handler of XGMAC cores.

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index 64956465c030..e77eb0ddf9b5 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -322,6 +322,10 @@ static int dwxgmac2_dma_interrupt(void __iomem *ioaddr,
 
 	/* ABNORMAL interrupts */
 	if (unlikely(intr_status & XGMAC_AIS)) {
+		if (unlikely(intr_status & XGMAC_RBU)) {
+			x->rx_buf_unav_irq++;
+			ret |= handle_rx;
+		}
 		if (unlikely(intr_status & XGMAC_TPS)) {
 			x->tx_process_stopped_irq++;
 			ret |= tx_hard_error;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
