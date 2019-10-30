Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EE9E9F05
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:31:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yR3DesLlsf3jZY1xZz5Rlmlm8kPXkde/d7+s9xiMIok=; b=ka4
	IxXSBpxCX5lIzIX4Q1SlG1GrIILA3qUgZwgVwEl92zqwo+rorEoPbi3fQgmVS90aEm/N1wCh75MCD
	hOl/xeMN0d5tpSr1gwoex8ZFtYGKPca2rWyinSPqKROqeQPO1aSweBk2J4Dull/Uc6EhE3t5bSAcT
	j1rnXzywUzPA6VBmU2OPhzGoE81S5AJKttf3cTo5cddZg7bOQ+bdwl0SiBWdUvFeG0z4ipwKWQuoO
	r2JNCcfsS5htfuSz6aXZjUotZIufRU1emLXrP5H3tedUr7xyBz+7UjvhNtdH7BZZRZH64v785cxkY
	sr2r1CswjKJR+/jNMNn0M59i94qvmoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpwH-0001Kq-DQ; Wed, 30 Oct 2019 15:31:13 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpuB-0007No-UT
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:29:06 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 32231C0DE4;
 Wed, 30 Oct 2019 15:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572449343; bh=66e/bYyhcGrAFctAHp4076TE/JEaWIo4me4coBNTLE4=;
 h=From:To:Cc:Subject:Date:From;
 b=UisusYJw9jOvIsXZkfJxzPB8s+FfMXeBNTap3qWNDjaLtsNIAJo3ZDActVJ3vMkg/
 so418MsACo0KkbTR3ZntPXQF9s1g8LrZ+tWzFSWxmJqJ1qJ26AM5hqtgJR20LaQAKW
 dVekW/7G5jUlyAVeIi+xEGsty4fYBzi3Zs423KPVO4bugjqj45dSH8V5YhAI52lAN6
 EtN1OntgLkWJBn3zOop8FBT0QkGuYsNvoi1JwweQoBlp1p+F8ZWfKtfXK2NIXNVEgO
 sYJDAMgmfZ+QSEi15Iu9kV0C2woDau+Pt94hGEpdFPB3jxiUQLYSzL+TyL2YthpRN7
 ZOXfxvQLH8tOg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 51946A0057;
 Wed, 30 Oct 2019 15:28:56 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/3] net: stmmac: Improvements for -next
Date: Wed, 30 Oct 2019 16:28:47 +0100
Message-Id: <cover.1572449009.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_082904_193543_E9EF7B6B 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Misc improvements for stmmac.

Patch 1/3, adds the support for Split Header feature in GMAC4+ cores. This
was already available for XGMAC and now with this change it is supported in
all relevant cores.

Patch 2/3, adds the support for C45 MDIO callbacks in XGMAC cores.

Patch 3/3, removes the speed dependency in TC CBS callbacks because XGMAC3
supports CBS feature at speeds up to 10Gbps

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

Jose Abreu (3):
  net: stmmac: gmac4+: Add Split Header support
  net: stmmac: xgmac: Add C45 PHY support in the MDIO callbacks
  net: stmmac: tc: Remove the speed dependency

 drivers/net/ethernet/stmicro/stmmac/dwmac4.h       |  7 ++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c | 21 ++++++++--
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h |  1 +
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c   | 19 +++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h   |  1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c  | 47 ++++++++++++++++++++--
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c    |  2 -
 7 files changed, 89 insertions(+), 9 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
