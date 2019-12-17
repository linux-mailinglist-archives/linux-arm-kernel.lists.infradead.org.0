Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A458B122C41
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 13:47:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tmsKqUiuEkPZ0BuNDDJ3bpFoE9V5+PuwDt47jRRRdC8=; b=erl
	WyB5fWYMXKav2TV/MIkbwASLPsoxRgy/1vdGWNx70DEVj7+5iDtsSeSx4A508oz0xjHbTUZ0dTEIe
	YFBNh2rG2H3Cy934IRtoj4a4IRb9e4ADZvu87p0FWPcbBArXHjDvZqKs1JsvvO1s0gym/Rw8B0ZFr
	jUkkFj4rZQaa5fgaiIQLsI/M5jWbaJYqzEaLRodTH+tT4u2eXlh8pbI9de1I/1AxPApxDlYrld58L
	eCC2Yjb+xMIni8ZQUtYCV4j3BxjeSY9YXDJN98LwzDIn6VZWGKr5pKi4geABovnozAAV2XvZC91ME
	2NY+8HYFERKJdEB2HMC8NM/Ep6+ADiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihCGS-0006CY-Ko; Tue, 17 Dec 2019 12:47:48 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihCF3-0004yB-23
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 12:46:24 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 5AF8BC00AE;
 Tue, 17 Dec 2019 12:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576586780; bh=JfzLeaD7F4WW4TsqwGILNTOHGkhNnPEwK2ItB4zHXlk=;
 h=From:To:Cc:Subject:Date:From;
 b=dKVErmsvICyvIYUNQzYHD0yQcMGdDCyqaa/xKB06F2qxDLCwqvCO2hff1lxqcDlBk
 5UOH+nu0exSiCkL5g6ChAtZZrjI29qjtL7QEcppuF2R5XsFfkNw5eS4QJOa011/rVY
 SKYDfGOq6PD27OIzPt+mt6ojSDsBtqUQosPL4/iZYqieX7LrMbwLHr1bCSvREV3jAW
 bPoI6CberKXSmELcrXhmoiVLltos0AxZlqZmtBu+tPhJa7+uLxCz0jjm8XUq/uCW4i
 5HH+VhCtSkjIK6c59p5S3hsfuC57GNcS7WRH5v1vyHsdkUbeOKgC3+eoFif0u8bCbo
 SUqXaKGGfTB/Q==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 6D72FA0075;
 Tue, 17 Dec 2019 12:46:16 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 0/7] net: stmmac: Improvements for -next
Date: Tue, 17 Dec 2019 13:46:04 +0100
Message-Id: <cover.1576586602.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_044621_268576_AABD11DD 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Improvements for stmmac.

1) Adds more information regarding HW Caps in the DebugFS file.

2) Prevents incostant bandwidth because of missed interrupts.

3) Allows interrupts to be independently enabled or disabled so that we don't
have to schedule both TX and RX NAPIs.

4) Stops using a magic number in coalesce timer re-arm.

5) and 6) Implements the EST feature for GMAC5+ and XGMAC3+ cores which leads
to 7) that integrates EST feature with TAPRIO API.

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-kernel@vger.kernel.org
---

Jose Abreu (7):
  net: stmmac: Print more information in DebugFS DMA Capabilities file
  net: stmmac: Always arm TX Timer at end of transmission start
  net: stmmac: Let TX and RX interrupts be independently
    enabled/disabled
  net: stmmac: Always use TX coalesce timer value when rescheduling
  net: stmmac: Add basic EST support for GMAC5+
  net: stmmac: Add basic EST support for XGMAC
  net: stmmac: Integrate EST with TAPRIO scheduler API

 drivers/net/ethernet/stmicro/stmmac/common.h       |   4 +
 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c  |  24 ++++-
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h       |   9 ++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  |   2 +
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c   |   3 +
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h   |  11 ++-
 drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c   |  47 +++++++--
 drivers/net/ethernet/stmicro/stmmac/dwmac5.c       |  95 ++++++++++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwmac5.h       |  19 ++++
 drivers/net/ethernet/stmicro/stmmac/dwmac_dma.h    |   6 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c    |  22 ++++-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  21 ++++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    |  52 ++++++++++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |  27 +++++-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  16 ++-
 drivers/net/ethernet/stmicro/stmmac/stmmac.h       |   1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |  96 ++++++++++++------
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c    | 108 +++++++++++++++++++++
 include/linux/stmmac.h                             |  11 +++
 19 files changed, 519 insertions(+), 55 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
