Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B56135AB3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:53:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGLlqUZ3SsM4W4lftCDy7bXKMoxKB9TFd4mrqKkDctY=; b=NPaoqlI0dGKRFx
	xSUSo3L3OrbK/kLHJ6UxNkxxesmloux/eCWWppUQtk9JagTceJ6QP6XC0jVqYmRX6GFC0k6sZ+9pO
	gPsPJCQjoTy8GZDWM33oKuqGtgOCJbTwmLPjT73QB8U1ZRKNpLgt0AVK7TucrtR4uEOUt0a41VvZl
	irSyYfkTaRfsoWWImQXTE8n9NFB5+ypP1wzUTS3YEctewnbOxuXezPnGUXEusMryZC7VaaB1rXzqx
	vWfbW+t0DncCmXWQQDh6cHY6b6Teya5LuZ8rpLPcAGOma/u3yRVa+cW0M8TGzeRluJsq3x1j228m9
	9eQcZvHdDiA8Lz68qs/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYFn-0004wL-RW; Thu, 09 Jan 2020 13:53:39 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYEi-0003q1-6Y
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:52:33 +0000
Received: by mail-wm1-x32c.google.com with SMTP id b19so2999619wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:52:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bhaw+vfeaLxVOzoOOCbTv5V0pf4zVwEkBpFfiGVWyVQ=;
 b=YdplVJrxQA+rY2BfRpe9YrdFu32Wj2CXIK6O7oNhJ+sbeu9+jnKJ3HEUaf2V5BJX74
 3AekydIO2Yw+kCgrfAF0Y3oC3xirkpj9HLmcqKTdo3bz8tDU4aMdmkumzs0V8Nxk19kt
 Q2E9oE6+Nb4PWtpQm827ovygGXqEcqChiIATgpbQBEmmP+jmbYxyAeyGAV8u1UMQbtam
 6gh7ljgTzc5DM9whVfY5mHeSzvqarUTJMKcUeCV6OjYj2YbCqj1NvCL9W9Geg1ns7MEw
 imqehgrg7yjWqGxNBlSjUsj1UV/WNccYv7+dVk4uSCs/MGn88OEGkdUbBZ8PInncF8lZ
 qqKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=bhaw+vfeaLxVOzoOOCbTv5V0pf4zVwEkBpFfiGVWyVQ=;
 b=RZXVL90EFsPj00Kv9OxtxtJhfRtZcP5OwqMAjVTgAbF0UBQq62/fsrjrRm7wDYOBdW
 K4XBHu+Ska70xNEdZC1SEZLqD24im4cpXXgaWniTnzS0N+pdxkwzpgik2f6UFKSR9vJR
 mOgocsoKltvtGPMdQqLHRHuI1r++Z06JljxcXWtGOkYiduiQL+i1wXgRvtC4mbRPp5J1
 Uw4fdxEPqAQKWPOIhVH+4RaEA2KRznnG5sqtz6K39W+Mb85S6Zc3fJ+qZ4V/qiQfGy92
 ec0SyYUcVS/U7ZcFKmQs5+RtNQ4YTzr9RhlDXsvI7RS9kIyUdkGL7Xt8ohAHUy/2VRP8
 a3MA==
X-Gm-Message-State: APjAAAWP4vhWVZxUWnREVTOsAL0Xr6Ycl9HybpZcyd3f5zAhUFtdCnie
 2m5ow9JhqJ0CvcjiXSo50aaplV913HYR2Q==
X-Google-Smtp-Source: APXvYqyy61xoMPBUlxiAZV5k/2Bht20Qx7hWrsTdyE+yPuJ53LS+84ZZ7DetqZNUKlSdQG0ZOVFNiA==
X-Received: by 2002:a7b:c7d4:: with SMTP id z20mr5478709wmk.42.1578577950336; 
 Thu, 09 Jan 2020 05:52:30 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id v14sm8100554wrm.28.2020.01.09.05.52.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:52:29 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH v2 4/8] arm64: zynqmp: Turn comment to gpio-line-names
Date: Thu,  9 Jan 2020 14:52:18 +0100
Message-Id: <daa153e9b77184e29a4064efebd759cfb999de7a.1578577931.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577931.git.michal.simek@xilinx.com>
References: <cover.1578577931.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_055232_256791_3BFD2FA9 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Label gpio lines properly.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    | 43 ++++---------------
 1 file changed, 9 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index 7c6b538490f8..c96e8416fa7e 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -125,21 +125,11 @@ &i2c0 {
 	tca6416_u97: gpio@20 {
 		compatible = "ti,tca6416";
 		reg = <0x20>;
-		gpio-controller;
+		gpio-controller; /* IRQ not connected */
 		#gpio-cells = <2>;
-		/*
-		 * IRQ not connected
-		 * Lines:
-		 * 0 - PS_GTR_LAN_SEL0
-		 * 1 - PS_GTR_LAN_SEL1
-		 * 2 - PS_GTR_LAN_SEL2
-		 * 3 - PS_GTR_LAN_SEL3
-		 * 4 - PCI_CLK_DIR_SEL
-		 * 5 - IIC_MUX_RESET_B
-		 * 6 - GEM3_EXP_RESET_B
-		 * 7, 10 - 17 - not connected
-		 */
-
+		gpio-line-names = "PS_GTR_LAN_SEL0", "PS_GTR_LAN_SEL1", "PS_GTR_LAN_SEL2", "PS_GTR_LAN_SEL3",
+				"PCI_CLK_DIR_SEL", "IIC_MUX_RESET_B", "GEM3_EXP_RESET_B",
+				"", "", "", "", "", "", "", "", "";
 		gtr-sel0 {
 			gpio-hog;
 			gpios = <0 0>;
@@ -169,27 +159,12 @@ gtr-sel3 {
 	tca6416_u61: gpio@21 {
 		compatible = "ti,tca6416";
 		reg = <0x21>;
-		gpio-controller;
+		gpio-controller; /* IRQ not connected */
 		#gpio-cells = <2>;
-		/*
-		 * IRQ not connected
-		 * Lines:
-		 * 0 - VCCPSPLL_EN
-		 * 1 - MGTRAVCC_EN
-		 * 2 - MGTRAVTT_EN
-		 * 3 - VCCPSDDRPLL_EN
-		 * 4 - MIO26_PMU_INPUT_LS
-		 * 5 - PL_PMBUS_ALERT
-		 * 6 - PS_PMBUS_ALERT
-		 * 7 - MAXIM_PMBUS_ALERT
-		 * 10 - PL_DDR4_VTERM_EN
-		 * 11 - PL_DDR4_VPP_2V5_EN
-		 * 12 - PS_DIMM_VDDQ_TO_PSVCCO_ON
-		 * 13 - PS_DIMM_SUSPEND_EN
-		 * 14 - PS_DDR4_VTERM_EN
-		 * 15 - PS_DDR4_VPP_2V5_EN
-		 * 16 - 17 - not connected
-		 */
+		gpio-line-names = "VCCPSPLL_EN", "MGTRAVCC_EN", "MGTRAVTT_EN", "VCCPSDDRPLL_EN", "MIO26_PMU_INPUT_LS",
+				"PL_PMBUS_ALERT", "PS_PMBUS_ALERT", "MAXIM_PMBUS_ALERT", "PL_DDR4_VTERM_EN",
+				"PL_DDR4_VPP_2V5_EN", "PS_DIMM_VDDQ_TO_PSVCCO_ON", "PS_DIMM_SUSPEND_EN",
+				"PS_DDR4_VTERM_EN", "PS_DDR4_VPP_2V5_EN", "", "";
 	};
 
 	i2c-mux@75 { /* u60 */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
