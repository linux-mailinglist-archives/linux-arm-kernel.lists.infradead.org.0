Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A795A50AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=azCZjQCihZqiZvzborL5Ia/bFcmCQtIOVHjxy/H9zCQ=; b=i64
	UHAE3JqtR3aPeiOneQJ0n5/j4aRWbocRlY/ZpRidTf3PulvGaALZoeTJAckpaaMwfpur3+FFRMFTu
	NqUuyK2y3m8G99VyLIWcixlCU96KhXqHNl4OizeBM9wZ7Nf2iUwlMFWCzz5dptrC05sC5jdmd7/D0
	Wt0typqLLMa6poW9aOrQ3o9tqj8/ZNQLP/H+6P8M1sYq5s2l23N+4U7q/aHUyEksYGv2mGflZZsWq
	GwJIy8iVRHkdWr+dJk1dPdg9LMeycEFX7WCSH/XYpGPqYE2jCAmIgr6eOTr7THO1mvxhVrFGEJwlY
	Yyw+jet1MXjnidJ32hvRseOCIP4BQFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hIu-0004Vk-Ij; Mon, 02 Sep 2019 08:03:12 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hIF-00047g-7T
 for linux-arm-kernel@bombadil.infradead.org; Mon, 02 Sep 2019 08:02:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YD02GPDcRG0Mdvh2OibcdN2vPRtFgtYJgehxTlAuQqo=; b=P2qWIw9g4w/NoryD1Kr1v1LQ/
 T2xW8hbNBElbsNka/Aww8FcAsQz1lz6wRdNtkg57+TPhwsqi32Eu8cS+wa674wLVRHzlzbVHgclPW
 jVTMT7d3NhkfgTEqejHKCObdRGRI+nGyIFdHx9k+tEswRHBXr6oneJukjWb00AT+7Zsr6R1wx/ABX
 72yihuoz216qIWHLqniS4JPgYCxis53xcUWkuwOT9Uem0f3W5YBUwW9LaHwW0bYuRapVwyIug6zx8
 IB7sNPhaKrATjk0IGmGLEVtN9U0H6+YI3tLBIPClGPTGoWeY9OHdOjGss0ltlXCMee1wlXfXumAu4
 okslCXnsw==;
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hIU-0003ZF-J4
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 08:02:49 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 6F353C0419;
 Mon,  2 Sep 2019 08:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567411341; bh=4COHdtFTDR5TsR1zywo8dHE+8UKYJjqPIwYaAeI8pyg=;
 h=From:To:Cc:Subject:Date:From;
 b=DdkuJriaM4/aER3fqZqTEzsnXsx/AYp8+0gwL4/R1QSKZdpQ4VDvIQoDtXxnajxWY
 QWqH/Jd2Cm7MCiYHVvHZHpE7x1W98KFZXd/Mmvc9X0v8L7IZUnT/YSyaNlzH6bs0zm
 DMAZGAj5S9eBhlGmaT8koMqisB5MUhMRJCvOhVAfggtgCSd9fKppePInaeA1w8JJT8
 aiauR+ka1H54huxYDQCzigw+LIF5cJxH/sFaCr8xGdmuRDhFguE8PHBPG2yP6MQLn3
 tu1BtfSdmSNXaR3Pm9VBnF6c+5HgGIskIU1Wwsap85x6ylRG6Upej8jydAL8hwgG03
 CzXInQL34H5lg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 4F684A0063;
 Mon,  2 Sep 2019 08:02:14 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 00/13] net: stmmac: Improvements for -next
Date: Mon,  2 Sep 2019 10:01:42 +0200
Message-Id: <cover.1567410970.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_090247_385078_C678C2A9 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Couple of improvements for -next tree. More info in commit logs. Some of them
includes fixes for features that are only in -next tree.

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

Jose Abreu (13):
  net: stmmac: selftests: Return proper error code to userspace
  net: stmmac: xgmac: Add RBU handling in DMA interrupt
  net: stmmac: Do not return error code in TC Initialization
  net: stmmac: Implement L3/L4 Filters using TC Flower
  net: stmmac: selftests: Add selftest for L3/L4 Filters
  net: stmmac: xgmac: Implement ARP Offload
  net: stmmac: selftests: Implement the ARP Offload test
  net: stmmac: Only consider RX error when HW Timestamping is not
    enabled
  net: stmmac: ethtool: Let user configure TX coalesce without RIWT
  net: stmmac: xgmac: Correct RAVSEL field interpretation
  net: stmmac: Correctly assing MAX MTU in XGMAC cores case
  net: stmmac: xgmac: Enable RX Jumbo frame support
  net: stmmac: selftests: Add Jumbo Frame tests

 drivers/net/ethernet/stmicro/stmmac/common.h       |   2 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  33 +-
 .../net/ethernet/stmicro/stmmac/dwxgmac2_core.c    | 205 +++++++++-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |   8 +-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  19 +
 drivers/net/ethernet/stmicro/stmmac/stmmac.h       |  12 +
 .../net/ethernet/stmicro/stmmac/stmmac_ethtool.c   |  21 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |  18 +-
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 451 ++++++++++++++++++++-
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c    | 247 ++++++++++-
 10 files changed, 969 insertions(+), 47 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
