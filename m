Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AAC1CEE4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 09:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tvBbk1EqrQrlEmVYwxwEtn/aQsZAgZup2JfKmzieZXQ=; b=RQCvGdM2S8Oa/12mj0abusYMWu
	8uatbaXg/kkBmQ0ab/kEt4FdB4e8ucSu0HEvr4V9MqvA0cXboL4OaFjTGCdgwN2N6n5jBgoucm6/c
	yjeLvnyQxxv2+vmmnO4NwGWovdR8X2Yr/hDd5ttOo/Pw2C0MB/Ntfq99KgQG/oRdy7N7p9ttwYUlI
	RIj/8AL6HHo2WM2lkK/G91KtivI7t1XLOwOb6zJl6r9CqkrIanaOcpbxKsRPIGqihMkM4QynQA+Y5
	noIsA3lfXQYG5F9dc5WcK69D84cRVi0K/tKCPS1Rbh9t6bNe3+SbbQzDhAC57zK3m8TwwVI6mC4jW
	p/x0SmEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPTh-000248-3N; Tue, 12 May 2020 07:37:25 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPTI-0001wW-Ki
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 07:37:04 +0000
Received: by mail-pl1-x629.google.com with SMTP id t7so5044109plr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 00:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1+50jpOtQ+yabtvOjIxdeqHbLW4bp1NAnAuKLsw1+do=;
 b=G47sGn4TN89HEfDHIlpV4L/1OTdbO4A512abcr2Q6siKyVvi03Bex0c/ELQlwJIxeC
 tIZpjUJVEe7tdocPqLpuCIdwP37zsuHnu0unHBL/9tyMyfq1xvzsfWMgamvXnH+oueZR
 0oOt/MwLxV7aWWjGONudiPRNYxzkoYYoEw0jmndA2AKTJIZZ7i0UYciPrlJjdTGNVwX8
 L4fm20sFG926zL5N7wAcGAXpX5Ix5B/lirLwhzDXmd8U3B1P/u9toWrSxuaOZ1KI5/gJ
 +rv5oc7F+faxwweAeljXXxhEzJY90igkfcWkaPenQrTaS+0UzDx86i9KAACaGvXOCFo7
 BRTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1+50jpOtQ+yabtvOjIxdeqHbLW4bp1NAnAuKLsw1+do=;
 b=QpJY6Sd0PWgrRYb/0Cr9mHkGAmPF9Ky62n8TglGP4WueJbHVHqbdWEs36x4z0BVRFD
 drDP5ujV8KbMeyeCodOgi1alypGd77oUSEQn8Wk8EepeCfjh9Gd0qtpnZ/cS+Q+uDZoq
 oAZ5XUBgIlf6vXX+sdl26uBQz6KL6WptYT+uVSArwRAgmjhaQDHNdL55XgIefki43EvB
 TYHyCoUwMTSWylu/rRIduMVikY5LjBtQWLxZCuTAOxaHlnbW0mJ7JYmqauK74NgY8nII
 6HVJ+xEOzRv50xhgVYEOYwkAbwvOCvl1zdgJ/w0KA7lcJ7bjAeCk2hApxzS0TRnErcvH
 F6AQ==
X-Gm-Message-State: AGi0PuaACDIeuYvCKnndqKpImBtPRwbKdj/D2zAacDJP3HAVr6fG9MnT
 n9P1SC4GbmoBe4V9yIltjJQ=
X-Google-Smtp-Source: APiQypIro3QqgqzACddslZcezZZ3teK8Kwq4T65hw26DXUKtwZPMtU58nk+jjImORx23aPyHjnHRfg==
X-Received: by 2002:a17:90a:7046:: with SMTP id
 f64mr24142240pjk.205.1589269019133; 
 Tue, 12 May 2020 00:36:59 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id 5sm11732471pjf.19.2020.05.12.00.36.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 May 2020 00:36:58 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 broonie@kernel.org, p.zabel@pengutronix.de
Subject: [PATCH v2 1/3] ARM: dts: stm32: Add pin map for spi5 on
 stm32f429-disco board
Date: Tue, 12 May 2020 15:36:48 +0800
Message-Id: <1589269010-18472-2-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589269010-18472-1-git-send-email-dillon.minfei@gmail.com>
References: <1589269010-18472-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_003700_689463_550F1F8F 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:629 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 dillon.minfei@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

This patch adds the pin configuration for ltdc, spi5 controller
on stm32f429-disco board.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
index 392fa14..54c1b27 100644
--- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
@@ -316,6 +316,23 @@
 				};
 			};
 
+			spi5_pins: spi5-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('F', 7, AF5)>,
+						/* SPI5_CLK */
+						 <STM32_PINMUX('F', 9, AF5)>;
+						/* SPI5_MOSI */
+					bias-disable;
+					drive-push-pull;
+					slew-rate = <0>;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('F', 8, AF5)>;
+						/* SPI5_MISO */
+					bias-disable;
+				};
+			};
+
 			dcmi_pins: dcmi-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 4, AF13)>, /* DCMI_HSYNC */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
