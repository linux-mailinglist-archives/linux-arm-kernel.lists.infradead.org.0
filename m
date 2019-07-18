Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 323DC6D015
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 16:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=C3y/rI6YwJsieRcUfdBsYHsO0SLT129p39YBHZ1T5k8=; b=rlQ
	IsfXBppZtZNstcEPRWrDqdhk8nuQswQlWjw277XeCc6P9jhbIVylqBGJSq2nAjoSodEA09bNLgEAn
	U0BP3FvU4/KcPdtNIuPZUiY6PJsQtmo5cfP/OnsdhpGhdxXZdf81MMEZmieKJC3HISO2L2L2pEhR9
	znVcGSegitb8USXhl0fMtCdJaFYM8dokU0YvqDe/p0CpQP6HD4cL1uUm8HYlkcqemsHGsJji8zRX0
	aqCBOS3yIyId5Zva0xPiaAWDY0kJ6/lyeN8YBLqp/sb31GhaB3w1DOZNA6r8/NClGzjj2NjrGC9qC
	VjG2yjtbCb6ZEJ701pGH4lIK9lpy2vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho7fZ-00035o-AA; Thu, 18 Jul 2019 14:46:05 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho7fJ-000351-OW
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 14:45:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id m9so13940394pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 07:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=22TP+EsS0qrsFEK5vjA0k+YJKse/UutvNeSo8BDeRck=;
 b=lrzfvMfq0Wn6uPPxUAI16+Mhq1kbQgZwCQwNGxf9YOhdDKn/d/7r/8FDXqzqN+H6bZ
 URKAG3mJ5ZTBquF+kZyWSKEH7hmFBNl9vjCYc2A/X77YvcehVmWOWEUXmEMhu+/VQO7l
 H8jA/82EN6hTJx0vKlgjbwL051yGP6EMfocNmuvDQajXQrYhcMlOnmQ1epmfkW9ibBsC
 NXrNjptBPFjwj1aDKgsk3kYjU8ebEGMlHQLYy20Yu1yaAp8+ouxxFb95lAoQvy/BkRK7
 y9rhy9T+ZxZccSqKhsJkIHjpC8xPl47xr0MjIy7e/t8t/XTc7haHVFu3hOzgY6m2llhk
 iaGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=22TP+EsS0qrsFEK5vjA0k+YJKse/UutvNeSo8BDeRck=;
 b=ZUcE0a9EwyTma38kIVQfeCzaWop2YEOXEPf8dShTC3AcP2bxoRJQRYJVE9MA2V2pb9
 MSa2m8+85qnZLUHahSEFB2KUs/mexOM06TODBkEYgqZ4qIdq26sBgMsGIKcbj8W8a61u
 Z4MO6euBUijFTrTqTC+G4fcVV/Wy0FBjSlJKtNpomEH3p0So0SfG1zmA5YTfNyn5J7Tc
 g+vir9+my7EHyVtwYSfDYGrfqqNHWukCPA3O+8Ddqyq+bRnYfDf1o2oBDpeDniCCnrEw
 YKhHPwWkx1bwrh5VmTbXxtL3Pd/Ond//VjRgaex02RzO9/5PE0mc9MZlF5Y3FnsktM6a
 X7QA==
X-Gm-Message-State: APjAAAVEKVUutkulFmSVPZcLb/3Ycf+AXGyYxjMdlGxyfY83QaWixhY5
 Oj7z8I0IZHtMtP8WryBNqak=
X-Google-Smtp-Source: APXvYqwbf0H2fddRVcNiWnbsXXoqJEUkE9n3Hz/2+0dhQWrV1WG45YfEQhXMg09S7AfIpY/Y0dZECQ==
X-Received: by 2002:a17:902:2bcb:: with SMTP id
 l69mr50853234plb.155.1563461149006; 
 Thu, 18 Jul 2019 07:45:49 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id k186sm8478754pga.68.2019.07.18.07.45.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 18 Jul 2019 07:45:48 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a77965: sort nodes
Date: Thu, 18 Jul 2019 23:45:37 +0900
Message-Id: <1563461137-19827-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_074549_795905_F0A3160F 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort nodes.

If node address is present
   * Sort by node address, grouping all nodes with the same compat string
     and sorting the group alphabetically.
Else
   * Sort alphabetically

This should not have any run-time effect.

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the devel branch of Simon Horman's renesas tree.

 arch/arm64/boot/dts/renesas/r8a77965.dtsi | 48 +++++++++++++++----------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77965.dtsi b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
index 131f895..09e4f52 100644
--- a/arch/arm64/boot/dts/renesas/r8a77965.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
@@ -2255,14 +2255,6 @@
 			renesas,fcp = <&fcpvb0>;
 		};
 
-		fcpvb0: fcp@fe96f000 {
-			compatible = "renesas,fcpv";
-			reg = <0 0xfe96f000 0 0x200>;
-			clocks = <&cpg CPG_MOD 607>;
-			power-domains = <&sysc R8A77965_PD_A3VP>;
-			resets = <&cpg 607>;
-		};
-
 		vspi0: vsp@fe9a0000 {
 			compatible = "renesas,vsp2";
 			reg = <0 0xfe9a0000 0 0x8000>;
@@ -2274,14 +2266,6 @@
 			renesas,fcp = <&fcpvi0>;
 		};
 
-		fcpvi0: fcp@fe9af000 {
-			compatible = "renesas,fcpv";
-			reg = <0 0xfe9af000 0 0x200>;
-			clocks = <&cpg CPG_MOD 611>;
-			power-domains = <&sysc R8A77965_PD_A3VP>;
-			resets = <&cpg 611>;
-		};
-
 		vspd0: vsp@fea20000 {
 			compatible = "renesas,vsp2";
 			reg = <0 0xfea20000 0 0x5000>;
@@ -2293,14 +2277,6 @@
 			renesas,fcp = <&fcpvd0>;
 		};
 
-		fcpvd0: fcp@fea27000 {
-			compatible = "renesas,fcpv";
-			reg = <0 0xfea27000 0 0x200>;
-			clocks = <&cpg CPG_MOD 603>;
-			power-domains = <&sysc R8A77965_PD_ALWAYS_ON>;
-			resets = <&cpg 603>;
-		};
-
 		vspd1: vsp@fea28000 {
 			compatible = "renesas,vsp2";
 			reg = <0 0xfea28000 0 0x5000>;
@@ -2312,6 +2288,22 @@
 			renesas,fcp = <&fcpvd1>;
 		};
 
+		fcpvb0: fcp@fe96f000 {
+			compatible = "renesas,fcpv";
+			reg = <0 0xfe96f000 0 0x200>;
+			clocks = <&cpg CPG_MOD 607>;
+			power-domains = <&sysc R8A77965_PD_A3VP>;
+			resets = <&cpg 607>;
+		};
+
+		fcpvd0: fcp@fea27000 {
+			compatible = "renesas,fcpv";
+			reg = <0 0xfea27000 0 0x200>;
+			clocks = <&cpg CPG_MOD 603>;
+			power-domains = <&sysc R8A77965_PD_ALWAYS_ON>;
+			resets = <&cpg 603>;
+		};
+
 		fcpvd1: fcp@fea2f000 {
 			compatible = "renesas,fcpv";
 			reg = <0 0xfea2f000 0 0x200>;
@@ -2320,6 +2312,14 @@
 			resets = <&cpg 602>;
 		};
 
+		fcpvi0: fcp@fe9af000 {
+			compatible = "renesas,fcpv";
+			reg = <0 0xfe9af000 0 0x200>;
+			clocks = <&cpg CPG_MOD 611>;
+			power-domains = <&sysc R8A77965_PD_A3VP>;
+			resets = <&cpg 611>;
+		};
+
 		csi20: csi2@fea80000 {
 			compatible = "renesas,r8a77965-csi2";
 			reg = <0 0xfea80000 0 0x10000>;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
