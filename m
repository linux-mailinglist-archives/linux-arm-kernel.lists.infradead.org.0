Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEB2113E55
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:40:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4gZUPCfcQRTAzmWGvL3wcgE++VdanR/j0Dh0gllv4jM=; b=a1k
	csYnKYj3FenwmAEKKo8Eaek2lLRJkiNbxvYYnKshvMkvsmjWgQ+yExR5MMFNPElENsC2brK5YoAEw
	3DepG6+AD9LK0ClsxBgtTSGnVTi7uw8rbCay0grH3n4oqBI4P/EkntkrfynDnKC9ol7i2eVr1CRaV
	mthdOoxnrs1Wmp/AXQI3z9VnA8tXzR1PPEKL3HsANZRG6whZI+ACa0MPX5lQbRbJxITl5gFZrqBhy
	OneqGK5JAXxKv5aHhW3O5vE+AUUmAEs+L0HoylCs/eaF8xTL6pHV3cqaEHbe3sUT2y4dgLrLipGZb
	Ebcfnze9VECAvDp/ffLssX5G08/OPVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icncj-0005Sj-PM; Thu, 05 Dec 2019 09:40:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icncU-0005OV-PO
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:40:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 38DBEB320;
 Thu,  5 Dec 2019 09:40:21 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: netdev@vger.kernel.org
Subject: [PATCH net v2] net: thunderx: start phy before starting
 autonegotiation
Date: Thu,  5 Dec 2019 10:41:16 +0100
Message-Id: <20191205094116.4904-1-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_014022_980844_7269BD06 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: andrew@lunn.ch, rric@kernel.org, sergei.shtylyov@cogentembedded.com,
 tharvey@gateworks.com, Mian Yousaf Kaukab <ykaukab@suse.de>,
 linux-kernel@vger.kernel.org, sgoutham@cavium.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 2b3e88ea6528 ("net: phy: improve phy state checking")
phy_start_aneg() expects phy state to be >= PHY_UP. Call phy_start()
before calling phy_start_aneg() during probe so that autonegotiation
is initiated.

As phy_start() takes care of calling phy_start_aneg(), drop the explicit
call to phy_start_aneg().

Network fails without this patch on Octeon TX.

Fixes: 2b3e88ea6528 ("net: phy: improve phy state checking")
Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
v2:
-Add fixes tag and net tree as suggested by Andrew Lunn
v1:
-Remove call to phy_start_aneg() as suggested by Andrew Lunn
-Fix reference to patch in change log as suggested by Sergei Shtylyov

 drivers/net/ethernet/cavium/thunder/thunder_bgx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
index 1e09fdb63c4f..c4f6ec0cd183 100644
--- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
+++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
@@ -1115,7 +1115,7 @@ static int bgx_lmac_enable(struct bgx *bgx, u8 lmacid)
 				       phy_interface_mode(lmac->lmac_type)))
 			return -ENODEV;
 
-		phy_start_aneg(lmac->phydev);
+		phy_start(lmac->phydev);
 		return 0;
 	}
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
