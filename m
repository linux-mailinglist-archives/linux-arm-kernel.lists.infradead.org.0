Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C2F13E4A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:09:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWzidY3cl1vQSVGfChWhev5hCvtfMw+KXArU4+oMJ+c=; b=WQ7EouNrBSk+EB
	q64RrmInajMjG1v58WB3lsq7RUMtjikTy448ejzmOhXvuIGmNuKoxYknpXG0UONza+hYWt7dR+vfZ
	QMp3FO6+no4AMaxRLiIpbLl6+LwrTM86AMM5Xkc4rxMQn9f1vp8koJcan9BMRc/7vdywWXWayH/SD
	zTjek0tcnT4cjpN2XPht5IF7ftwJUnQFU90tW67qgMcPuewhUsC/LO8DZv/rDgFiIqd+/OjDRtD18
	IT2R6X3LDWKv9/1OjY3reQid9C1IH0SIuKmBg2EZPg6dJJWi9rw30/31GP4Z66xtE6lFlk4P+kUib
	u8n6TEAU+cUhDrJ3cthA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8eK-0001pU-SV; Thu, 16 Jan 2020 17:09:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8V9-0008V2-Vv
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:00:15 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 767A820728;
 Thu, 16 Jan 2020 17:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194011;
 bh=NQPAdyaAP2EytZnPVR+ZjNCeYN6ANWeK/buvrcz58cM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Id8BH3CTEFKri0EuSVhaY1q9FdPfmqfWpO3NgyOexQ6P2WAncm+HMA5ghb638hIMr
 /emxQpeUqNA6R/EsZdZFgGb2dt/+pTZi2BVD5ABGoe5myiOwH3Rly98s25k0AjYK9Q
 aKDkwgNJM+44uhoSkX+ncGtDiAqHHNK3Rsyqonro=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 135/671] arm64: dts: allwinner: h6: Move GIC
 device node fix base address ordering
Date: Thu, 16 Jan 2020 11:50:44 -0500
Message-Id: <20200116165940.10720-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165940.10720-1-sashal@kernel.org>
References: <20200116165940.10720-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090012_135182_DB0D1CE2 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sasha Levin <sashal@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

[ Upstream commit 52d9bcb3d0de3fa1e07aff3800f857836d30410d ]

The GIC device node was placed out of order in the initial device tree
submission. Move it so the nodes are correctly sorted by base address
again.

Fixes: e54be32d0273 ("arm64: allwinner: h6: add the basical Allwinner H6 DTSI file")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 22 ++++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index cfa5fffcf62b..72813e7aefb8 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -101,17 +101,6 @@
 			#reset-cells = <1>;
 		};
 
-		gic: interrupt-controller@3021000 {
-			compatible = "arm,gic-400";
-			reg = <0x03021000 0x1000>,
-			      <0x03022000 0x2000>,
-			      <0x03024000 0x2000>,
-			      <0x03026000 0x2000>;
-			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
-			interrupt-controller;
-			#interrupt-cells = <3>;
-		};
-
 		pio: pinctrl@300b000 {
 			compatible = "allwinner,sun50i-h6-pinctrl";
 			reg = <0x0300b000 0x400>;
@@ -149,6 +138,17 @@
 			};
 		};
 
+		gic: interrupt-controller@3021000 {
+			compatible = "arm,gic-400";
+			reg = <0x03021000 0x1000>,
+			      <0x03022000 0x2000>,
+			      <0x03024000 0x2000>,
+			      <0x03026000 0x2000>;
+			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+		};
+
 		mmc0: mmc@4020000 {
 			compatible = "allwinner,sun50i-h6-mmc",
 				     "allwinner,sun50i-a64-mmc";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
