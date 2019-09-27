Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E87A8C0068
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 09:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DtHsduXB+Ak1R4v5UKljP9d6Bvk/uc0aGNnLBPD/PFI=; b=Iva
	hv+p8cVrOfItkdDO8xu7kPnXXqa9fNElXYLnQSUI5NkFrBAsHT7sD+o8YE6SSTfFJ1oDwstfFErMb
	+QUuzlvr/e+rSEJpUb5/5aKuGuWR2hf2qPUBgzwLyV1+LUDOoyMz91DQvKAenmJ8w70oND+kmaflG
	OzHQBiNv/udaiOGaxmz8PynXJHWSUz8KAPkiPD/tqs01UgxFFew/IT53NF1vQ6NUJL+sFwpLavceu
	xrc7gSl4NdaWEltMFknf5Y1ILu6wx6StmLg56q3itguh5NdKB4aGEigkvj0jSoeDfrTxd+eIPi2em
	60gjgxrfnIIMarCSqjnOvDqa6ouhgCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDl1G-0003BC-BH; Fri, 27 Sep 2019 07:50:26 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDl07-0000f7-BY
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 07:49:17 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id F3BD0C0CF0;
 Fri, 27 Sep 2019 07:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1569570551; bh=NNEVzMfiLaKkcrRUt6WrozEpdRe4qJSLs4dGyv8UEIQ=;
 h=From:To:Cc:Subject:Date:From;
 b=DTGaxncysylbblkg/YcAbZUcj6tWtc1lU2Mf/zM6sg+vWlxSMuOZqxKPsqDA0r6BV
 7Ko2Nw+bAIrjhhpfbFRU80lni6uGVcFjwN9Wur6CX/yzRKiPVISmXUNnjRB4ZI3mhF
 y8NCOCJZw41vrGzGfGhd8CYLcT2PpOc5/BVw6iSfD2Vu50iVBGI3QiFjVFdZLl8/gl
 Bm6HRqSPQRcoOSF0gbu3wJJV1srvO7xQ8npJrNuWX8cQGm1WIkP8jy78oTm8zd3vtY
 m+iZa4YuzEiC3w+za5LPTZUDoEYS2Kfl1KJ+UCle+aRHynhXC3e7g7d3vle0JA51yE
 2JbDmrh0mb1nw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 5E285A005F;
 Fri, 27 Sep 2019 07:49:08 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 0/8] net: stmmac: Fixes for -net
Date: Fri, 27 Sep 2019 09:48:48 +0200
Message-Id: <cover.1569569778.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_004915_413889_720B1BBF 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Misc fixes for -net tree. More info in commit logs.

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

Jose Abreu (8):
  net: stmmac: xgmac: Not all Unicast addresses may be available
  net: stmmac: xgmac: Detect Hash Table size dinamically
  net: stmmac: selftests: Always use max DMA size in Jumbo Test
  net: stmmac: dwmac4: Always update the MAC Hash Filter
  net: stmmac: Correctly take timestamp for PTPv2
  net: stmmac: Do not stop PHY if WoL is enabled
  net: stmmac: xgmac: Disable the Timestamp interrupt by default
  net: stmmac: xgmac: Fix RSS not writing all Keys to HW

 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c     | 13 +++++++------
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h        |  3 ++-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c   |  4 ++--
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c    |  1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c     | 19 +++++++++++++------
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c    |  4 ----
 6 files changed, 25 insertions(+), 19 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
