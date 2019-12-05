Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF0211421F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:00:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JAqumVvgeusuaBUQSiR73iR0NothI7VaQ0YbG9NG0N4=; b=cB4u8vioEMsTrSbWAnWnPuChb1
	3XAeXJkJhZIf4az+PzTcDvwgjSTY191ZsnRfNNpCmhaOLvmK+6GwvIHX+6tvLUvN3s3+2hNsyHukN
	9riTsI0P5SPDwLBJSgUrhUD5UyKx9zfTx/46gQXOMSTo0irMu4r66FsH4QO8EnL8pV8vbm0jhfgLo
	1IQZN6bFbUPqXXLRNRG1EmjPO3LloytipuY+w3ccjkEwy3yHikpGzSGwyBYanM8480BKhTFXfcU9G
	5DxPs42sn6bfstnRXcd3zylwTdLDQk2DbPqh7KPygWlk3CcWygM+QH8oy5HJTFW+J9UMXBhr0o6f3
	v8Vetsow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icrgQ-000166-9s; Thu, 05 Dec 2019 14:00:42 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icrfX-0007g6-6R
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 13:59:49 +0000
Received: from ramsan ([84.195.182.253]) by laurent.telenet-ops.be with bizsmtp
 id aDzY210075USYZQ01DzYQ8; Thu, 05 Dec 2019 14:59:36 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1icrfI-0002Kr-1D; Thu, 05 Dec 2019 14:59:32 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1icrfI-0001x6-01; Thu, 05 Dec 2019 14:59:32 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH 1/6] arm64: dts: renesas: r8a77961: Add RWDT node
Date: Thu,  5 Dec 2019 14:59:25 +0100
Message-Id: <20191205135930.7454-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191205135930.7454-1-geert+renesas@glider.be>
References: <20191205135930.7454-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_055947_393550_76142635 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a device node for the RCLK Watchdog Timer (RWDT) on the Renesas
R-Car M3-W+ (r8a77961) SoC.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Test procedure:
  1. "cat > /dev/watchdog",
  2. Wait 60s for reboot.
---
 arch/arm64/boot/dts/renesas/r8a77961.dtsi | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77961.dtsi b/arch/arm64/boot/dts/renesas/r8a77961.dtsi
index 64466c86b698826d..ea2c6445977f3d99 100644
--- a/arch/arm64/boot/dts/renesas/r8a77961.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77961.dtsi
@@ -319,8 +319,13 @@
 		ranges;
 
 		rwdt: watchdog@e6020000 {
+			compatible = "renesas,r8a77961-wdt",
+				     "renesas,rcar-gen3-wdt";
 			reg = <0 0xe6020000 0 0x0c>;
-			/* placeholder */
+			clocks = <&cpg CPG_MOD 402>;
+			power-domains = <&sysc R8A77961_PD_ALWAYS_ON>;
+			resets = <&cpg 402>;
+			status = "disabled";
 		};
 
 		gpio2: gpio@e6052000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
