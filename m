Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E89A91295
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 20:58:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ktgdqQ6MJlOW7BR/R8Hm5osnLjpAjN8W8JbwPQ70+1o=; b=bXX
	vC6x1jAw2h8eVAy1g/lxX4H4OGykRpzYIBbORLgYNoXLH2LrQlVyfNBdKLWPtNZyLki5cayxd1RI6
	O5FsVNhZHvwbH9p+V3q9wE2azHgFkQ3SYvnJLcvwY50nY7CVkVXpVnUQJlU7XcEaKsENiYwkY5PSm
	tZsugQ2PEN7ZEIsXSa67Kt4AZ8tGymfIi8lWjlfK/b3x8CoECdbH1vsRtb3NdjN0SgVALwFGRHdY2
	VruIz9KvwZDd5kBa3A15b+G0g2B9UpiMUT/jBjEbvJwc4pFj7E6PnGj4pXKNG4f4AGWjvhtDAnp1v
	7yyAmmaUgb5DrVshDD0cMlw+z49dAYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz3uC-00038I-E3; Sat, 17 Aug 2019 18:58:24 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz3qu-0007cM-Ku
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 18:55:09 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B5101C0051;
 Sat, 17 Aug 2019 18:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1566068100; bh=R7aF5EjeHRaz3V0jYhX81XQ4Vx/vUvia+WkrllGMdp8=;
 h=From:To:Cc:Subject:Date:From;
 b=klHGs7Wt4qpN//vshsoyUFv7c/QKb7AgVf1s6U8uNN+Lii5AyjIsgob+26b5x3FtC
 WqL969hl0Bgb694G7TZQRHfkG4EH9C5tSVLfCncajH2KwUWZjbgSTmuLrKI/IeGXTx
 MrS/DcUZWFe4QlakUt/vrfrdIh6JclcuaChfJs9Jc+hCIRVX9m5s9iJ0rQd+DvZFCc
 Zn3tyRG4Vt0zA0/3kK0E/x4R3tarPoxpkwtQzW2Yw2ayFH0/mvR7tjb5P87vN3fAo4
 jzZAlNjZkuctooeqV1aFaIMRxMo7V41PBXqgJBNqphUbI/MQseI6oDyxhEDb0r4LAV
 C3xuQ+WlPUfGQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 60C4CA0057;
 Sat, 17 Aug 2019 18:54:53 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v3 00/12] net: stmmac: Improvements for -next
Date: Sat, 17 Aug 2019 20:54:39 +0200
Message-Id: <cover.1566067802.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_115500_683694_A9A41755 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Jose Abreu (12):
  net: stmmac: Get correct timestamp values from XGMAC
  net: stmmac: Prepare to add Split Header support
  net: stmmac: xgmac: Correctly return that RX descriptor is not last
    one
  net: stmmac: Add Split Header support and enable it in XGMAC cores
  net: stmmac: Add a counter for Split Header packets
  net: stmmac: dwxgmac: Add Flexible PPS support
  net: stmmac: Add ethtool register dump for XGMAC cores
  net: stmmac: Add support for SA Insertion/Replacement in XGMAC cores
  net: stmmac: selftests: Add tests for SA Insertion/Replacement
  net: stmmac: xgmac: Add EEE support
  net: stmmac: Add support for VLAN Insertion Offload
  net: stmmac: selftests: Add selftest for VLAN TX Offload

 drivers/net/ethernet/stmicro/stmmac/common.h       |  10 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  56 ++++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 182 ++++++++++++-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_descs.c   |  85 +++++-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |  31 ++-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  30 +++
 drivers/net/ethernet/stmicro/stmmac/stmmac.h       |  10 +
 .../net/ethernet/stmicro/stmmac/stmmac_ethtool.c   |  24 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 286 ++++++++++++++++-----
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 194 +++++++++++++-
 10 files changed, 817 insertions(+), 91 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
