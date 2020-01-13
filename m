Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA89138CE7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 09:31:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1DI53pqJEBqFWIlYM+xktkX6nYGyQemmYk1FvVJtd78=; b=PuEOYlvmFNsfSdY1/YFnfDfUnj
	2ci0xehU99d9yy5wa/2QhkNl8tbrMu88bHVbWw2bFfPplNh7Ly24XfEcY0ofRaWLh/pOOuzyLqosT
	dQqKIgdgmcIZUnndFuQ9/F7VVpu5ev+MhY+69c1JY5a/GmwY4oDOIO5HwRr4vZpGzAWAJBUwd075s
	sO/OVrExbr1XpEwZdpKt4bhuzJhW+Kfc/pWFE4txIkLSH37girRQG6uUYPcI+3GrmmhnRFlwDRP/k
	PJ9QsgJvlwlDrXGGQVDoYv4YtwvLjbqfIddS9tRVOLQQvcAm6v1UrbD2G4stDZFITSTe96CQKiIS4
	riKwdLzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqv7s-0006kZ-8X; Mon, 13 Jan 2020 08:31:08 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqv6k-0004mC-7K
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 08:30:02 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8F89140649;
 Mon, 13 Jan 2020 08:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578904196; bh=RtCcLdV0JRXGmln5oZ6H8Oca0j6jsRso4o/fczZ5LFQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=kTfn85wuwrxQe5FOwa+sX+ZPEWnC5+0WTu8LHCbWj3eY6HwSU1g7Ndbrbs/Kxdzul
 zTKAtd2/p5hUPg64okviwYpvR7B16ELsMkVRdZ2MFnrJXX9PDxuxmoWzoWUqPmw176
 I9Ad0Y+WDTH/st3w108P9lwTq/J9uyPdLmosSQ7kF/sZRTfhp36Jq8ElTGuTxfOJHw
 X2USxSkpLU+Wuk/nB6s0ByOSfBBXGcTA/o74LECknN6L71q8hCPKCM+fX4teTXQTzT
 or4hGOAQyEkrYIxVkxMEOXUBc55fZ9Bhet1DXirUiiHUtDjapP/W17erOJbSbKunvG
 KKd+LwLOtQS/Q==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 3BE99A006A;
 Mon, 13 Jan 2020 08:29:54 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 2/6] net: stmmac: tc: Add support for ETF Scheduler
 using TBS
Date: Mon, 13 Jan 2020 09:29:36 +0100
Message-Id: <f6674bfbffcd34c3adedef6deeafb65cd014595a.1578903874.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1578903874.git.Jose.Abreu@synopsys.com>
References: <cover.1578903874.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1578903874.git.Jose.Abreu@synopsys.com>
References: <cover.1578903874.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_002958_306542_84408DE4 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Adds the support for ETF scheduler using TBS feature which is available
in XGMAC and QoS IPs.

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
 drivers/net/ethernet/stmicro/stmmac/common.h      |  1 +
 drivers/net/ethernet/stmicro/stmmac/hwif.h        |  5 +++++
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c |  2 ++
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c   | 18 ++++++++++++++++++
 4 files changed, 26 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
index 31003b67d24f..487099092693 100644
--- a/drivers/net/ethernet/stmicro/stmmac/common.h
+++ b/drivers/net/ethernet/stmicro/stmmac/common.h
@@ -368,6 +368,7 @@ struct dma_features {
 	unsigned int estdep;
 	unsigned int estsel;
 	unsigned int fpesel;
+	unsigned int tbssel;
 };
 
 /* RX Buffer size must be multiple of 4/8/16 bytes */
diff --git a/drivers/net/ethernet/stmicro/stmmac/hwif.h b/drivers/net/ethernet/stmicro/stmmac/hwif.h
index 71c23cbd7af8..df63b0367aff 100644
--- a/drivers/net/ethernet/stmicro/stmmac/hwif.h
+++ b/drivers/net/ethernet/stmicro/stmmac/hwif.h
@@ -533,6 +533,7 @@ struct tc_cls_u32_offload;
 struct tc_cbs_qopt_offload;
 struct flow_cls_offload;
 struct tc_taprio_qopt_offload;
+struct tc_etf_qopt_offload;
 
 struct stmmac_tc_ops {
 	int (*init)(struct stmmac_priv *priv);
@@ -544,6 +545,8 @@ struct stmmac_tc_ops {
 			 struct flow_cls_offload *cls);
 	int (*setup_taprio)(struct stmmac_priv *priv,
 			    struct tc_taprio_qopt_offload *qopt);
+	int (*setup_etf)(struct stmmac_priv *priv,
+			 struct tc_etf_qopt_offload *qopt);
 };
 
 #define stmmac_tc_init(__priv, __args...) \
@@ -556,6 +559,8 @@ struct stmmac_tc_ops {
 	stmmac_do_callback(__priv, tc, setup_cls, __args)
 #define stmmac_tc_setup_taprio(__priv, __args...) \
 	stmmac_do_callback(__priv, tc, setup_taprio, __args)
+#define stmmac_tc_setup_etf(__priv, __args...) \
+	stmmac_do_callback(__priv, tc, setup_etf, __args)
 
 struct stmmac_counters;
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 82bf81b7ae76..fcc1ffe0b11e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4163,6 +4163,8 @@ static int stmmac_setup_tc(struct net_device *ndev, enum tc_setup_type type,
 		return stmmac_tc_setup_cbs(priv, priv, type_data);
 	case TC_SETUP_QDISC_TAPRIO:
 		return stmmac_tc_setup_taprio(priv, priv, type_data);
+	case TC_SETUP_QDISC_ETF:
+		return stmmac_tc_setup_etf(priv, priv, type_data);
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
index 6c4686b77516..ca953fa60fa2 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
@@ -727,10 +727,28 @@ static int tc_setup_taprio(struct stmmac_priv *priv,
 	return ret;
 }
 
+static int tc_setup_etf(struct stmmac_priv *priv,
+			struct tc_etf_qopt_offload *qopt)
+{
+
+	if (!priv->dma_cap.tbssel)
+		return -EOPNOTSUPP;
+	if (qopt->queue >= priv->plat->tx_queues_to_use)
+		return -EINVAL;
+	if (!priv->tx_queue[qopt->queue].tbs_avail)
+		return -EINVAL;
+
+	priv->tx_queue[qopt->queue].tbs_en = qopt->enable;
+	netdev_info(priv->dev, "%s ETF for Queue %d\n",
+			qopt->enable ? "enabled" : "disabled", qopt->queue);
+	return 0;
+}
+
 const struct stmmac_tc_ops dwmac510_tc_ops = {
 	.init = tc_init,
 	.setup_cls_u32 = tc_setup_cls_u32,
 	.setup_cbs = tc_setup_cbs,
 	.setup_cls = tc_setup_cls,
 	.setup_taprio = tc_setup_taprio,
+	.setup_etf = tc_setup_etf,
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
