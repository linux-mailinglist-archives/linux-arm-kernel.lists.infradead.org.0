Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9D1135AEB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:04:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/X33knOFC0RjsE49PCTff6uGcRHWrw7P/7V6QTOMCI=; b=caZec27TGry2gH
	czAKC2HGbhFy6eLml/pdk7A98Vr8pRfb/tTpitUfU/At0Vkg89O5h0If6mQN6Rvc9AuGvDCbKxDjS
	U+v/8vNC5aHLXpg3hd1o4rjUwxwpRb11XJknwU5ZmJOfQrwt7FLk8fJcivezE4gkvIQBF0Lq2Pjrc
	tPEsXAgRs5Fl2m1QuqmOZs2eF5KljivehK33nfXynGM4aRU5JasyFIiYE2GseSJcj6tBEnKk9BGvx
	UQ+xhwAUjZ2nWY3D/iu76m1KkwSNy7fk4JAV9HPTsZ1+V2VE9wSkcrCBo3/I7RBGcEzgwYFuTKf0G
	SkiWS/FgnY5rwVNeCVKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYPy-0004XD-3r; Thu, 09 Jan 2020 14:04:10 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYOY-0002Wv-GN
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:02:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id p9so3055307wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 06:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SqnmMkQEK4wShRkXHJYP8EzU5gVOo8rnm7WGaX4km1I=;
 b=IGBpdmGyAlrwpUXMO8unod8bBHFnSNXPaeyDOhV6wB6qgm8oSDcYYw5P2dBp25GhNC
 Ld2tCsRJ6qMQqvPdyxK0BnI54vRvfiFgA2sz2YtIF+FMBIoyLloOHN5TO9S5sQ2nERUF
 aLbnbyqnb1mlv26ne7kojB1SJdDBQ/obQ2X9B8/Y1xMShWkSxDPszVMrHQlNct+V14hh
 YM2S2aV0GpJdYrkpTYLIszEwgrI6TFqXRBdqiFVAIJeQn0mw2EQKgoDEAVPW1aezK4FY
 e4IZXzkhKO8H6EmBgs/kA8CdY2BWfc2oimjlzS/6Dqz9NiExngavRyUPOnk4LuLZSsSS
 /Ppg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=SqnmMkQEK4wShRkXHJYP8EzU5gVOo8rnm7WGaX4km1I=;
 b=bsG1qyoT+RITfOQNcartZX1WdTG9/zuHtylvpQ2N3U1lVzy/IfO/x3QJiKOvDWfDSZ
 FQ4wOIr3SkPXyiziXcIk14qy/8uIV4zrMv/6Rkp7KD2kRgIBZK8fmDotstCZk1iqgEXv
 Swq4ZHAwMT/oJ9SXka2vLcPiOYcGqwSA++w/hi0QroKfWlqSsnyHE3lA/Rdn/p/vn0fl
 dJdJszyJGs9OIBTDrREoqezyJjnWZGsURpJGeMoVmcWqScZp2/Orzvs41qmzs2ppZ/Hd
 xoQoao6MGY4K8AD8GgYTPY7yLU4eANzKg3GVVHVm7IGAO8E646bGhMEREfPjqO/soKj5
 F17Q==
X-Gm-Message-State: APjAAAUgqAlAZEHsmMhFOBxyViSbro0AhCnup+Ni96aeoHbV4ybyyTyb
 9BdnI+KlpPPo3wd9QWUqtZBpclztgK4B+w==
X-Google-Smtp-Source: APXvYqxPU6RPEC+Y30lAr9qhmkcMeop+8IMsXQENU0eYqx/5WQbGJJd35xndpUF6O8I+Rel23WUEzg==
X-Received: by 2002:a05:600c:24d1:: with SMTP id
 17mr5037154wmu.136.1578578559676; 
 Thu, 09 Jan 2020 06:02:39 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id m10sm8238072wrx.19.2020.01.09.06.02.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 06:02:38 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH 6/7] arm64: zynqmp: Enable iio-hwmon for ina226 on zcu106
Date: Thu,  9 Jan 2020 15:02:20 +0100
Message-Id: <2c0200e7c802915389c23e27589ef29e97fb3b48.1578578535.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578578535.git.michal.simek@xilinx.com>
References: <cover.1578578535.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_060242_738302_206835DB 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

ina226 hwmon driver is deprecated and it is recommended to use new iio
based driver. The patch is enabling iio-hwmon driver to export
functionality from IIO to hwmon interface to be able to use lm-sensors
package.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 .../boot/dts/xilinx/zynqmp-zcu106-revA.dts    | 127 +++++++++++++++---
 1 file changed, 109 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index 822de6f04725..d136ce1fb07e 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -59,6 +59,79 @@ heartbeat-led {
 			linux,default-trigger = "heartbeat";
 		};
 	};
+
+	ina226-u76 {
+		compatible = "iio-hwmon";
+		io-channels = <&u76 0>, <&u76 1>, <&u76 2>, <&u76 3>;
+	};
+	ina226-u77 {
+		compatible = "iio-hwmon";
+		io-channels = <&u77 0>, <&u77 1>, <&u77 2>, <&u77 3>;
+	};
+	ina226-u78 {
+		compatible = "iio-hwmon";
+		io-channels = <&u78 0>, <&u78 1>, <&u78 2>, <&u78 3>;
+	};
+	ina226-u87 {
+		compatible = "iio-hwmon";
+		io-channels = <&u87 0>, <&u87 1>, <&u87 2>, <&u87 3>;
+	};
+	ina226-u85 {
+		compatible = "iio-hwmon";
+		io-channels = <&u85 0>, <&u85 1>, <&u85 2>, <&u85 3>;
+	};
+	ina226-u86 {
+		compatible = "iio-hwmon";
+		io-channels = <&u86 0>, <&u86 1>, <&u86 2>, <&u86 3>;
+	};
+	ina226-u93 {
+		compatible = "iio-hwmon";
+		io-channels = <&u93 0>, <&u93 1>, <&u93 2>, <&u93 3>;
+	};
+	ina226-u88 {
+		compatible = "iio-hwmon";
+		io-channels = <&u88 0>, <&u88 1>, <&u88 2>, <&u88 3>;
+	};
+	ina226-u15 {
+		compatible = "iio-hwmon";
+		io-channels = <&u15 0>, <&u15 1>, <&u15 2>, <&u15 3>;
+	};
+	ina226-u92 {
+		compatible = "iio-hwmon";
+		io-channels = <&u92 0>, <&u92 1>, <&u92 2>, <&u92 3>;
+	};
+	ina226-u79 {
+		compatible = "iio-hwmon";
+		io-channels = <&u79 0>, <&u79 1>, <&u79 2>, <&u79 3>;
+	};
+	ina226-u81 {
+		compatible = "iio-hwmon";
+		io-channels = <&u81 0>, <&u81 1>, <&u81 2>, <&u81 3>;
+	};
+	ina226-u80 {
+		compatible = "iio-hwmon";
+		io-channels = <&u80 0>, <&u80 1>, <&u80 2>, <&u80 3>;
+	};
+	ina226-u84 {
+		compatible = "iio-hwmon";
+		io-channels = <&u84 0>, <&u84 1>, <&u84 2>, <&u84 3>;
+	};
+	ina226-u16 {
+		compatible = "iio-hwmon";
+		io-channels = <&u16 0>, <&u16 1>, <&u16 2>, <&u16 3>;
+	};
+	ina226-u65 {
+		compatible = "iio-hwmon";
+		io-channels = <&u65 0>, <&u65 1>, <&u65 2>, <&u65 3>;
+	};
+	ina226-u74 {
+		compatible = "iio-hwmon";
+		io-channels = <&u74 0>, <&u74 1>, <&u74 2>, <&u74 3>;
+	};
+	ina226-u75 {
+		compatible = "iio-hwmon";
+		io-channels = <&u75 0>, <&u75 1>, <&u75 2>, <&u75 3>;
+	};
 };
 
 &can1 {
@@ -177,53 +250,63 @@ i2c@0 {
 			#size-cells = <0>;
 			reg = <0>;
 			/* PS_PMBUS */
-			ina226@40 { /* u76 */
+			u76: ina226@40 { /* u76 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x40>;
 				shunt-resistor = <5000>;
 			};
-			ina226@41 { /* u77 */
+			u77: ina226@41 { /* u77 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x41>;
 				shunt-resistor = <5000>;
 			};
-			ina226@42 { /* u78 */
+			u78: ina226@42 { /* u78 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x42>;
 				shunt-resistor = <5000>;
 			};
-			ina226@43 { /* u87 */
+			u87: ina226@43 { /* u87 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x43>;
 				shunt-resistor = <5000>;
 			};
-			ina226@44 { /* u85 */
+			u85: ina226@44 { /* u85 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x44>;
 				shunt-resistor = <5000>;
 			};
-			ina226@45 { /* u86 */
+			u86: ina226@45 { /* u86 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x45>;
 				shunt-resistor = <5000>;
 			};
-			ina226@46 { /* u93 */
+			u93: ina226@46 { /* u93 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x46>;
 				shunt-resistor = <5000>;
 			};
-			ina226@47 { /* u88 */
+			u88: ina226@47 { /* u88 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x47>;
 				shunt-resistor = <5000>;
 			};
-			ina226@4a { /* u15 */
+			u15: ina226@4a { /* u15 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x4a>;
 				shunt-resistor = <5000>;
 			};
-			ina226@4b { /* u92 */
+			u92: ina226@4b { /* u92 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x4b>;
 				shunt-resistor = <5000>;
 			};
@@ -233,43 +316,51 @@ i2c@1 {
 			#size-cells = <0>;
 			reg = <1>;
 			/* PL_PMBUS */
-			ina226@40 { /* u79 */
+			u79: ina226@40 { /* u79 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x40>;
 				shunt-resistor = <2000>;
 			};
-			ina226@41 { /* u81 */
+			u81: ina226@41 { /* u81 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x41>;
 				shunt-resistor = <5000>;
 			};
-			ina226@42 { /* u80 */
+			u80: ina226@42 { /* u80 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x42>;
 				shunt-resistor = <5000>;
 			};
-			ina226@43 { /* u84 */
+			u84: ina226@43 { /* u84 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x43>;
 				shunt-resistor = <5000>;
 			};
-			ina226@44 { /* u16 */
+			u16: ina226@44 { /* u16 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x44>;
 				shunt-resistor = <5000>;
 			};
-			ina226@45 { /* u65 */
+			u65: ina226@45 { /* u65 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x45>;
 				shunt-resistor = <5000>;
 			};
-			ina226@46 { /* u74 */
+			u74: ina226@46 { /* u74 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x46>;
 				shunt-resistor = <5000>;
 			};
-			ina226@47 { /* u75 */
+			u75: ina226@47 { /* u75 */
 				compatible = "ti,ina226";
+				#io-channel-cells = <1>;
 				reg = <0x47>;
 				shunt-resistor = <5000>;
 			};
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
