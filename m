Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458E9A50EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rqgM11fZwiQ+FOhShfgqWwSzyAIlgcMWd8pst3PVtjw=; b=kphqylMrrdt/cQLJlKE419x0LC
	5PMt+FA7OdCSVz03AbqObp8F2UtEwts0Cfx78BBKSaUZawe4LoReKUrVK80hLmMwfAzzF4fAyzVX5
	erFRagqU81CQIQsmdjLKU1gU4GPXfxILUs9fNcOlq3/QwbXA6yA34Qd4WuPyxoYfhafLSiGWMZxsG
	a29t9gPYDI6UWdEQuz0uBS7bOYHEAwqhSG4Q2mGU5Lv3gkG7MO7shIMONvp5AHgkpkUHdBhr3aCco
	nvQDs6U+xzhUpaHcyfRaCoPSsw63pOvWYQ1aKWGJZl5HlUDbEA8gPdwE5MQ0DwFgQihDQqJT5KHMJ
	hXlHmSyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hPe-0008Du-Ow; Mon, 02 Sep 2019 08:10:11 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hPM-0008CA-CY
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 08:09:54 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id EDADEC043D;
 Mon,  2 Sep 2019 08:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567411337; bh=QQfM47J/YIzK+69igm741pwDyJOTLmfonyo78bSHkBs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=BoPxKpPmdw68Zr9fRRDq8ZP1s49J9G6Eb65OJPW8iMLV+BcGvNTvTt9BkRYRJLI4R
 433Vvfo9CpPGekgvqvy1Pa5Z009Rx5jxNfdJ5iiFf3qXCXgunS4DNSXUMsQQhv60Hi
 mRjAj4JhaRIKCZJ2/Ab9MFZkExjZVPPsgxNlH9k4dZBqDEFKsGUSL1+gsk4AYMG2p+
 cr0SrFKTDnGoBohufMd7Xy6qdbfVK39oVmdqLQDcLToQf0AM3dd/XcuGv4BiqpXtz3
 oYwPNOPLYhbkvIKPVHbRfbzeVDQLArAUNsEdkQgxxiGSR7NGrZ3UkelvwYQW+cKSRy
 vr5lOv3IVnywg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id B272AA0082;
 Mon,  2 Sep 2019 08:02:15 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 11/13] net: stmmac: Correctly assing MAX MTU in XGMAC
 cores case
Date: Mon,  2 Sep 2019 10:01:53 +0200
Message-Id: <400734cb0ee68c05bf14e8a3f02e10b8e9c944a3.1567410971.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567410970.git.joabreu@synopsys.com>
References: <cover.1567410970.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567410970.git.joabreu@synopsys.com>
References: <cover.1567410970.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_010952_476902_1703758A 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Maximum MTU for XGMAC cores is 16k thus the check for presence of XGMAC
shall be done first in order to assign correct value.

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
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 5271c6129f0e..c3baca9f587b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4542,10 +4542,10 @@ int stmmac_dvr_probe(struct device *device,
 
 	/* MTU range: 46 - hw-specific max */
 	ndev->min_mtu = ETH_ZLEN - ETH_HLEN;
-	if ((priv->plat->enh_desc) || (priv->synopsys_id >= DWMAC_CORE_4_00))
-		ndev->max_mtu = JUMBO_LEN;
-	else if (priv->plat->has_xgmac)
+	if (priv->plat->has_xgmac)
 		ndev->max_mtu = XGMAC_JUMBO_LEN;
+	else if ((priv->plat->enh_desc) || (priv->synopsys_id >= DWMAC_CORE_4_00))
+		ndev->max_mtu = JUMBO_LEN;
 	else
 		ndev->max_mtu = SKB_MAX_HEAD(NET_SKB_PAD + NET_IP_ALIGN);
 	/* Will not overwrite ndev->max_mtu if plat->maxmtu > ndev->max_mtu
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
