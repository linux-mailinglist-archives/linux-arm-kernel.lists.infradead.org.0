Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBED290ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 08:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cgfa+zVlNl5qCmyfvnttPvF0x3JgOqbIne69xTDnjfE=; b=poFzDxLZgJKkg8
	uVLVRl48DndkcBWZQdm+AvuL+ruuqWzDRraKHOSeMrxYyWxWFaQujr2zLEXGSMywIB0XR+a2FAv4r
	7qBl0h36tGB++UiuiRfRUZfPKKa+uCmSGHs/p1VtA09Q5fqe12QKB19mE5+HJMcXP5CBGwUapNd35
	NRDtvinK/pnhm1WBIWZVx1y7ZJF2HKnVfTxNtQZhoNGPBrHARQ/NvvY75ifV+OU2HtjGaWgQ8je9n
	zCfMVLvDjzYE06jcqLNWqtkGEhCJgZCKf4tmwNIEUXXWV2dTxc3nlj1Wq5UFggBCKQ1rWU+RqqAQ8
	sGUkjrfK9pSAvWJBELiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU3f9-0001tJ-6V; Fri, 24 May 2019 06:26:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3eo-0001dU-38; Fri, 24 May 2019 06:26:23 +0000
X-UUID: e0404943a5e14b21a27794090668a2ad-20190523
X-UUID: e0404943a5e14b21a27794090668a2ad-20190523
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1343229035; Thu, 23 May 2019 22:26:16 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 23 May 2019 23:26:15 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 May 2019 14:26:13 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 24 May 2019 14:26:13 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: Jose Abreu <joabreu@synopsys.com>
Subject: [v4, PATCH 0/3] fix some bugs in stmmac
Date: Fri, 24 May 2019 14:26:06 +0800
Message-ID: <1558679169-26752-1-git-send-email-biao.huang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_232622_134653_BF83D2B9 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Torgue <alexandre.torgue@st.com>, jianguo.zhang@mediatek.comi,
 biao.huang@mediatek.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 boon.leong.ong@intel.com, yt.shen@mediatek.com,
 linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

changes in v4:                                                                  
        since MTL_OPERATION_MODE write back issue has be fixed in the latest driver,
remove original patch#3                                                         
                                                                                
changes in v3:                                                                  
        add a Fixes:tag for each patch                                          
                                                                                
changes in v2:                                                                  
        1. update rx_tail_addr as Jose's comment                                
        2. changes clk_csr condition as Alex's proposition                      
        3. remove init lines in dwmac-mediatek, get clk_csr from dts instead.   
                                                                                
v1:                                                                             
This series fix some bugs in stmmac driver                                      
3 patches are for common stmmac or dwmac4:                                      
        1. update rx tail pointer to fix rx dma hang issue.                     
        2. change condition for mdc clock to fix csr_clk can't be zero issue.   
        3. write the modified value back to MTL_OPERATION_MODE.                 
1 patch is for dwmac-mediatek:                                                  
        modify csr_clk value to fix mdio read/write fail issue for dwmac-mediatek
                                                                                
Biao Huang (3):                                                                 
  net: stmmac: update rx tail pointer register to fix rx dma hang               
    issue.                                                                      
  net: stmmac: fix csr_clk can't be zero issue                                  
  net: stmmac: dwmac-mediatek: modify csr_clk value to fix mdio                 
    read/write fail                                                             
                                                                                
 .../net/ethernet/stmicro/stmmac/dwmac-mediatek.c   |    2 --                   
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |    7 ++++---              
 .../net/ethernet/stmicro/stmmac/stmmac_platform.c  |    5 ++++-                
 3 files changed, 8 insertions(+), 6 deletions(-)                               
                                                                                
--                                                                              
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
