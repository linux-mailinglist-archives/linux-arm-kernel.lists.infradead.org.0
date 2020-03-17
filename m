Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED745187BEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 10:19:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lc9+ns333nW+4CyIULL3tO/+V6x274vlJ1ZoLoYDjYg=; b=HcnGRVLwTtaMczzps6DjEMPApl
	HvS8u2sl/8woppYsGauzLljpdRc6kSOLCQkxIqGyGJMBsTpk72/UgNYRD1DvBmliOHeFC358UkOxG
	YsljRv8O+RUNqrdU43VOe67C7VGme8N88+wWgWrFkssbGYA8QQvz6Z2b0ny1y8QNX1caMx6QlSH+z
	Bj9qfu8CWrPGSfWFWXqmzxKi0ReOiW22oaivLX/YsKxH8Z91dMuPBBTokhw3SCs9yucy69J0Gkqax
	sT7WtRmUVAbE0aDBknFw3MQvWXmXdXMfEv8ZlwXCqYQim3YkWDV6GPF7HsgJQ7B1GqLszrLyNrYmS
	pILiUkzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE8Nv-0003fw-AW; Tue, 17 Mar 2020 09:19:39 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE8NT-0003VY-Q6
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 09:19:13 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A92B640213;
 Tue, 17 Mar 2020 09:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584436750; bh=4DNEwGa8x0Rtm2b3zdl8zHnej+ACHTHcSd04X1562/c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=lVaBY62iQU0IwKS7oJaxdNs9A92AfJoD3CP62ZYxVx2FhDpwCSMpOk+qUKsWUmHk2
 pgxLDvvM9CB6oKcan5dOTF9H6ZtdxAz5nwCIOTR7VnR3auqIfL7HP0eT7zdTvNZtKN
 IQjGMIyZMN+5RYsr1aINNPnGC4QMgVeAX9Et3cjhDXSSMpmuaKYzlPrvoKzp8XEsnQ
 b5FXbZ0sfjbY8nVlOR+XnW7tGe5DwgNftfijRaO2FjF55sjyIYDh0w7JOxyAra7UjD
 oenwGZ+K/58dqY5fYpAAuSSkwoIjwCxK+sVbyxzx0mh84zWLz4JBC8ua4pTdH0GsFG
 t9zijbTNkt2/g==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 43E79A0063;
 Tue, 17 Mar 2020 09:19:08 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 2/4] net: stmmac: Add XLGMII support
Date: Tue, 17 Mar 2020 10:18:51 +0100
Message-Id: <e15b19c4d91dcf648a0dcd738ebfe1b327f9c617.1584436401.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1584436401.git.Jose.Abreu@synopsys.com>
References: <cover.1584436401.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1584436401.git.Jose.Abreu@synopsys.com>
References: <cover.1584436401.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_021911_861351_1D5F4226 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Andrew Lunn <andrew@lunn.ch>,
 Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add XLGMII support for stmmac including the list of speeds and defines
for them.

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

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
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>
---
 drivers/net/ethernet/stmicro/stmmac/common.h      |  6 +++
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 58 +++++++++++++++++++++++
 2 files changed, 64 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
index 9bdbf589d93f..7fd073144bac 100644
--- a/drivers/net/ethernet/stmicro/stmmac/common.h
+++ b/drivers/net/ethernet/stmicro/stmmac/common.h
@@ -426,6 +426,12 @@ struct mac_link {
 		u32 speed5000;
 		u32 speed10000;
 	} xgmii;
+	struct {
+		u32 speed25000;
+		u32 speed40000;
+		u32 speed50000;
+		u32 speed100000;
+	} xlgmii;
 };
 
 struct mii_regs {
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index f26699d9a050..0e8c80f23557 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -849,6 +849,38 @@ static void stmmac_validate(struct phylink_config *config,
 			phylink_set(mac_supported, 10000baseKX4_Full);
 			phylink_set(mac_supported, 10000baseKR_Full);
 		}
+		if (!max_speed || (max_speed >= 25000)) {
+			phylink_set(mac_supported, 25000baseCR_Full);
+			phylink_set(mac_supported, 25000baseKR_Full);
+			phylink_set(mac_supported, 25000baseSR_Full);
+		}
+		if (!max_speed || (max_speed >= 40000)) {
+			phylink_set(mac_supported, 40000baseKR4_Full);
+			phylink_set(mac_supported, 40000baseCR4_Full);
+			phylink_set(mac_supported, 40000baseSR4_Full);
+			phylink_set(mac_supported, 40000baseLR4_Full);
+		}
+		if (!max_speed || (max_speed >= 50000)) {
+			phylink_set(mac_supported, 50000baseCR2_Full);
+			phylink_set(mac_supported, 50000baseKR2_Full);
+			phylink_set(mac_supported, 50000baseSR2_Full);
+			phylink_set(mac_supported, 50000baseKR_Full);
+			phylink_set(mac_supported, 50000baseSR_Full);
+			phylink_set(mac_supported, 50000baseCR_Full);
+			phylink_set(mac_supported, 50000baseLR_ER_FR_Full);
+			phylink_set(mac_supported, 50000baseDR_Full);
+		}
+		if (!max_speed || (max_speed >= 100000)) {
+			phylink_set(mac_supported, 100000baseKR4_Full);
+			phylink_set(mac_supported, 100000baseSR4_Full);
+			phylink_set(mac_supported, 100000baseCR4_Full);
+			phylink_set(mac_supported, 100000baseLR4_ER4_Full);
+			phylink_set(mac_supported, 100000baseKR2_Full);
+			phylink_set(mac_supported, 100000baseSR2_Full);
+			phylink_set(mac_supported, 100000baseCR2_Full);
+			phylink_set(mac_supported, 100000baseLR2_ER2_FR2_Full);
+			phylink_set(mac_supported, 100000baseDR2_Full);
+		}
 	}
 
 	/* Half-Duplex can only work with single queue */
@@ -929,6 +961,32 @@ static void stmmac_mac_link_up(struct phylink_config *config,
 		default:
 			return;
 		}
+	} else if (interface == PHY_INTERFACE_MODE_XLGMII) {
+		switch (speed) {
+		case SPEED_100000:
+			ctrl |= priv->hw->link.xlgmii.speed100000;
+			break;
+		case SPEED_50000:
+			ctrl |= priv->hw->link.xlgmii.speed50000;
+			break;
+		case SPEED_40000:
+			ctrl |= priv->hw->link.xlgmii.speed40000;
+			break;
+		case SPEED_25000:
+			ctrl |= priv->hw->link.xlgmii.speed25000;
+			break;
+		case SPEED_10000:
+			ctrl |= priv->hw->link.xgmii.speed10000;
+			break;
+		case SPEED_2500:
+			ctrl |= priv->hw->link.speed2500;
+			break;
+		case SPEED_1000:
+			ctrl |= priv->hw->link.speed1000;
+			break;
+		default:
+			return;
+		}
 	} else {
 		switch (speed) {
 		case SPEED_2500:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
