Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D04C006B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 09:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mDPU/o0wm37yaIa4xJfbgegd/ypW3ZjOvM4JeFb0JR4=; b=T4UD8vhThsE08hb7wCYZ77rTQr
	95IBY+BX99LW7sJ3kkRnGIQ8ezKvPiY1ef51EEV7wHXOmPbVxOmDVggww+Ohia9HGZsHWP3dUnuQu
	1pNj9hc4+O922imeS2uzVjqZYlmfMo6IUPk/1fr9jbN3kG014WKVdZwHUtsH9F0Gmx0gUpjtpPdXn
	M4OhmPwQmmy0UVg7/v5oIijoOB0DL/mZ0RWxWOu1utXyzh3ljq6lGv7XxIGRkTChwZqU0jHIk8l6b
	dbjgLfxGvgYY3ejCJhC0shxL2g78J6jt8TDooeMkQNiq+onfcUSv+OZzlMqbQmEL7oXt+RJKMaqN/
	RIFC0yoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDl1b-0003dx-AI; Fri, 27 Sep 2019 07:50:47 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDl07-0000f6-Bt
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 07:49:18 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id EFA12C0CEF;
 Fri, 27 Sep 2019 07:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1569570551; bh=vw4KjFOd0WN5T5S8MRjnu1Dm0OyCo4xGHIGsN5RDZ7w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=fyKUsnK/qAXJC5UaQ3Cmf4bWJOThn2V+hfmLir7754uJcr34j15ghzQYxK4RH0xxD
 rig63bacp1AwjMT32MmTld8/myXROCi97q8nZvva6fUGBH4BBle/dqIXm+r89Z7sCX
 bxqBYQ4VWbq0rVLPB1TnKJrvipzIymiM0lMrD/jGRxZkihvV/X0y0kVdbmN2q26Eg3
 1rjvh22+px1iiPhwt2yREEoJZs9Fp7+EIPpdGwoIw5Mkjjpmeqyr+HxcxSdy0Et34q
 1jtGJAX9Sx2Uh7e1LMsP1JpsSzMHJhkYypgx067XTWsEUyoHKB3zev8pLslm8oCToT
 JpgfPC9IpxGwg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 50C32A0077;
 Fri, 27 Sep 2019 07:49:09 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 2/8] net: stmmac: xgmac: Detect Hash Table size dinamically
Date: Fri, 27 Sep 2019 09:48:50 +0200
Message-Id: <e521e901f3bbe8cd72d8b1492709072f21ee7c84.1569569778.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1569569778.git.Jose.Abreu@synopsys.com>
References: <cover.1569569778.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1569569778.git.Jose.Abreu@synopsys.com>
References: <cover.1569569778.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_004915_414085_BB75B6E5 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Since commit b8ef7020d6e5 ("net: stmmac: add support for hash table size
128/256 in dwmac4"), we can detect the Hash Table dinamically.

Let's implement this feature in XGMAC cores and fix possible setups that
don't support the maximum size for Hash Table.

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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     | 1 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
index 5923ca62d793..f7eb06f8fb37 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h
@@ -122,6 +122,7 @@
 #define XGMAC_HWFEAT_GMIISEL		BIT(1)
 #define XGMAC_HW_FEATURE1		0x00000120
 #define XGMAC_HWFEAT_L3L4FNUM		GENMASK(30, 27)
+#define XGMAC_HWFEAT_HASHTBLSZ		GENMASK(25, 24)
 #define XGMAC_HWFEAT_RSSEN		BIT(20)
 #define XGMAC_HWFEAT_TSOEN		BIT(18)
 #define XGMAC_HWFEAT_SPHEN		BIT(17)
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index 53c4a40d8386..965cbe3e6f51 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -380,6 +380,7 @@ static void dwxgmac2_get_hw_feature(void __iomem *ioaddr,
 	/* MAC HW feature 1 */
 	hw_cap = readl(ioaddr + XGMAC_HW_FEATURE1);
 	dma_cap->l3l4fnum = (hw_cap & XGMAC_HWFEAT_L3L4FNUM) >> 27;
+	dma_cap->hash_tb_sz = (hw_cap & XGMAC_HWFEAT_HASHTBLSZ) >> 24;
 	dma_cap->rssen = (hw_cap & XGMAC_HWFEAT_RSSEN) >> 20;
 	dma_cap->tsoen = (hw_cap & XGMAC_HWFEAT_TSOEN) >> 18;
 	dma_cap->sphen = (hw_cap & XGMAC_HWFEAT_SPHEN) >> 17;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
