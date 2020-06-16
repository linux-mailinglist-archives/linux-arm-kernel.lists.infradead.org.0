Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D851FC1F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 00:58:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p6p4QC9TUwVehTD4WqfM6PpvwPixWCen1z5mTPul+j4=; b=Hag9Ep6AhymN7w
	Fv7nheZHt+E09j9XbW+sCOogUs6I6UFIlFKyKk2Z0MXRzysSef8ETaJQeE2rmpkOES/7AavqElix8
	F6Df1NFb2MX4mkEIbA60AVu+p4UR/UYCcAiAk/uQXIlHSywLRBhkogR1Q0KuJzHabXlEGuRpuLAVC
	wVYpIQ554JsvC801kGXhjOJwRVUTBNKaIlAbeZVys5aBZXTxhPvCjb+vBAC8fJMDQgeHi117nVL5f
	kR2ywD6hFD7H4EGf9ywdl8S/ZXkFSzzA7IOCRiUA+6Z1zNYLbzlpwRN9M8NFH2/i5UMA4RcCSZ+/F
	7jOC/QhWl8LT2YafT2TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlKX1-0007wX-Lg; Tue, 16 Jun 2020 22:58:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlKWv-0007w3-1z
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 22:58:10 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A0EDA20B80;
 Tue, 16 Jun 2020 22:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592348288;
 bh=iZXGWJHS5AgDNH9ptElUK048yEyJAZNWudN8OL5QXdY=;
 h=Date:From:To:Cc:Subject:From;
 b=cYroHiDL1Ijn2MBZ8THz3jteXIC2CqPbtZakQcURpttLwU0p4UNiv+j0bfUl2tzQB
 m3pFMV0JjAHqEEhBqujFp78z9/7dL9DQ0/n05hSB04eO37rW7pLLgd36Zt56AaNHSu
 rRc/YSc+IYcoAr1p+m0JbNfAUxWP2bj+f/bqs8WY=
Date: Tue, 16 Jun 2020 18:03:28 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH][next] net: stmmac: selftests: Use struct_size() helper in
 kzalloc()
Message-ID: <20200616230328.GA23281@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_155809_116345_B2F11614 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: netdev@vger.kernel.org, "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make use of the struct_size() helper instead of an open-coded version
in order to avoid any potential type mistakes.

This code was detected with the help of Coccinelle and, audited and
fixed manually.

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index e6696495f126..e113b1376fdd 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -1094,7 +1094,7 @@ static int stmmac_test_rxp(struct stmmac_priv *priv)
 	if (!priv->dma_cap.frpsel)
 		return -EOPNOTSUPP;
 
-	sel = kzalloc(sizeof(*sel) + nk * sizeof(struct tc_u32_key), GFP_KERNEL);
+	sel = kzalloc(struct_size(sel, keys, nk), GFP_KERNEL);
 	if (!sel)
 		return -ENOMEM;
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
