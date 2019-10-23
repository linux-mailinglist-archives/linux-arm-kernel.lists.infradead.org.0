Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47641E1A52
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=95qNprPvs/Vsv2zdtbTtHdQMotr0Zkhp6LdFeKUULcU=; b=gXkoNJ8ujh3pLY0Byv9f/Gm5Jr
	B0bQDr7Ytqj7TtZEh+yzWGzuABUqJVufzFboo3MZjam5erh5D3IeaVpcJk/AQbA3iHAOYcq4UhHXq
	XOuVXdgtUY9A+ybETNbB2AUkqSkq71Z5EB7lccDlqelizbDOQ7qQdvX4jEFD5DyxQ0LTOBj9VmqSn
	NR7tC9x0uGNep8+2BBNKmyaidFSuM+5Xvmr82nMJsulL0A0xR/0nr1vTg1qYAZuilLNBPV40kkhbV
	7muVPWhuJcMA3hklzsQ7CrmJh1EtMUpbzi9S3e9sFbwzLgQ8PRWk7eG0ZKSwdutrZhBXbetuFWAVl
	U5RfLv3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFo9-00054m-QY; Wed, 23 Oct 2019 12:32:09 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFlq-00022h-NS
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:29:48 +0000
Received: from ramsan ([84.194.98.4]) by xavier.telenet-ops.be with bizsmtp
 id H0Vl2100V05gfCL010VlWv; Wed, 23 Oct 2019 14:29:46 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFlp-0000eP-Qu; Wed, 23 Oct 2019 14:29:45 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFlp-0003Dw-Pv; Wed, 23 Oct 2019 14:29:45 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/4] dt-bindings: clock: renesas: cpg-mssr: Document
 r8a77961 support
Date: Wed, 23 Oct 2019 14:29:38 +0200
Message-Id: <20191023122941.12342-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023122941.12342-1-geert+renesas@glider.be>
References: <20191023122941.12342-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_052946_960370_0B4966CE 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
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
 linux-renesas-soc@vger.kernel.org, Eugeniu Rosca <erosca@de.adit-jv.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT binding documentation for the Clock Pulse Generator / Module
Standby and Software Reset block in the Renesas R-Car M3-W+ (R8A77961)
SoC.

Update all references to R-Car M3-W from "r8a7796" to "r8a77960", to
avoid confusion between R-Car M3-W (R8A77960) and M3-W+.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
v2:
  - Add Reviewed-by,
  - Update R-Car M3-W references.
---
 .../devicetree/bindings/clock/renesas,cpg-mssr.txt    | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.txt b/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.txt
index b5edebeb12b40638..d67f57e0dfd22fbe 100644
--- a/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.txt
+++ b/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.txt
@@ -27,7 +27,8 @@ Required Properties:
       - "renesas,r8a7793-cpg-mssr" for the r8a7793 SoC (R-Car M2-N)
       - "renesas,r8a7794-cpg-mssr" for the r8a7794 SoC (R-Car E2)
       - "renesas,r8a7795-cpg-mssr" for the r8a7795 SoC (R-Car H3)
-      - "renesas,r8a7796-cpg-mssr" for the r8a7796 SoC (R-Car M3-W)
+      - "renesas,r8a7796-cpg-mssr" for the r8a77960 SoC (R-Car M3-W)
+      - "renesas,r8a77961-cpg-mssr" for the r8a77961 SoC (R-Car M3-W+)
       - "renesas,r8a77965-cpg-mssr" for the r8a77965 SoC (R-Car M3-N)
       - "renesas,r8a77970-cpg-mssr" for the r8a77970 SoC (R-Car V3M)
       - "renesas,r8a77980-cpg-mssr" for the r8a77980 SoC (R-Car V3H)
@@ -42,10 +43,10 @@ Required Properties:
   - clock-names: List of external parent clock names. Valid names are:
       - "extal" (r7s9210, r8a7743, r8a7744, r8a7745, r8a77470, r8a774a1,
 		 r8a774b1, r8a774c0, r8a7790, r8a7791, r8a7792, r8a7793,
-		 r8a7794, r8a7795, r8a7796, r8a77965, r8a77970, r8a77980,
-		 r8a77990, r8a77995)
-      - "extalr" (r8a774a1, r8a774b1, r8a7795, r8a7796, r8a77965, r8a77970,
-		  r8a77980)
+		 r8a7794, r8a7795, r8a77960, r8a77961, r8a77965, r8a77970,
+		 r8a77980, r8a77990, r8a77995)
+      - "extalr" (r8a774a1, r8a774b1, r8a7795, r8a77960, r8a77961, r8a77965,
+		  r8a77970, r8a77980)
       - "usb_extal" (r8a7743, r8a7744, r8a7745, r8a77470, r8a7790, r8a7791,
 		     r8a7793, r8a7794)
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
