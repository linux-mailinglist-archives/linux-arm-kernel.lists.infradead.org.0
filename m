Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C87F1D7643
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fRMI+qTcg0Ht5ki1Qd87XaN8tdqVsYseUWREYW2kAo4=; b=HnP1NkfuzTTHmX1VSAq4v9xqFg
	8b5bXwQaPY4WNWDqUEq3clMG9Zv0yRgr10iTA82Xkp0/rk9iShxKCqCVDXcFMXslGcm4l1JGhc1/T
	AUuwDAQ0eCwWy0/gu8535SqWEyn5vV4PqDgAUxiRBO6RItskIg0BWPbSyLKkfVcoNiumrx1xZGmWo
	wf7aoYP5ue/XW5TyEd/Dfe9ut19meozwxgr1CiThvfv/8rFcOLrwVSkw1gvbTh8L3VY98d8sPrSEP
	HpVA5g5G7ynvmL/007ZSfVyB/rJHsiRPT7qZovCudC3UAdNHQdWS8hInTwtcUAHJYPJK3+shHU+1i
	NZm6j93A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jadfv-0001SG-IW; Mon, 18 May 2020 11:11:15 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jadec-0006l2-UE
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:09:57 +0000
Received: by mail-pl1-x644.google.com with SMTP id k19so4082993pll.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 04:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eu8Y+3kRQM/USnH5yzkkCNIQbKXjIgArtceSXqO2K04=;
 b=SYCy2JXfMKollyID3Ho5YgxpSh0LrBqOCbp1W+NTv8ArKSBhVfYnQQb5iD59P6vNKf
 bydaSGrCkSIlhCtG4x087JQUpKyomjDGQsbkpt0QSZ55xcfyAdHNQWceSUghV7umH8ZF
 HICfOfpfRpe3el3WU62lDKmnXkRVAHxvEZAvv7ITQraEgZxhcAtAaA4bQrtYRWMLDNLA
 aGoZ/PsT9bWgY97v+7hzdu8CgXroeqSNVd1AqcuRXc/AIW834eIp55svDvNoaHfMnac5
 0kCEu2FPZ1ZSQAFyUlRgvUgnAyWrPGGoEIjihvBARV62OLS+Q6pyz5q+W/gKlz2zN02l
 dQag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eu8Y+3kRQM/USnH5yzkkCNIQbKXjIgArtceSXqO2K04=;
 b=i2VA/1i08tj2kBL17rIpOzshiTZ4YpUPd2uF27uCu/EVAh66oy8Pi315kmqHOmqx43
 Fv3FoJeWRtNv6ykMCwKqPtqDUzyykIJCutaWqbkf9mmeL0+s+WHjswf8eAZOF8wGzDZN
 MYGq9GUzBRFzjkRSdYdBdHp0WvP5W7c+Bb50Gqt0pUDge07Imo3dh+9ZU+jd1w4FysTo
 VtJfz+uJJaBCx651l6O599VONYq46CgldvFSKkFK+arQYmd03gdUuT5DG1WhJAEIq67C
 /odHMi2u/dDmGSRv6/R2gkIVVnr4gB0MKIO2m+3niHjUIvRh3OmX4RhbhdyqZhbrcLA/
 Vw4A==
X-Gm-Message-State: AOAM533aePd5KPvERcOSualPoe1bvv2D6A/xVgqApJ9rU5TLitgabyuh
 eH3ZPq4IaJWvUv7ac9tSKCk=
X-Google-Smtp-Source: ABdhPJxZv32MXI2NS/zMY/o4Uo1RotZrCRnG98wKQmtgtBkpDu5mj+G3hzWv/6hhWrtYNHG+vIHrag==
X-Received: by 2002:a17:90a:8c01:: with SMTP id
 a1mr8944191pjo.127.1589800193350; 
 Mon, 18 May 2020 04:09:53 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id a15sm8290630pju.3.2020.05.18.04.09.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 May 2020 04:09:53 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 broonie@kernel.org, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v4 4/8] ARM: dts: stm32: Add pin map for ltdc on
 stm32f429-disco board
Date: Mon, 18 May 2020 19:09:21 +0800
Message-Id: <1589800165-3271-5-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
References: <1589800165-3271-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_040955_095216_54EA791C 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-spi@vger.kernel.org,
 dillon min <dillon.minfei@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

This patch adds the pin configuration for ltdc controller
on stm32f429-disco board.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 50 ++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
index 54c1b27..0eb107f 100644
--- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
@@ -316,6 +316,56 @@
 				};
 			};
 
+			ltdc_pins_f429_disco: ltdc-1 {
+				pins {
+					pinmux = <STM32_PINMUX('C', 6,  AF14)>,
+						/* LCD_HSYNC */
+						 <STM32_PINMUX('A', 4,  AF14)>,
+						 /* LCD_VSYNC */
+						 <STM32_PINMUX('G', 7,  AF14)>,
+						 /* LCD_CLK */
+						 <STM32_PINMUX('C', 10, AF14)>,
+						 /* LCD_R2 */
+						 <STM32_PINMUX('B', 0,  AF9)>,
+						 /* LCD_R3 */
+						 <STM32_PINMUX('A', 11, AF14)>,
+						 /* LCD_R4 */
+						 <STM32_PINMUX('A', 12, AF14)>,
+						 /* LCD_R5 */
+						 <STM32_PINMUX('B', 1,  AF9)>,
+						 /* LCD_R6*/
+						 <STM32_PINMUX('G', 6,  AF14)>,
+						 /* LCD_R7 */
+						 <STM32_PINMUX('A', 6,  AF14)>,
+						 /* LCD_G2 */
+						 <STM32_PINMUX('G', 10, AF9)>,
+						 /* LCD_G3 */
+						 <STM32_PINMUX('B', 10, AF14)>,
+						 /* LCD_G4 */
+						 <STM32_PINMUX('D', 6,  AF14)>,
+						 /* LCD_B2 */
+						 <STM32_PINMUX('G', 11, AF14)>,
+						 /* LCD_B3*/
+						 <STM32_PINMUX('B', 11, AF14)>,
+						 /* LCD_G5 */
+						 <STM32_PINMUX('C', 7,  AF14)>,
+						 /* LCD_G6 */
+						 <STM32_PINMUX('D', 3,  AF14)>,
+						 /* LCD_G7 */
+						 <STM32_PINMUX('G', 12, AF9)>,
+						 /* LCD_B4 */
+						 <STM32_PINMUX('A', 3,  AF14)>,
+						 /* LCD_B5 */
+						 <STM32_PINMUX('B', 8,  AF14)>,
+						 /* LCD_B6 */
+						 <STM32_PINMUX('B', 9,  AF14)>,
+						 /* LCD_B7 */
+						 <STM32_PINMUX('F', 10, AF14)>;
+						 /* LCD_DE */
+					slew-rate = <2>;
+				};
+			};
+
 			spi5_pins: spi5-0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('F', 7, AF5)>,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
