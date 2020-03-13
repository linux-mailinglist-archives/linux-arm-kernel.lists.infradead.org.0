Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EFC183E2C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 02:01:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZsEsRWmawHQnxqa+Ysmx6K+Ap2B0dskKbhqP5/Pb5PQ=; b=SD4BZRxAluiYmUop2AoOkineI4
	o44TAFEdDu1QwCkDOtMpMieqbeuPjD5sxny0kzBYFFgVuw4SXXSAN3MFBsDsaEf1SC0B+psPZuW4o
	5dlbmXg04BIuK8PSBAApNzHGI2FeHNAwy9N02Nj37kee0MLfdYz6fn25r/blF0H8YjH5ihWOSQy5X
	7eSN3c2/Hw04JVSHgIgphu0h8OZhfVCEry1H0uuBG+gEttlutf5vPCI+Telb4BjCv4d/QCysPuNVf
	KP69mn0QN6pxod/OT5HcL9GQSFp7H0j11N2tgOytAh1L5px5JKChNVFJqhezHM0UYo5VC2mKxdZNe
	z279FwqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCYhv-0008FH-Kd; Fri, 13 Mar 2020 01:01:47 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCYex-0004FL-52
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 00:58:44 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 13 Mar 2020 09:58:42 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id B2C12603AB;
 Fri, 13 Mar 2020 09:58:42 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 13 Mar 2020 09:58:42 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 223041A01BB;
 Fri, 13 Mar 2020 09:58:42 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 09/10] arm64: dts: uniphier: Set SCSSI clock and reset IDs for
 each channel
Date: Fri, 13 Mar 2020 09:58:15 +0900
Message-Id: <1584061096-23686-10-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_175843_355759_C5BAE4B4 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Jassi Brar <jaswinder.singh@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently common clock and reset IDs were used, however, each clock and
reset ID should be used for each channel.

Fixes: 925c5c32f31d ("arm64: dts: uniphier: add SPI node for LD20, LD11 and PXs3")
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi |  4 ++--
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 12 ++++++------
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi |  4 ++--
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
index 5aeb3cc..cd6e159 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
@@ -143,8 +143,8 @@
 			interrupts = <0 216 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi1>;
-			clocks = <&peri_clk 11>;
-			resets = <&peri_rst 11>;
+			clocks = <&peri_clk 12>;
+			resets = <&peri_rst 12>;
 		};
 
 		serial0: serial@54006800 {
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index c2868d8..794c0d2 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -248,8 +248,8 @@
 			interrupts = <0 216 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi1>;
-			clocks = <&peri_clk 11>;
-			resets = <&peri_rst 11>;
+			clocks = <&peri_clk 12>;
+			resets = <&peri_rst 12>;
 		};
 
 		spi2: spi@54006200 {
@@ -259,8 +259,8 @@
 			interrupts = <0 229 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi2>;
-			clocks = <&peri_clk 11>;
-			resets = <&peri_rst 11>;
+			clocks = <&peri_clk 13>;
+			resets = <&peri_rst 13>;
 		};
 
 		spi3: spi@54006300 {
@@ -270,8 +270,8 @@
 			interrupts = <0 230 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi3>;
-			clocks = <&peri_clk 11>;
-			resets = <&peri_rst 11>;
+			clocks = <&peri_clk 14>;
+			resets = <&peri_rst 14>;
 		};
 
 		serial0: serial@54006800 {
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index 0d4283c..a365fc4 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -207,8 +207,8 @@
 			interrupts = <0 216 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi1>;
-			clocks = <&peri_clk 11>;
-			resets = <&peri_rst 11>;
+			clocks = <&peri_clk 12>;
+			resets = <&peri_rst 12>;
 		};
 
 		serial0: serial@54006800 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
