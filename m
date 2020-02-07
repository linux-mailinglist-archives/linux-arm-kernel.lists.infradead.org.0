Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8167C155306
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 08:34:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HUwUzEw5B7pn5ia+YYcPm5sD457hnpw1VyAmiAzNklA=; b=Mz0
	aNt9PxZRrlpgznh722bvJ8khR8yxppbGiJj50fjArPWSWyRG9SFDEoYTPWlveiC/Nl1OrrJaND1+M
	ZeKlkanE0EYelO/tRRaqvaeAjmqjfWTdTJLfvl+BOff/jd7Nykgca2/BMh+a5NCFhkdMXjGEUpRKq
	gFu3dwrji1ObFgiA8tYrYxEYrkOKasd1Qn7C1p08aQRcNRLCpUbM1O52nCrsx38+IOdJ91XsmpQmH
	2d+23fv1ZYJSaN8WEYXsvdquxZa1cBWF4ItcVal+2PKsYZVNrYjFiA8i3faxc1WPuoVtOL84Ybj5s
	4wZwq5wppF3e4y97bN6ozPbXi/mfDvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izy9n-00082c-Bf; Fri, 07 Feb 2020 07:34:31 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izy9g-00081i-EO
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 07:34:25 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 23:34:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,412,1574150400"; d="scan'208";a="379322464"
Received: from unknown (HELO bong5-HP-Z440.png.intel.com) ([10.221.118.166])
 by orsmga004.jf.intel.com with ESMTP; 06 Feb 2020 23:34:18 -0800
From: Ong Boon Leong <boon.leong.ong@intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v5 3/5] net: stmmac: fix missing IFF_MULTICAST check in
 dwmac4_set_filter
Date: Fri,  7 Feb 2020 15:33:54 +0800
Message-Id: <20200207073354.9460-1-boon.leong.ong@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_233424_529112_51B629CB 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -3.2 (---)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.8 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Voon Weifeng <weifeng.voon@intel.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
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

From: "Verma, Aashish" <aashishx.verma@intel.com>

Without checking for IFF_MULTICAST flag, it is wrong to assume multicast
filtering is always enabled. By checking against IFF_MULTICAST, now
the driver behaves correctly when the multicast support is toggled by below
command:-
  ip link set <devname> multicast off|on

Fixes: 477286b53f55 ("stmmac: add GMAC4 core support")
Signed-off-by: Verma, Aashish <aashishx.verma@intel.com>
Tested-by: Tan, Tee Min <tee.min.tan@intel.com>
Signed-off-by: Ong Boon Leong <boon.leong.ong@intel.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
index 4d8eef9ff137..dc09d2131e40 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
@@ -420,7 +420,7 @@ static void dwmac4_set_filter(struct mac_device_info *hw,
 		value |= GMAC_PACKET_FILTER_PM;
 		/* Set all the bits of the HASH tab */
 		memset(mc_filter, 0xff, sizeof(mc_filter));
-	} else if (!netdev_mc_empty(dev)) {
+	} else if (!netdev_mc_empty(dev) && (dev->flags & IFF_MULTICAST)) {
 		struct netdev_hw_addr *ha;
 
 		/* Hash filter for multicast */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
