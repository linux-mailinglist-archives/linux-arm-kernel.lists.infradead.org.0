Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1609FA8396
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 15:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6nnPxuhVDg618m61YIfT/1ulWVWwO9gr77gq75FPaOY=; b=NGOC9/YZpbQCbPBp3uad7QERuZ
	ZqyyTYbzw/97QhSfY7AzekgehS+awoqJwfasbZe/oGET4lE3NSJcWIC5RJ9xeM9q6clwsYkJJgZwT
	HSwrrYc/81O1D3caKnOCLK+Prcd2xi2MMX/fLWGDUlVMsbBBFlM0a+0ax0PjimDOzuQvNfCTwafpu
	5WQ55j3ePxZEWWnBuuXTqNRdHyqStPviFbYQfu763jykQyo8s4gbtM44y3T5eCpe3axZHhHHt98cf
	1iZSuR+oo8gg3lcX/mTiWOfjLH+D9xIzErWCSo/pN+6wEBSQfE4VByENZwABAp2MpnLDQ/AN88coI
	fJsJgVtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5VCP-000386-Oi; Wed, 04 Sep 2019 13:19:49 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5V9w-0000vu-3L
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 13:17:21 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 18BF0C574A;
 Wed,  4 Sep 2019 13:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567603034; bh=TnBhj8gYd15Wdya0NUlz/4/WhOGI/iqFaYmz/7sZMCQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=TGh46PBLQiIG6yA7Shai76M28/O5u55y33zvay3P8GmYoCMeqNUEliTeR1W9tLwvy
 EHViKx+y543zMuUHj+XvtXVRLzIx423Ff+e95OuSWpiEmTz8z5k6iZhLEFygw1SwQk
 femOQujM+YbH1a08c+79GjAtiM/YuGdy/ik0hLo93S1jM5nT0OXmtR8FAEcJp23daJ
 5dGy3VrBasZK8slIutZ9auxTMTYAH87lC+RrBuUVvCsVd3QgFGemxliatk1/ETKWrd
 RC4mRve3tKqBEtg66+4ezhzCIlGqOmjHc8NMz/DWRDdW+iJpSqKLZRGrk8TDxnBaxq
 ++Jyk7jPkzPIw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id C7ECDA0084;
 Wed,  4 Sep 2019 13:17:12 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 net-next 12/13] net: stmmac: xgmac: Enable RX Jumbo frame
 support
Date: Wed,  4 Sep 2019 15:17:04 +0200
Message-Id: <70dc0542979992e509040f7f7bcd1a6cea3a2be7.1567602868.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567602867.git.joabreu@synopsys.com>
References: <cover.1567602867.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567602867.git.joabreu@synopsys.com>
References: <cover.1567602867.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_061716_151747_3BD78F81 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

We are already doing it by default in the TX path so we can also enable
Jumbo Frame support in the RX path independently of MTU value.

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h      |  3 ++-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c | 11 -----------
 2 files changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index f942ac975c29..5923ca62d793 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -44,7 +44,8 @@
 #define XGMAC_CONFIG_CST		BIT(2)
 #define XGMAC_CONFIG_ACS		BIT(1)
 #define XGMAC_CONFIG_RE			BIT(0)
-#define XGMAC_CORE_INIT_RX		0
+#define XGMAC_CORE_INIT_RX		(XGMAC_CONFIG_GPSLCE | XGMAC_CONFIG_WD | \
+					 (XGMAC_JUMBO_LEN << XGMAC_CONFIG_GPSL_SHIFT))
 #define XGMAC_PACKET_FILTER		0x00000008
 #define XGMAC_FILTER_RA			BIT(31)
 #define XGMAC_FILTER_IPFE		BIT(20)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
index 36262ef8b70a..78ac659da279 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
@@ -15,7 +15,6 @@ static void dwxgmac2_core_init(struct mac_device_info *hw,
 			       struct net_device *dev)
 {
 	void __iomem *ioaddr = hw->pcsr;
-	int mtu = dev->mtu;
 	u32 tx, rx;
 
 	tx = readl(ioaddr + XGMAC_TX_CONFIG);
@@ -24,16 +23,6 @@ static void dwxgmac2_core_init(struct mac_device_info *hw,
 	tx |= XGMAC_CORE_INIT_TX;
 	rx |= XGMAC_CORE_INIT_RX;
 
-	if (mtu >= 9000) {
-		rx |= XGMAC_CONFIG_GPSLCE;
-		rx |= XGMAC_JUMBO_LEN << XGMAC_CONFIG_GPSL_SHIFT;
-		rx |= XGMAC_CONFIG_WD;
-	} else if (mtu > 2000) {
-		rx |= XGMAC_CONFIG_JE;
-	} else if (mtu > 1500) {
-		rx |= XGMAC_CONFIG_S2KP;
-	}
-
 	if (hw->ps) {
 		tx |= XGMAC_CONFIG_TE;
 		tx &= ~hw->link.speed_mask;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
