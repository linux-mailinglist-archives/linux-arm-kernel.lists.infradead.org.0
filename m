Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A5D135AE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:03:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXi0kYDXBqw+cJo90c7C3UsHHDADVhqaiHdHimVjoJE=; b=AEJNT1gcek1DBX
	JEKdkyndWA2LWbwVe7iYDNe9s7WEy1HNast4Kl6RPu2zD/6mnAOjuIj+l5izP5VXdA1pouiNagE7P
	/KSADHH0NWXvvN3RXU4yMIdgluuz+4h7qp52yzPvpsWmuzjq2c8Me1swi41VIyEaqvnmeFMHWVML7
	dSHxmYQMvcNyGoH/94tcvU+XQD3PPemL9Ko+HZUbJxTNMulIdfScMK8ubWl/0KJQ9ReFO6gcbN9St
	3ZXibPpZZ7Ma+RTqjwmJBUNXyc+Sbx4I3MLkRr4pzddOq23Fcvb/ExKpBW29pHUwHe0aSbUN77Miy
	Dtf9IZAbY1p4VBESkVxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYOl-0002OZ-M9; Thu, 09 Jan 2020 14:02:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYON-0002JF-WD
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:02:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id c14so7500494wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 06:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DhI3OrQE978IeGvYgeHUGeY+2EytoVG3JIxosQ7S0uM=;
 b=q1e/dUvDF5SwCkBSTmdDLuBJ4Wf3yj1t2FDmQz4FjaMyXo1uUixu59+C+93seyRo8+
 mkbS5SUrRC9OO3HByXA9KHVds6Bgdndwexx+fzNLALdDrtPuYL1Gr9PKsnB9iN2IN80Q
 iUwxJu15Zlia4DNkOkqCHVGmkJVu7vttMztitsO+SiHbT8RacVPIkZ3z+6y1WlyoRnVB
 FHIFsRsfApT14glNH/DAg8WTmZyaOnNgtRGbABY6RAWNZBd+tZmYhf/3TOWYN7Ah56Ot
 o1WniFhkij0fzxcj3nm4Y8RXu4Ts6SXSJm5u/st5Z+FpxRPP/issLnh2FI+UJAqZldZM
 A/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=DhI3OrQE978IeGvYgeHUGeY+2EytoVG3JIxosQ7S0uM=;
 b=aG5iRs5l2m7/POvq7KgILWDh/vpAszysBahtJ8Xbxg66knU4mlzEVAEXY+1qAUzCE3
 seAerhVXxhpMhYwfME7Xt3viFOjkgOmQd/eWQK8A/r+ti7nyHbG8UwT/MuaS7Px3ZssY
 bv4T1YA55GG/iQPp8Abn8LdzGyG/ksWGjGOd8kryFUihIAjB803uMvCMG0GNJz3dnM+y
 ZK3keQvh+Klm9IzK5M+aIQ0Wq6G6FTCqIlIMljbaY68XBqotGScXJOpuVMVSVqABTNuS
 eOm0MtGg5lnUxUpb606PxBAQz8+LoQtEuN0CYCImPngUstjWgE6yPm2WnLn3ryAse+a2
 WaNg==
X-Gm-Message-State: APjAAAWTWuMVfbPvjUQJdfPqCFV8cJcvdE8Qq7Ic2ol0zOZZLePs6FA6
 MDF+xmi9xxT+4ir+4QHwn3gFrJSMVjYuqQ==
X-Google-Smtp-Source: APXvYqxicSUIyD6DM92gqQMlGx6+Yh1zxSYrFW/HOYZapL4yyPGgk4+gp4fqtd/WsIK+tSupGCCd7A==
X-Received: by 2002:a5d:5592:: with SMTP id i18mr10529597wrv.55.1578578550404; 
 Thu, 09 Jan 2020 06:02:30 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id k82sm3099143wmf.10.2020.01.09.06.02.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 06:02:29 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH 2/7] arm64: zynqmp: Enable iio-hwmon for ina226 on zcu111
Date: Thu,  9 Jan 2020 15:02:16 +0100
Message-Id: <cca3e4bbc5441bca051f274fe19c3328f0027eca.1578578535.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578578535.git.michal.simek@xilinx.com>
References: <cover.1578578535.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_060232_063175_84F98B97 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
 Rajan Vaja <rajan.vaja@xilinx.com>,
 Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ina226 hwmon driver is deprecated and it is recommended to use new iio
based driver. The patch is enabling iio-hwmon driver to export
functionality from IIO to hwmon interface to be able to use lm-sensors
package.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 .../boot/dts/xilinx/zynqmp-zcu111-revA.dts    | 99 ++++++++++++++++---
 1 file changed, 85 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index cb2e46833a7b..df2bc5a41c8d 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -59,6 +59,63 @@ heartbeat-led {
 			linux,default-trigger = "heartbeat";
 		};
 	};
+
+	ina226-u67 {
+		compatible = "iio-hwmon";
+		io-channels = <&u67 0>, <&u67 1>, <&u67 2>, <&u67 3>;
+	};
+	ina226-u59 {
+		compatible = "iio-hwmon";
+		io-channels = <&u59 0>, <&u59 1>, <&u59 2>, <&u59 3>;
+	};
+	ina226-u61 {
+		compatible = "iio-hwmon";
+		io-channels = <&u61 0>, <&u61 1>, <&u61 2>, <&u61 3>;
+	};
+	ina226-u60 {
+		compatible = "iio-hwmon";
+		io-channels = <&u60 0>, <&u60 1>, <&u60 2>, <&u60 3>;
+	};
+	ina226-u64 {
+		compatible = "iio-hwmon";
+		io-channels = <&u64 0>, <&u64 1>, <&u64 2>, <&u64 3>;
+	};
+	ina226-u69 {
+		compatible = "iio-hwmon";
+		io-channels = <&u69 0>, <&u69 1>, <&u69 2>, <&u69 3>;
+	};
+	ina226-u66 {
+		compatible = "iio-hwmon";
+		io-channels = <&u66 0>, <&u66 1>, <&u66 2>, <&u66 3>;
+	};
+	ina226-u65 {
+		compatible = "iio-hwmon";
+		io-channels = <&u65 0>, <&u65 1>, <&u65 2>, <&u65 3>;
+	};
+	ina226-u63 {
+		compatible = "iio-hwmon";
+		io-channels = <&u63 0>, <&u63 1>, <&u63 2>, <&u63 3>;
+	};
+	ina226-u3 {
+		compatible = "iio-hwmon";
+		io-channels = <&u3 0>, <&u3 1>, <&u3 2>, <&u3 3>;
+	};
+	ina226-u71 {
+		compatible = "iio-hwmon";
+		io-channels = <&u71 0>, <&u71 1>, <&u71 2>, <&u71 3>;
+	};
+	ina226-u77 {
+		compatible = "iio-hwmon";
+		io-channels = <&u77 0>, <&u77 1>, <&u77 2>, <&u77 3>;
+	};
+	ina226-u73 {
+		compatible = "iio-hwmon";
+		io-channels = <&u73 0>, <&u73 1>, <&u73 2>, <&u73 3>;
+	};
+	ina226-u79 {
+		compatible = "iio-hwmon";
+		io-channels = <&u79 0>, <&u79 1>, <&u79 2>, <&u79 3>;
+	};
 };
 
 &dcc {
@@ -152,73 +209,87 @@ i2c@0 {
 			reg = <0>;
 			/* PS_PMBUS */
 			/* PMBUS_ALERT done via pca9544 */
-			ina226@40 { /* u67 */
+			u67: ina226@40 { /* u67 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x40>;
 				shunt-resistor = <2000>;
 			};
-			ina226@41 { /* u59 */
+			u59: ina226@41 { /* u59 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x41>;
 				shunt-resistor = <5000>;
 			};
-			ina226@42 { /* u61 */
+			u61: ina226@42 { /* u61 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x42>;
 				shunt-resistor = <5000>;
 			};
-			ina226@43 { /* u60 */
+			u60: ina226@43 { /* u60 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x43>;
 				shunt-resistor = <5000>;
 			};
-			ina226@45 { /* u64 */
+			u64: ina226@45 { /* u64 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x45>;
 				shunt-resistor = <5000>;
 			};
-			ina226@46 { /* u69 */
+			u69: ina226@46 { /* u69 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x46>;
 				shunt-resistor = <2000>;
 			};
-			ina226@47 { /* u66 */
+			u66: ina226@47 { /* u66 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x47>;
 				shunt-resistor = <5000>;
 			};
-			ina226@48 { /* u65 */
+			u65: ina226@48 { /* u65 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x48>;
 				shunt-resistor = <5000>;
 			};
-			ina226@49 { /* u63 */
+			u63: ina226@49 { /* u63 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x49>;
 				shunt-resistor = <5000>;
 			};
-			ina226@4a { /* u3 */
+			u3: ina226@4a { /* u3 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x4a>;
 				shunt-resistor = <5000>;
 			};
-			ina226@4b { /* u71 */
+			u71: ina226@4b { /* u71 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x4b>;
 				shunt-resistor = <5000>;
 			};
-			ina226@4c { /* u77 */
+			u77: ina226@4c { /* u77 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x4c>;
 				shunt-resistor = <5000>;
 			};
-			ina226@4d { /* u73 */
+			u73: ina226@4d { /* u73 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x4d>;
 				shunt-resistor = <5000>;
 			};
-			ina226@4e { /* u79 */
+			u79: ina226@4e { /* u79 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x4e>;
 				shunt-resistor = <5000>;
 			};
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
