Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D96EBAED69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+DkLjsRnaApdlL9aiLhgs3hOWOwsbttZUkpFvt+q8Yc=; b=XAt
	vhBMSDq+jM3IMubQC84sP/B+mawrNL+xBFMV9NdjcFWMfthbcHLTReDZhvAJf+aX0bpz21KKwP5fY
	/5Cg8O1BF2jbpuppyVa7O01sDpsTJaLI9dp+dGAziTQgPoia+SQjMGfXrJ1P+7SDG6+rHttkjUxaK
	YEKxdKJObSBSQE0ZVFtBaTRXQq6meGOGBsfA5gCCA8IFdH3JJKRliug2IXOu0P5wWDP0vicqzE+7O
	ANPz5gIud5bN8npJ8nG0o/7BntVqXIpkvTzchvGS5HcJxWjwK2cplsu96WFG3+nb5KCDQTlObTbUG
	UhTrFLGNl6gcKNP2o1UewtYljVfYgow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hLT-0002UT-5N; Tue, 10 Sep 2019 14:42:15 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hKn-0001yb-7m
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:41:36 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4F355C2B07;
 Tue, 10 Sep 2019 14:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1568126491; bh=Tub4nxbeU4nreRv8Psll6baSDgasdHP9Jdi2H3FUuM0=;
 h=From:To:Cc:Subject:Date:From;
 b=C2o6PJo4/Gf/7lp2JOLM+WEG1MfCOq73flr31Z7C9+k5tPz3ahpk3X+Jdiw3i1fn9
 imLq+yTn/PJJlWrTdXHoTa/8aus7nXy5gjO+RrI80mGiwkgCCXASzT7qN2WCdjCmue
 OfxO8I9cv2dqEbJBlSWxOiLrHu6RW1A/4GkyB+sQraKB0raSVjXXKSPSvCrFaIga4B
 y9BuCLwa04cyaUqPgnY6ADYrMAWgEQzFctN1M50DadnTDXTeUkweuOTpiwzxUdd5pr
 rfMt62re75WqJhRakCtdR1TKDAOFu4McgBvPV74oFBSIxBzoQgSa7LdCuXxvsneLn/
 kptY6jHGqPW/g==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id B7508A0057;
 Tue, 10 Sep 2019 14:41:28 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/6] net: stmmac: Improvements for -next
Date: Tue, 10 Sep 2019 16:41:21 +0200
Message-Id: <cover.1568126224.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_074133_307473_0F3454A1 
X-CRM114-Status: GOOD (  10.00  )
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

Misc patches for -next. It includes:
 - Two fixes for features in -next only
 - New features support for GMAC cores (which includes GMAC4 and GMAC5)

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
  net: stmmac: Prevent divide-by-zero
  net: stmmac: Add VLAN HASH filtering support in GMAC4+
  net: stmmac: xgmac: Reinitialize correctly a variable
  net: stmmac: Add support for SA Insertion/Replacement in GMAC4+
  net: stmmac: Add support for VLAN Insertion Offload in GMAC4+
  net: stmmac: ARP Offload for GMAC4+ Cores

 drivers/net/ethernet/stmicro/stmmac/dwmac4.h       | 23 +++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  | 79 ++++++++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c | 43 ++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h |  9 +++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c   |  5 +-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    |  2 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |  4 +-
 7 files changed, 162 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
