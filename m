Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC4A14A2AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:11:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iWPkQt6ExV0fsRON3GvQ6a7iZ57+Pf/zsQYgBwA+fkE=; b=s87
	jHCjJq0AFaWVpnEMieUMoPZuXgn9uE7UfakTKYcPKU4nPhcHeD3ckd8trNsyK8oXojkMk15QI9Sii
	NYaKGGC7WVwy+KdmIADX2W5YmVCRzUxNCuCSoi5S7EIVVfl0OW/UqbHlMJQ6cuH8ZbBYKytesd2hI
	ah3a+opKzB4ZO2W2sNpwJcHCXc8WFofVvJ20LZUbmVFoiDaowkw3zz5IEbZ77fQ717fbkr5LuD1PS
	eA77CHYCJFG8p93vvvxUUcrL/rrmZM+hm7dKJvco+y//U7ZHRbgrSWO938ymwWsck0TZZFN1kAsew
	Lm5NrpoF9hMkN3hCcWjzfzZLPjUwVFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2Iv-0008OM-Qf; Mon, 27 Jan 2020 11:11:41 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2Gt-0005Rv-Ok
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:09:40 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2E0D540693;
 Mon, 27 Jan 2020 11:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1580123375; bh=IjWRnmaSPsNrSVZrLeGmi4hFsW9Xwf+qeBSJQHYUGvA=;
 h=From:To:Cc:Subject:Date:From;
 b=fX7CEUyoF7CatZ79YNwGoqdE2qM/bUjWcAeah10Eq4KX5LVkmopVInSGhyD73fC9r
 WYe9MBlnrasoeabTiXz1wZ5isM1aR0mdZ6qS7gkgitdiwi4qdQw1cTO0UCiZian0KI
 eWJaePzX1r7yxtg9YoAkko5hX1+7COlItx9lU5mNR2id/MOotuaFQZdUGYyZrsQUu5
 ySEMPtFJNsX5wlGt4WFeF/kvZjMtBr2k1N1rC3j63j+i2THjBU1qC+7Am4ovQ+7pjm
 rXsnMDPGm+j76Mbi4HKxps7pfYM2kFleH+k80qvdSrgHHVSnh+8trNJUDuK480AJqw
 9ukmxI/h70sow==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 2D4B0A005C;
 Mon, 27 Jan 2020 11:09:23 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [RFC net-next 0/8] net: Add support for Synopsys DesignWare XPCS
Date: Mon, 27 Jan 2020 12:09:05 +0100
Message-Id: <cover.1580122909.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_030935_813536_0480DCC2 
X-CRM114-Status: GOOD (  15.62  )
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

This adds support for Synopsys DesignWare XPCS in net subsystem and
integrates it into stmmac.

At 1/8, we start by removing the limitation of stmmac selftests that needed
a PHY to pass all the tests.

Then at 2/8 and 3/8 we add and use some new helpers in PHYLINK so that we
can simplify some code in stmmac and possible other drivers.

At 4/8, we fallback to dev_fwnode() so that PCI based setups wich may
not have CONFIG_OF can still use FW node.

We proceed by doing changes in PHYLINK in order to support XPCS: At 5/8 we
add some missing speeds that USXGMII supports and at 6/8 we do the most
important change to support XPCS that allows to configure MAC and PCS
withouht having any PHY neither SFP attached.

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
  net: phylink: Add phylink_and and phylink_andnot Helpers
  net: stmmac: Switch to phylink_and()/phylink_andnot()
  net: stmmac: Fallback to dev_fwnode() if needed
  net: phylink: Add missing Backplane speeds
  net: phylink: Configure MAC/PCS when link is up without PHY
  net: phy: Add Synopsys DesignWare XPCS MDIO module
  net: stmmac: Integrate it with DesignWare XPCS

 MAINTAINERS                                        |   7 +
 drivers/net/ethernet/stmicro/stmmac/Kconfig        |   1 +
 drivers/net/ethernet/stmicro/stmmac/common.h       |   3 +
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  12 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |  32 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c  |  27 +
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c |   2 +-
 drivers/net/phy/Kconfig                            |   6 +
 drivers/net/phy/Makefile                           |   1 +
 drivers/net/phy/mdio-xpcs.c                        | 567 +++++++++++++++++++++
 drivers/net/phy/phylink.c                          |  16 +-
 include/linux/mdio-xpcs.h                          |  41 ++
 include/linux/phylink.h                            |   4 +
 include/linux/stmmac.h                             |   1 +
 14 files changed, 708 insertions(+), 12 deletions(-)
 create mode 100644 drivers/net/phy/mdio-xpcs.c
 create mode 100644 include/linux/mdio-xpcs.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
