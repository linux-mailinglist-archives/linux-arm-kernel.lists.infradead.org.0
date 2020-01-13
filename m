Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 721421391BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 14:04:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZakhETbdUnFg/P4bTWPX34C0ZgQQLgtxPLXkm6iqX+s=; b=X/x
	ubimV9z8ngDoq8gUgx4k4u9q2BPwmIIhSRKpWsFFPP6yp7UG62lSxSxgA6EQ4oIlTst7RF4skdn6t
	5bGma9NUDUutG5SODJNRmnddnvNTpFVJwnubvP0C15Bkjwq30/WDzWDKsmYLPhU8lCxXfW+DemLcf
	2XEka+3igHM4O7QxNr7cl2nlWjGN4M110O+iX9IKidGM5g+A8ia/dDt4OuWZUVfBGLBPTDVFnzyeJ
	LzQ9/A7lkGrYc7nRpKeBMyYy9ZoyVWlUprwJ6ok3IPAuW0K2EX2R8VK6edMrOFkbSYCQDBi3ZK7+9
	9MSgnlFrcFdtTgb28V5ykMPLG2fSiew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzOT-0001oZ-LH; Mon, 13 Jan 2020 13:04:33 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzMr-0000X0-10
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 13:02:57 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 903F5C05C3;
 Mon, 13 Jan 2020 13:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578920572; bh=zKs/zoX9SDuQlYKJwNzslfhtAuZSfAwnQ4w1YbbcszA=;
 h=From:To:Cc:Subject:Date:From;
 b=O3I2EJKxhODJf3stOIYZ85/9R21fxpB1RDXAK3J35wiDwCF3xD31Jr/JN5G3f4rfM
 oNiieVLJr7KfC4e0E3PfLnRxds2DQvQjlrJmf8sxZw5XVT1ABJjHmGArm/D2whRyUE
 Ng+z0ei1RXRRBq7fODTtFXwchxCp5QW/K3afmDcm9L51n6WM6owwgMQjGqhfjjvMhd
 hMkMcq7JzWRDShcydMof2AFfn3zML6dpWOq3+q9cr9WI4wC+MQHUClq4d1FrR+TcBK
 mrRulZpSo6Ctoj9OmzqbxmVz8RTR8npaiF8fzZ/DY0uyT4HYWMKL5jldFz9J4rhWKk
 /BXTW4jI1Risw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 67301A005B;
 Mon, 13 Jan 2020 13:02:44 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 0/8] net: stmmac: ETF support
Date: Mon, 13 Jan 2020 14:02:35 +0100
Message-Id: <cover.1578920366.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_050253_168937_EEF5E619 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds the support for ETF scheduler in stmmac.

1) Starts adding the support by implementing Enhanced Descriptors in stmmac
main core. This is needed for ETF feature in XGMAC and QoS cores.

2) Integrates the ETF logic into stmmac TC core.

3) and 4) adds the HW specific support for ETF in XGMAC and QoS cores. The
IP feature is called TBS (Time Based Scheduling).

5) Enables ETF in GMAC5 IPK PCI entry for all Queues except Queue 0.

6) Adds the new TBS feature and even more information into the debugFS
HW features file.

7) Switches the selftests mechanism to use dev_direct_xmit() so that we can
send packets on specific Queues.

8) Adds a new test for TBS feature.

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
---

Jose Abreu (8):
  net: stmmac: Initial support for TBS
  net: stmmac: tc: Add support for ETF Scheduler using TBS
  net: stmmac: xgmac: Add TBS support
  net: stmmac: gmac4+: Add TBS support
  net: stmmac: pci: Enable TBS on GMAC5 IPK PCI entry
  net: stmmac: Add missing information in DebugFS capabilities file
  net: stmmac: selftests: Switch to dev_direct_xmit()
  net: stmmac: selftests: Add a test for TBS feature

 drivers/net/ethernet/stmicro/stmmac/common.h       |   1 +
 drivers/net/ethernet/stmicro/stmmac/descs.h        |   9 ++
 drivers/net/ethernet/stmicro/stmmac/dwmac4.h       |   1 +
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c |  10 ++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.h |   7 +
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c   |  21 +++
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.h   |   7 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |  13 ++
 .../net/ethernet/stmicro/stmmac/dwxgmac2_descs.c   |   9 ++
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |  24 ++++
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |  12 ++
 drivers/net/ethernet/stmicro/stmmac/stmmac.h       |   3 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 149 ++++++++++++++++-----
 drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c   |   2 +
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c |  98 +++++++++++---
 drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c    |  18 +++
 include/linux/stmmac.h                             |   1 +
 17 files changed, 334 insertions(+), 51 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
