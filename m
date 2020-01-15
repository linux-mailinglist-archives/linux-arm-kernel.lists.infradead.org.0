Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346DF13C874
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 16:54:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bZDgkjUs7GyjTdUF9vWJYd1WGtGBlvCwgEKCr2mc+UA=; b=t2l
	YztWNqmRR4XOqslfS1iCSR3k8+TlX28ltg3LIJrRdvYtTODkuHw6mSvJ9OXj6pt3hPJcazaFlptYt
	Rep3DQCkF1VnqAheGM+TwqIVxWC1QC/tmTgwtC9gH7XoMrsAADFiWE8DqKDKdwjRbN1eZCQxhmFHr
	E3HNGDl/3s/4IJtVTapMmEbttoWhfxlSsBzR/uCVGvL1WeA/uRNv36vqkAWYXIomI37dFdLo9SIYB
	AfJK3mq451VanDmKSeLsleZl0UFyz+uDaqhvvIQWoNR8A73Zyb7tG1DY3oqdSDkW94znwNGoYzihK
	FpZprQHlE4XJe9b5n+D0qDK9pK6PK1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkzh-0004IR-Sz; Wed, 15 Jan 2020 15:54:09 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkzV-0004HI-7o
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 15:54:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id q8so8700276pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 07:53:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=c/GWPQtRfN7j/bEfY+uIGMfC4b83t2OdSqf9AvElNRM=;
 b=EwuEbm4VZGa5Yrj1M1k5z/SPIhI/TyArbfnbVrC91uJvgqCXjVIYHF5u+M5/X1rdJT
 70gnHeB+JCcWu5W4tgZ1AO7gppBRrmPJhPzaC6T7a/sQlFkxe/ild7vt8rZ9zah7jWtE
 Z4I7BJFOJ5+XZh33RgFyQjHfnKNYYhB++PdcLYi7aYsJK1WIJ14lZtuiYXMErVz4EPyx
 FBnF+th9KbYbdtNpiaWd7qI+ImCzrn0S2An3ip7vWxySJWmnkbLp+PgK4KcjGJTzLKfP
 GnRrnYuLBNwEaidccyXlPF952M7ocLNt8U1ydpR/UJMCeb1xs020494ha66/l6yU+5jS
 K+Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=c/GWPQtRfN7j/bEfY+uIGMfC4b83t2OdSqf9AvElNRM=;
 b=tqLBxUaZt7qm0JLy9IQ2fOmxTn5VHYpAZxMcgJlmbFSrKyV7HE8kTjFhfOKFSVoB6t
 6aN/MFqw1jnGFI3g8TbRU0c8365S02LkrCrOPgR53wUlPfDffuH9vyDs6IZ706ckQ1O9
 IyAFxWhnpA5YVyflGAlygL+2YGYMhmxqWpCIzJiOVNO0qdGR6ZRxuNyiHO0xgBQ5hhg3
 I75WpAgokDor33rLMz5vkYmxURX5OXAKuSbSDdK10nBFEX6N4nFzeBXUs/sxbUvv2rO6
 WaPCMmChORxyrRzL9x/pUOeY32I7FnCvhA7XlY99Kp6H91DhbxbAHcbBFzp6R5/DyYzG
 tsew==
X-Gm-Message-State: APjAAAXXD6vwO1v2DO8q9oYs8dacMgDNIG0vkW2pkyYVfxYzQxIZaBJW
 i/dTJAs8P47Kag3ikrRx7xU=
X-Google-Smtp-Source: APXvYqyKceOTx9ZjZoes/c2uX1iezUq1hng9gL92ptSPdkUO9WPHZB3PUuC6MsV6ZBJ7g6f6sPoZEQ==
X-Received: by 2002:aa7:8088:: with SMTP id v8mr32789472pff.142.1579103636329; 
 Wed, 15 Jan 2020 07:53:56 -0800 (PST)
Received: from localhost (64.64.229.47.16clouds.com. [64.64.229.47])
 by smtp.gmail.com with ESMTPSA id i66sm22664925pfg.85.2020.01.15.07.53.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 Jan 2020 07:53:55 -0800 (PST)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com
Subject: [PATCH] net: stmmac: modified pcs mode support for RGMII
Date: Wed, 15 Jan 2020 23:53:23 +0800
Message-Id: <20200115155323.15543-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_075357_282824_6B625635 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zhengdejin5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhengdejin5[at]gmail.com)
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
Cc: netdev@vger.kernel.org, Dejin Zheng <zhengdejin5@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

snps databook noted that physical coding sublayer (PCS) interface
that can be used when the MAC is configured for the TBI, RTBI, or
SGMII PHY interface. we have RGMII and SGMII in a SoC and it also
has the PCS block. it needs stmmac_init_phy and stmmac_mdio_register
function for initializing phy when it used RGMII interface.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---
 .../net/ethernet/stmicro/stmmac/stmmac_main.c   | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 6f51a265459d..9778e7e0c005 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -387,9 +387,8 @@ bool stmmac_eee_init(struct stmmac_priv *priv)
 	/* Using PCS we cannot dial with the phy registers at this stage
 	 * so we do not support extra feature like EEE.
 	 */
-	if ((priv->hw->pcs == STMMAC_PCS_RGMII) ||
-	    (priv->hw->pcs == STMMAC_PCS_TBI) ||
-	    (priv->hw->pcs == STMMAC_PCS_RTBI))
+	if (priv->hw->pcs == STMMAC_PCS_TBI ||
+	    priv->hw->pcs == STMMAC_PCS_RTBI)
 		return false;
 
 	/* Check if MAC core supports the EEE feature. */
@@ -2652,8 +2651,7 @@ static int stmmac_open(struct net_device *dev)
 	u32 chan;
 	int ret;
 
-	if (priv->hw->pcs != STMMAC_PCS_RGMII &&
-	    priv->hw->pcs != STMMAC_PCS_TBI &&
+	if (priv->hw->pcs != STMMAC_PCS_TBI &&
 	    priv->hw->pcs != STMMAC_PCS_RTBI) {
 		ret = stmmac_init_phy(dev);
 		if (ret) {
@@ -4725,8 +4723,7 @@ int stmmac_dvr_probe(struct device *device,
 
 	stmmac_check_pcs_mode(priv);
 
-	if (priv->hw->pcs != STMMAC_PCS_RGMII  &&
-	    priv->hw->pcs != STMMAC_PCS_TBI &&
+	if (priv->hw->pcs != STMMAC_PCS_TBI &&
 	    priv->hw->pcs != STMMAC_PCS_RTBI) {
 		/* MDIO bus Registration */
 		ret = stmmac_mdio_register(ndev);
@@ -4760,8 +4757,7 @@ int stmmac_dvr_probe(struct device *device,
 error_netdev_register:
 	phylink_destroy(priv->phylink);
 error_phy_setup:
-	if (priv->hw->pcs != STMMAC_PCS_RGMII &&
-	    priv->hw->pcs != STMMAC_PCS_TBI &&
+	if (priv->hw->pcs != STMMAC_PCS_TBI &&
 	    priv->hw->pcs != STMMAC_PCS_RTBI)
 		stmmac_mdio_unregister(ndev);
 error_mdio_register:
@@ -4806,8 +4802,7 @@ int stmmac_dvr_remove(struct device *dev)
 		reset_control_assert(priv->plat->stmmac_rst);
 	clk_disable_unprepare(priv->plat->pclk);
 	clk_disable_unprepare(priv->plat->stmmac_clk);
-	if (priv->hw->pcs != STMMAC_PCS_RGMII &&
-	    priv->hw->pcs != STMMAC_PCS_TBI &&
+	if (priv->hw->pcs != STMMAC_PCS_TBI &&
 	    priv->hw->pcs != STMMAC_PCS_RTBI)
 		stmmac_mdio_unregister(ndev);
 	destroy_workqueue(priv->wq);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
