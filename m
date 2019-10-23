Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB3CE1A7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QIGzwXLah9eHGiFwDch72G0c+mH/WY06jyYtriHVgoI=; b=b1gig4NXzOKOI8rJuumsMHeBfA
	N/zDqOdaLd0Eh8ggSlWkopih7tAuRNIEJULqFSRd4WakMIKY52J/fbDICids8VdvnP27JyJU2q+wx
	SIvWvNVsojWZ/jSFRn+Yo8AG1TpX6ieXV2qWbzcRLsRGR6xYfNHufeFWnrN1B1uu8gL7s1d/Xv+yM
	k7kWVyov00+PjezUvFXsFRahMjglTVYLqM791rrNBclf9IfT3yf3sjr2QigJWtiryQ7JMTtvYg136
	NZTCK56QTTrKaFGrRL93ShPLWNKNeDvHx6aX8DkCEPIomG1UoiLJZtpRjz8pk7WLJmhPMiiRBsqHW
	9aRFh40w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFpP-0006C2-2r; Wed, 23 Oct 2019 12:33:27 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFm3-0002Hw-9k
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:30:01 +0000
Received: from ramsan ([84.194.98.4]) by laurent.telenet-ops.be with bizsmtp
 id H0Vy2100v05gfCL010Vyvz; Wed, 23 Oct 2019 14:29:58 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFm2-0000p0-Ip; Wed, 23 Oct 2019 14:29:58 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFm2-0003F8-Hc; Wed, 23 Oct 2019 14:29:58 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/3] dt-bindings: pinctrl: sh-pfc: Document r8a77961 support
Date: Wed, 23 Oct 2019 14:29:53 +0200
Message-Id: <20191023122955.12420-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023122955.12420-1-geert+renesas@glider.be>
References: <20191023122955.12420-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_052959_513308_A03C55BD 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT binding documentation for the Pin Function Controller in the
Renesas R-Car M3-W+ (R8A77961) SoC.

Update all references to R-Car M3-W from "r8a7796" to "r8a77960", to
avoid confusion between R-Car M3-W (R8A77960) and M3-W+.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
v2:
  - Add Reviewed-by,
  - Update R-Car M3-W references.
---
 .../devicetree/bindings/pinctrl/renesas,pfc-pinctrl.txt        | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,pfc-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/renesas,pfc-pinctrl.txt
index c1b9eb4c8696d547..6eada23eaa31e430 100644
--- a/Documentation/devicetree/bindings/pinctrl/renesas,pfc-pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/renesas,pfc-pinctrl.txt
@@ -28,7 +28,8 @@ Required Properties:
     - "renesas,pfc-r8a7793": for R8A7793 (R-Car M2-N) compatible pin-controller.
     - "renesas,pfc-r8a7794": for R8A7794 (R-Car E2) compatible pin-controller.
     - "renesas,pfc-r8a7795": for R8A7795 (R-Car H3) compatible pin-controller.
-    - "renesas,pfc-r8a7796": for R8A7796 (R-Car M3-W) compatible pin-controller.
+    - "renesas,pfc-r8a7796": for R8A77960 (R-Car M3-W) compatible pin-controller.
+    - "renesas,pfc-r8a77961": for R8A77961 (R-Car M3-W+) compatible pin-controller.
     - "renesas,pfc-r8a77965": for R8A77965 (R-Car M3-N) compatible pin-controller.
     - "renesas,pfc-r8a77970": for R8A77970 (R-Car V3M) compatible pin-controller.
     - "renesas,pfc-r8a77980": for R8A77980 (R-Car V3H) compatible pin-controller.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
