Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9D817DB2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 09:38:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=M08q/PcgYOGkY8ZV/bnWOuFrSE8Ol46F0CJD2S9pHXk=; b=udx
	RkpWZz6he1049VVKELSh+NLyonmz6PU4cNUZX18bSue7pf18h5TE0WbLpRyV732Lq1DbNZWr4Q+0T
	d/uSWvy2yd0RmE/Jj1il0Gi8AL0z0ZwH9C9iqP0Por0pkzhQNe55R4x0l3+t817GoYQ9Z/ipZlVNQ
	mPnQCl73o6bIRWpFievHzxHGx8qgR2BYFQ4mmRWRDZh7D4zAEWzEhpzNdqjC2E5OsP4TRu+EIngda
	EFBZcw+tybbG3rkYp0LrVF3DOMtyHyeXjCkePcApqnwXOwiN+aSWmlxQDhswnACsad9zyrEIcEpvU
	lUstgGhDWfbyHqzpE1ApNjf9o+mV38A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDvY-0004GI-PH; Mon, 09 Mar 2020 08:38:20 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDu2-0002wo-LC
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 08:36:49 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id F11C2C04C0;
 Mon,  9 Mar 2020 08:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583743004; bh=nNW7ATs8+GuGeb3XY+MZ9vqqRxlVeew7FQjk122/a3E=;
 h=From:To:Cc:Subject:Date:From;
 b=ZcicXufR4XTCBX1R49tN9rvomFqt9gJOHipcnE6Ebh37+J79vyF5cZX7VHlzDm7Hl
 tuuHmZbca9mllw360dlR2UgwNMtNVuSDfKJI8TUgzUNveltSy3Az250ONW4p1SWVCo
 V3qWxpYjhlG8PL5YVdsa+AWYQcQ7rf4Cj9jGsElUJPvdh2IlVs4IoGUyrbaUslnxPe
 Fy+Ee6fPi+hvm/35w5hKcq2lYY8mmwAS5FUxk3SgTPtgPPj7wXDcq9ffkDlsFUVTc6
 X3c4jVSzPL1TdQjjYUrjPapoIxH+A/9ZR6a6dRCA9+5stxGSuOTYDZmeQ5wG5WNIp/
 eax4z/zWeagug==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id C741CA005C;
 Mon,  9 Mar 2020 08:36:38 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/8] net: Add support for Synopsys DesignWare XPCS
Date: Mon,  9 Mar 2020 09:36:19 +0100
Message-Id: <cover.1583742615.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_013646_776729_A6E7B0BC 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This adds support for Synopsys DesignWare XPCS in net subsystem and
integrates it into stmmac.

At 1/8, we start by removing the limitation of stmmac selftests that needed
a PHY to pass all the tests.

Then at 2/8 we use some helpers in stmmac so that some code can be
simplified.

At 3/8, we fallback to dev_fwnode() so that PCI based setups wich may
not have CONFIG_OF can still use FW node.

At 4/8, we adapt stmmac to the new PHYLINK changes as suggested by Russell
King.

We proceed by doing changes in PHYLINK in order to support XPCS: At 5/8 we
add some missing speeds that USXGMII supports and at 6/8 we check if
Autoneg is supported after initial parameters are validated.

Support for XPCS is finally introduced at 7/8, along with the usage of it
in stmmac driver at 8/8.

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

Jose Abreu (8):
  net: stmmac: selftests: Do not fail if PHY is not attached
  net: stmmac: Switch to linkmode_and()/linkmode_andnot()
  net: stmmac: Fallback to dev_fwnode() if needed
  net: stmmac: Use resolved link config in mac_link_up()
  net: phylink: Add missing Backplane speeds
  net: phylink: Test if MAC/PCS support Autoneg
  net: phy: Add Synopsys DesignWare XPCS MDIO module
  net: stmmac: Integrate it with DesignWare XPCS

 MAINTAINERS                                        |   7 +
 drivers/net/ethernet/stmicro/stmmac/Kconfig        |   1 +
 drivers/net/ethernet/stmicro/stmmac/common.h       |   3 +
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  12 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |  96 ++--
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c  |  27 +
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c |   2 +-
 drivers/net/phy/Kconfig                            |   6 +
 drivers/net/phy/Makefile                           |   1 +
 drivers/net/phy/mdio-xpcs.c                        | 612 +++++++++++++++++++++
 drivers/net/phy/phylink.c                          |   5 +
 include/linux/mdio-xpcs.h                          |  41 ++
 include/linux/stmmac.h                             |   1 +
 13 files changed, 771 insertions(+), 43 deletions(-)
 create mode 100644 drivers/net/phy/mdio-xpcs.c
 create mode 100644 include/linux/mdio-xpcs.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
