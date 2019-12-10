Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7E611912A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 20:55:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LlPS3eMUWlCAhhXSI8Wy5/Xdn/66MmnBbRcrse+8k8k=; b=b0f
	fScBTgFZCvaXQM6xxslsrzAnwSeY5noSNpdpfs9aofbEOIMoKPpO1uPTLM/iD1tLcqUxVY3G9mCa8
	qglXd6kuuQ/nyEzi9+IsDweEYksgf9Y8jriA5V4DEepKxk9Z2AAxReEnNHFnTMz09OMEFFhAaE10T
	DyCTiSCmOlYVJ2f3Cc6tyDTHzW0c4w/Eh1ILUTkEdJVfbS1vC5ofY8WV/yh9H+3D7eJ1TDqAqODsj
	DKlPWAjysiSxY6D+2QOH4pkUrqtSSIbwCE8nKhi7Dr7qJsvdSwrpf3Vg/Weq84X8Rk+G39dmj4FPP
	FAP8mYabiI7lYn+JB4GZSL0eF5GTncA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielbv-00008S-PU; Tue, 10 Dec 2019 19:55:55 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielb2-0006tB-Ic
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 19:55:02 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 79420C0B80;
 Tue, 10 Dec 2019 19:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576007700; bh=M/cwTD418HXN3ZYDrXvm66mfCePGTem77sm0VuzRvnI=;
 h=From:To:Cc:Subject:Date:From;
 b=Uu7ur+tWnfQV7PBhydZCGLaul9JV7TkAP4j6Q7kW6D+wOeM4sfpJedSnSUPmomo4y
 aZAbLKUccL9eBeU7xQhw8LdfRFd5kLM+Vw1b7zp3JPYN12EXU+PRKrpqmFmSDv46dc
 Gkn5ngK7H5Zwmwwq8BlsMfKO9tq9bEllJhLbCFXyWW++bTt7R421HGWXuBQUm39Z9G
 eBcjvwAzzy8DUTyMox9SCXCagWENJJgtx6xN4iuXdlUF56qTi3UUxQQN0FqBiiEXix
 eOT1HvArWJVJJN0XfyvB6HCCuyzFwIoYt9Out3ANHAfVDj770bXsGnYjiZyHZii24G
 FUJH4SsyatvJg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 214B7A005D;
 Tue, 10 Dec 2019 19:54:57 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/4] net: stmmac: Improvements for -next
Date: Tue, 10 Dec 2019 20:54:40 +0100
Message-Id: <cover.1576007149.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_115500_655777_930F7B9B 
X-CRM114-Status: UNSURE (   8.31  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

2) Prevents incostant bandwidth because of missing interrupts.

3) Allows interrupts to be independently enabled or disabled so that we don't
have to schedule both TX and RX NAPIs.

4) Stops using a magic number in coalesce timer re-arm.

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

Jose Abreu (4):
  net: stmmac: Print more information in DebugFS DMA Capabilities file
  net: stmmac: Always arm TX Timer at end of transmission start
  net: stmmac: Let TX and RX interrupts be independently
    enabled/disabled
  net: stmmac: Always use TX coalesce timer value when rescheduling

 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c  | 24 +++++-
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h   | 11 ++-
 drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c   | 47 +++++++++--
 drivers/net/ethernet/stmicro/stmmac/dwmac_dma.h    |  6 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c    | 22 ++++-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  2 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c | 24 +++++-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  6 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac.h       |  1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 94 +++++++++++++++-------
 10 files changed, 183 insertions(+), 54 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
