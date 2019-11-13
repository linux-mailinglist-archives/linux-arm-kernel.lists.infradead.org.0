Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D63C5FB359
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 16:12:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6Roqe3y2PJk0f/vdLtQ1OJ6u3InM8jo7J/wg+4CGz6c=; b=ZYe/mUzEqemZga8ryb+D/AjYlg
	vJiy/F29CPrE4nPhXvq2JuzPKhRhZ6ONey2CcsfbS9VnYFpUeWhVLhLKb+Q1nHV4ZxUzKD9/ct8bb
	i83DQY9QrOkyHNvBno0Cx6u9gFcz5XkCSnd4k4JBFATsCjWu7bg8i33J/uIM6O5lLUEPzupJrjfva
	3KSpxQSPdtiMMpitx7Xtt5yVjXaJQkJ8WwUJ5CVUNqANiXZmYjFRRRDwapJZTuJwilw3/0g76cMBu
	otKbCepl0MUL/nyreUGcFXnS1OQEDd5TObQqMvG+ku4Pjamaix9tL20CGxbHUPyqEi+ckDZrGm7QT
	RAabN9lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUuKD-0004dy-Ik; Wed, 13 Nov 2019 15:12:53 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUuJj-0004Sj-B1
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 15:12:24 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 14940C0E8E;
 Wed, 13 Nov 2019 15:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573657941; bh=OLfO2cSvqUwRYq7olBQ/mmQCkf/PJmu4vZLyw90R8iM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=U04QP/b8q4807WPbPB6XcuBN4j0386WFyi/TWHif0MlN1B+UTPAFcaeyP+J627dzB
 RTkhQwrSsbWoZY2T9uc41x3ABMzOGDw8ZByJOAw09kPMDPJIQ7+K1H+bPVl7GVMylO
 11enBj8MouEA+7MGR4uiLB3fJ7NHvBTa/rX/5KP3S+/dQqhc9l7ADz56C199vHTLmi
 JobUsa6aML3jTRGJPgm6fVmzgCzKrwGwg7iDdQf7jPsL8PrpeQfnVE3RROMfHZW0cd
 aPkn9L57xhIwF0obytxe4wOHnQ7Z9jVhZbmnSRv94SBLYIS/gIxqUqHKIsIGssJ6I/
 DLIBYLttMyZfw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 87BFBA0087;
 Wed, 13 Nov 2019 15:12:19 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 3/7] net: stmmac: gmac4+: Enable the TBU Interrupt
Date: Wed, 13 Nov 2019 16:12:04 +0100
Message-Id: <dbe803beb524da8ac751e8019c798915c0f7eb2f.1573657592.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1573657592.git.Jose.Abreu@synopsys.com>
References: <cover.1573657592.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1573657592.git.Jose.Abreu@synopsys.com>
References: <cover.1573657592.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_071223_395438_682F27F5 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.182.47.102 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Enables Transmit Buffer Unavailable interrupt so that any coalesced
packet is not missed on transmission.

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
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h
index 589931795847..1be1df5f65de 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h
@@ -161,6 +161,7 @@
 
 #define DMA_CHAN_INTR_NORMAL		(DMA_CHAN_INTR_ENA_NIE | \
 					 DMA_CHAN_INTR_ENA_RIE | \
+					 DMA_CHAN_INTR_ENA_TBUE | \
 					 DMA_CHAN_INTR_ENA_TIE)
 
 #define DMA_CHAN_INTR_ABNORMAL		(DMA_CHAN_INTR_ENA_AIE | \
@@ -171,6 +172,7 @@
 
 #define DMA_CHAN_INTR_NORMAL_4_10	(DMA_CHAN_INTR_ENA_NIE_4_10 | \
 					 DMA_CHAN_INTR_ENA_RIE | \
+					 DMA_CHAN_INTR_ENA_TBUE | \
 					 DMA_CHAN_INTR_ENA_TIE)
 
 #define DMA_CHAN_INTR_ABNORMAL_4_10	(DMA_CHAN_INTR_ENA_AIE_4_10 | \
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
