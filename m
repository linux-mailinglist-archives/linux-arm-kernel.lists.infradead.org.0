Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5687A139616
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 17:25:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cxV/TifW9Ej2+VsCGcDr6qe1VIpqm2ykavtL7SUtNLQ=; b=F1MARfwFeR594MNnHlC/TiwzzR
	bJPVPaRdDvU/f5MF6j6NaEys8154WMa+RqqtQpm3k0kkpKmIk9egzRlb+r313foA8cOKoGWR1kKab
	Lp6/AkOTMfcz1THro7utZfWtiFjDlD4QshYO4Uaso538m+f4tFDi9uZUlNpj7ZJTDMX/3Lk1jLMhl
	czh9bspF2QWEkwtP65ZG3ACjO1hwqo2Nml/BSLs8G9C7VgCxU3OfmIsmJo8rVs3Hl0c/nK4TYL8+4
	PXrSJ3QQh2B8QV5UsQrhYhzRK3a67OYep5Xoj/lK7wA5RwPoFRaJ+6BxXZCvtRANmRpzvdb847drB
	jEuKq9PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir2Wd-00080N-AT; Mon, 13 Jan 2020 16:25:11 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir2Vq-0007Sc-Dt
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 16:24:24 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E74E6C05E1;
 Mon, 13 Jan 2020 16:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578932661; bh=kN5PiGdIWi7yxdqxRCTpBO3hPGrie9JabgsZPaL70oM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=NHwAG/OO67WAmnilec/npwNv0kLoKS78/gJRXe9B8DzW47QoSbr+4AiVRHGLuNZ7C
 ZuTRqkmB77UU40x5nhVs1TFLtc2n/hU3EaktYIU3m2645Ic7DONQNOGJIhQlKo5Rcb
 olGFBrV4bGJ/TLD5KxJJbvO0vE7Wyu8rerPt8btINZb8806dVkLu+Z8PRw1SDSaiPQ
 KiCdkkQKk9tlrtlGhdhJVtfhRxzHzRrqgxhlFQkxHcZlFBot34lpicTOyTLGjchlLj
 Oq2rBFbYi3KK0GOB4mBPl+eoJICvSCnDTCnhpplDZB2b4YAWYelacRLIHIDgRRjrdr
 q/kCIJedMBOrQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id A2A0DA007A;
 Mon, 13 Jan 2020 16:24:19 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v3 7/8] net: stmmac: selftests: Switch to
 dev_direct_xmit()
Date: Mon, 13 Jan 2020 17:24:15 +0100
Message-Id: <98c64074079767307ee3bb1664d298d17bebf6ea.1578932287.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1578932287.git.Jose.Abreu@synopsys.com>
References: <cover.1578932287.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1578932287.git.Jose.Abreu@synopsys.com>
References: <cover.1578932287.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_082422_573449_0CAD344B 
X-CRM114-Status: GOOD (  12.79  )
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

In the upcoming commit for TBS selftest we will need to send a packet on
a specific Queue. As stmmac fallsback to netdev_pick_tx() on the select
Queue callback, we need to switch all selftests logic to
dev_direct_xmit() so that we can send the given SKB on a specific Queue.

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
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 25 ++++++----------------
 1 file changed, 6 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index 13227909287c..d50ae59fe3d8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -339,8 +339,7 @@ static int __stmmac_test_loopback(struct stmmac_priv *priv,
 		goto cleanup;
 	}
 
-	skb_set_queue_mapping(skb, attr->queue_mapping);
-	ret = dev_queue_xmit(skb);
+	ret = dev_direct_xmit(skb, attr->queue_mapping);
 	if (ret)
 		goto cleanup;
 
@@ -926,8 +925,7 @@ static int __stmmac_test_vlanfilt(struct stmmac_priv *priv)
 			goto vlan_del;
 		}
 
-		skb_set_queue_mapping(skb, 0);
-		ret = dev_queue_xmit(skb);
+		ret = dev_direct_xmit(skb, 0);
 		if (ret)
 			goto vlan_del;
 
@@ -1018,8 +1016,7 @@ static int __stmmac_test_dvlanfilt(struct stmmac_priv *priv)
 			goto vlan_del;
 		}
 
-		skb_set_queue_mapping(skb, 0);
-		ret = dev_queue_xmit(skb);
+		ret = dev_direct_xmit(skb, 0);
 		if (ret)
 			goto vlan_del;
 
@@ -1286,8 +1283,7 @@ static int stmmac_test_vlanoff_common(struct stmmac_priv *priv, bool svlan)
 	__vlan_hwaccel_put_tag(skb, htons(proto), tpriv->vlan_id);
 	skb->protocol = htons(proto);
 
-	skb_set_queue_mapping(skb, 0);
-	ret = dev_queue_xmit(skb);
+	ret = dev_direct_xmit(skb, 0);
 	if (ret)
 		goto vlan_del;
 
@@ -1639,8 +1635,7 @@ static int stmmac_test_arpoffload(struct stmmac_priv *priv)
 	if (ret)
 		goto cleanup;
 
-	skb_set_queue_mapping(skb, 0);
-	ret = dev_queue_xmit(skb);
+	ret = dev_direct_xmit(skb, 0);
 	if (ret)
 		goto cleanup_promisc;
 
@@ -1869,7 +1864,6 @@ void stmmac_selftest_run(struct net_device *dev,
 {
 	struct stmmac_priv *priv = netdev_priv(dev);
 	int count = stmmac_selftest_get_count(priv);
-	int carrier = netif_carrier_ok(dev);
 	int i, ret;
 
 	memset(buf, 0, sizeof(*buf) * count);
@@ -1879,15 +1873,12 @@ void stmmac_selftest_run(struct net_device *dev,
 		netdev_err(priv->dev, "Only offline tests are supported\n");
 		etest->flags |= ETH_TEST_FL_FAILED;
 		return;
-	} else if (!carrier) {
+	} else if (!netif_carrier_ok(dev)) {
 		netdev_err(priv->dev, "You need valid Link to execute tests\n");
 		etest->flags |= ETH_TEST_FL_FAILED;
 		return;
 	}
 
-	/* We don't want extra traffic */
-	netif_carrier_off(dev);
-
 	/* Wait for queues drain */
 	msleep(200);
 
@@ -1942,10 +1933,6 @@ void stmmac_selftest_run(struct net_device *dev,
 			break;
 		}
 	}
-
-	/* Restart everything */
-	if (carrier)
-		netif_carrier_on(dev);
 }
 
 void stmmac_selftest_get_strings(struct stmmac_priv *priv, u8 *data)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
