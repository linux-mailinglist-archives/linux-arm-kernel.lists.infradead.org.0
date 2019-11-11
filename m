Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43611F76C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vvE2heu/10zhDwoKPRZORpHAG0djtwlaxDryK9xuasQ=; b=kBy
	5zOSkjdnvdvdRW8K+Uz4RkOAoF/MvUf292aIa/S6osIu0VYkOfB8CYvCsLxnt5E8+cD1Ni8sWvKH4
	O/1pIv/aupIWAXKZBrWkpcTUTdkB3dhZ+fmcHrXcGlIhhh+jgosY89Un+lawmxgHMxLCsuT+b7UI1
	nzBOoLMRfI8AX9U0A4ZPrS966R1WVciPRiPWUFPNg8g3YORtPqrFujZeBxWo1ExJvPsh5m4qR+Yc0
	4ltcFMKr08BjnT1hHGtFskYAX1XPVuRZrBIp8bMfB0ebhm0i3lSNzKcKeDdZVH36EeK5d9UHezoz5
	0qCFpxY2tRnjnqCE90yPvEwNouqJazw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAut-00031r-Rr; Mon, 11 Nov 2019 14:43:43 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAuC-0002Zg-RA
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:43:03 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 6123CC08B7;
 Mon, 11 Nov 2019 14:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573483379; bh=xvb79Aahx3jHaPdlZ0qpbSpWPSpjW4NAZIBnGit7MJA=;
 h=From:To:Cc:Subject:Date:From;
 b=mG7s8u/tskFiKSC2onN0QpZIETTM+suYlB3kuRs5z62CfC+EBLVrJpy691KgkU4ZH
 dqPNNGQLN06Jtvax8ZZPn9GeYsGEO17CuntaAdQmN7uBDg3iWILoptfhAh9kr8JL8S
 ekJ680+kU+Jf1MV26oK/somYcDE/MhNlDvJd+18PwN2cGxv3tYhsXt4FdoTokH9PCo
 pyJd6pNm3tbGqGk2OcMH1A5h5j6bcM/uzXfO01MHB8rZl1HEG2j82BwuPZIPlrtAtU
 8QmjqhnS8crQKjDWYT39sUXXwMwqPqrRgC1ACP+mXEGQLmSwM7ModWHwaZiidNeEbH
 qYpcXxe6rxqRA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id C4B41A01EF;
 Mon, 11 Nov 2019 14:42:50 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/6] net: stmmac: Improvements for -next
Date: Mon, 11 Nov 2019 15:42:33 +0100
Message-Id: <cover.1573482991.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_064300_941679_28279096 
X-CRM114-Status: GOOD (  11.22  )
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

Misc improvements for stmmac.

Patch 1/6, fixes a sparse warning that was introduced in recent commit in
-next.

Patch 2/6, adds the Split Header support which is also available in XGMAC
cores and now in GMAC4+ with this patch.

Patch 3/6, adds the C45 support for MDIO transactions when using XGMAC cores.

Patch 4/6, removes the speed dependency on CBS callbacks so that it can be used
in XGMAC cores.

Patch 5/6, reworks the over-engineered stmmac_rx() function so that its easier
to read.

Patch 6/6, implements the UDP Segmentation Offload feature in GMAC4+ cores.

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

Jose Abreu (6):
  net: stmmac: Fix sparse warning
  net: stmmac: gmac4+: Add Split Header support
  net: stmmac: xgmac: Add C45 PHY support in the MDIO callbacks
  net: stmmac: tc: Remove the speed dependency
  net: stmmac: Rework stmmac_rx()
  net: stmmac: Implement UDP Segmentation Offload

 drivers/net/ethernet/stmicro/stmmac/dwmac4.h       |   7 +
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  |   2 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c |  21 ++-
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h |   1 +
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c   |  19 +++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h   |   1 +
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    |   2 +-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |   2 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 183 ++++++++++++++-------
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c  |  58 +++++--
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c    |   2 -
 11 files changed, 217 insertions(+), 81 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
