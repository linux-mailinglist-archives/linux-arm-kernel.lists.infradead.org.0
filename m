Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 016C314A2A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:10:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vYHcFjbKiLYRLIWJe+aWCfEa0FXca22JMOE3GZXYt3Q=; b=D4mrkYj3bDk9tJwKJVWIBRnIB7
	QB1Ip7aCpO6axN1zkxrj047CamS1AkiGD15ftnwdnvgNd2g2+NNuat3mAHiW9K0ZzBbVYCB1zY7n5
	E6C3uSCR7Fi95BF7AQ3jnqc3ojb93fXSOwh9ahEjbej1aPvHf8y87wlNiYz3JPTttQ8XTtD+kGg5w
	fGlipsME/NkNEOBZ7RW0rbjzuV7CM4ChJBDUnN9d7oEhjJW4Kde4nFP88xs273e0KA4qEXJs8oCxF
	y4AGW9Tciit1t33o7qUxndufAsQ3XGHVilfQ/w1mTsqCqnzmIbpuVBE+0RKI50AfV9rUhVqPjE8/7
	xtmmmmUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2H8-0005Sa-5j; Mon, 27 Jan 2020 11:09:50 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2Gt-0005QL-Dw
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:09:36 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 33C31407CC;
 Mon, 27 Jan 2020 11:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1580123371; bh=rmlubmDXcPsD8KeTSdEzU0/rEGB6hNMFoYChQwg5Hb0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=mYkahSOzNMTatlzFj1EbzYdNgEs4Q0VRwJ4Bpl3gQBBwhfWsqviYjhoDUYoSYdv34
 eS7IXWPTkaWdHWTRb8hN5SPOmbrgMl10DdDRaaV7ULXGC8IW7077nLzlJYv/E4K9Dt
 NUOGP0rjpDfoMeGXWQNDI8e22MpQROMgObMTDWBPOse47wGL3Hd1Pz9Zlh4QWZ9/oL
 8UowTbE0Snf1qlILWqar6MQXJ7zgQafG1xNHnUXQvLTAb5rfYquTAMH1LAMyzrdZrl
 1zV8DDCla9boyWfk3bG5TZ6go8DBcZFVF4LEK0PLVBTC75y4JXa5pyoGUOQaXv6/D/
 pRj7oN5XZ0LpQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id A480AA008F;
 Mon, 27 Jan 2020 11:09:28 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [RFC net-next 3/8] net: stmmac: Switch to
 phylink_and()/phylink_andnot()
Date: Mon, 27 Jan 2020 12:09:08 +0100
Message-Id: <25138389972ebd7b01844ae66abdff0a279f7504.1580122909.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1580122909.git.Jose.Abreu@synopsys.com>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1580122909.git.Jose.Abreu@synopsys.com>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_030935_494659_B98878BF 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the newly introduced helpers to simplify the code.

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index ff1cbfc834b0..0bbc9e8b7aae 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -858,14 +858,11 @@ static void stmmac_validate(struct phylink_config *config,
 		phylink_set(mask, 1000baseT_Half);
 	}
 
-	bitmap_and(supported, supported, mac_supported,
-		   __ETHTOOL_LINK_MODE_MASK_NBITS);
-	bitmap_andnot(supported, supported, mask,
-		      __ETHTOOL_LINK_MODE_MASK_NBITS);
-	bitmap_and(state->advertising, state->advertising, mac_supported,
-		   __ETHTOOL_LINK_MODE_MASK_NBITS);
-	bitmap_andnot(state->advertising, state->advertising, mask,
-		      __ETHTOOL_LINK_MODE_MASK_NBITS);
+	phylink_and(supported, mac_supported);
+	phylink_andnot(supported, mask);
+
+	phylink_and(state->advertising, mac_supported);
+	phylink_andnot(state->advertising, mask);
 }
 
 static void stmmac_mac_pcs_get_state(struct phylink_config *config,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
