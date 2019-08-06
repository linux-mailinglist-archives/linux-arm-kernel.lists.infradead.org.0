Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C8F82CE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 09:36:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XfrV1DmSpokWX5pfi+r9KA2MBcyGNnvoizEuh3fbjR0=; b=RZ4YkPJaNmA7Qh
	kgH6nDmK+CcG/aNEwK5xRDQIbVgwChUgfYofEuPdWTY5tu5xpXyvIQesgmyo07IrRkZmMDVT5o+Vj
	idoOZqaVL+BxJD28wW5mi18d74BFpFTUAaUl2+p0PGJmkrSM8SOoujmQlocSncnGcnTiPcRkYU09w
	0w6LMYkpQ+3+pKpNDkzVbe/KWtW0Mk3bC29P5w/3GUd2tDM+TP/i25wUtavrYppPIb1qfvhq/eR1H
	f7/uXLIEen8O2ctHNymmS7SYyS3HRPv/BzyJVdMpcBhtxok+rnz/3UcFC6R6UMTmvb/SgjGVoYcPi
	z4FcvO425zA5LYYg13WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huu0u-0000A8-67; Tue, 06 Aug 2019 07:36:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huu0g-00009L-1M
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 07:35:55 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2728A2189F;
 Tue,  6 Aug 2019 07:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565076949;
 bh=fZBRJKmjxvcp/mQzzUacJDHRPt54CTE5Q/sgx3Ed5sE=;
 h=From:To:Cc:Subject:Date:From;
 b=ot83vAf2vvFym5JdA92jT4XYOtvT3mNdwKTE4UHLl+TBHcisvQfnag0/rr1tjZmSr
 fcHLl5FoV8+r7lDIFeOhmJq791dM697zoERPimM4agMxjV1/RnQM7rWbfjTN5Ctiyk
 0AMAtFqd2tla77qIXU0E+tTpNfSjicIZsRRKtLfA=
Received: by wens.tw (Postfix, from userid 1000)
 id 5FACD5FC97; Tue,  6 Aug 2019 15:35:46 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: "David S. Miller" <davem@davemloft.net>, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH net] net: ethernet: sun4i-emac: Support phy-handle property
 for finding PHYs
Date: Tue,  6 Aug 2019 15:35:39 +0800
Message-Id: <20190806073539.32519-1-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_003554_256646_3449CCDC 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: netdev@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The sun4i-emac uses the "phy" property to find the PHY it's supposed to
use. This property was deprecated in favor of "phy-handle" in commit
8c5b09447625 ("dt-bindings: net: sun4i-emac: Convert the binding to a
schemas").

Add support for this new property name, and fall back to the old one in
case the device tree hasn't been updated.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---

The aforementioned commit is in v5.3-rc1. It would be nice to have the
driver fix in the same release. In addition, an update for the device
tree has been queued up for v5.4, which made us realize the driver needs
an update.

---
 drivers/net/ethernet/allwinner/sun4i-emac.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/allwinner/sun4i-emac.c b/drivers/net/ethernet/allwinner/sun4i-emac.c
index 3434730a7699..0537df06a9b5 100644
--- a/drivers/net/ethernet/allwinner/sun4i-emac.c
+++ b/drivers/net/ethernet/allwinner/sun4i-emac.c
@@ -860,7 +860,9 @@ static int emac_probe(struct platform_device *pdev)
 		goto out_clk_disable_unprepare;
 	}
 
-	db->phy_node = of_parse_phandle(np, "phy", 0);
+	db->phy_node = of_parse_phandle(np, "phy-handle", 0);
+	if (!db->phy_node)
+		db->phy_node = of_parse_phandle(np, "phy", 0);
 	if (!db->phy_node) {
 		dev_err(&pdev->dev, "no associated PHY\n");
 		ret = -ENODEV;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
