Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C170B9F13
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 19:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1S0tdd2xYIcWAI/SWarQ0ou2zJQCvVftw8ik7lUU5zk=; b=UXpaZ1bvtWOnQZ05s8JpgTUbIm
	X+lTHxiTB34XZfOc/qJkqDfbruqOOKOyy/dkXHxYwoZGd2e+GKJvp+sr66sIHrfcHzpzuYy3JESJO
	sl3dp3dJgOXGUqLaP4Of62/DKlsaHIkRQl34JwKyil/7oZlchbGa06ND0Iix3b8Ivh8IsdslWLRuY
	pXIutVgXqYLKwMimXdpoV9eO4ddvYds3fsV+Q2AVx2IiYluDup6Ga5acgQzWuDgPgpsnqdm+YyYju
	a5QggPBWwJC/ymkXJf4PLOAj7e833HgmiCOZqs09TgukazfpaEsG3Agg8Dzcvl2n+sTN30kLMUciB
	Rmj2E/ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBinv-0003Rt-Tw; Sat, 21 Sep 2019 17:04:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBimA-00029F-Av
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Sep 2019 17:02:27 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC43621882;
 Sat, 21 Sep 2019 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569085346;
 bh=K7z//Y/yLJWsZpw2WZeSz4YckSjsAIIkQrg5GbosjAU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eOCyX2tGs+6hBnI46pENiaekDrJv2+ild9ii0foLROp6wXYdIrsxBJGc7K73fVjBV
 /WJPERUnAjGmhfrBOV1I4pRs+PCF3/b0ZvhPpHitUgG030cPL4oyWAEeEyjGnoshBY
 7NmqiV3yAEkvPX3NLyS1AM4vEogbSsfz2Zq1ElH8=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [RFT v3 7/8] ARM: dts: exynos: Remove MCT subnode for interrupt map
 on Exynos54xx
Date: Sat, 21 Sep 2019 19:01:51 +0200
Message-Id: <20190921170152.5033-7-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190921170152.5033-1-krzk@kernel.org>
References: <20190921170152.5033-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_100226_408480_F1E289E5 
X-CRM114-Status: GOOD (  11.23  )
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
Cc: Sylwester Nawrocki <snawrocki@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Multi Core Timer node has interrupts routed to two different parents -
GIC and combiner.  This was modeled with a interrupt-map within a
subnode but can be expressed in an easier and more common way, directly
in the node itself.

Tested on Odroid XU (Exynos5410), Odroid HC1 (Exynos5422) and Arndale
Octa (Exynos5420).

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/boot/dts/exynos54xx.dtsi | 37 ++++++++++++++-----------------
 1 file changed, 17 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
index 247d23872384..a1c10a9a86f8 100644
--- a/arch/arm/boot/dts/exynos54xx.dtsi
+++ b/arch/arm/boot/dts/exynos54xx.dtsi
@@ -67,27 +67,24 @@
 		mct: timer@101c0000 {
 			compatible = "samsung,exynos4210-mct";
 			reg = <0x101c0000 0xb00>;
-			interrupt-parent = <&mct_map>;
+			#address-cells = <0>;
+			#size-cells = <0>;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&mct>;
 			interrupts = <0>, <1>, <2>, <3>, <4>, <5>, <6>, <7>,
-					<8>, <9>, <10>, <11>;
-
-			mct_map: mct-map {
-				#interrupt-cells = <1>;
-				#address-cells = <0>;
-				#size-cells = <0>;
-				interrupt-map = <0 &combiner 23 3>,
-						<1 &combiner 23 4>,
-						<2 &combiner 25 2>,
-						<3 &combiner 25 3>,
-						<4 &gic 0 120 IRQ_TYPE_LEVEL_HIGH>,
-						<5 &gic 0 121 IRQ_TYPE_LEVEL_HIGH>,
-						<6 &gic 0 122 IRQ_TYPE_LEVEL_HIGH>,
-						<7 &gic 0 123 IRQ_TYPE_LEVEL_HIGH>,
-						<8 &gic 0 128 IRQ_TYPE_LEVEL_HIGH>,
-						<9 &gic 0 129 IRQ_TYPE_LEVEL_HIGH>,
-						<10 &gic 0 130 IRQ_TYPE_LEVEL_HIGH>,
-						<11 &gic 0 131 IRQ_TYPE_LEVEL_HIGH>;
-			};
+				     <8>, <9>, <10>, <11>;
+			interrupt-map = <0 &combiner 23 3>,
+					<1 &combiner 23 4>,
+					<2 &combiner 25 2>,
+					<3 &combiner 25 3>,
+					<4 &gic 0 120 IRQ_TYPE_LEVEL_HIGH>,
+					<5 &gic 0 121 IRQ_TYPE_LEVEL_HIGH>,
+					<6 &gic 0 122 IRQ_TYPE_LEVEL_HIGH>,
+					<7 &gic 0 123 IRQ_TYPE_LEVEL_HIGH>,
+					<8 &gic 0 128 IRQ_TYPE_LEVEL_HIGH>,
+					<9 &gic 0 129 IRQ_TYPE_LEVEL_HIGH>,
+					<10 &gic 0 130 IRQ_TYPE_LEVEL_HIGH>,
+					<11 &gic 0 131 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		watchdog: watchdog@101d0000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
