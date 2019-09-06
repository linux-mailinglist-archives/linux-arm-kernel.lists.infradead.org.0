Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E32AB367
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 09:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bF0xkZX1vUVI1TPg9pcuWSAEBBOCH/yIyLTW3+70tf8=; b=hSwQx7wkI/ua+fqRUZ67QPqDmm
	FjbTIAzCS4ysNNnPrk1bAJNUxAOvPI790aHsOmaPy6HShLLtwQvG5rJlluldK55pNTJ1GkA7GNGpn
	jFxJnWZW8YDOIJ8A/P8QtSu8pDHaA/Ar6iuv1vEQ/mwh6WcD+wKiGWeh5ZPrbAm3bupyItOhxopvo
	RT0mh+1kpgglFx8h54Ow0hAGE9iaXhrD09ksY4Na7mXP3lsTRAJHa7iUxVLqcC1syHEMEVj4lmVON
	AnPNzOEWYYxPo7smpVuQdXSxBLxh/YTLW4SJrjnOKFAZXM2Ad8Xge1J92EW1wFLEUcxNkM8abqMau
	9v/B7jFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i68sd-0005uY-GE; Fri, 06 Sep 2019 07:42:03 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68s6-0005h4-47
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 07:41:31 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 542E7C0E3F;
 Fri,  6 Sep 2019 07:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567755688; bh=PPN655geEk93zxgKDoKCmCCtqNmGhdnuRq0oF4It5O0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=d99qkytPcmwlzrst7u/DLYo0N5+MwF8KX1avousmvwlQAN5bjxJ51z1CpgXU/y+p5
 6BqozjwF2QL7LIq5wOBVDiLlNoyWBiHrTdSpaF7biaL5LIbxwFsDzm4OO1iuW6G9ya
 QbhxGoGCtNLVqPNcH4oRfvAwV8kbuf8AX4tF3NnWBaOuAsMPszxgvWzJluhFMMbUM4
 LCWBT53ryDF5RN6bp2ecfBL35ha8InUa0yxv2xU+POY7l/400joHVhMHpwRmklPpJf
 6ystkU7/f7dimbkYjYmuq2fJ8UkUVQ7LvrGOoUuhCcyZiqOxW6LXkHEhgzuPkmgQA0
 /h/XGOp0BZnWg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 03710A006D;
 Fri,  6 Sep 2019 07:41:27 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 5/5] net: stmmac: Limit max speeds of XGMAC if asked
 to
Date: Fri,  6 Sep 2019 09:41:17 +0200
Message-Id: <151c0529f0c698e94b81bee44d4f1d0a3379cab2.1567755423.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567755423.git.joabreu@synopsys.com>
References: <cover.1567755423.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567755423.git.joabreu@synopsys.com>
References: <cover.1567755423.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_004130_177017_AC5EE6F7 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We may have some SoCs that can't achieve XGMAC max speed. Limit it if
asked to.

Signed-off-by: Jose Abreu <joabreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 25 +++++++++++++++--------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index c3baca9f587b..686b82068142 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -831,15 +831,22 @@ static void stmmac_validate(struct phylink_config *config,
 		phylink_set(mask, 1000baseT_Full);
 		phylink_set(mask, 1000baseX_Full);
 	} else if (priv->plat->has_xgmac) {
-		phylink_set(mac_supported, 2500baseT_Full);
-		phylink_set(mac_supported, 5000baseT_Full);
-		phylink_set(mac_supported, 10000baseSR_Full);
-		phylink_set(mac_supported, 10000baseLR_Full);
-		phylink_set(mac_supported, 10000baseER_Full);
-		phylink_set(mac_supported, 10000baseLRM_Full);
-		phylink_set(mac_supported, 10000baseT_Full);
-		phylink_set(mac_supported, 10000baseKX4_Full);
-		phylink_set(mac_supported, 10000baseKR_Full);
+		if (!max_speed || (max_speed >= 2500)) {
+			phylink_set(mac_supported, 2500baseT_Full);
+			phylink_set(mac_supported, 2500baseX_Full);
+		}
+		if (!max_speed || (max_speed >= 5000)) {
+			phylink_set(mac_supported, 5000baseT_Full);
+		}
+		if (!max_speed || (max_speed >= 10000)) {
+			phylink_set(mac_supported, 10000baseSR_Full);
+			phylink_set(mac_supported, 10000baseLR_Full);
+			phylink_set(mac_supported, 10000baseER_Full);
+			phylink_set(mac_supported, 10000baseLRM_Full);
+			phylink_set(mac_supported, 10000baseT_Full);
+			phylink_set(mac_supported, 10000baseKX4_Full);
+			phylink_set(mac_supported, 10000baseKR_Full);
+		}
 	}
 
 	/* Half-Duplex can only work with single queue */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
