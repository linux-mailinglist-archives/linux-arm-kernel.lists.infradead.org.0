Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176BF1391AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 14:03:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3ifoiTG7RHOM5iCePvEfcwLWMU3MKiFqQkfHGZGC4dI=; b=dtqpx2wXQadhFeFnC3UtrJwOml
	w493EnnK65/pC2ClshfwFO0ckQ1lQ8s635FtLy9an5M9VUqfFZyQr++imgF5P4sYZTgoNv7uDS37T
	wQ+7fzxs1Ymkh20+Wl0X2buIx62omwCZlffdHRn6FjvxDJHxTtIpiZn7DW1r+2E9mf08+K09uO3rE
	2rWkqXzf4fBSUHBR+wSrtaanZCo1BML1koERAqJlVmuaIQUa+4XfTFleRzYUapBqUFvTNv3Q2WCh2
	DqsLUy0yPRrCqZqMuTtsVpkHMn2siWo6dCV7bYlTOMn/NL1S+BeiXqhdGxVZ+4W601Ifb9tNCdH+K
	d8Or0CCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzNN-0000i8-OU; Mon, 13 Jan 2020 13:03:25 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzMr-0000Wu-0y
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 13:02:54 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C5545C05D0;
 Mon, 13 Jan 2020 13:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578920572; bh=bjsugJXpoh9gzcAjdUQ3cVUezQOFhoojeDQOsagF9zw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=acBTZXU1AEDhKGfH3xSIjJ854J5wmdNoXDmQxDMuWCI8sUbVsC+dQYVa3m90CJsxZ
 RRIxIxwYiHoJWjntzzK3kQgGJqUeNFi+WsCYO+rg5uKvF2pn5xF5m0HjayL44/HAkH
 13YWKcghHtt8isMR+g+0NhpPIsUxjkpZCzbha1VgOUrZLlKXAyH4b0DjJzMuks/JU7
 qFJVnlFnvHif9c6lEnQlVn0NCDX9CRAPnwx9aTxpnE+PFvyWaQP5OTm02AzkLUW7M9
 tNzBgG3YPMC+PQEagD30xU9jQ3yL1drcRXgZ6b37pVMXcsMZ9S2vJkEGSLqFeNJDPU
 GmGPKLCPFLtsQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 8B15DA007E;
 Mon, 13 Jan 2020 13:02:50 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 8/8] net: stmmac: selftests: Add a test for TBS
 feature
Date: Mon, 13 Jan 2020 14:02:43 +0100
Message-Id: <1b6c8e386ac74978c18201b9a11f4ed10ecfc89a.1578920367.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1578920366.git.Jose.Abreu@synopsys.com>
References: <cover.1578920366.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1578920366.git.Jose.Abreu@synopsys.com>
References: <cover.1578920366.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_050253_163901_2385B696 
X-CRM114-Status: GOOD (  16.43  )
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

Add a new test for TBS feature which is used in ETF scheduler. In this
test, we send a packet with a launch time specified as now + 500ms and
check if the packet was transmitted on that time frame.

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
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 73 ++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index d50ae59fe3d8..7cc59e66e42a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -14,6 +14,7 @@
 #include <linux/phy.h>
 #include <linux/udp.h>
 #include <net/pkt_cls.h>
+#include <net/pkt_sched.h>
 #include <net/tcp.h>
 #include <net/udp.h>
 #include <net/tc_act/tc_gact.h>
@@ -50,6 +51,7 @@ struct stmmac_packet_attrs {
 	u8 id;
 	int sarc;
 	u16 queue_mapping;
+	u64 timestamp;
 };
 
 static u8 stmmac_test_next_id;
@@ -208,6 +210,9 @@ static struct sk_buff *stmmac_test_get_udp_skb(struct stmmac_priv *priv,
 	skb->pkt_type = PACKET_HOST;
 	skb->dev = priv->dev;
 
+	if (attr->timestamp)
+		skb->tstamp = ns_to_ktime(attr->timestamp);
+
 	return skb;
 }
 
@@ -1723,6 +1728,70 @@ static int stmmac_test_sph(struct stmmac_priv *priv)
 	return 0;
 }
 
+static int stmmac_test_tbs(struct stmmac_priv *priv)
+{
+#define STMMAC_TBS_LT_OFFSET		(500 * 1000 * 1000) /* 500 ms*/
+	struct stmmac_packet_attrs attr = { };
+	struct tc_etf_qopt_offload qopt;
+	u64 start_time, curr_time = 0;
+	unsigned long flags;
+	int ret, i;
+
+	if (!priv->hwts_tx_en)
+		return -EOPNOTSUPP;
+
+	/* Find first TBS enabled Queue, if any */
+	for (i = 0; i < priv->plat->tx_queues_to_use; i++)
+		if (priv->tx_queue[i].tbs_avail)
+			break;
+
+	if (i >= priv->plat->tx_queues_to_use || !priv->tx_queue[i].tbs_avail)
+		return -EOPNOTSUPP;
+
+	qopt.enable = true;
+	qopt.queue = i;
+
+	ret = stmmac_tc_setup_etf(priv, priv, &qopt);
+	if (ret)
+		return ret;
+
+	spin_lock_irqsave(&priv->ptp_lock, flags);
+	stmmac_get_systime(priv, priv->ptpaddr, &curr_time);
+	spin_unlock_irqrestore(&priv->ptp_lock, flags);
+
+	if (!curr_time) {
+		ret = -EOPNOTSUPP;
+		goto fail_disable;
+	}
+
+	start_time = curr_time;
+	curr_time += STMMAC_TBS_LT_OFFSET;
+
+	attr.dst = priv->dev->dev_addr;
+	attr.timestamp = curr_time;
+	attr.timeout = nsecs_to_jiffies(2 * STMMAC_TBS_LT_OFFSET);
+	attr.queue_mapping = i;
+
+	pr_info("%s: start_time=0x%lld\n", __func__, start_time);
+	ret = __stmmac_test_loopback(priv, &attr);
+	if (ret)
+		goto fail_disable;
+
+	/* Check if expected time has elapsed */
+	spin_lock_irqsave(&priv->ptp_lock, flags);
+	stmmac_get_systime(priv, priv->ptpaddr, &curr_time);
+	spin_unlock_irqrestore(&priv->ptp_lock, flags);
+
+	pr_info("%s: curr_time=0x%lld\n", __func__, curr_time);
+	if ((curr_time - start_time) < STMMAC_TBS_LT_OFFSET)
+		ret = -EINVAL;
+
+fail_disable:
+	qopt.enable = false;
+	stmmac_tc_setup_etf(priv, priv, &qopt);
+	return ret;
+}
+
 #define STMMAC_LOOPBACK_NONE	0
 #define STMMAC_LOOPBACK_MAC	1
 #define STMMAC_LOOPBACK_PHY	2
@@ -1856,6 +1925,10 @@ static const struct stmmac_test {
 		.name = "Split Header               ",
 		.lb = STMMAC_LOOPBACK_PHY,
 		.fn = stmmac_test_sph,
+	}, {
+		.name = "TBS (ETF Scheduler)        ",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_tbs,
 	},
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
