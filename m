Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12CC183E22
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 02:01:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vQuatKGtLdWYnCDryLbtsFgdEH2YkSKrxXX4bkOMFAI=; b=UKdriDGl6rOKPKBN7L6jPoNQg5
	iPVIe5atKgoA8/JSPA8vHwtvZHC6DroIIeeUDusoXl6XWAi6nDlzk5RO5c0F/G82Vr2elGW60F2SY
	uqLP3eNlwxDCm28yLfL6yadj1u+lqImK9oqoyEOd01r51by6PtCTh6BlBnRca0KifI3tuaU4NOc3t
	vXsoOneKbWUerJfq/RZmRKOe3HvJHKenNOfbi+ifG96Cw2BjiRIThioaEaGPTBOsaXIXnucWTZz+A
	vt6bJIPehD9FvchjTGPjkSpMtFs3Q7ACcIsJjkxLQ8DgOhLTmKgh6vY1iQv6Fkg+8Aj9raeMnTC6c
	lnA/vAkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCYhc-0007zJ-9C; Fri, 13 Mar 2020 01:01:28 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCYew-0004EN-C8
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 00:58:43 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 13 Mar 2020 09:58:41 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id A9F89603AB;
 Fri, 13 Mar 2020 09:58:41 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 13 Mar 2020 09:58:41 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 1E7131A01BB;
 Fri, 13 Mar 2020 09:58:41 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 08/10] ARM: dts: uniphier: Set SCSSI clock and reset IDs for
 each channel
Date: Fri, 13 Mar 2020 09:58:14 +0900
Message-Id: <1584061096-23686-9-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_175842_567900_F5B9B866 
X-CRM114-Status: GOOD (  14.44  )
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

Pro5 and PXs2 are affected by this fix, but the SCSSI clock gate of Pro5 is
common to all channels.

Fixes: 92fa4f4cc2cd ("ARM: dts: uniphier: add SPI node for UniPhier 32bit SoCs")
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm/boot/dts/uniphier-pro5.dtsi | 4 ++--
 arch/arm/boot/dts/uniphier-pxs2.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
index fe8d306..d2256a3 100644
--- a/arch/arm/boot/dts/uniphier-pro5.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
@@ -174,8 +174,8 @@
 			interrupts = <0 216 4>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_spi1>;
-			clocks = <&peri_clk 11>;
-			resets = <&peri_rst 11>;
+			clocks = <&peri_clk 11>;	/* common with spi0 */
+			resets = <&peri_rst 12>;
 		};
 
 		serial0: serial@54006800 {
diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
index 6e60154..267ff82 100644
--- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
+++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
@@ -187,8 +187,8 @@
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
