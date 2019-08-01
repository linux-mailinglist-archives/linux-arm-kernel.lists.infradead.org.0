Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 334EC7DDDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:25:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XRqDfV9QHn6k+1UHX2irLDeChAZe4nccl0vnToi/8YM=; b=e2K
	nG3eVEopig54Sehup/PlOENeoQgg1gXrRFD2vE5IW1di9ACmXp3W2DgJ8hAaFTbGchYRcvBXexs6U
	5rCAm6LIW4UtcQchzZTaewPlJW/2wdj2CIVkekLdTy0sZWDBPpU1UmRle18R0bK+ELxp7PJNGdIhb
	jAEE0O82msiCjpkaa2za36fwI6GaU85UscaIRZVNdvTHEz+pjrXZOyAYk6LH5H10oCvtgZJRYdfB3
	zZ177+madJ/aah0lWoLZkcGAr8S4v2VKfETEMS8vKB5WhWsOomuC8yCXRoBCAvW7ThESLttquasLl
	ihtbDUk9zV+HmuI96VbhT5asfe8deuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htC1N-0001qU-Pb; Thu, 01 Aug 2019 14:25:33 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htC1B-0001oY-TG
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:25:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id m30so34183548pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 07:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=eawaJmlmdDHURoGKBRWYUt94TqnnyTuVqmRFGluvMdw=;
 b=GXHFrZSQ/x87ASlCkbnVK2XtNHcMTdoqDQ34w8vIwnexdEdoOFYYfNr/QTA5HotTzk
 I7RUcyuhBrG9swmx3MEz2IhPnfNe43XwbOwZHB4AKRHzYuscrsUlYRBQxEakTqWbA937
 rNH1OQb5vtPDJgrPSnnvQYpsNsbJyjBLd6SAJZsi7B9WbKAfZK8HP+5mM5eW3Rm9GNyk
 Z8Zw1UgwrPkWhHYcnn6s8rnIGV7QdHzLftXF8CP9XyeabhHDq9Pnf5CuR/TvTkIQRDK0
 zZzaJLUqFw7lNHozh3cyzS21vQwPvIX3/QHYgJ7L5uqbeuqD/bENuEM4Nu7zbX3++tWa
 nNqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=eawaJmlmdDHURoGKBRWYUt94TqnnyTuVqmRFGluvMdw=;
 b=Lc4FNA6b/pYVmH8wPgHzGdvYbtPloiyCEZuO0ibKytRK3VUkiaaXwevL7h5BlRwafF
 ZzkXnNMkqgK4gHmRAMPBhlb+N+khV6nARdfWa6e0LT8DU7TaKYtRYrUUO5eVEBJJmnq9
 DPXBhUq23ffzrrQ4hFu5eU9WRQzHfFBGqNu5mMZ0BalUmnceU88/eRhU72Os9rTyY8+c
 1n1XTFHEiMsk+reRZZH4k2QnXOpa2FkEJub7V5RLwawNdVt14f3zA3YGh/CwuQNV3b79
 2hmxzWPIUHdv6gt3ZfavOlXB1XmWYsTRP98ch5/usZGfeBHXOKPTvU1j/UX9dYOAQUG6
 Ibuw==
X-Gm-Message-State: APjAAAUSGX+PjWaIdhHFedwysJOr4P9SAJKoVopht4J58upcIe6MQ1DH
 moMiRv2t0Epjnpg0bN+YyPs=
X-Google-Smtp-Source: APXvYqz/zl/HOQ3KWjDcDXRPmGAGYIdKDuiYamDdsJho904JPyRdqObLf6F4Qh1+o2y1n9aEvrVHuQ==
X-Received: by 2002:a63:b102:: with SMTP id r2mr48732100pgf.370.1564669521432; 
 Thu, 01 Aug 2019 07:25:21 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id o24sm137026149pfp.135.2019.08.01.07.25.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 07:25:20 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a77995: sort nodes
Date: Thu,  1 Aug 2019 23:25:13 +0900
Message-Id: <1564669513-22756-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_072521_978358_E27ED1C4 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This patch is based on the master branch of Geert Uytterhoeven's renesas-devel
tree.

 arch/arm64/boot/dts/renesas/r8a77995.dtsi | 76 +++++++++++++++----------------
 1 file changed, 38 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77995.dtsi b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
index bcd5442..b3dbf55 100644
--- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
@@ -242,41 +242,6 @@
 			resets = <&cpg 407>;
 		};
 
-		hscif0: serial@e6540000 {
-			compatible = "renesas,hscif-r8a77995",
-				     "renesas,rcar-gen3-hscif",
-				     "renesas,hscif";
-			reg = <0 0xe6540000 0 0x60>;
-			interrupts = <GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cpg CPG_MOD 520>,
-				 <&cpg CPG_CORE R8A77995_CLK_S3D1C>,
-				 <&scif_clk>;
-			clock-names = "fck", "brg_int", "scif_clk";
-			dmas = <&dmac1 0x31>, <&dmac1 0x30>,
-			       <&dmac2 0x31>, <&dmac2 0x30>;
-			dma-names = "tx", "rx", "tx", "rx";
-			power-domains = <&sysc R8A77995_PD_ALWAYS_ON>;
-			resets = <&cpg 520>;
-			status = "disabled";
-		};
-
-		hscif3: serial@e66a0000 {
-			compatible = "renesas,hscif-r8a77995",
-				     "renesas,rcar-gen3-hscif",
-				     "renesas,hscif";
-			reg = <0 0xe66a0000 0 0x60>;
-			interrupts = <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&cpg CPG_MOD 517>,
-				 <&cpg CPG_CORE R8A77995_CLK_S3D1C>,
-				 <&scif_clk>;
-			clock-names = "fck", "brg_int", "scif_clk";
-			dmas = <&dmac0 0x37>, <&dmac0 0x36>;
-			dma-names = "tx", "rx";
-			power-domains = <&sysc R8A77995_PD_ALWAYS_ON>;
-			resets = <&cpg 517>;
-			status = "disabled";
-		};
-
 		i2c0: i2c@e6500000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -344,6 +309,41 @@
 			status = "disabled";
 		};
 
+		hscif0: serial@e6540000 {
+			compatible = "renesas,hscif-r8a77995",
+				     "renesas,rcar-gen3-hscif",
+				     "renesas,hscif";
+			reg = <0 0xe6540000 0 0x60>;
+			interrupts = <GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 520>,
+				 <&cpg CPG_CORE R8A77995_CLK_S3D1C>,
+				 <&scif_clk>;
+			clock-names = "fck", "brg_int", "scif_clk";
+			dmas = <&dmac1 0x31>, <&dmac1 0x30>,
+			       <&dmac2 0x31>, <&dmac2 0x30>;
+			dma-names = "tx", "rx", "tx", "rx";
+			power-domains = <&sysc R8A77995_PD_ALWAYS_ON>;
+			resets = <&cpg 520>;
+			status = "disabled";
+		};
+
+		hscif3: serial@e66a0000 {
+			compatible = "renesas,hscif-r8a77995",
+				     "renesas,rcar-gen3-hscif",
+				     "renesas,hscif";
+			reg = <0 0xe66a0000 0 0x60>;
+			interrupts = <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 517>,
+				 <&cpg CPG_CORE R8A77995_CLK_S3D1C>,
+				 <&scif_clk>;
+			clock-names = "fck", "brg_int", "scif_clk";
+			dmas = <&dmac0 0x37>, <&dmac0 0x36>;
+			dma-names = "tx", "rx";
+			power-domains = <&sysc R8A77995_PD_ALWAYS_ON>;
+			resets = <&cpg 517>;
+			status = "disabled";
+		};
+
 		hsusb: usb@e6590000 {
 			compatible = "renesas,usbhs-r8a77995",
 				     "renesas,rcar-gen3-usbhs";
@@ -1100,6 +1100,9 @@
 			polling-delay = <1000>;
 			thermal-sensors = <&thermal>;
 
+			cooling-maps {
+			};
+
 			trips {
 				cpu-crit {
 					temperature = <120000>;
@@ -1107,9 +1110,6 @@
 					type = "critical";
 				};
 			};
-
-			cooling-maps {
-			};
 		};
 	};
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
