Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D24D5144E4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 10:11:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4tsgayg9SLXI+VtWdmiiFfRHkB7TX1H3r7CF3ucb2D8=; b=KXh
	bWA4EJUpAf8qkTSHpb1TwOsaLpxcyhAzG1sqZI9mHrg635BFpXl9Y+MyuiYeO1rI/X3m2Yv3kZib6
	3BJvGQlyWbmQk1TZ2NIWC8GjOs2Z091ugpLpCm1etYHOBmeq5dNByhHBiJfLcf6CM/DEgSKZmTWV1
	xormosm/jaJxfv1p6H9dJcYJHzAHgtrdI3sK4WLzoH4Us58nt+IG2DJqcHZS+JgYlySAgac0m5AMB
	tMnECuoB1LBuwMxNFiTpQyk5crP5NcHhGHih+j0E8qsL89mujVMfKcJHU1CurK81+A3PX/18bDZdA
	RxaPEOPR1nt5VEoel2PKRygThhuseEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuC2G-000858-Vg; Wed, 22 Jan 2020 09:10:53 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuC1o-0007vO-QP
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 09:10:26 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 01:10:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,349,1574150400"; d="scan'208";a="244990387"
Received: from unknown (HELO bong5-HP-Z440.png.intel.com) ([10.221.118.166])
 by orsmga002.jf.intel.com with ESMTP; 22 Jan 2020 01:10:14 -0800
From: Ong Boon Leong <boon.leong.ong@intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v3 0/5] net: stmmac: general fixes for Ethernet
 functionality
Date: Wed, 22 Jan 2020 17:09:31 +0800
Message-Id: <20200122090936.28555-1-boon.leong.ong@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_011024_926127_561F9389 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 3.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Voon Weifeng <weifeng.voon@intel.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Arnd Bergmann <arnd@arndb.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tan Tee Min <tee.min.tan@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks to all feedbacks from community.

We updated the patch-series to below:-

1/5: It ensures that the real_num_rx|tx_queues are set in both driver
     probe() and resume(). So, move the netif_set_real_num_rx|tx_queues()
     into stmmac_hw_setup(). Added lock_acquired to allow to decide when
     to rtnl_lock() & rtnl_unlock() pair:-
     stmmac_open(): rtnl_lock() & rtnl_unlock() is not needed.
     stmmac_resume(): rtnl_lock() & rtnl_unlock() is needed.

2/5: It ensures that the previous value of GMAC_VLAN_TAG register is
     read first before for updating the register.

3/5: It ensures the GMAC IP v4.xx and above behaves correctly to:-
       ip link set <devname> multicast off|on

4/5: Added similar IFF_MULTICAST flag for xgmac2.

5/5: It ensures PCI platform data is using plat->phy_interface.

Rgds,
Boon Leong

Changes from v2:-
   patch 1/5 - added control for rtnl_lock() & rtnl_unlock() to ensure
               they are used forstmmac_resume()
   patch 4/5 - added IFF_MULTICAST flag check for xgmac to ensure
               multicast works correctly.

v1:-
 - Drop v1 patches (1/7, 3/7 & 4/7) that are not valid.

Aashish Verma (1):
  net: stmmac: Fix incorrect location to set real_num_rx|tx_queues

Tan, Tee Min (2):
  net: stmmac: fix incorrect GMAC_VLAN_TAG register writting in GMAC4+
  net: stmmac: xgmac: fix missing IFF_MULTICAST checki in
    dwxgmac2_set_filter

Verma, Aashish (1):
  net: stmmac: fix missing IFF_MULTICAST check in dwmac4_set_filter

Voon Weifeng (1):
  net: stmmac: update pci platform data to use phy_interface

 .../net/ethernet/stmicro/stmmac/dwmac4_core.c |  9 +++++----
 .../ethernet/stmicro/stmmac/dwxgmac2_core.c   |  2 +-
 .../net/ethernet/stmicro/stmmac/stmmac_main.c | 19 ++++++++++++-------
 .../net/ethernet/stmicro/stmmac/stmmac_pci.c  | 14 ++++++++------
 4 files changed, 26 insertions(+), 18 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
