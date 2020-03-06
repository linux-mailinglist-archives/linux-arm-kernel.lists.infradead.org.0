Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B212C17C63C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 20:22:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HeOhnG3bavQeeVRvbC3SXDj6FokmoPLmVVxl7XrME5M=; b=Q8XJlBbOlrQCPr
	CsKJ+g3LtIq5yKSazL/vBA6EjVOPqOqlVXq5bacYIux0hrIPZjji4wDsX7vTy12yerGhjsA3jG9qe
	Px8vSYYWyiKEjPOFZ460SAOfyeXGTSvE5uVhTpj+OPprjSujiRPoosiO0QxbHSU6vGZVGzjpq3d72
	aVY6XRJrELv6t4v8GemBvPPbd3MMbJoBvi8vM1Dln136giEVuhE0aRJ8ENJDIJqxmwmu2RMDq8R5l
	s3OcwUC/0R+etK/qOofdTdkOeHY9VYSMQQ51O/ryPm9pAuPoxSO1RtFcA3mCXJcWtJYVWKTLIKvTL
	2XrtAMm6/gP5SbOjRgcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAIYX-0006CE-Qq; Fri, 06 Mar 2020 19:22:45 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAIYM-0006Av-L3; Fri, 06 Mar 2020 19:22:36 +0000
X-Originating-IP: 109.190.253.14
Received: from localhost (unknown [109.190.253.14])
 (Authenticated sender: repk@triplefau.lt)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id D557360006;
 Fri,  6 Mar 2020 19:22:16 +0000 (UTC)
From: Remi Pommarel <repk@triplefau.lt>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>
Subject: [PATCH] net: stmmac: dwmac1000: Disable ACS if enhanced descs are not
 used
Date: Fri,  6 Mar 2020 20:30:36 +0100
Message-Id: <20200306193036.18414-1-repk@triplefau.lt>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_112234_823610_75526E56 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Remi Pommarel <repk@triplefau.lt>, linux-amlogic@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ACS (auto PAD/FCS stripping) removes FCS off 802.3 packets (LLC) so that
there is no need to manually strip it for such packets. The enhanced DMA
descriptors allow to flag LLC packets so that the receiving callback can
use that to strip FCS manually or not. On the other hand, normal
descriptors do not support that.

Thus in order to not truncate LLC packet ACS should be disabled when
using normal DMA descriptors.

Signed-off-by: Remi Pommarel <repk@triplefau.lt>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c
index d0356fbd1e43..b468acf03b00 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c
@@ -25,6 +25,7 @@ static void dwmac1000_core_init(struct mac_device_info *hw,
 				struct net_device *dev)
 {
 	void __iomem *ioaddr = hw->pcsr;
+	struct stmmac_priv *priv = netdev_priv(dev);
 	u32 value = readl(ioaddr + GMAC_CONTROL);
 	int mtu = dev->mtu;
 
@@ -35,7 +36,7 @@ static void dwmac1000_core_init(struct mac_device_info *hw,
 	 * Broadcom tags can look like invalid LLC/SNAP packets and cause the
 	 * hardware to truncate packets on reception.
 	 */
-	if (netdev_uses_dsa(dev))
+	if (netdev_uses_dsa(dev) || !priv->plat->enh_desc)
 		value &= ~GMAC_CONTROL_ACS;
 
 	if (mtu > 1500)
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
