Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EDD1D93DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cbmpctOrmoNcrCNojnUa+8Igl0apxWzrXGAUYybRfRY=; b=uTm
	A4iNWf0BbFVt5aoOSQYBcb5DKc7kMD2wcOgalIOyhB4dimiHWk4JsNFa3rSy2Wi+/Y1mIf1ZSFjjG
	RqfhBI1jPvV4+9hpce548ENCGkG0vCZSGPszhA4FICFRpk3jeNk87knpRw+FyrWZSO+4s/90jeH3C
	826nZAiVy7fJhaZqYc8fcCWt7odL8ibqwYMSgGk4InREj1rBdBtwH8s1RERidb3d1ViDgJgYMUc/3
	hicJnUr35HIIPSVTy59NQdlajsNjs1pGl/zxe+bHLSvRKSEX2ITUkzeGCoovmuP9hBA/kv3/hrNBe
	qRXzSoeVFAb73HxQOtdtoC6sf/eWfcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayy0-0008UE-Fr; Tue, 19 May 2020 09:55:20 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayxa-0008Pm-V5
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:54:56 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:918e:b928:22c1:d715])
 by michel.telenet-ops.be with bizsmtp
 id gZuY2200L4CPMDc06ZuYlg; Tue, 19 May 2020 11:54:38 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jayxE-0004yB-7b; Tue, 19 May 2020 11:54:32 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jayxE-0001Tr-4y; Tue, 19 May 2020 11:54:32 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH] ARM: dts: r9a06g032: Correct GIC compatible value order
Date: Tue, 19 May 2020 11:54:31 +0200
Message-Id: <20200519095431.5650-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_025455_210228_EF1B8D12 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org,
 =?UTF-8?q?Andr=C3=A9=20Przywara?= <andre.przywara@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to commit 61efb56e30f1c54e ("dt-bindings: arm: gic: Allow
combining arm,gic-400 compatible strings"), "arm,gic-400" should be
listed first.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Aforementioned commit is in robh/for-next.
---
 arch/arm/boot/dts/r9a06g032.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/r9a06g032.dtsi b/arch/arm/boot/dts/r9a06g032.dtsi
index 4c1ab49c7d39aeed..ee59cc84f2121488 100644
--- a/arch/arm/boot/dts/r9a06g032.dtsi
+++ b/arch/arm/boot/dts/r9a06g032.dtsi
@@ -174,7 +174,7 @@
 		};
 
 		gic: interrupt-controller@44101000 {
-			compatible = "arm,cortex-a7-gic", "arm,gic-400";
+			compatible = "arm,gic-400", "arm,cortex-a7-gic";
 			interrupt-controller;
 			#interrupt-cells = <3>;
 			reg = <0x44101000 0x1000>, /* Distributer */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
