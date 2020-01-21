Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7CA144750
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:29:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yYVq0fTHZnLHo2bWPTVLo7DlDQGLfRNdBfZ9YdBDRLc=; b=pdxhR3Kmcm82kH
	pRUhnpH1HSwsLc6xWpneMTyVmkSR84mATv+4ulW/GghJHKaBQjbBVPw2YrrYv2iW3y8QbQeqnnYw3
	a8O+7QNjCs5qqj0Yj5iuIAYN+6VNOk8PfGEo+qQ8BStJ6sYxQWnPNA+cp0F5HBXmkteGG0bJbJhC+
	xUDELlM2ANq5k9ks/nyBsl8Khu9bLhTTjYlNPiWpZaQmRn8EIlQdGKdk78kDGPKef6wVmAt37pgcv
	Kb6LIc3uZh6t1v+bbRSuVUvV8okvT1IFHNQtV0H/wDkwIh5MbZZCyqmrwoWW4MZ808Zflei3AbQM9
	NIUbe3MFT3NYG5aDduLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu21V-0000hb-T2; Tue, 21 Jan 2020 22:29:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu21M-0000gl-AN; Tue, 21 Jan 2020 22:29:17 +0000
Received: from mail.linser.at ([80.109.168.170] helo=phil.Hitronhub.home)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iu21I-0005qo-Hh; Tue, 21 Jan 2020 23:29:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: khilman@kernel.org,
	nm@ti.com
Subject: [PATCH] PM / AVS: rockchip-io: fix the supply naming for the emmc
 supply on px30
Date: Tue, 21 Jan 2020 23:28:59 +0100
Message-Id: <20200121222859.4069263-1-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_142916_509385_946FE7AD 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: heiko@sntech.de, linux-pm@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The supply going to the emmc/flash is named vccio6, not vccio0 and while
the code does this correctly already, the comments and error output do not.

So just change these values to the correct ones.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 drivers/power/avs/rockchip-io-domain.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/power/avs/rockchip-io-domain.c b/drivers/power/avs/rockchip-io-domain.c
index 398fc954419e..eece97f97ef8 100644
--- a/drivers/power/avs/rockchip-io-domain.c
+++ b/drivers/power/avs/rockchip-io-domain.c
@@ -152,18 +152,18 @@ static void px30_iodomain_init(struct rockchip_iodomain *iod)
 	int ret;
 	u32 val;
 
-	/* if no VCCIO0 supply we should leave things alone */
+	/* if no VCCIO6 supply we should leave things alone */
 	if (!iod->supplies[PX30_IO_VSEL_VCCIO6_SUPPLY_NUM].reg)
 		return;
 
 	/*
-	 * set vccio0 iodomain to also use this framework
+	 * set vccio6 iodomain to also use this framework
 	 * instead of a special gpio.
 	 */
 	val = PX30_IO_VSEL_VCCIO6_SRC | (PX30_IO_VSEL_VCCIO6_SRC << 16);
 	ret = regmap_write(iod->grf, PX30_IO_VSEL, val);
 	if (ret < 0)
-		dev_warn(iod->dev, "couldn't update vccio0 ctrl\n");
+		dev_warn(iod->dev, "couldn't update vccio6 ctrl\n");
 }
 
 static void rk3288_iodomain_init(struct rockchip_iodomain *iod)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
