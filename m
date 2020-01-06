Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7AD1316B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:23:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/GxufwXTeAwCO5LsYbc+zCuXmeVvTdWpSu73xjzrMVk=; b=n2z1CjFSMgnJ+a
	J0LM/OhO/FN6fm4mlbXCDiaShgOfwU0IYzWWPehT02JcWNGsJpC94xehWbFzu3+b+DX2WAUL91H2/
	l5GTzL3Sruz4wzw56MRgd2mzSfzVcn+f3kLTUaJ6JLoNQEIsqREZfFCyu6kNxfSDyvkgXncN8nwzF
	a4v5VgudtumiQyA2J51cdFtK9byRPZqKHr1OIbjx/G9BjBxFP69Z/sLqKH3Hu18BC0kryC2fwXtQA
	XV6Ve/sZwtoaaHUsjMhQhJXP6bCRWUeyklTRH3AhSr5yny5AiYDEqPlKXs45hw9yJTGTybyT4z9dm
	pVw4hAkOHgKtl70DJ3XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioW68-0001sd-7D; Mon, 06 Jan 2020 17:23:24 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioW5p-0001hz-40
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:23:06 +0000
Received: by mail-pj1-x1041.google.com with SMTP id a6so7828089pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 09:23:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=EiXC/MriP+cdpOhem11vYI94GWNz0CCSOZkGZBL2d9U=;
 b=Fgih5/mKhpixJHIO6J5wKEuJKm7z0uNcQcfAvNH/An3WxxPmMy+MsVfGvWH8F+G/kE
 WnSgM2VT95YfTuvide3gtMzFG/e77mch7xQ6DXG5Dd6MU7yQ7Mg9L88UWJjVqL6LXspH
 5mccJdFyoViN6VNicTG6d8NEZTWBvn0Qm/hIjWml5LQybFMWwhm14A/QjTDh3n7pduR2
 7QPR24Lz9HK6h1nCe6ViwF/6q1GCbvWBsxkQ9HQySVnsjBAhGUzJQGme1O4YhNy6r/Nw
 DlKd8fVdqt/hSSddPfkyoSPWamfinzb6SOrmEbMSN8wx4Egu0xkOK0E1xEvuNrZUIxef
 kTew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=EiXC/MriP+cdpOhem11vYI94GWNz0CCSOZkGZBL2d9U=;
 b=BLJkcUNB+yT5Pi5L1oSDa09xPDa14VSeo4thVahaeV5tB8oKAjmHniCHOH94FeOsVe
 Mt8t2hb4r6gsPx323MseK3wuirPWnYlC9D6VskzTcLFZkN9nOWKk0Z40UwofjS9qmQPp
 zkhRD3SuFi4R2viKaNJJPnOVKv/zWBbsunsedmuSOPih/tKyEjFxaz5RV6iGjsonDxmC
 I2F3SFP6M6d9bOYijrFdqzGR2B+aZ7el0V6KcYOIWWG3m3zTnlAeqm320d5Hmy0+iQjH
 pp46OKbaAc9Vwsss4QPOBWtGs/UNkSXBy8zkAMmhAWEomP8/0YkV0jQ3zYVrutU6TwMP
 PHRA==
X-Gm-Message-State: APjAAAUHQpnOkvcR0IZmejj4YwR9xnNHDD3kIoozHhlBHBHMvlFL3XEz
 SoyvMOHE0gE2ko7J5mPHQns=
X-Google-Smtp-Source: APXvYqyB4iG4q1U/Odr0v3tivcHOlY4azofIJDFUH6PdH0VjXjYafHAzGQBMVo8AxD5sE0fqJl7dFA==
X-Received: by 2002:a17:902:aa85:: with SMTP id
 d5mr110322875plr.16.1578331383886; 
 Mon, 06 Jan 2020 09:23:03 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id f9sm76869387pfd.141.2020.01.06.09.23.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Jan 2020 09:23:03 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, mripard@kernel.org,
 wens@csie.org, anarsoul@gmail.com, tiny.windzz@gmail.com,
 rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: sun8i-r40: Add thermal sensor and thermal zones
Date: Mon,  6 Jan 2020 17:22:54 +0000
Message-Id: <20200106172254.20271-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200106172254.20271-1-tiny.windzz@gmail.com>
References: <20200106172254.20271-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_092305_164483_F675358B 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two sensors, sensor0 for CPU, sensor1 for GPU.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
Tested-by: Corentin Labbe <clabbe.montjoie@gmail.com>
Tested-on: sun8i-r40-bananapi-m2-ultra
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 421dfbbfd7ee..8ccda5cb873f 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -46,6 +46,7 @@
 #include <dt-bindings/clock/sun8i-r40-ccu.h>
 #include <dt-bindings/reset/sun8i-r40-ccu.h>
 #include <dt-bindings/reset/sun8i-de2.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	#address-cells = <1>;
@@ -109,6 +110,22 @@
 		status = "disabled";
 	};
 
+	thermal-zones {
+		cpu_thermal: cpu0-thermal {
+			/* milliseconds */
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 0>;
+		};
+
+		gpu_thermal: gpu-thermal {
+			/* milliseconds */
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 1>;
+		};
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -421,6 +438,17 @@
 			clocks = <&osc24M>;
 		};
 
+		ths: thermal-sensor@1c24c00 {
+			compatible = "allwinner,sun8i-r40-ths";
+			reg = <0x01c24c00 0x100>;
+			clocks = <&ccu CLK_BUS_THS>, <&ccu CLK_THS>;
+			clock-names = "bus", "mod";
+			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&ccu RST_BUS_THS>;
+			/* TODO: add nvmem-cells for calibration */
+			#thermal-sensor-cells = <1>;
+		};
+
 		uart0: serial@1c28000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x01c28000 0x400>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
