Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 046828248C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 20:03:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5Cjt9WOSaO9Mcv9bDFwBN4s4XC2V5p+LSrMveJDU/1Y=; b=PTo
	+KI2ej6ASVOOrUc7v59E2ggZHJqF24Hj9DTaXkQjcFzR5X6Vh6e4m83EnCIsiTao77Q6Fb+YxtIAg
	0n3tOtDdao3DE7Zj+FeFHsk1gU7GrdgCM6PP1TDtlrEmcYsN486lOc+VtY85pgJtqbStWzDn5LWJI
	cwDJlZfXoRAvcW63WQe1xU4gjbWpgQSpcTXktaqkNTP94g52I6MKRNe/i/jqlFKcdnOwu+7WZue9i
	E86HYqZV3QJlrOd/bt/wRi3E8dAAzzGo0ROkYYLauWDRcmndCMXw+FzQT7aciXxmZinfXR7/6aWO/
	hheaNA9rtrjz8UGXGJ2K6STAiraoJEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huhKA-0005g7-PM; Mon, 05 Aug 2019 18:03:10 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huhIc-0004HD-Pb
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 18:01:37 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D7318C0A63;
 Mon,  5 Aug 2019 18:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565028094; bh=nqhZWX5HPwhPCii0Zhd4dUGJjfCgRX6Yf5XeDcT+/o8=;
 h=From:To:Cc:Subject:Date:From;
 b=l4I75AHm/SJ9oBzK+gBfHPyw3YMHqHCWoULSaaidixeYuSY5SAXeU1KF5sEqjL4T/
 oh5TPtWhMaYJi3jonEjcTwxdfK+Xqso5oqtg9ePR3iYXyqWkEbbdIjEPYSkDyEQWUD
 rSpXEOImIVIghMKbiCx+uBwpcWjhzbtsRDfPLNx0HwEWaZCEN07JLpMjqgw3Dgtc5P
 af4Jiy9C33/2enfl3Hwdt6LmGg+SXrZUdRrftux8SfqTvFnmyDgep9MSglxW5O332V
 oFXKoGbNPTEsibJI3LKG5A1FLScDiFSf2h+6bTCMoixudmbmdjV0XKJYE7pab7mL9N
 5whjabwAfljeQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id A600CA005D;
 Mon,  5 Aug 2019 18:01:31 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 00/10] net: stmmac: Misc improvements for XGMAC (Part
 1 of 3)
Date: Mon,  5 Aug 2019 20:01:13 +0200
Message-Id: <cover.1565027782.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_110134_842355_6E1C2A72 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

[ Breaking down the previous 26 patch series into 3 series ]

[ This series depend on 3caa61c20875 ("net: stmmac: Sync RX Buffer upon allocation")
which is already in -net but not -next ]

Misc improvements for -next which adds new features in XGMAC cores.

More info in commit logs.

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
  net: stmmac: xgmac: Fix XGMAC selftests
  net: stmmac: xgmac: Implement MMC counters
  net: stmmac: Fix issues when number of Queues >= 4
  net: stmmac: xgmac: Implement set_mtl_tx_queue_weight()
  net: stmmac: xgmac: Implement tx_queue_prio()
  net: stmmac: Implement RSS and enable it in XGMAC core
  net: stmmac: selftests: Add RSS test
  net: stmmac: Implement VLAN Hash Filtering in XGMAC
  net: stmmac: selftests: Add test for VLAN and Double VLAN Filtering
  net: stmmac: Implement Safety Features in XGMAC core

 drivers/net/ethernet/stmicro/stmmac/common.h       |   6 +
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  |   4 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  66 ++-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 502 ++++++++++++++++++++-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_descs.c   |  29 ++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |   7 +
 drivers/net/ethernet/stmicro/stmmac/hwif.c         |   4 +-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  17 +
 drivers/net/ethernet/stmicro/stmmac/mmc.h          |   9 +
 drivers/net/ethernet/stmicro/stmmac/mmc_core.c     | 192 ++++++++
 drivers/net/ethernet/stmicro/stmmac/stmmac.h       |  11 +
 .../net/ethernet/stmicro/stmmac/stmmac_ethtool.c   |  81 ++++
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 117 ++++-
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 224 +++++++++
 include/linux/stmmac.h                             |   1 +
 15 files changed, 1252 insertions(+), 18 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
