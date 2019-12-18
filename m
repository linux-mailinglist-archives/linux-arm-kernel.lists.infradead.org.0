Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BB71244BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fmqe6JwIbq8lVIq7pLPN+GUkFF8ZzmePe8X0wYpu19s=; b=oeH
	1WbfceAn/YoAzb691gjrQpSSNhPYrB9wZ38KnMoGJ7NYejJl/ty1vB99Snx6do7VD59N5+OqsDYtw
	35zP9Q+ItEA9omGpzN0Vkh1WZBGEsZBUqlCEVWfmFJ9Wtt7IO5MWpBKlpSkQkM0EqVoRJypS27CS3
	T5ijcf33EwrdgfsWCpQwwnbNjRTvIMiMLuSZz87Hzhdqyke38gEvwCTPWFDw3fifpkk8dTOK5PkAy
	fhzAicwhU2qPUHv/4JUf4/bEGPHzkE/t1sKqOIUVAdzUW3l3xcMlsOZ+Z+sWwZ8B9ZhYhFdQipDjN
	u0I8DPyNUmjkw/FjGTrmLIJTBaxKUDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWfu-00022D-A1; Wed, 18 Dec 2019 10:35:26 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWdw-0007jN-4B
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:33:28 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id BF0BA40346;
 Wed, 18 Dec 2019 10:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576665201; bh=0M9mYY6dp+dohtIQdCtyeu3ar+st+lmwIwwIyzmrtEs=;
 h=From:To:Cc:Subject:Date:From;
 b=Oqr9YdTMq7rKi76ubUYqeeAZPBqhy9xYt+pcgaPQCjCillvkAX8cd7xDoBVbKNIiA
 wZXIGHoXGM0um9oi7FSdwc2DzhHbNbNlGI2fWta06r9fospEE/vrMjUPZ01GFGKNiC
 DLSN3H7FvMmlySIuSFqXTw539a/5mjdzzCrENMCE3FHojVZYb33YR0CvKOTlSc52Y6
 62EsFBN7cxGhI36BwclRX2ZoYWlB1z7NkQHG3olyty1PttwTygNL7jBca2JWY9xKc0
 z7TriHFtjmqZDNiWMJLUICYE73uXk1SWxqJqmHDnmMXghTp+TvsgdbGN0wBpqGSHNx
 LGxrRd7SU0pCQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 68555A0066;
 Wed, 18 Dec 2019 10:33:18 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/7] net: stmmac: TSN support using TAPRIO API
Date: Wed, 18 Dec 2019 11:33:04 +0100
Message-Id: <cover.1576664870.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_023324_249322_7E3F6FFF 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Alexandre Torgue <alexandre.torgue@st.com>, Richard.Ong@synopsys.com,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Boon Leong <boon.leong.ong@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Andre Guedes <andre.guedes@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds TSN support (EST and Frame Preemption) for stmmac driver.

1) Adds the HW specific support for EST in GMAC5+ cores.

2) Adds the HW specific support for EST in XGMAC3+ cores.

3) Integrates EST HW specific support with TAPRIO scheduler API.

4) Adds the Frame Preemption suppor on stmmac TAPRIO implementation.

5) Adds the HW specific support for Frame Preemption in GMAC5+ cores.

6) Adds the HW specific support for Frame Preemption in XGMAC3+ cores.

7) Adds support for HW debug counters for Frame Preemption available in
GMAC5+ cores.

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

Jose Abreu (7):
  net: stmmac: Add basic EST support for GMAC5+
  net: stmmac: Add basic EST support for XGMAC
  net: stmmac: Integrate EST with TAPRIO scheduler API
  net: stmmac: Add Frame Preemption support using TAPRIO API
  net: stmmac: gmac5+: Add support for Frame Preemption
  net: stmmac: xgmac3+: Add support for Frame Preemption
  net: stmmac: mmc: Add Frame Preemption counters on GMAC5+ cores

 drivers/net/ethernet/stmicro/stmmac/common.h       |   5 +
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h       |  12 ++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  |   4 +
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c   |   4 +
 drivers/net/ethernet/stmicro/stmmac/dwmac5.c       | 118 ++++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac5.h       |  24 ++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  25 ++++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    |  76 ++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |   4 +
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  14 +++
 drivers/net/ethernet/stmicro/stmmac/mmc_core.c     |  16 +++
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |   2 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c    | 135 +++++++++++++++++++++
 include/linux/stmmac.h                             |  13 ++
 14 files changed, 452 insertions(+)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
