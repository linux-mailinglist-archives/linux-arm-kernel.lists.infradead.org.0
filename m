Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 928BA11E9DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:12:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIwmoxRHTH4zrAOxeD7VZq/RFyOBMwVqrMNSm1ifyIY=; b=Wcu6kHbaIbsD92
	AnTXzidM4smOSePZnmeEz6MV0pJ+Wl9KT/OGIAExU26iqLex1MPt7bQuyNSH4/seQiKs7VX4GkfIx
	TjeBGB0gMWRC4J7mtzpQDHZpHXl4pcEFso3IiJhe5AqUNBrFjzGaszMEPmd8e29Ld7N9LwzPSlz83
	QPp5qbTSSPhh0mySiEbA3MeUxMkNjruU5GY240usgst5r2+/zrdbR6UMslqy1298lE0GJYIKmZ3tF
	wRBU3sya8o6u5F4rTFqhF/Jxz8qK+uSaYA4ZVVK2Nd0tn88g8HZe9InAgjEjeZgI7sLbMyYuUifDb
	TLjsvt6gcuMHzBwNJJ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpPy-0000Ul-C0; Fri, 13 Dec 2019 18:11:58 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpP5-0008LZ-9R; Fri, 13 Dec 2019 18:11:04 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7CBDF20000F;
 Fri, 13 Dec 2019 18:11:00 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 03/12] drm/rockchip: lvds: Fix indentation of a #define
Date: Fri, 13 Dec 2019 19:10:42 +0100
Message-Id: <20191213181051.25983-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213181051.25983-1-miquel.raynal@bootlin.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_101103_462036_BFE660E1 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix a #define indentation before adding more lines.

Fixes: 34cc0aa25456 ("drm/rockchip: Add support for Rockchip Soc LVDS")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.h b/drivers/gpu/drm/rockchip/rockchip_lvds.h
index 029bad8e1a14..1387bcbc4bc0 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.h
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.h
@@ -70,7 +70,7 @@
 #define RK3288_LVDS_CFG_REG21			0x84
 #define RK3288_LVDS_CFG_REG21_TX_ENABLE		0x92
 #define RK3288_LVDS_CFG_REG21_TX_DISABLE	0x00
-#define RK3288_LVDS_CH1_OFFSET                 0x100
+#define RK3288_LVDS_CH1_OFFSET			0x100
 
 /* fbdiv value is split over 2 registers, with bit8 in reg2 */
 #define RK3288_LVDS_PLL_FBDIV_REG2(_fbd) \
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
