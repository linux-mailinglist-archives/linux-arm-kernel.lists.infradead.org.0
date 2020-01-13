Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A5B138CE6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 09:31:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cIgT4c1GrfrhPSZf5wZKKXKApt+VUCaKA3DMT1emzRY=; b=sMSrxOW+D2pn5laeSdpU4MCVZs
	5n+OeWwEHdyp5rWAn4hp778nnzjy4XfI+sRIcPEr8AUzIa/sI1ou9peNcDpNpTEvXYX78wfc/MyYl
	LUuQvyoAv13aJrYOdmVyBmASdjoottuNquFLJVpwF87eAMLVOFoepT+YxUGvGhcEl5NOBTzNhEpBW
	tn8lqHWibfjxOZI+nyPfcVsotfrusCHvMmAqYbtxWJyLMOqNV37m9ZayyxrSxja4u4YugJMUll8sZ
	pXeelGOnCv92tEYGVpI7bk8ov5JTvBIyuoYqINoytiEKtfBHaz4QC3YnGq5/crJfBbrT/aKtUVOUm
	pqvr2H+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqv7g-0006TT-2Q; Mon, 13 Jan 2020 08:30:56 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqv6k-0004mB-84
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 08:30:01 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A08D440692;
 Mon, 13 Jan 2020 08:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578904196; bh=Ben06d7t9W2BvCud3kGg7X4OfXW/BtwnEBLz0+lX38c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=DzjEKWVEjc5TkB7btFpWwzZuBnS1ivO72dE+YqSFRLVvBHEtr0Fl38WhJ3JG7CI6K
 q5+YN7cXCZ4lWYGQG+xLUr5ADris9bTV3hRxhfH1mGdukcbAq8T523SK5Two/gjtrv
 PAQ3sSKWWCisXTpjDGA6suVvlUOLi8poCa+ylk8jQS3962dyXQfVHMTAvsTzD4pt4O
 00LNYmEzUv1HunaNGUFK44Jx6A20MnMIyb/khCkIpFudg0cic/9Z8K6HLSxryJRL+p
 oFxHupN++nOfEs3wjN4i5K6L1n3b9zlmz9+OvaWxnYFiXfz3Mimz5Wc27GEEQKIeQT
 dvVatQdPNxD7A==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 63D40A0077;
 Mon, 13 Jan 2020 08:29:54 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 5/6] net: stmmac: pci: Enable TBS on GMAC5 IPK PCI
 entry
Date: Mon, 13 Jan 2020 09:29:39 +0100
Message-Id: <2ab70398e404244933f9feac1be0795aff871730.1578903874.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1578903874.git.Jose.Abreu@synopsys.com>
References: <cover.1578903874.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1578903874.git.Jose.Abreu@synopsys.com>
References: <cover.1578903874.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_002958_323039_6BDF69DD 
X-CRM114-Status: GOOD (  10.91  )
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

Enable TBS support on GMAC5 PCI entry for all Queues except Queue 0.

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
 drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
index 40f171d310d7..623521052152 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
@@ -401,6 +401,8 @@ static int snps_gmac5_default_data(struct pci_dev *pdev,
 		plat->tx_queues_cfg[i].use_prio = false;
 		plat->tx_queues_cfg[i].mode_to_use = MTL_QUEUE_DCB;
 		plat->tx_queues_cfg[i].weight = 25;
+		if (i > 0)
+			plat->tx_queues_cfg[i].tbs_en = 1;
 	}
 
 	plat->rx_sched_algorithm = MTL_RX_ALGORITHM_SP;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
