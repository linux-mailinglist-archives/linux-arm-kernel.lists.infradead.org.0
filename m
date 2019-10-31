Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AE9EAE41
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 12:03:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Vj5O2AyogjGRAbDFo6qH/pL++p6APNwK3/BnI2VTMyM=; b=kT5JBfJqMU7zTU/ftKEt9N6q6M
	CkWVc2jlkm8CGOp5AqfAW8sgFvjiYZPpbhPWr5oSz7OiDTkCmfHAK7R9VM+8NG3decrqni8bUkfvA
	SzQ4T4ddw93dg+duY0G2XEwqJ0a2ssBOPuPI6jpU83y0N1DkSkiXjQaii5u4nioUKVCBOC2pPF7vN
	RYTOT3Stq0tNB6Xeoi+WlLKZg4iBm2q4zYulmcsqscbdX1XCZexe9yMps9cbgBuLXII664JkW0jQH
	6GcecRHOLBeZPC/caVECkzfrza/v1QJDGLfhK+qQL7dRVGhyYoAvbbyDqYeh9BF5BEtdzfPrw/ZBT
	SPETqMUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ8EU-0005dV-3N; Thu, 31 Oct 2019 11:03:14 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ8CQ-0003yP-Sg
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 11:01:13 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A7428C08B3;
 Thu, 31 Oct 2019 11:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1572519662; bh=YDnL8bpwK/tRJL9FcP1ml8xixy+yOmNErBznAAvEsXE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=ZVpASdIcb0OYgCvj4Jb0YMsy7mpfK6fWYwhIwgCijFhsDCNrVI0Y+lPejRbydOh0x
 Qjstn+OR1SuMJRa81MVppQH9zlp9LjfLqV/dizl3GK5giakYr5v+6TRUNUkg/Psqkh
 ygy31CYlNZvjoclqfvK0PI0I92C+rBt4fQCi43n54sGn/WjRbVXTzND3oXaaQCMl8j
 ta5jw+Iw4NtSOnxcphxUuCEngW6qiagsp4mGelzM0KpfvDeZpamMJHMnijYaolepp0
 wurJ0DsGPT5rrtFr1I0bKIVMtORptdnOgmRchJwz+GWs71AmwiIHL3SPPMNR/tmu0j
 wvHZLtEHSYIlg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 5E65AA007E;
 Thu, 31 Oct 2019 11:01:00 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v2 08/10] net: stmmac: xgmac: Disable Flow Control when 1
 or more queues are in AV
Date: Thu, 31 Oct 2019 12:00:46 +0100
Message-Id: <efeb1da2bc93722b9cce10c355bb540135cb7327.1572519070.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1572519070.git.Jose.Abreu@synopsys.com>
References: <cover.1572519070.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1572519070.git.Jose.Abreu@synopsys.com>
References: <cover.1572519070.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_040107_072877_8E18E83A 
X-CRM114-Status: GOOD (  10.72  )
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

When in AVB mode we need to disable flow control to prevent MAC from
pausing in TX side.

Fixes: ec6ea8e3eee9 ("net: stmmac: Add CBS support in XGMAC2")
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
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index 7bd1447f9f47..f148cb2061d8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -473,6 +473,7 @@ static void dwxgmac2_enable_tso(void __iomem *ioaddr, bool en, u32 chan)
 static void dwxgmac2_qmode(void __iomem *ioaddr, u32 channel, u8 qmode)
 {
 	u32 value = readl(ioaddr + XGMAC_MTL_TXQ_OPMODE(channel));
+	u32 flow = readl(ioaddr + XGMAC_RX_FLOW_CTRL);
 
 	value &= ~XGMAC_TXQEN;
 	if (qmode != MTL_QUEUE_AVB) {
@@ -480,6 +481,7 @@ static void dwxgmac2_qmode(void __iomem *ioaddr, u32 channel, u8 qmode)
 		writel(0, ioaddr + XGMAC_MTL_TCx_ETS_CONTROL(channel));
 	} else {
 		value |= 0x1 << XGMAC_TXQEN_SHIFT;
+		writel(flow & (~XGMAC_RFE), ioaddr + XGMAC_RX_FLOW_CTRL);
 	}
 
 	writel(value, ioaddr +  XGMAC_MTL_TXQ_OPMODE(channel));
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
