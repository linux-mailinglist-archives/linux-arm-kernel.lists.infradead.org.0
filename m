Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7751813A406
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 10:43:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GE3c6S3smymQh9xCwZFHUK1glsI0alo9ugJ9c3feUIM=; b=WLJf1znkBVVI1E
	GYYVY+5Q5EF3hwqGo7a2L1k0/McTkZbmPLPuDMRk6Ko+3xgZyeiQdOLIEqR8J5A6RQNjy17cDNl1A
	lAkLTaYVPWpjxEjK1gt+05NYE4xth/5V1z9hyRvzxY3o+m3gFeQw3kAmBj7bCisi/ksJ8ElsD9gQ1
	E4+mAhyEqMsz8rt6zSVAFkYZquF3P8r+sTJ1tdYC6KHKmB/HCZiajt5JOZm0aQ8U5kyA8Wu/A440P
	eQnp9qsZSt8qHeGeZ84QYnL5hLExBeElUIJC60yVr/Y65IGnIXo2XphMd2DFeLLirxYLSoG5qyKAk
	V/gvZHT8flzRoqfILlUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irIjD-0006AD-RY; Tue, 14 Jan 2020 09:43:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irIiz-00069N-TG
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 09:43:06 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AF052084D;
 Tue, 14 Jan 2020 09:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578994980;
 bh=ZY32olhBC9Vu8GoFnoJlyKFKyLmpEDns5sByfyxWduo=;
 h=From:To:Cc:Subject:Date:From;
 b=J0meMBCO3EIcNZcCnTo3GjEw6jIjd/3BjqmkWnaw4uxOrcVNa27MEziWkOR6idYlY
 fukBMrgtxqNzPUPw1yUafxPOgrX/CUbMLrp1qe+DZHx6tAUmFR/a4RtlEq1WLVXWnW
 r+dv808jcPRdMXdnJvGTpLhxqpEmRnjm+2fsvM1o=
Received: by wens.tw (Postfix, from userid 1000)
 id 1F57B5FC9E; Tue, 14 Jan 2020 17:42:58 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH] ARM: dts: sun8i: a83t: Fix incorrect clk and reset macros for
 EMAC device
Date: Tue, 14 Jan 2020 17:42:52 +0800
Message-Id: <20200114094252.8908-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_014301_967587_B82EF740 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

When the raw numbers used for clk and reset indices in the EMAC device
node were converted to the new macros, the order of the clk and reset
properties was overlooked, and thus the incorrect macros were used.
This results in the EMAC being non-responsive, as well as an oops due
to incorrect usage of the reset control.

Correct the macro types, and also reorder the clk and reset properties
to match all the other device nodes.

Fixes: 765866edb16a ("ARM: dts: sunxi: Use macros for references to CCU clocks")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---

Error on my part. Hope no one was affected for too long.

---
 arch/arm/boot/dts/sun8i-a83t.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 74ac7ee9383c..e7b9bef1be6b 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -1006,10 +1006,10 @@ emac: ethernet@1c30000 {
 			reg = <0x01c30000 0x104>;
 			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
-			resets = <&ccu CLK_BUS_EMAC>;
-			reset-names = "stmmaceth";
-			clocks = <&ccu RST_BUS_EMAC>;
+			clocks = <&ccu CLK_BUS_EMAC>;
 			clock-names = "stmmaceth";
+			resets = <&ccu RST_BUS_EMAC>;
+			reset-names = "stmmaceth";
 			status = "disabled";
 
 			mdio: mdio {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
