Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BADB91ECC90
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 11:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R9bb9pBPBVf9TIeXudzxdlZs7PFje5tDpc0B5n3nrcc=; b=ZZZPLSELnGcYSv
	BS8XUwKxmrNJb5f/agGr58LKHp0RxRr9YVWLO1RWmd7bOHZNhl10sXq1IJVZjCjkk2K7hxtNTx54T
	WOsTQfjP0Q4KmPOdeM0W+H6LbGuTo0C8gMPc4NqsDaMJdUQ8bV/Uuzk90NvZtAxdLmKtmoy/tqlxF
	qwQC64TwztD1dR/XLdnIv9yhbY/bPc68UiL2x1eB2slrg3oV840XDRWXh07tLm3xmVnB9poXaet/l
	pcJeyuWTvM1zJ++ilXFpOf3Uds2XC3auuBdtyltQGz/0AFdR+3PBNeGY2ti/DbQjs6IDGO5WPcapP
	5HQRq1oh79OZO1q7tTtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgPfl-0007Ak-IU; Wed, 03 Jun 2020 09:26:57 +0000
Received: from segapp02.wistron.com ([103.200.3.19] helo=segapp03.wistron.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgPfd-00077y-Gi
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 09:26:52 +0000
Received: from EXCHAPP04.whq.wistron (unverified [10.37.38.27]) by 
 TWNHUMSW4.wistron.com (Clearswift SMTPRS 5.6.0) with ESMTP id 
 <Tdf87a10a46c0a816721608@TWNHUMSW4.wistron.com>; Wed, 3 Jun 2020 
 17:26:25 +0800
Received: from EXCHAPP01.whq.wistron (10.37.38.24) by EXCHAPP04.whq.wistron 
 (10.37.38.27) with Microsoft SMTP Server 
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 
 15.1.1913.5; Wed, 3 Jun 2020 17:26:23 +0800
Received: from gitserver.wistron.com (10.37.38.233) by EXCHAPP01.whq.wistron 
 (10.37.38.24) with Microsoft SMTP Server id 15.1.1913.5 via Frontend
 Transport; Wed, 3 Jun 2020 17:26:23 +0800
From: Ben Pai <Ben_Pai@wistron.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <joel@jms.id.au>, 
 <andrew@aj.id.au>, <devicetree@vger.kernel.org>, 
 <linux-arm-kernel@lists.infradead.org>, 
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v1] ARM: dts: aspeed: mihawk: add aliases for i2c and add
 thermal sensor
Date: Wed, 3 Jun 2020 17:26:22 +0800
Message-ID: <20200603092622.1404-1-Ben_Pai@wistron.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6710D34E1019471E9B085758383E8462A9B51711E9DCC8DF2EC2BE1F4835B81E2000:8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_022650_113853_7758138B 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.200.3.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

1.Set the bus id for each mux channel to avoid switching channels
multiple times
2.Set smbus_en of IO expander to 1 in order to be able to read tmp401
sensor
3.Add 8 tmp401 thermal sensors

Signed-off-by: Ben Pai <Ben_Pai@wistron.com>
---
 arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts | 449 +++++++++++++++++++-
 1 file changed, 444 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
index f7e935ede919..78451b283d93 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
@@ -7,7 +7,52 @@
 / {
 	model = "Mihawk BMC";
 	compatible = "ibm,mihawk-bmc", "aspeed,ast2500";
-
+	aliases {
+		i2c215 = &bus6_mux215;
+		i2c216 = &bus6_mux216;
+		i2c217 = &bus6_mux217;
+		i2c218 = &bus6_mux218;
+		i2c219 = &bus6_mux219;
+		i2c220 = &bus6_mux220;
+		i2c221 = &bus6_mux221;
+		i2c222 = &bus6_mux222;
+		i2c223 = &bus7_mux223;
+		i2c224 = &bus7_mux224;
+		i2c225 = &bus7_mux225;
+		i2c226 = &bus7_mux226;
+		i2c227 = &bus7_mux227;
+		i2c228 = &bus7_mux228;
+		i2c229 = &bus7_mux229;
+		i2c230 = &bus7_mux230;
+		i2c231 = &bus9_mux231;
+		i2c232 = &bus9_mux232;
+		i2c233 = &bus9_mux233;
+		i2c234 = &bus9_mux234;
+		i2c235 = &bus9_mux235;
+		i2c236 = &bus9_mux236;
+		i2c237 = &bus9_mux237;
+		i2c238 = &bus9_mux238;
+		i2c239 = &bus10_mux239;
+		i2c240 = &bus10_mux240;
+		i2c241 = &bus10_mux241;
+		i2c242 = &bus10_mux242;
+		i2c243 = &bus10_mux243;
+		i2c244 = &bus10_mux244;
+		i2c245 = &bus10_mux245;
+		i2c246 = &bus10_mux246;
+		i2c247 = &bus12_mux247;
+		i2c248 = &bus12_mux248;
+		i2c249 = &bus12_mux249;
+		i2c250 = &bus12_mux250;
+		i2c251 = &bus13_mux251;
+		i2c252 = &bus13_mux252;
+		i2c253 = &bus13_mux253;
+		i2c254 = &bus13_mux254;
+		i2c255 = &bus13_mux255;
+		i2c256 = &bus13_mux256;
+		i2c257 = &bus13_mux257;
+		i2c258 = &bus13_mux258;
+	};
 
 	chosen {
 		stdout-path = &uart5;
@@ -630,6 +675,55 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 		reg = <0x70>;
+
+		bus6_mux215: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+		};
+
+		bus6_mux216: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+		};
+
+		bus6_mux217: i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+		};
+
+		bus6_mux218: i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+		};
+
+		bus6_mux219: i2c@4 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <4>;
+		};
+
+		bus6_mux220: i2c@5 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <5>;
+		};
+
+		bus6_mux221: i2c@6 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <6>;
+		};
+
+		bus6_mux222: i2c@7 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <7>;
+		};
+
 	};
 
 };
@@ -644,6 +738,55 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 		reg = <0x70>;
+
+		bus7_mux223: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+		};
+
+		bus7_mux224: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+		};
+
+		bus7_mux225: i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+		};
+
+		bus7_mux226: i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+		};
+
+		bus7_mux227: i2c@4 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <4>;
+		};
+
+		bus7_mux228: i2c@5 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <5>;
+		};
+
+		bus7_mux229: i2c@6 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <6>;
+		};
+
+		bus7_mux230: i2c@7 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <7>;
+		};
+
 	};
 
 };
@@ -684,6 +827,68 @@
 		i2c-mux-idle-disconnect;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+
+		bus9_mux231: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
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
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
+		};
+
+		bus9_mux232: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
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
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
+		};
+
+		bus9_mux233: i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+		};
+
+		bus9_mux234: i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+		};
 	};
 
 	pca9545@71 {
@@ -695,6 +900,68 @@
 		i2c-mux-idle-disconnect;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+
+		bus9_mux235: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
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
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
+		};
+
+		bus9_mux236: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
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
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
+		};
+
+		bus9_mux237: i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+		};
+
+		bus9_mux238: i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+		};
 	};
 };
 
@@ -725,6 +992,68 @@
 		i2c-mux-idle-disconnect;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+
+		bus10_mux239: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
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
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
+		};
+
+		bus10_mux240: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
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
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
+		};
+
+		bus10_mux241: i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+		};
+
+		bus10_mux242: i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+		};
 	};
 
 	pca9545@71 {
@@ -736,6 +1065,68 @@
 		i2c-mux-idle-disconnect;
 		interrupt-controller;
 		#interrupt-cells = <2>;
+
+		bus10_mux243: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
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
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
+		};
+
+		bus10_mux244: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
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
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
+		};
+
+		bus10_mux245: i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+		};
+
+		bus10_mux246: i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+		};
 	};
 };
 
@@ -796,7 +1187,7 @@
 		interrupt-controller;
 		#interrupt-cells = <2>;
 
-		i2c@0 {
+		bus12_mux247: i2c@0 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0>;
@@ -807,7 +1198,7 @@
 			};
 		};
 
-		i2c@1 {
+		bus12_mux248: i2c@1 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <1>;
@@ -818,7 +1209,7 @@
 			};
 		};
 
-		i2c@2 {
+		bus12_mux249: i2c@2 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <2>;
@@ -829,7 +1220,7 @@
 			};
 		};
 
-		i2c@3 {
+		bus12_mux250: i2c@3 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <3>;
@@ -857,6 +1248,54 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 		reg = <0x70>;
+
+		bus13_mux251: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+		};
+
+		bus13_mux252: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+		};
+
+		bus13_mux253: i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+		};
+
+		bus13_mux254: i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+		};
+
+		bus13_mux255: i2c@4 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <4>;
+		};
+
+		bus13_mux256: i2c@5 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <5>;
+		};
+
+		bus13_mux257: i2c@6 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <6>;
+		};
+
+		bus13_mux258: i2c@7 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <7>;
+		};
 	};
 };
 
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
