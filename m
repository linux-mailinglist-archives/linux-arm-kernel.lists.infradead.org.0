Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383118330F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:43:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dPL74h4pXUWfBGSNc+Jc8BCndUkyabd/iLQ8G4gEXyI=; b=SOB
	J46XxHER8qYJhXDF9CSCO058Hk2LYUJXNQ7prLRIZb1TMqGNBdFSotPjX3YxmlQoyOfCUU0Cz+XXW
	gYDmSjHoT5BAjnUXc4gmeA9te2WKRJr8CjqgQ3IpH/lZD9yf0LOuq+NMoFBSUQW1gb7gN3GWjO/7F
	V5KxLnNXNPATcl9AQ4RmmtSRkCbI8fWkhASU1vSk9af1BI0mOe0K8bqW23wbs8dCI3UJoi/FdgUE0
	bSLNYFyK2QYDLVxh0WyjVUEUuQVvrS7JU/ze06jQ7/WqBlgifBhwBeLcO+1kJa0sQeB+HD4vVZ1VQ
	0WbUjuRMbwNc7o+/ei4lM6bNGmBDaEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzk6-0007oW-6Y; Tue, 06 Aug 2019 13:43:10 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzjs-0007li-K1
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:42:58 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 31394C21AE;
 Tue,  6 Aug 2019 13:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565098976; bh=g3fYN+8z/UxI7FeCuuLDjSYU9su9owSrWnBkpruQfVk=;
 h=From:To:Cc:Subject:Date:From;
 b=UF/s6Itmeojm8oETQnPHErGmMkvlb08dC+w1dnzGHFrL/riVd8JM6sKyJ3g8DGsVz
 CJkwybaxciRPAd1jUVTY4bt/wdNX8b6J2SzPfTh0Oo0EsxOhaqMs6ufEQFg6a1j4xl
 ZwWfbSebC8r1RcS6z906yKPdQehIG6j+3AVfi//hEbTUiNY6kOhSldocrHUCHU/+sJ
 HXApwwNQCP+Y2RQE0Sfbt08ciP1s/x+QCv2AvFyODtsmYC4/WbmoRLHWXLrXZAFQHs
 BVNyqzZ6kjSPtvJp/zX7bsVIpjPWhxCf/QxP0ItHfE+8XuO2PvQQ+aZC2kOyzrCeYP
 TxJIOoHwCn6Qg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id ADC9EA0057;
 Tue,  6 Aug 2019 13:42:53 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 00/10] net: stmmac: Improvements for -next
Date: Tue,  6 Aug 2019 15:42:41 +0200
Message-Id: <cover.1565098881.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_064257_234120_77087C6D 
X-CRM114-Status: UNSURE (   9.70  )
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

Couple of improvements for -next tree. More info in commit logs.

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

Jose Abreu (10):
  net: stmmac: xgmac: Implement MMC counters
  net: stmmac: xgmac: Implement set_mtl_tx_queue_weight()
  net: stmmac: xgmac: Implement tx_queue_prio()
  net: stmmac: Implement RSS and enable it in XGMAC core
  net: stmmac: selftests: Add RSS test
  net: stmmac: Implement VLAN Hash Filtering in XGMAC
  net: stmmac: selftests: Add test for VLAN and Double VLAN Filtering
  net: stmmac: Implement Safety Features in XGMAC core
  net: stmmac: Add Flexible RX Parser support in XGMAC
  net: stmmac: selftests: Add a selftest for Flexible RX Parser

 drivers/net/ethernet/stmicro/stmmac/common.h       |   6 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  76 ++-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 605 ++++++++++++++++++++-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_descs.c   |  29 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |  10 +
 drivers/net/ethernet/stmicro/stmmac/hwif.c         |   4 +-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  17 +
 drivers/net/ethernet/stmicro/stmmac/mmc.h          |   9 +
 drivers/net/ethernet/stmicro/stmmac/mmc_core.c     | 192 +++++++
 drivers/net/ethernet/stmicro/stmmac/stmmac.h       |  11 +
 .../net/ethernet/stmicro/stmmac/stmmac_ethtool.c   |  81 +++
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 120 +++-
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 322 ++++++++++-
 include/linux/stmmac.h                             |   1 +
 14 files changed, 1474 insertions(+), 9 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
