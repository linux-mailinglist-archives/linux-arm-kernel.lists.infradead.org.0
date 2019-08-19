Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45166923EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 14:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CpQ3ztJ7uwifMNrfuyVhXmIxVY/DLuFe1x2WkQHOb7U=; b=BHM
	xOtw57kkGsOn47UUYJHHefxBAvE5sQzC9iHHp/sGoa+kJwfNz7g4Ab2KsqQRyFTWC//8MLFHVV9D4
	fsuYKBUclCLZbyMUBx0A/btvIqRO/7G4at4y2CnT6gmgJgZnP0iPuUm9UpwfU9ZbmZtaB/qYgmf7g
	xaxgqTLOKOt5KFZvigzjtuSK/VjjMIvX9x0jloujkCYrRWGItX+VUTtb4I5lwgfsenZb8RN+40MUa
	GvLwIE/sdmepCu4Xn1qHO+uMoFNs57yIARX+BnZxHP/Cfyb5lHmt2qj/jb64LJEZLJRpzkW/tGTrP
	/FklAsQebS12ZVF2O+KiXKr0jbGaDow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhCH-0005n5-Bx; Mon, 19 Aug 2019 12:55:41 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhC9-0005md-L2
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 12:55:35 +0000
Received: by mail-pg1-x542.google.com with SMTP id m3so1168408pgv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 05:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wxLexOtpgiOZUCwyidEYaY3eooecCDD5CLNpFroafaI=;
 b=MP6L1+Ti0g0EfBo4RrkTQ4TUf7oFPj0XE8pqOctRmGvYb8EV2H5jHmOQqUV2pmfDv8
 ssk79pgomUQFl5vm5jY3fNnYGkDp1TTmcoC6n25pbuD4GYeP3Kw3TPK0Ij1nLNd4/Rla
 M78c77eWYj5z4pnfXcj79jOfZHB9HU8ODO8H+udxr5TdkQP3dh/2v+QQpW9TN5SGysCm
 LW2g7MqxJvCbxXfaiRejuf+ljcucb+Rco4pb+SdT+NcGHq/oYZIEf5AIHKKkLCW9do0/
 QcE3BFVEAEY60CbHJhu9YKLoxc1F8lsNUey4yR5oOAReRYUYteGGJ2SIcEMC9ic6baGF
 q7Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wxLexOtpgiOZUCwyidEYaY3eooecCDD5CLNpFroafaI=;
 b=t2UffVm/cXEDHQc1Lk2Y+dCXNlJpY+KX+wn4kvvn0xwfmCprGSOrfcN5CvnJLUqAxj
 Rl8+LAA/IarzULaj2hL9k6KVJR4LW9zE6sdwPcPQSWjgf1lEx4UIzVxo/eG1RVTIn1E5
 9L7WlTJkikZS3Z2RnV8yR66eEGZ3QeM5/cEytLoDS88IC2x3gkvQtAbMDb+5OTKx9IWx
 ol6h8vW/sg/8cbAOJi2XYajkt4oW28aTW/S7SoZsiNuPRivg+IaDG+jp5PHDtF/9j3gX
 oGf653cDPiwrxQ57EB9NzxCnc3aHZMEmKpnQPKkHr2x8eZPndrARLxneCNxpqQUjFR8c
 OWmA==
X-Gm-Message-State: APjAAAXc+6XY1Gh/dvwranUC2JzRiRiVFP7sIcqzlFc86djsZW3I/36Y
 t7yDGB61w8NvxAzQpCTTgtY=
X-Google-Smtp-Source: APXvYqyhDDchMWr1RWUittFEHEHopaQA3ix1MeEU072Be8O/tTlfL0IZKYLZgD/m92nSlltSLeqVVA==
X-Received: by 2002:aa7:8007:: with SMTP id j7mr23790753pfi.154.1566219332838; 
 Mon, 19 Aug 2019 05:55:32 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id i15sm14949839pfd.160.2019.08.19.05.55.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 05:55:32 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a774a1: sort nodes
Date: Mon, 19 Aug 2019 21:54:55 +0900
Message-Id: <1566219295-23003-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_055533_717374_37E483D4 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

 arch/arm64/boot/dts/renesas/r8a774a1.dtsi | 174 +++++++++++++++---------------
 1 file changed, 87 insertions(+), 87 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a774a1.dtsi b/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
index bdb4675..06c7c84 100644
--- a/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a774a1.dtsi
@@ -1726,6 +1726,28 @@
 				      "ssi.1", "ssi.0";
 			status = "disabled";
 
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				port@0 {
+					reg = <0>;
+				};
+				port@1 {
+					reg = <1>;
+				};
+			};
+
+			rcar_sound,ctu {
+				ctu00: ctu-0 { };
+				ctu01: ctu-1 { };
+				ctu02: ctu-2 { };
+				ctu03: ctu-3 { };
+				ctu10: ctu-4 { };
+				ctu11: ctu-5 { };
+				ctu12: ctu-6 { };
+				ctu13: ctu-7 { };
+			};
+
 			rcar_sound,dvc {
 				dvc0: dvc-0 {
 					dmas = <&audma1 0xbc>;
@@ -1742,17 +1764,6 @@
 				mix1: mix-1 { };
 			};
 
-			rcar_sound,ctu {
-				ctu00: ctu-0 { };
-				ctu01: ctu-1 { };
-				ctu02: ctu-2 { };
-				ctu03: ctu-3 { };
-				ctu10: ctu-4 { };
-				ctu11: ctu-5 { };
-				ctu12: ctu-6 { };
-				ctu13: ctu-7 { };
-			};
-
 			rcar_sound,src {
 				src0: src-0 {
 					interrupts = <GIC_SPI 352 IRQ_TYPE_LEVEL_HIGH>;
@@ -1806,6 +1817,59 @@
 				};
 			};
 
+			rcar_sound,ssi {
+				ssi0: ssi-0 {
+					interrupts = <GIC_SPI 370 IRQ_TYPE_LEVEL_HIGH>;
+					dmas = <&audma0 0x01>, <&audma1 0x02>;
+					dma-names = "rx", "tx";
+				};
+				ssi1: ssi-1 {
+					interrupts = <GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH>;
+					dmas = <&audma0 0x03>, <&audma1 0x04>;
+					dma-names = "rx", "tx";
+				};
+				ssi2: ssi-2 {
+					interrupts = <GIC_SPI 372 IRQ_TYPE_LEVEL_HIGH>;
+					dmas = <&audma0 0x05>, <&audma1 0x06>;
+					dma-names = "rx", "tx";
+				};
+				ssi3: ssi-3 {
+					interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH>;
+					dmas = <&audma0 0x07>, <&audma1 0x08>;
+					dma-names = "rx", "tx";
+				};
+				ssi4: ssi-4 {
+					interrupts = <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>;
+					dmas = <&audma0 0x09>, <&audma1 0x0a>;
+					dma-names = "rx", "tx";
+				};
+				ssi5: ssi-5 {
+					interrupts = <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
+					dmas = <&audma0 0x0b>, <&audma1 0x0c>;
+					dma-names = "rx", "tx";
+				};
+				ssi6: ssi-6 {
+					interrupts = <GIC_SPI 376 IRQ_TYPE_LEVEL_HIGH>;
+					dmas = <&audma0 0x0d>, <&audma1 0x0e>;
+					dma-names = "rx", "tx";
+				};
+				ssi7: ssi-7 {
+					interrupts = <GIC_SPI 377 IRQ_TYPE_LEVEL_HIGH>;
+					dmas = <&audma0 0x0f>, <&audma1 0x10>;
+					dma-names = "rx", "tx";
+				};
+				ssi8: ssi-8 {
+					interrupts = <GIC_SPI 378 IRQ_TYPE_LEVEL_HIGH>;
+					dmas = <&audma0 0x11>, <&audma1 0x12>;
+					dma-names = "rx", "tx";
+				};
+				ssi9: ssi-9 {
+					interrupts = <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH>;
+					dmas = <&audma0 0x13>, <&audma1 0x14>;
+					dma-names = "rx", "tx";
+				};
+			};
+
 			rcar_sound,ssiu {
 				ssiu00: ssiu-0 {
 					dmas = <&audma0 0x15>, <&audma1 0x16>;
@@ -2016,70 +2080,6 @@
 					dma-names = "rx", "tx";
 				};
 			};
-
-			rcar_sound,ssi {
-				ssi0: ssi-0 {
-					interrupts = <GIC_SPI 370 IRQ_TYPE_LEVEL_HIGH>;
-					dmas = <&audma0 0x01>, <&audma1 0x02>;
-					dma-names = "rx", "tx";
-				};
-				ssi1: ssi-1 {
-					interrupts = <GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH>;
-					dmas = <&audma0 0x03>, <&audma1 0x04>;
-					dma-names = "rx", "tx";
-				};
-				ssi2: ssi-2 {
-					interrupts = <GIC_SPI 372 IRQ_TYPE_LEVEL_HIGH>;
-					dmas = <&audma0 0x05>, <&audma1 0x06>;
-					dma-names = "rx", "tx";
-				};
-				ssi3: ssi-3 {
-					interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH>;
-					dmas = <&audma0 0x07>, <&audma1 0x08>;
-					dma-names = "rx", "tx";
-				};
-				ssi4: ssi-4 {
-					interrupts = <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>;
-					dmas = <&audma0 0x09>, <&audma1 0x0a>;
-					dma-names = "rx", "tx";
-				};
-				ssi5: ssi-5 {
-					interrupts = <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
-					dmas = <&audma0 0x0b>, <&audma1 0x0c>;
-					dma-names = "rx", "tx";
-				};
-				ssi6: ssi-6 {
-					interrupts = <GIC_SPI 376 IRQ_TYPE_LEVEL_HIGH>;
-					dmas = <&audma0 0x0d>, <&audma1 0x0e>;
-					dma-names = "rx", "tx";
-				};
-				ssi7: ssi-7 {
-					interrupts = <GIC_SPI 377 IRQ_TYPE_LEVEL_HIGH>;
-					dmas = <&audma0 0x0f>, <&audma1 0x10>;
-					dma-names = "rx", "tx";
-				};
-				ssi8: ssi-8 {
-					interrupts = <GIC_SPI 378 IRQ_TYPE_LEVEL_HIGH>;
-					dmas = <&audma0 0x11>, <&audma1 0x12>;
-					dma-names = "rx", "tx";
-				};
-				ssi9: ssi-9 {
-					interrupts = <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH>;
-					dmas = <&audma0 0x13>, <&audma1 0x14>;
-					dma-names = "rx", "tx";
-				};
-			};
-
-			ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				port@0 {
-					reg = <0>;
-				};
-				port@1 {
-					reg = <1>;
-				};
-			};
 		};
 
 		audma0: dma-controller@ec700000 {
@@ -2746,6 +2746,18 @@
 			thermal-sensors = <&tsc 2>;
 			sustainable-power = <3874>;
 
+			cooling-maps {
+				map0 {
+					trip = <&target>;
+					cooling-device = <&a57_0 0 2>;
+					contribution = <1024>;
+				};
+				map1 {
+					trip = <&target>;
+					cooling-device = <&a53_0 0 2>;
+					contribution = <1024>;
+				};
+			};
 			trips {
 				target: trip-point1 {
 					temperature = <100000>;
@@ -2759,18 +2771,6 @@
 					type = "critical";
 				};
 			};
-			cooling-maps {
-				map0 {
-					trip = <&target>;
-					cooling-device = <&a57_0 0 2>;
-					contribution = <1024>;
-				};
-				map1 {
-					trip = <&target>;
-					cooling-device = <&a53_0 0 2>;
-					contribution = <1024>;
-				};
-			};
 		};
 	};
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
