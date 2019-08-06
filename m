Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D2C83330
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2gAE9j0lSTv7ezav8OIByRBKo0LlMbvYUD6W88uQh6E=; b=GXEia0nBwcmB5XNJaHJiFB4By4
	F73rT09hZpmQkdXUVXOzyEf4zc2elEiPbwzjo4yDGhzAshFOLRKwD4vOylyp9qRc/ZLx2O0BaEgu5
	+8SWbLf++lO+T1KYMy9o038bG1ZqtHB/hafj49SO29B7aubHlw70gNdFmmV9AcDqhwm5/K3p8d3sH
	AinHp1C1MtYRjrf44/o8Sz+6Vu0l5kRsQFdrrzwCdEmKA+8SpiIaAHkPvJpuc9zekAnkqqAFmOrWf
	PrVFqUuq0/uikClV8TTHKfAmMrAcddmSnYblPPDZff26csZjv1RJ9WpV0bz+Xv2b0jECZxjy3RGpl
	+qksYG9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzl5-0000M7-8h; Tue, 06 Aug 2019 13:44:11 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzjt-0007ma-AX
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:43:00 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id BE706C21CC;
 Tue,  6 Aug 2019 13:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565098977; bh=18B/BrYz2sxVzKeQcjktizOD0pcEwHNkm/ulnP89N5A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=ggMGdYW7W/TdZKv7lXxaEWfjmo/y1eQGWGZl5pw5rKnHNzvSgAkLa7aV9H48M6Dfj
 lKIX0EVMX4yUCAlBh7jwyxmOHlC634Z1VtYftkc29s7Bvpn8RNtQQF6HxESPKLni5s
 ZW+qzxtYrJgxeQyV5hEDPrBwz9A0TVku2Tc3JNd+pR4jHyIFiQOf0ATNnGgWBy8nnQ
 +bbxovWKCm8KTIjK1oo+9B7VNop5V6qRUv0m+j23C5EQc0Ab+ABXFaBzCGwg30rmKV
 heps87PchFFwmNn9ZaIp5NawFjLUHTkUmU6oy+qcI0EjdAeMxiRk7eCcpgswvmhRMn
 ewiG+JvHfyZqA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 7B0AFA007A;
 Tue,  6 Aug 2019 13:42:55 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 10/10] net: stmmac: selftests: Add a selftest for
 Flexible RX Parser
Date: Tue,  6 Aug 2019 15:42:51 +0200
Message-Id: <486b11dcec03cb5a7d0dc166bf57c09627e53a8b.1565098881.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565098881.git.joabreu@synopsys.com>
References: <cover.1565098881.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565098881.git.joabreu@synopsys.com>
References: <cover.1565098881.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_064257_469264_460BABD5 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add a selftest for the Flexible RX Parser feature.

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
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 98 +++++++++++++++++++++-
 1 file changed, 97 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index 6b08bb15af15..abab84f2ef8b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -11,8 +11,10 @@
 #include <linux/ip.h>
 #include <linux/phy.h>
 #include <linux/udp.h>
+#include <net/pkt_cls.h>
 #include <net/tcp.h>
 #include <net/udp.h>
+#include <net/tc_act/tc_gact.h>
 #include "stmmac.h"
 
 struct stmmachdr {
@@ -229,7 +231,7 @@ static int stmmac_test_loopback_validate(struct sk_buff *skb,
 			goto out;
 	}
 	if (tpriv->packet->src) {
-		if (!ether_addr_equal(ehdr->h_source, orig_ndev->dev_addr))
+		if (!ether_addr_equal(ehdr->h_source, tpriv->packet->src))
 			goto out;
 	}
 
@@ -912,6 +914,96 @@ static int stmmac_test_dvlanfilt(struct stmmac_priv *priv)
 	return ret;
 }
 
+#ifdef CONFIG_NET_CLS_ACT
+static int stmmac_test_rxp(struct stmmac_priv *priv)
+{
+	unsigned char addr[ETH_ALEN] = {0xde, 0xad, 0xbe, 0xef, 0x00, 0x00};
+	struct tc_cls_u32_offload cls_u32 = { };
+	struct stmmac_packet_attrs attr = { };
+	struct tc_action **actions, *act;
+	struct tc_u32_sel *sel;
+	struct tcf_exts *exts;
+	int ret, i, nk = 1;
+
+	if (!tc_can_offload(priv->dev))
+		return -EOPNOTSUPP;
+	if (!priv->dma_cap.frpsel)
+		return -EOPNOTSUPP;
+
+	sel = kzalloc(sizeof(*sel) + nk * sizeof(struct tc_u32_key), GFP_KERNEL);
+	if (!sel)
+		return -ENOMEM;
+
+	exts = kzalloc(sizeof(*exts), GFP_KERNEL);
+	if (!exts) {
+		ret = -ENOMEM;
+		goto cleanup_sel;
+	}
+
+	actions = kzalloc(nk * sizeof(*actions), GFP_KERNEL);
+	if (!actions) {
+		ret = -ENOMEM;
+		goto cleanup_exts;
+	}
+
+	act = kzalloc(nk * sizeof(*act), GFP_KERNEL);
+	if (!act) {
+		ret = -ENOMEM;
+		goto cleanup_actions;
+	}
+
+	cls_u32.command = TC_CLSU32_NEW_KNODE;
+	cls_u32.common.chain_index = 0;
+	cls_u32.common.protocol = htons(ETH_P_ALL);
+	cls_u32.knode.exts = exts;
+	cls_u32.knode.sel = sel;
+	cls_u32.knode.handle = 0x123;
+
+	exts->nr_actions = nk;
+	exts->actions = actions;
+	for (i = 0; i < nk; i++) {
+		struct tcf_gact *gact = to_gact(&act[i]);
+
+		actions[i] = &act[i];
+		gact->tcf_action = TC_ACT_SHOT;
+	}
+
+	sel->nkeys = nk;
+	sel->offshift = 0;
+	sel->keys[0].off = 6;
+	sel->keys[0].val = htonl(0xdeadbeef);
+	sel->keys[0].mask = ~0x0;
+
+	ret = stmmac_tc_setup_cls_u32(priv, priv, &cls_u32);
+	if (ret)
+		goto cleanup_act;
+
+	attr.dst = priv->dev->dev_addr;
+	attr.src = addr;
+
+	ret = __stmmac_test_loopback(priv, &attr);
+	ret = !ret; /* Shall NOT receive packet */
+
+	cls_u32.command = TC_CLSU32_DELETE_KNODE;
+	stmmac_tc_setup_cls_u32(priv, priv, &cls_u32);
+
+cleanup_act:
+	kfree(act);
+cleanup_actions:
+	kfree(actions);
+cleanup_exts:
+	kfree(exts);
+cleanup_sel:
+	kfree(sel);
+	return ret;
+}
+#else
+static int stmmac_test_rxp(struct stmmac_priv *priv)
+{
+	return -EOPNOTSUPP;
+}
+#endif
+
 #define STMMAC_LOOPBACK_NONE	0
 #define STMMAC_LOOPBACK_MAC	1
 #define STMMAC_LOOPBACK_PHY	2
@@ -969,6 +1061,10 @@ static const struct stmmac_test {
 		.name = "Double VLAN Filtering",
 		.lb = STMMAC_LOOPBACK_PHY,
 		.fn = stmmac_test_dvlanfilt,
+	}, {
+		.name = "Flexible RX Parser   ",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_rxp,
 	},
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
