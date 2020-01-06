Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6119E13170F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:47:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/GxufwXTeAwCO5LsYbc+zCuXmeVvTdWpSu73xjzrMVk=; b=aMeu0Sm+JD9ZD9FLHzabV3BAiw
	uY9IC8bwUICd62FKhS1vEl0Q9pQ6q8m/qN4LC8JjkUMnljchlTQ6Gq9zsG18QnFfb305MKVB87cyv
	+nV0f4kQZWBl5+2tpeebI8VP80roKu2Kdp5dZBpmpR+xVBkogKD7iT20IYmJxvMaXCPwvhJ4534An
	4HCHE2Kj/x6TYs908zuk9+C68EZMKRNPkgzad0SsSVN82hiIIVTgh7sO0dqpuiaJf2c4VpERwTl8B
	waF8084wVvnuweb3lh24lVtrAzwyuz2JI5G1cZtOAxykl0uZZ419Dnt5DD5AgL9N9bUGi9fFZfgi2
	re3kwJog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWT1-0005XI-Bx; Mon, 06 Jan 2020 17:47:03 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWSj-0005NJ-TE
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:46:47 +0000
Received: by mail-pg1-x542.google.com with SMTP id s64so27177686pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 09:46:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EiXC/MriP+cdpOhem11vYI94GWNz0CCSOZkGZBL2d9U=;
 b=UaFPkDcsmqcQKqX3+FYyaP9kZ89B9Q3kyv4mqMnp/Jm8+bImb4IYLtjvkl80f8bXUh
 1f8UPPP63XiKkYuEnJaX9ZtGFspbz/vMd06l0aTs+BN8Jo/W/5gXW/IXAUSbZm0CHq7J
 8JTR+1I5hdf9CRStbAS5cAUI/wAcG8hFXl+HxcAJZLUe5c80zANFiwcOfx9/mICBeypY
 MXEDARX/OLFgTLuELG4sdsv4aV06RkdtQ9AB4nwrNDzw+FUUKopybwhrQyccBhDNcQEZ
 SGeOiBSMvTGMHOnbiCYU+UqKqCiou19nibQ1jnRZCEwYMsoz4KmGd3IyouMy8hWypYJW
 cO7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EiXC/MriP+cdpOhem11vYI94GWNz0CCSOZkGZBL2d9U=;
 b=kgYSz8+lDfTgtgYxMDFIUnXPYsbkO5JxIPNaW0SmhsSlRnpEBWg3udl+1FFjOcWUiR
 rP3zMcvh/0FYK034h74pG4vZKMKUI+nMTcrC4jTTCEWQYeuJmRimRPNs9Y1WN387iEeo
 MQGwaT9v+VxjKkLW9VoIEEc8/NyBc7Xsg1sv9DxFPyW0zSXxxcpG3wCC9roXHeCvCgAC
 lwn+xStfj5hMLjSYAHbqnd2mBBOLB4cTmZn/4ATZ/d2G4rmcqouK8j2KpTKLatgTYtKr
 vuecfVUMnnbuhwons2r1Tb1usMH8SgjPyRnl3qQbsijbxv2mTgr2QuzpuSDOVTjYYa8W
 Dfig==
X-Gm-Message-State: APjAAAWX8F2jQR/zFBsWrLUKPQgwzeGQCVviH0tA0tKfVFXvwClGHY9M
 bDdLQtobKK4ga5Suet+1+TA=
X-Google-Smtp-Source: APXvYqzsNn60tFIDS08//elWhClHXWYYTqFBsfumM81M+fXB1pfEhQnuBltx+uVuXKE/434H9TCGeg==
X-Received: by 2002:aa7:96f9:: with SMTP id
 i25mr111741807pfq.161.1578332805413; 
 Mon, 06 Jan 2020 09:46:45 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id l2sm59166879pff.59.2020.01.06.09.46.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Jan 2020 09:46:44 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, mripard@kernel.org,
 wens@csie.org, anarsoul@gmail.com, rui.zhang@intel.com,
 daniel.lezcano@linaro.org, amit.kucheria@verdurent.com, megous@megous.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH v2 2/2] ARM: dts: sun8i-r40: Add thermal sensor and thermal
 zones
Date: Mon,  6 Jan 2020 17:46:39 +0000
Message-Id: <20200106174639.20862-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200106174639.20862-1-tiny.windzz@gmail.com>
References: <20200106174639.20862-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_094645_944213_E370DC8A 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
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
