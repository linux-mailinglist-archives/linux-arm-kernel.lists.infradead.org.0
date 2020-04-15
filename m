Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E45B1AB0E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 21:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=69450aWpVV+Hfa5+J0XbCRbUtGo5W0W4ZIAOYsi+oIg=; b=uQ96Z0YcnyPfZo
	UBmbPvGlNCh2LxEUgKW7VtjKHW89zTYGqr+EsUOvZoFk1o5EjseCWTjIiBgZcJTp9mDk+k/r0J6cf
	+gWD6BDOs5uvQgcS94J1HOBrDOQkug0G1A2ZUzRqiNk9Rri6vtWnvjp7RZlUL0Xc1P71M7n5KxMjE
	vDMX+wmdNZJKUtS6ZfN0+VP5b9TrZzdow5G230bC48a2M6lLHJXH3lGnEFLFdCD4aNkcHEJYh2rYn
	LnQvSO8a3qMqILR2uAhX1qxt6EjqhUJ2X9LwydcQccUI1iZ4krLHerlu8c3da+at8B2jqzstRK73h
	6PwyNkYiMW40fgX9okZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOnGi-0004xV-Pz; Wed, 15 Apr 2020 19:00:16 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOnGO-0004x7-DA
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 18:59:57 +0000
Received: by mail-qt1-x844.google.com with SMTP id 71so14238868qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 11:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RyFFovUkxx1rRXT+frGOD7qB7e/9xE+euu5Cd6lJq4c=;
 b=kdnLIyt9To6zO7rsfPXTcuWddDq/l+SqTQGPb6OJO7UzXiHLCejvNEG29BX7U1kCHC
 9BcCz4W/NyEsWUK5RAmbyD0HlwRBF2KHqqUGz/LR2D66x7Z8CKaZXNHkGxk7KJHrrmtY
 rhgFC6uJL6nCFTg620RyEmK48mczHX+JeM3m8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RyFFovUkxx1rRXT+frGOD7qB7e/9xE+euu5Cd6lJq4c=;
 b=HnZAhI7ZXez5kJKiCKyReLwlzzBOvrEWnXtLa08NleQU8HpruMa5H+ftVlHDrglK1A
 HPlCTREbBL/hNaxjYRJI6tatXmZdBEUE5sp7KbGtg4m+N6aiftHYAlu09BhMRhyIoRPg
 Z5O8QimH/QgkxLws8/GBiEvThax/8itWUC3W2YU1/jyk4FkSN9vEZfFZBZl7raxY8loq
 Yg/UORJoEXWr+ZtxkYqMOOypt0VDRZ/HE+pNGN5Fg3FmnVr2OZsUl/R8mshoEWYM4nha
 vW5KzPNQBY9Ejrth/AO9G9dEbvq4g1mrFkBIuKP50Yy5xcyK4pIHVMZURYsXDZigUWP2
 /p8A==
X-Gm-Message-State: AGi0PuYE4k9QQ8FTRa60FmThgV68Nu+PM1v+K0ozmCFWNvE2yrJOUpiK
 Fsk397bCqtWNDdItICRms8iCnw==
X-Google-Smtp-Source: APiQypIaMkbmxh/Zsj/TW3PrwAt99zbsgCP4222dba10JjDcBv89JvF63UyYrU5GKpKM/SdIfPV8cA==
X-Received: by 2002:ac8:4ccc:: with SMTP id l12mr22717549qtv.129.1586977195010; 
 Wed, 15 Apr 2020 11:59:55 -0700 (PDT)
Received: from bacon.ohporter.com ([2605:a000:1234:47c6:a553:c33f:1562:b0b1])
 by smtp.gmail.com with ESMTPSA id
 z187sm313355qka.69.2020.04.15.11.59.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 11:59:54 -0700 (PDT)
From: Matt Porter <mporter@konsulko.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] arm64: dts: imx8mm: specify #sound-dai-cells for SAI nodes
Date: Wed, 15 Apr 2020 14:59:41 -0400
Message-Id: <20200415185941.13956-1-mporter@konsulko.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_115956_442380_0B0C2C4D 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Devicetree List <devicetree@vger.kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add #sound-dai-cells properties to SAI nodes.

Signed-off-by: Matt Porter <mporter@konsulko.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index cc7152ecedd9..8453a657cb5e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -270,6 +270,7 @@
 			ranges = <0x30000000 0x30000000 0x400000>;
 
 			sai1: sai@30010000 {
+				#sound-dai-cells = <0>;
 				compatible = "fsl,imx8mm-sai", "fsl,imx8mq-sai";
 				reg = <0x30010000 0x10000>;
 				interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
@@ -283,6 +284,7 @@
 			};
 
 			sai2: sai@30020000 {
+				#sound-dai-cells = <0>;
 				compatible = "fsl,imx8mm-sai", "fsl,imx8mq-sai";
 				reg = <0x30020000 0x10000>;
 				interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
@@ -310,6 +312,7 @@
 			};
 
 			sai5: sai@30050000 {
+				#sound-dai-cells = <0>;
 				compatible = "fsl,imx8mm-sai", "fsl,imx8mq-sai";
 				reg = <0x30050000 0x10000>;
 				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
@@ -323,6 +326,7 @@
 			};
 
 			sai6: sai@30060000 {
+				#sound-dai-cells = <0>;
 				compatible = "fsl,imx8mm-sai", "fsl,imx8mq-sai";
 				reg = <0x30060000 0x10000>;
 				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
