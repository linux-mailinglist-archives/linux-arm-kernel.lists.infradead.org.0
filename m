Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED837923FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 14:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Oc8kTeSu9yQepG8pU2tJ4v/LuxzGBIvvUI70jgxGlI8=; b=CpN
	a65ZnMIhf93Cw4jYVQUbTf1BelxWwVydOau4hrAG22z24j/DhUM9fbKp0UuQpwYit2QmpGcZ/aGyZ
	o+ljFi/hsJXGdoCmJOEQikL5pxF8D95mGJQFaKvbTP1LIgxjxj+m8XYRnZp7Rg+7pdnAIFjPITh0L
	XOs9MW3gwCH5Lgtmoe47o8OUOddS8YBJxMzVNwWpdAq8tumKijG1xNOMEqb7m9li6HHYet13FbPcz
	gU9e3XcA4TLyAyqgGfZxXjTjWpYhUY15D7PCAGg+UgQKECjXrN2t7xmGeObFYxX7c8GPyU5ijV3CG
	gH1Fd2pLjG38+yZ+I6qO47JgtiYwINQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhDA-0006Z8-1A; Mon, 19 Aug 2019 12:56:36 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhD0-0006Xq-Og
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 12:56:28 +0000
Received: by mail-pf1-x444.google.com with SMTP id i30so1130628pfk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 05:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QEVugNrwQn9HwJDipPXfRxXHdN0DWCVE7QvzrzGlVyM=;
 b=HNJxDe3R7D8tn+mkR/SCoFZcIl3HfJ1DULfW95/RIjy90SVnANgynyUUGOAe/GD69r
 IyVuQRVY9lsbG6PQcJ+RzfPHFJthGbXWoK6GMy4AUHWi5GX55U05NzuxuJDNYl1mms8R
 xNJh5Z+qtY1CqtF2+35B/buIQxZcIe3mkQMY6/9p+tq0hWjA5LWs7DCGgTpODyZlIWQz
 uCcI2kweIM9d9NAGG9pJjcxzpqvarKLqp1ENq+Rthl9S1ARbuw6icswfPNnvCP5N8CRu
 OuZyha0Qwm3ulgg6xVFMCjG9vgRdE/nMju0B0s2s7v/sFvnf8U+IpDhAGvHmci12gYpe
 vdKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QEVugNrwQn9HwJDipPXfRxXHdN0DWCVE7QvzrzGlVyM=;
 b=nq7BegjAw8xQ81V5hf+kl+8sYubQHgEkuOvum67ZQ2WYJFW2kInBigqqz0GVcnvZve
 o2W56mqDM9g6NMmX7gAIcO/CHl0ZCXGD8oVxTilZaNpkfLdsHHO6/qoE5n7G8z3rGhYt
 lHvunMTkMPaiJjKWtZ5SlPEXqI1vjagPKJi5ui3Qy3V8YTAZNJelS192hJGdLG9wYnWC
 MgEJelWuz/nDAblBltXv4cBJbgJU25LuzWAlCuj52zbQlyf1mH/c8BZUPk0IxDc4nkbM
 7maSeOxDyuAUHwCZhkc/gnUjcSPwMONL0Y4oqLgxF9Qgr2veYD6OMaqiW8wfqWKV6/Yi
 U0UA==
X-Gm-Message-State: APjAAAUv8jMYVr8UDJ1fcqcBVzGJelEUX2VxD9aWtRDyVI1/mXzTilNk
 xzFzesvfxXETyKNjkkOZFhY=
X-Google-Smtp-Source: APXvYqy4bMQ/vHuZpbyn8j0NFl6JegnwAY4lGn8k0mpVmEhzublpgdUhxeQ2rHR2PvNTfve31yW+Pg==
X-Received: by 2002:a17:90a:cf8d:: with SMTP id
 i13mr9731606pju.63.1566219385980; 
 Mon, 19 Aug 2019 05:56:25 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id s125sm20827604pfc.133.2019.08.19.05.56.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 05:56:25 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a7796: sort nodes
Date: Mon, 19 Aug 2019 21:56:18 +0900
Message-Id: <1566219378-23126-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_055626_812290_5330F253 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

 arch/arm64/boot/dts/renesas/r8a7796.dtsi | 152 +++++++++++++++----------------
 1 file changed, 76 insertions(+), 76 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a7796.dtsi b/arch/arm64/boot/dts/renesas/r8a7796.dtsi
index 26df5b8..3dc9d73 100644
--- a/arch/arm64/boot/dts/renesas/r8a7796.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a7796.dtsi
@@ -1833,6 +1833,17 @@
 				      "ssi.1", "ssi.0";
 			status = "disabled";
 
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
@@ -1849,17 +1860,6 @@
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
@@ -1913,6 +1913,59 @@
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
@@ -2123,59 +2176,6 @@
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
 		};
 
 		audma0: dma-controller@ec700000 {
@@ -2860,6 +2860,18 @@
 			thermal-sensors = <&tsc 2>;
 			sustainable-power = <3874>;
 
+			cooling-maps {
+				map0 {
+					trip = <&target>;
+					cooling-device = <&a57_0 2 4>;
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
@@ -2873,18 +2885,6 @@
 					type = "critical";
 				};
 			};
-			cooling-maps {
-				map0 {
-					trip = <&target>;
-					cooling-device = <&a57_0 2 4>;
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
