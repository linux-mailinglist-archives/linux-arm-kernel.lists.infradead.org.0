Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5784BB56A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 08:32:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aZw4rFUugPt87bnEtn5+2HvdMLyJqjk5mfNiTzffF60=; b=O1JbTUj+GmUJRk
	hOFgXLcnH3vVWz+XRv9gRnMV6G+wbElMsZ0IcOQPi5PaYT5ieIHw5uPyAz7i9NdD3l0tkNHsTlCB2
	Vo7r+RUuyyOJRkMXajoifDd51TYzBCflJXoRZYOhAQ+QLFoJqNdndHSuOrr8HV7cHnJ7AkP2vEXaW
	fF6DAAkmWM0w7m0E3zSqbCUZmmzOrjhY8gQhqgVdc7VJxxq45Y5nNn2A57OUAfGhcx54zEjQruy4f
	H8lfaDycX05B+wkGuNpJgkpXFiN8x+ZMCWa0B/DGdsdL8NYCjSQlcJ4q9okAC1pkNp7hEvWewBxLb
	wMvWbCFdYhgnRotbHO2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKdLv-0003K9-4S; Sun, 28 Apr 2019 06:31:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKdKw-0002NY-Fr; Sun, 28 Apr 2019 06:30:55 +0000
X-UUID: 4a1939eea8c244778a0a1d2fabeb6c43-20190427
X-UUID: 4a1939eea8c244778a0a1d2fabeb6c43-20190427
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 72585531; Sat, 27 Apr 2019 22:30:43 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 27 Apr 2019 23:30:42 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 28 Apr 2019 14:30:27 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 28 Apr 2019 14:30:26 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: Jose Abreu <joabreu@synopsys.com>, <davem@davemloft.net>
Subject: [PATCH 0/6] fix some bugs and add some features in stmmac
Date: Sun, 28 Apr 2019 14:30:03 +0800
Message-ID: <1556433009-25759-1-git-send-email-biao.huang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_233054_531592_7E914012 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: jianguo.zhang@mediatek.com, Alexandre Torgue <alexandre.torgue@st.com>,
 biao.huang@mediatek.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 yt.shen@mediatek.com, linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series fix some bugs and add some features in stmmac driver.               
5 patches are for common stmmac or dwmac4:                                      
        1. update rx tail pointer to fix rx dma hang issue.                     
        2. change condition for mdc clock to fix csr_clk can't be zero issue.   
        3. write the modified value back to MTL_OPERATION_MODE.                 
        4. add support for hash table size 128/256                              
        5. add mdio clause 45 access from mac device for dwmac4.                
1 patche is for dwmac-mediatek:                                                 
        1. modify csr_clk value to fix mdio read/write fail issue for dwmac-mediatek.
                                                                                
Biao Huang (6):                                                                 
  net: stmmac: update rx tail pointer register to fix rx dma hang               
    issue.                                                                      
  net: stmmac: fix csr_clk can't be zero issue                                  
  net: stmmac: write the modified value back to MTL_OPERATION_MODE              
  net: stmmac: add support for hash table size 128/256 in dwmac4                
  net: stmmac: add mdio clause 45 access from mac device for dwmac4             
  stmmac: dwmac-mediatek: modify csr_clk value to fix mdio read/write           
    fail                                                                        
                                                                                
 drivers/net/ethernet/stmicro/stmmac/common.h       |   18 ++-                  
 .../net/ethernet/stmicro/stmmac/dwmac-mediatek.c   |    4 +-                   
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h       |    4 +-                   
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c  |   55 ++++---              
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c   |    1 +                    
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |    9 +-                   
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c  |  167 ++++++++++++++++++-- 
 7 files changed, 213 insertions(+), 45 deletions(-)                            
                                                                                
--                                                                              
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
