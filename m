Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9767A13BA36
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 08:12:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X8ryZiO+oi+qf8dgOHtRiYPwIBYtxUkPzTqYereDL/I=; b=kr9x/T6T4LUkwGgEQDEEvcpZLb
	GsqxhRVOqiOxWXCv9VFZ/fVtzRrW0cXKQF91XYfeFG85MGpiKCZVhDjUIXR9T9NFqNVQZGYGQg+PG
	0xcQaDQOOwg5xGJeObo0g9C7ft+Hm+XX8hc+x9Eu+Uayx5XnTEBR5c9CJrHxRt0k/FdyoG1hp6dET
	pOOlHluxjsZ7a3s+UKc30D9BOchscDRawz6zqiwwHA7WjErBK4HnCqzgqdd9M9+CyHeOzHOJJT0oT
	7YaaMjUPya8ulazwopGBpCBLv9DX/kLGCtS3OjxjJHbOENRcZGJHynBHXYwysK6My2aM6STTUDDba
	oUKpypBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ircqM-0006dy-5H; Wed, 15 Jan 2020 07:11:58 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ircp9-0005k0-Mo
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 07:10:50 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 23:10:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,321,1574150400"; d="scan'208";a="256643663"
Received: from bong5-hp-z440.png.intel.com ([10.221.118.136])
 by fmsmga002.fm.intel.com with ESMTP; 14 Jan 2020 23:10:40 -0800
From: Ong Boon Leong <boon.leong.ong@intel.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v2 2/4] net: stmmac: fix incorrect GMAC_VLAN_TAG register
 writting implementation
Date: Wed, 15 Jan 2020 15:10:01 +0800
Message-Id: <20200115071003.42820-3-boon.leong.ong@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200115071003.42820-1-boon.leong.ong@intel.com>
References: <20200115071003.42820-1-boon.leong.ong@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_231043_748066_11D2975E 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Voon Weifeng <weifeng.voon@intel.com>, Jakub Kicinski <kubakici@wp.pl>,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tan Tee Min <tee.min.tan@intel.com>, Ong Boon Leong <boon.leong.ong@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tan, Tee Min" <tee.min.tan@intel.com>

It should always do a read of current value of GMAC_VLAN_TAG instead of
directly overwriting the register value.

Fixes: c1be0022df0d ("net: stmmac: Add VLAN HASH filtering support in GMAC4+")
Signed-off-by: Tan, Tee Min <tee.min.tan@intel.com>
Signed-off-by: Ong Boon Leong <boon.leong.ong@intel.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
index 40ca00e596dd..6e3d0ab0ecd6 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
@@ -736,11 +736,14 @@ static void dwmac4_update_vlan_hash(struct mac_device_info *hw, u32 hash,
 				    __le16 perfect_match, bool is_double)
 {
 	void __iomem *ioaddr = hw->pcsr;
+	u32 value;
 
 	writel(hash, ioaddr + GMAC_VLAN_HASH_TABLE);
 
+	value = readl(ioaddr + GMAC_VLAN_TAG);
+
 	if (hash) {
-		u32 value = GMAC_VLAN_VTHM | GMAC_VLAN_ETV;
+		value |= GMAC_VLAN_VTHM | GMAC_VLAN_ETV;
 		if (is_double) {
 			value |= GMAC_VLAN_EDVLP;
 			value |= GMAC_VLAN_ESVL;
@@ -759,8 +762,6 @@ static void dwmac4_update_vlan_hash(struct mac_device_info *hw, u32 hash,
 
 		writel(value | perfect_match, ioaddr + GMAC_VLAN_TAG);
 	} else {
-		u32 value = readl(ioaddr + GMAC_VLAN_TAG);
-
 		value &= ~(GMAC_VLAN_VTHM | GMAC_VLAN_ETV);
 		value &= ~(GMAC_VLAN_EDVLP | GMAC_VLAN_ESVL);
 		value &= ~GMAC_VLAN_DOVLTC;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
