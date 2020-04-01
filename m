Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5602019B6DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 22:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNvBVAP/i+3i9AvJSr5rpBs4nkG3aPB9xw1Q+AHkgcE=; b=aAJ5Uu2+LFYL1K
	fDAOeeCzps/5BFYNMyc7fQ6eWegJEAEOrCN1RmacrcWa3YBbin8eQeGrYJpwqU/6oM1tPnn2MKrSB
	P9JgrdpRdeAXS8vMRhuohnxAbQ8n4TSHc4vRqI3duCZFQ2McI7/lBZRpS7ipuFn5vM0rNpYB/GsHG
	Jh3zSsmB01Cf2Dl4dIcHYMS6wk5dp2Grz3H2j9ZPruwrVEyz3qKcVXcJPjbn0h0HpxyG0gEUoEhw9
	RGfug8mteaxP6ELkR2oBdnONtI66L7DS469W5Um6UgYKOQ/3Qgc+orVvM2ld7o+F/gBvEjgjQXm4o
	qiPLuSoUaTKf54e5P9gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJjp8-0007cQ-SQ; Wed, 01 Apr 2020 20:18:54 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJjoG-0006WJ-LD; Wed, 01 Apr 2020 20:18:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id DBFDE297614
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: mark.rutland@arm.com, ck.hu@mediatek.com, sboyd@kernel.org,
 ulrich.hecht+renesas@gmail.com
Subject: [PATCH v2 4/4] arm64: dts: mt8173: Fix mmsys node name
Date: Wed,  1 Apr 2020 22:17:36 +0200
Message-Id: <20200401201736.2980433-4-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401201736.2980433-1-enric.balletbo@collabora.com>
References: <20200401201736.2980433-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_131800_863648_5FBAA402 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, drinkcat@chromium.org,
 devicetree@vger.kernel.org, matthias.bgg@kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>, linux-mediatek@lists.infradead.org,
 hsinyi@chromium.org, matthias.bgg@gmail.com,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Node names are supposed to match the class of the device, mmsys is a
system controller (syscon) not a clock controller, so change the node
name accordingly.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
---

Changes in v2: None

 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 8b4e806d5119..a55e8c177832 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -908,7 +908,7 @@ u2port1: usb-phy@11291000 {
 			};
 		};
 
-		mmsys: clock-controller@14000000 {
+		mmsys: syscon@14000000 {
 			compatible = "mediatek,mt8173-mmsys", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
 			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
