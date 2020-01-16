Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203AF13DAA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 13:52:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rFbzrdh/hGMMS3gA368+0qcxyvARYOeJjhLq2B8OPnY=; b=iJv
	CPhQ1xEvbkjsPeU844bpkM5BHwKkcB0M9NFQ/89iJSopyEcB9xOzOQo+vAQ8Pbg9NHeGHeGyNPwIP
	pOxSORLchysaw4DKzznXac9YuDR+WoBmDg6w4j0KKyl6cEiDPWnVBACT3uTnYrtMR9HCKH+w8RZMq
	3ugv3T55m9oVo+H9MrXWcJhbcdnr1Ds/Eb4tmb2uUJKMEvX+YCqqPZbyhkwkbWIQhGuUSdF0W0oDS
	PIonw2lwT2U0girMh/+PNrgp1RwU4E4JVLMUTAPL6tue8iPTrjapbbC03rxX9YZlMCsBLYeKm0Ajt
	FkhHelwH1B0n5Qv7HoaDraxPAt/diBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is4cr-0000rb-Oo; Thu, 16 Jan 2020 12:51:53 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4cV-0000hz-RF
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:51:36 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id 00GCp0LM004484;
 Thu, 16 Jan 2020 21:51:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 00GCp0LM004484
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579179061;
 bh=fMZaburuU4urQ/r10xZu/T0T7Qs+Nao/bvyk3yFijQU=;
 h=From:To:Cc:Subject:Date:From;
 b=BN5twPSBRxD8vQeyMWYE8Z7obDb8ZNKD+aM0tNUKCByY/VVLDFgyHybtXtLFkuyzZ
 KHWywEldhCGuTNJtt3tKTKmdR/oQuRAFilnwfPN7L3ot5oAiOxJD6lagF0Oyy/06Py
 kTKXEYKl3n3Rn47Nv2uIfPwYLLahE/xBsyVKpO9SSusZjkP/Ypjov/NdBFUWmvQMYy
 ATDnjikpaTBT6OYp03V+aRoL7Nr3D2AwcVC2Bi76naqZncMyG74MbIrmSKkLz0w3xA
 T6TSk0JXXcvX9/JRrOxd/6vpKNBTKzed1RfcUwoQjVFlpNo2yqEqTZ35Ob8ZPBTQB8
 Gs13PZVEMgNDA==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: uniphier: add reset-names to NAND controller
 node
Date: Thu, 16 Jan 2020 21:50:44 +0900
Message-Id: <20200116125045.17581-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_045132_224957_DB5CBF72 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Denali NAND controller IP has separate reset control for the
controller core and registers.

Add the reset-names, and one more phandle accordingly. This is the
approved DT-binding.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/boot/dts/uniphier-ld4.dtsi  | 3 ++-
 arch/arm/boot/dts/uniphier-pro4.dtsi | 3 ++-
 arch/arm/boot/dts/uniphier-pro5.dtsi | 3 ++-
 arch/arm/boot/dts/uniphier-pxs2.dtsi | 3 ++-
 arch/arm/boot/dts/uniphier-sld8.dtsi | 3 ++-
 5 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/uniphier-ld4.dtsi b/arch/arm/boot/dts/uniphier-ld4.dtsi
index 58cd4e8fa5be..64ec46c72a4c 100644
--- a/arch/arm/boot/dts/uniphier-ld4.dtsi
+++ b/arch/arm/boot/dts/uniphier-ld4.dtsi
@@ -410,7 +410,8 @@
 			pinctrl-0 = <&pinctrl_nand>;
 			clock-names = "nand", "nand_x", "ecc";
 			clocks = <&sys_clk 2>, <&sys_clk 3>, <&sys_clk 3>;
-			resets = <&sys_rst 2>;
+			reset-names = "nand", "reg";
+			resets = <&sys_rst 2>, <&sys_rst 2>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
index 7f64e5a616d6..2ec04d7972ef 100644
--- a/arch/arm/boot/dts/uniphier-pro4.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
@@ -600,7 +600,8 @@
 			pinctrl-0 = <&pinctrl_nand>;
 			clock-names = "nand", "nand_x", "ecc";
 			clocks = <&sys_clk 2>, <&sys_clk 3>, <&sys_clk 3>;
-			resets = <&sys_rst 2>;
+			reset-names = "nand", "reg";
+			resets = <&sys_rst 2>, <&sys_rst 2>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
index eff74717b37c..ea3961f920a0 100644
--- a/arch/arm/boot/dts/uniphier-pro5.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
@@ -465,7 +465,8 @@
 			pinctrl-0 = <&pinctrl_nand>;
 			clock-names = "nand", "nand_x", "ecc";
 			clocks = <&sys_clk 2>, <&sys_clk 3>, <&sys_clk 3>;
-			resets = <&sys_rst 2>;
+			reset-names = "nand", "reg";
+			resets = <&sys_rst 2>, <&sys_rst 2>;
 		};
 
 		emmc: sdhc@68400000 {
diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
index 4eddbb8d7fca..13b0d4a7741f 100644
--- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
+++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
@@ -773,7 +773,8 @@
 			pinctrl-0 = <&pinctrl_nand>;
 			clock-names = "nand", "nand_x", "ecc";
 			clocks = <&sys_clk 2>, <&sys_clk 3>, <&sys_clk 3>;
-			resets = <&sys_rst 2>;
+			reset-names = "nand", "reg";
+			resets = <&sys_rst 2>, <&sys_rst 2>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/uniphier-sld8.dtsi b/arch/arm/boot/dts/uniphier-sld8.dtsi
index cbebb6e4c616..4fc6676f5486 100644
--- a/arch/arm/boot/dts/uniphier-sld8.dtsi
+++ b/arch/arm/boot/dts/uniphier-sld8.dtsi
@@ -414,7 +414,8 @@
 			pinctrl-0 = <&pinctrl_nand>;
 			clock-names = "nand", "nand_x", "ecc";
 			clocks = <&sys_clk 2>, <&sys_clk 3>, <&sys_clk 3>;
-			resets = <&sys_rst 2>;
+			reset-names = "nand", "reg";
+			resets = <&sys_rst 2>, <&sys_rst 2>;
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
