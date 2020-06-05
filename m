Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AF71EF4F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:06:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oyHPg/mWoYHZTz/o/GbZAqX1UfSCXO3gMZIUnAP+iEM=; b=MZ3suc0hpnDLsa
	1bXyGj7uWRfsiwAh/5zR2wjnc1WWbQEj4TeHGevSd7QIL9QJ4xzRrWAyFo/mM7kIQkuitHbKZl917
	OjbyfDjQY5Kh4G3FxVG6z25Y9BDcwUN7p9iAmP/YzHNl68/lcR4hgpL/5js8dsIPg/yvoHOav9Sfh
	hvZxBq28qk1j8u14yoiDC9rO0LRAMjfMPsdL/z/MygwCJ5Rc+NDI/VM9PKn+LtfUYv0KcpfQETDtL
	MnEg70WOqnIgXo9Y9YFysmp8UsarexBB4ahUpP/NbhUI653YJnDZoQw0H9xg7gvYFrd0e63NCzh2y
	zBwjh57xWKfqr4xBy6lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9FE-0000T4-IR; Fri, 05 Jun 2020 10:06:36 +0000
Received: from segapp02.wistron.com ([103.200.3.19] helo=segapp03.wistron.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9F8-0000QG-5z
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 10:06:32 +0000
Received: from EXCHAPP02.whq.wistron (unverified [10.37.38.25]) by 
 TWNHUMSW4.wistron.com (Clearswift SMTPRS 5.6.0) with ESMTP id 
 <Tdf9212466fc0a816729a0@TWNHUMSW4.wistron.com>; Fri, 5 Jun 2020 
 18:06:18 +0800
Received: from EXCHAPP03.whq.wistron (10.37.38.26) by EXCHAPP02.whq.wistron 
 (10.37.38.25) with Microsoft SMTP Server 
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 
 15.1.1913.5; Fri, 5 Jun 2020 18:06:17 +0800
Received: from gitserver.wistron.com (10.37.38.233) by EXCHAPP03.whq.wistron 
 (10.37.38.26) with Microsoft SMTP Server id 15.1.1913.5 via Frontend
 Transport; Fri, 5 Jun 2020 18:06:17 +0800
From: Ben Pai <Ben_Pai@wistron.com>
To: <joel@jms.id.au>, <devicetree@vger.kernel.org>, 
 <linux-arm-kernel@lists.infradead.org>, 
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 1/2] ARM: dts: aspeed: mihawk: IO expander uses TCA9554
 driver
Date: Fri, 5 Jun 2020 18:06:14 +0800
Message-ID: <20200605100614.14726-1-Ben_Pai@wistron.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: 046AADC4E7378F668BD1404E8B899BEBBB327568BE24F0CF5C33F311765E568B2000:8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_030630_498027_433DE57E 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.200.3.19 listed in list.dnswl.org]
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
Cc: Ben Pai <Ben_Pai@wistron.com>, claire_ku@wistron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Set smbus_en of IO expander to 1 in order to be able to read sensor.

Signed-off-by: Ben Pai <Ben_Pai@wistron.com>
---
 arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts | 112 ++++++++++++++++++++
 1 file changed, 112 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
index eac6ed2bbc67..25ffe65fbdc0 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
@@ -820,12 +820,40 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0>;
+
+			tca9554@39 {
+				compatible = "ti,tca9554";
+				reg = <0x39>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				smbus0 {
+					gpio-hog;
+					gpios = <4 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "smbus0";
+				};
+			};
 		};
 
 		bus9_mux232: i2c@1 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <1>;
+
+			tca9554@39 {
+				compatible = "ti,tca9554";
+				reg = <0x39>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				smbus1 {
+					gpio-hog;
+					gpios = <4 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "smbus1";
+				};
+			};
 		};
 
 		bus9_mux233: i2c@2 {
@@ -855,12 +883,40 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0>;
+
+			tca9554@39 {
+				compatible = "ti,tca9554";
+				reg = <0x39>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				smbus2 {
+					gpio-hog;
+					gpios = <4 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "smbus2";
+				};
+			};
 		};
 
 		bus9_mux236: i2c@1 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <1>;
+
+			tca9554@39 {
+				compatible = "ti,tca9554";
+				reg = <0x39>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				smbus3 {
+					gpio-hog;
+					gpios = <4 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "smbus3";
+				};
+			};
 		};
 
 		bus9_mux237: i2c@2 {
@@ -909,12 +965,40 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0>;
+
+			tca9554@39 {
+				compatible = "ti,tca9554";
+				reg = <0x39>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				smbus4 {
+					gpio-hog;
+					gpios = <4 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "smbus4";
+				};
+			};
 		};
 
 		bus10_mux240: i2c@1 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <1>;
+
+			tca9554@39 {
+				compatible = "ti,tca9554";
+				reg = <0x39>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				smbus5 {
+					gpio-hog;
+					gpios = <4 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "smbus5";
+				};
+			};
 		};
 
 		bus10_mux241: i2c@2 {
@@ -944,12 +1028,40 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0>;
+
+			tca9554@39 {
+				compatible = "ti,tca9554";
+				reg = <0x39>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				smbus6 {
+					gpio-hog;
+					gpios = <4 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "smbus6";
+				};
+			};
 		};
 
 		bus10_mux244: i2c@1 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <1>;
+
+			tca9554@39 {
+				compatible = "ti,tca9554";
+				reg = <0x39>;
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				smbus7 {
+					gpio-hog;
+					gpios = <4 GPIO_ACTIVE_HIGH>;
+					output-high;
+					line-name = "smbus7";
+				};
+			};
 		};
 
 		bus10_mux245: i2c@2 {
-- 
2.17.1


---------------------------------------------------------------------------------------------------------------------------------------------------------------
This email contains confidential or legally privileged information and is for the sole use of its intended recipient. 
Any unauthorized review, use, copying or distribution of this email or the content of this email is strictly prohibited.
If you are not the intended recipient, you may reply to the sender and should delete this e-mail immediately.
---------------------------------------------------------------------------------------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
