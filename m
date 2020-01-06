Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F17C1130C65
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 04:10:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KkYCcQ2thrJedk+C3zqarvScoPBrdpBMhx5Hq7OrLqM=; b=r6+0E/Wfi8ct4Y
	vTY9ciZQZNZO6q7ZxRsOR6FodoLs8VKWnuVM1JW7fV5gkHHQjJOW//ST/RoOvoV8llr4oIemQu3i2
	VaYYYhadVEIDgrPAQqVatARkqfehNHnZczsfqEP9XKvaKdWTdJdMDZdLYMdr+Jdmq4pOAZ/Bx8NDn
	mZ3GTeeLD2eLSyiCrMhAT0k0kO+lOy9bF/YPNGUwv9qauZz6FYubCil5mLNsgf9hanwz9Ory3Djx+
	yncSsuekqCigvyuUB2kvvjHLRk7YfTkYFbS7t586H//Rvm82JhwyeuuuJwu0epcuYmRNbMdjmQ2Zi
	4XuczvhGJlid0puUt7Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioImG-0000B8-BU; Mon, 06 Jan 2020 03:10:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIm3-000096-PC
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 03:09:49 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 572D321582;
 Mon,  6 Jan 2020 03:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578280187;
 bh=bUleWiSui0OeFOKynscfUZWPrYZMG7BHsBIGW0ViyGI=;
 h=From:To:Cc:Subject:Date:From;
 b=OlmUl5r/Uqc8ayGPJj9filxnOVwlb0Sk0xcEdvgck8Zi/ONUlE+KjbRDDyygis0N8
 Ts+Fr1oCrb78cPPGrHPTdoJRA4A5FZgYPYy3Th7WO+CCcZlPwctxoPe3lg9vp3baXj
 8GMytWb9Z6I23+QwRK3ZMpbTr3voAI8yn3pZktwI=
Received: by wens.tw (Postfix, from userid 1000)
 id E92845FCEC; Mon,  6 Jan 2020 11:09:45 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: "David S. Miller" <davem@davemloft.net>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH netdev] net: stmmac: dwmac-sun8i: Allow all RGMII modes
Date: Mon,  6 Jan 2020 11:09:45 +0800
Message-Id: <20200106030945.19774-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_190947_845465_F80C01F3 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Allow all the RGMII modes to be used. This would allow us to represent
the hardware better in the device tree with RGMII_ID where in most
cases the PHY's internal delay for both RX and TX are used.

Fixes: 9f93ac8d4085 ("net-next: stmmac: Add dwmac-sun8i")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---

Maybe CC stable so future device trees can be used with stable kernels?
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
index 1c8d84ed8410..01b484cb177e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -957,6 +957,9 @@ static int sun8i_dwmac_set_syscon(struct stmmac_priv *priv)
 		/* default */
 		break;
 	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_RGMII_ID:
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+	case PHY_INTERFACE_MODE_RGMII_TXID:
 		reg |= SYSCON_EPIT | SYSCON_ETCS_INT_GMII;
 		break;
 	case PHY_INTERFACE_MODE_RMII:
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
