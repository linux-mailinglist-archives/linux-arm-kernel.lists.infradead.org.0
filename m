Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C18DF169263
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 00:52:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=93OFkdUeWgi7dDDrxIu3aMymwGoCZe70h8IbX0LS7f8=; b=tVRf3QGnBHArIZ
	R30sJGRjh3ITkUQZluGN7NhQkZU3/fE8GghOQAdD1d6dHzwQVMvWlZWyA7QXd4nXa68IYWroDWD44
	DMONVhOGv/HmSt5ByzAp84be/hnVZTb5tOlTVuVTw+28UR2zRSlurkphXek8t+M3D3PCUIubXv3+o
	LVT6Kui6hW7oAQzZbP54kalvbLMSVbrk1YqSwcPiNki9oZCKinqa7vUNRtm1i9bZaKaLESKIxmFvE
	8tuzLi8lq34dq1T0ak+phMGWR8TK9lCgnQd9C6+QgyjNo/ziWTMGGV6ASTphWeTyrz/Ue2+Z5pHtJ
	3A6s0eXbjPYntnpGB7Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5eZ1-0005fC-2N; Sat, 22 Feb 2020 23:52:03 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5eYl-0005b7-Ly; Sat, 22 Feb 2020 23:51:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582415505; bh=cltvQHikJrGK5YS2gg9OUR9Ui1uj17Pe1UWzZvwR4So=;
 h=From:To:Cc:Subject:Date:From;
 b=ORPcTNcFH8uBHuJavnP9cy05HTS1KwWse5MdIVoGXMcxMJ5fAmgg8xnov3wVodURv
 RpnTFrMkYF8DtGqGU6tL7hsNkFQQvHpoLrpg2BYuGcrsgAtnxMddzoWHW8LgZfU4ep
 fV3/r3FMZV26GMvHLt3IXiikt4Gfd89jz6t2qGdk=
From: Ondrej Jirman <megous@megous.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] phy: phy-meson-g12a-usb2: Fix GENMASK misuse
Date: Sun, 23 Feb 2020 00:51:38 +0100
Message-Id: <20200222235142.242732-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_155148_051218_04EA1B10 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Amlogic Meson SoC support" <linux-amlogic@lists.infradead.org>,
 "moderated list:ARM/Amlogic Meson SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arguments to GENMASK should be msb >= lsb.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
I just grepped the whole kernel tree for GENMASK argument order issues,
and this is one of the three that popped up. No testing was done.

 drivers/phy/amlogic/phy-meson-g12a-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/amlogic/phy-meson-g12a-usb2.c b/drivers/phy/amlogic/phy-meson-g12a-usb2.c
index 9065ffc85eb47..cd7eccab26490 100644
--- a/drivers/phy/amlogic/phy-meson-g12a-usb2.c
+++ b/drivers/phy/amlogic/phy-meson-g12a-usb2.c
@@ -66,7 +66,7 @@
 #define PHY_CTRL_R14						0x38
 	#define PHY_CTRL_R14_I_RDP_EN				BIT(0)
 	#define PHY_CTRL_R14_I_RPU_SW1_EN			BIT(1)
-	#define PHY_CTRL_R14_I_RPU_SW2_EN			GENMASK(2, 3)
+	#define PHY_CTRL_R14_I_RPU_SW2_EN			GENMASK(3, 2)
 	#define PHY_CTRL_R14_PG_RSTN				BIT(4)
 	#define PHY_CTRL_R14_I_C2L_DATA_16_8			BIT(5)
 	#define PHY_CTRL_R14_I_C2L_ASSERT_SINGLE_EN_ZERO	BIT(6)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
