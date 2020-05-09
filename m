Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730D71CBE47
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 08:59:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tvBbk1EqrQrlEmVYwxwEtn/aQsZAgZup2JfKmzieZXQ=; b=Mx1Fm8aXMZwf7wRCJTC+Yxs22f
	nIchooJ9T8YuUCce+3js9Q2GRCaVJDxANE6724Sn3KY15p5OgMH4UNKNJB94N/mKErmaTuYw21Fya
	xrqLvetg68G7wcldJI86warupMSiLiboDiPOmiT5TXNj9mBl/kYX6qMoBllqUvlaH/nqBcaASjtlX
	wCJBloYy/kgFQeVZWQMkGjWaAqCRdWkeSClPAYVTNddiJCdwtc3Uw08MXNJxghhOhJo1h2Fc55v00
	Y0WjWHfsATI77pQnWOOMBrejlBKKg8Ype5r2Js3oYrBLDG0pL4SWwT3smPXvlztBVAjj3aFqI6Dog
	19D8PUoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXJRn-0000SE-EK; Sat, 09 May 2020 06:58:55 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXJRR-0000KN-Ib
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 06:58:34 +0000
Received: by mail-pg1-x52b.google.com with SMTP id r22so372973pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 23:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1+50jpOtQ+yabtvOjIxdeqHbLW4bp1NAnAuKLsw1+do=;
 b=sOlIWa+ptEVcyXiLC/Bxln73BJva7q/80JuA5nMyFbl1isr96GlpRnuLTiIRXGrMvZ
 DBAeaHNoUDtcQUdx/w7pWDMhCtmoHwKGJM4udILbfyd/Sz10R3mBs0h4Ib3hos9TRIXh
 FnT/8XPlv9svitcANdJtArVywaD8oHJbX2QbjXHTm7WU2bX/iuorbNc22YS6L4DjcBKP
 PAaCuTDpQvv53QDfPqZddlPjWdtE6iAHjhOJGlIPlNERtF9zLgJNcgB+dHUawVl0Ta+B
 5D7oeM98d+YhAWeaB6r0qs4zI95n51fa2YMxrCAaYMfT9BmeFjqkN+H7SKPJb/czRjZh
 ue4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1+50jpOtQ+yabtvOjIxdeqHbLW4bp1NAnAuKLsw1+do=;
 b=QjWzqPrHj5npy/SF9KsrRqw5c4T2hic1Rk4mYlvsizcAqzoAsvUlWMbKKIuCodTQHh
 Wjeo+UsnZvUk5YCzkmvCPcuVfoPTr3GOtZ0zJQo7x/2x9+EgfJzPuyyUBA6O7xTpdAOC
 eh1Oumv7eLyKxxTzb9Eb3TM7/wR1b8pFsXmj4vs0l21pItwpdeXyiXOZu3Y41GklCRDg
 ZqPjV01EISF7wIfprW7Mm/lh/+9VEidK7cJIA+ahihMdZ+LeamrrkgswBFjpKE7ctSjC
 bQtg4ZU5A8kHeucLWiQ7kAYNSDjmVmGbGNCmBc7egr/ND9fko3gPEPHb9nVo2OkA+NaJ
 1aUA==
X-Gm-Message-State: AGi0PuaNrS11Vvh03vUjgKyiSAtrDaaPOrC5uHSQWC1gWiFlaaATO5/6
 ClqoduBitab28JvV7SkyxLxTkrtUvRI=
X-Google-Smtp-Source: APiQypInpnXmSjjXJsppu2FYVV/nnWDkxAp8QyIQOIObhx4wp1sle8YpOuNdgiBAcaE2pnKKmuwEIA==
X-Received: by 2002:a63:175c:: with SMTP id 28mr5011956pgx.44.1589007512399;
 Fri, 08 May 2020 23:58:32 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id w192sm3811572pff.126.2020.05.08.23.58.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 08 May 2020 23:58:32 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 broonie@kernel.org, p.zabel@pengutronix.de
Subject: [PATCH 1/3] ARM: dts: stm32: Add pin map for spi5 on stm32f429-disco
 board
Date: Sat,  9 May 2020 14:58:21 +0800
Message-Id: <1589007503-9523-2-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589007503-9523-1-git-send-email-dillon.minfei@gmail.com>
References: <1589007503-9523-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_235833_607720_85CAAE9F 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52b listed in]
 [list.dnswl.org]
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
 dillon min <dillon.minfei@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
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
