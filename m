Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BFF10D50D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 12:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hh8CMxeoDVAAk89qzwhTOVvfF2TqVta9/Y7jnq/T5oI=; b=Ec0Lc4sY+uUs5dWiRL9CjXsJX/
	vgI6h+3+X6chUyPd9lveamY8oeBaFEJ4IaTpnNcmHUW8fFNoJk6cyof0olr1SNbQSv+4Fe7/mBnpF
	l92A3ENaio1POO/IbMCQF34jHtJAoQXZ96k9k5XOBhREi7DDBAe1w4ysvuPc9eeMJ5AwSShE30vCZ
	o/KuprilG8sFg6tEj1KzuFxL1Orh3EQtDEccAnKEglw+tXUBs8wtvEyQPDN39vbuKcWptEyBjL9rr
	Xfkrs3bv5KfBSSH9X2zP82H7JtONZ0qgen9uJhQpSgJREZeckE0Mm2DqQ3jkTMZHd97W2SI2RBWFK
	WzwB8MQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaeds-000722-Jg; Fri, 29 Nov 2019 11:40:56 +0000
Received: from olimex.com ([2001:470:0:1f2::b869:4820])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaedB-0006ae-Nr
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 11:40:16 +0000
Received: from localhost.localdomain ([94.155.250.134])
 by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 29 Nov 2019 03:39:57 -0800
From: Stefan Mavrodiev <stefan@olimex.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC
 support), 
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 1/3] arm64: dts: allwinner: a64: olinuxino: Fix eMMC supply
 regulator
Date: Fri, 29 Nov 2019 13:39:39 +0200
Message-Id: <20191129113941.20170-2-stefan@olimex.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191129113941.20170-1-stefan@olimex.com>
References: <20191129113941.20170-1-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_034013_778811_47D089E1 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-sunxi@googlegroups.com, stable@vger.kernel.org,
 Stefan Mavrodiev <stefan@olimex.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A64-OLinuXino-eMMC uses 1.8V for eMMC supply. This is done via a triple
jumper, which sets VCC-PL to either 1.8V or 3.3V. This setting is different
for boards with and without eMMC.

This is not a big issue for DDR52 mode, however the eMMC will not work in
HS200/HS400, since these modes explicitly requires 1.8V.

Fixes: 94f68f3a4b2a ("arm64: dts: allwinner: a64: Add A64 OlinuXino board (with eMMC)")
Cc: stable@vger.kernel.org # v5.4
Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
---
Changes for v2:
 - Restore the original eMMC vmmc-supply property

 arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
index 96ab0227e82d..121e6cc4849b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino-emmc.dts
@@ -15,7 +15,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc2_pins>;
 	vmmc-supply = <&reg_dcdc1>;
-	vqmmc-supply = <&reg_dcdc1>;
+	vqmmc-supply = <&reg_eldo1>;
 	bus-width = <8>;
 	non-removable;
 	cap-mmc-hw-reset;
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
