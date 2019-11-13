Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163E6FB4EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 17:23:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jyoiCawxJbHZ59QbP6XLUnCqqQkG6KMo7Cvxrj+YBmw=; b=C4ukkVNXsvRUbo
	TYhnWqaiuFeAJv0lNBrdK/whCG8ZOWRGpX4ZbY9rkwxsk1m0h7bGr6iazDMwR7lhtfM9dI0iEFrfV
	a8fNqEojhmeabHxmacjj1z1b0+SRHvXe48xjqqdc3rAqxaFWynX7oQ6T3lWG0CQ1gzt7n4eWf/9M+
	TGC8q3HS1Gncxm2IKZvwdg9l6AjiatMSj+RToSVBBydpGLpupczFIX6Lg81HxIT5IFimcDKVP4TTt
	AIJLN1pL1RfaSb1iWVP1QYVcPrsM/ULLtWaFy4a/jkjmaz00orH67mG3f28XLRE/TDLGZEIqPBM3C
	uc0XH0snMhKc3SWhO4rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUvQ3-0001rL-6t; Wed, 13 Nov 2019 16:22:59 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUvPt-0001q2-MM
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 16:22:51 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iUvPi-0004CO-J5; Wed, 13 Nov 2019 16:22:38 +0000
From: Colin King <colin.king@canonical.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 "David S . Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH][next] net: ethernet: stmmac: fix indentation issue
Date: Wed, 13 Nov 2019 16:22:38 +0000
Message-Id: <20191113162238.102771-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_082249_865554_9ED47D5F 
X-CRM114-Status: GOOD (  10.42  )
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

There is a return statement that is indented too deeply, remove
the extraneous tab.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
index 95ffaec4ab42..9b7be996d07b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
@@ -158,7 +158,7 @@ static int stm32mp1_clk_prepare(struct stm32_dwmac *dwmac, bool prepare)
 		ret = clk_prepare_enable(dwmac->clk_eth_ck);
 		if (ret) {
 			clk_disable_unprepare(dwmac->syscfg_clk);
-				return ret;
+			return ret;
 		}
 	} else {
 		clk_disable_unprepare(dwmac->syscfg_clk);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
