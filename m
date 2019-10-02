Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E9EC86FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 13:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3UO3n29C+2uB9XzymmTHJgaryPvd2wbHGf3tKnhSrV8=; b=VOYG0nQjmD8l5G
	SXnl9JMABmpvNt68RHZrte7198Pk6j6EfUAePcDHAQ+KYvHA6BcReBGf7xbKH4k6IAm1CONVSqBuh
	RDnqcgwS1c6nd6BpAlfdouCFPW71wOpmJDNRrUohL08OfXhnlFbyvOw88nLvCYHTmqM/6JTIveRz6
	Wk0pCcnP8lIuanXX2i37Fs/07me9aErAeVx+Yk5qegW+r9j5cHL+QkGY1KCK4IjQTR2jl0/HptJ2a
	+GLuSMdngSUcsLxfYRMnK7nRxvc7xmI/TGORoVCkgllJ5lB13OSUOh0NJ/WZdX5Ctt3KNTeZLs2tV
	pK8wix1M0z2xSXxT6uaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFcVD-0006qb-Dc; Wed, 02 Oct 2019 11:09:03 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFcV6-0006pi-8l
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 11:08:57 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iFcUz-00037j-AX; Wed, 02 Oct 2019 11:08:49 +0000
From: Colin King <colin.king@canonical.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 "David S . Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] net: stmmac: xgmac: add missing parentheses to fix
 precendence error
Date: Wed,  2 Oct 2019 12:08:49 +0100
Message-Id: <20191002110849.13405-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_040856_443905_948D7186 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

The expression !(hw_cap & XGMAC_HWFEAT_RAVSEL) >> 10 is always zero, so
the masking operation is incorrect. Fix this by adding the missing
parentheses to correctly bind the negate operator on the entire expression.

Addresses-Coverity: ("Operands don't affect result")
Fixes: c2b69474d63b ("net: stmmac: xgmac: Correct RAVSEL field interpretation")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
index 965cbe3e6f51..2e814aa64a5c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c
@@ -369,7 +369,7 @@ static void dwxgmac2_get_hw_feature(void __iomem *ioaddr,
 	dma_cap->eee = (hw_cap & XGMAC_HWFEAT_EEESEL) >> 13;
 	dma_cap->atime_stamp = (hw_cap & XGMAC_HWFEAT_TSSEL) >> 12;
 	dma_cap->av = (hw_cap & XGMAC_HWFEAT_AVSEL) >> 11;
-	dma_cap->av &= !(hw_cap & XGMAC_HWFEAT_RAVSEL) >> 10;
+	dma_cap->av &= !((hw_cap & XGMAC_HWFEAT_RAVSEL) >> 10);
 	dma_cap->arpoffsel = (hw_cap & XGMAC_HWFEAT_ARPOFFSEL) >> 9;
 	dma_cap->rmon = (hw_cap & XGMAC_HWFEAT_MMCSEL) >> 8;
 	dma_cap->pmt_magic_frame = (hw_cap & XGMAC_HWFEAT_MGKSEL) >> 7;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
