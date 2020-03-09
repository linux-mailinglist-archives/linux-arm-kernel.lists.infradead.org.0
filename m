Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7476A17E136
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 14:30:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7iSwQpISqvbn/JiAfsgQLm/qpAKRXyAJQ0CRV/D63Vk=; b=bXQ
	9JW4INET3rOFTYJwWJ0mHbiiNoQBCliMaSe8Baegf75Q5j8pwYs95TVNDYq/fjqCuGV0lMk8y4cSC
	EBiLRt0fOGlrpdKIRqCrxBkUVw3V4oMlCEwyY4CBTO1zVd0fpl3LP+FmL+Sa9o508WM7/CefmBbRk
	T9502PKuaomicL3+p6JaphgZNuJxsfnmtGq0O4QVuDP8IJXgaluCWf++pf538biZr0rmb2qr2ln27
	NBOWNtOzRNzffWyT5c05DsZ9pI20dj7lzLFxiHrM1/zIu/AaSrBCI5BupHy7P5VVxvrPZePIa+NWe
	TsQUiAePGmrz6qmaUZiGEyVPKX+Z2SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBIUV-0006MV-Hl; Mon, 09 Mar 2020 13:30:43 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBIUO-0006KH-3H
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 13:30:37 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 568B040217;
 Mon,  9 Mar 2020 13:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583760633; bh=97U/sdHYXIUwOOXmojGePjGjAgvZEazHf2GWd8NdtTA=;
 h=From:To:Cc:Subject:Date:From;
 b=azbGtfZaswH7QBuBAURz58oiW7DrrvpSItJTvgWGtGxGnFzgj7VGRVQNK8haQiKTc
 07McFHwpGbWJ+Pt4uRJMauf4jAMRmiEjekuKx/StMXiSD/zl6Aye1B+YIa9svNlVwI
 Zym7ZCfXuQVLIf4YWFxSuIFwuyFXjhoKtoNCekcmHYpREXOcC0Hvb0ogO7lmraoWhU
 i4o0Al70y6P4siHk6mMBdn7ea9I8G+Ljx8NdP6wr7a+HsLAp83nJo4hWFaoi5ZvkzP
 Z1V61c+JxACn4nzZwW3bsm7ZLC0pTwlKLqzfF2pTgXnLzEhrQC2hGlqd3cGQL24T9w
 3v3F8X89Hhjrg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 7AC59A005C;
 Mon,  9 Mar 2020 13:30:29 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next] net: stmmac: selftests: Fix L3/L4 Filtering test
Date: Mon,  9 Mar 2020 14:30:22 +0100
Message-Id: <4e5d8d273498a1c1c6b8f983e5dd7590c6dfd26a.1583760590.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_063036_147180_D98A64EC 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Since commit 319a1d19471e, stmmac only support basic HW stats type for
action. Set this field in the L3/L4 Filtering test so that it correctly
setups the filter instead of returning EOPNOTSUPP.

Fixes: 319a1d19471e ("flow_offload: check for basic action hw stats type")
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
 drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index 586a657be984..07dbe4f5456e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -1387,6 +1387,7 @@ static int __stmmac_test_l3filt(struct stmmac_priv *priv, u32 dst, u32 src,
 	cls->rule = rule;
 
 	rule->action.entries[0].id = FLOW_ACTION_DROP;
+	rule->action.entries[0].hw_stats_type = FLOW_ACTION_HW_STATS_TYPE_ANY;
 	rule->action.num_entries = 1;
 
 	attr.dst = priv->dev->dev_addr;
@@ -1515,6 +1516,7 @@ static int __stmmac_test_l4filt(struct stmmac_priv *priv, u32 dst, u32 src,
 	cls->rule = rule;
 
 	rule->action.entries[0].id = FLOW_ACTION_DROP;
+	rule->action.entries[0].hw_stats_type = FLOW_ACTION_HW_STATS_TYPE_ANY;
 	rule->action.num_entries = 1;
 
 	attr.dst = priv->dev->dev_addr;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
