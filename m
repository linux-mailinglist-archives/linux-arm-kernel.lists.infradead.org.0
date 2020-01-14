Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3170E138EB3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:13:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hwIUeDfZVX0mZ1yv+qOStdfqnIDjIVISUloIpuy17lI=; b=JCs
	9zQ+/CtLr2FPuykYXYcO1nIj4sMaTmuNQgjYdTse3ze9y2xuaxWwBrdSH/9uoMauoEHBRDZuU36j4
	sXPjvlYfT1WmBKKXyZp6pPoyka4d+uq3xveI4FsEvaO0Ygr7b4XpM7YqZF+1S/HTPBtIiqdH6YT2T
	1dn7QKQiAw4x9ztCvojo0q28HFqXjkpAfFJR3vawiG6G4OlYvtSXc+vP0vSSShZyKvuW9wuWGR8J9
	jog+aKdFLkW6FWvXwTBaEhtXpq+OAiwSXHWyzQo317OhcOrFnQEIb+FODbUMTSa0CShrMqycZezE2
	TIy0AactgToH7u1LnpU5ZIC6EF6zmvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwj6-0007jd-IO; Mon, 13 Jan 2020 10:13:40 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwis-0007iW-Cj
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 10:13:28 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 02:13:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,428,1571727600"; d="scan'208";a="397116735"
Received: from bong5-hp-z440.png.intel.com ([10.221.118.136])
 by orsmga005.jf.intel.com with ESMTP; 13 Jan 2020 02:13:21 -0800
From: Ong Boon Leong <boon.leong.ong@intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 0/7] net: stmmac: general fixes for Ethernet functionality
Date: Tue, 14 Jan 2020 10:01:09 +0800
Message-Id: <1578967276-55956-1-git-send-email-boon.leong.ong@intel.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_021326_875733_5E711CB9 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 DATE_IN_FUTURE_12_24   Date: is 12 to 24 hours after Received:
 date
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Voon Weifeng <weifeng.voon@intel.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tan Tee Min <tee.min.tan@intel.com>, Ong Boon Leong <boon.leong.ong@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Patch-series that fixes couple of issues in stmmac:-

1/7: It fixes the incorrect setting of Rx Tail Pointer. Rx Tail Pointer
     should points to the last valid descriptor that was replenished by
     stmmac_rx_refill().

2/7: It ensures that the real_num_rx|tx_queues are set in both driver
     probe() and resume(). So, move the netif_set_real_num_rx|tx_queues()
     into stmmac_hw_setup().

3/7: It fixes missing netdev->features = features update in
     stmmac_set_features().

4/7: It fixes incorrect MACRO function defininition for TX and RX user
     priority queue steering for queue > 3.

5/7: It ensures that the previous value of GMAC_VLAN_TAG register is
     read first before for updating the register.

6/7: It ensures the GMAC IP v4.xx and above behaves correctly to:-
      ip link set <devname> multicast off|on

7/7: It ensures PCI platform data is using plat->phy_interface.

Thanks,
Boon Leong

Aashish Verma (1):
  net: stmmac: Fix incorrect location to set real_num_rx|tx_queues

Ong Boon Leong (2):
  net: stmmac: fix error in updating rx tail pointer to last free entry
  net: stmmac: fix missing netdev->features in stmmac_set_features

Tan, Tee Min (1):
  net: stmmac: fix incorrect GMAC_VLAN_TAG register writting
    implementation

Verma, Aashish (1):
  net: stmmac: fix missing IFF_MULTICAST check in dwmac4_set_filter

Voon Weifeng (2):
  net: stmmac: Fix priority steering for tx/rx queue >3
  net: stmmac: update pci platform data to use phy_interface

 drivers/net/ethernet/stmicro/stmmac/dwmac4.h      | 10 ++++++----
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c |  9 +++++----
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 16 ++++++++++------
 drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c  | 14 ++++++++------
 4 files changed, 29 insertions(+), 20 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
