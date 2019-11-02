Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3126ECED7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 14:42:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z5LNhhGyFbzGJVLFGHUVwryLOhmCafXCUmDwOkK+VBM=; b=hBuoKQuosQHDGoOWeKWkXT5Dqf
	rJQMf+OJ+KJqNzAT73vGQhh5Y63cOFJC2xCJ4Nfa9ivCVxgnXCm/F4UYc0ikzMSrEDxVU7gHmfALM
	yuHztO7LzowuqWHFsZ/+PfWDeKbJohYUBqMGEzyhW35HqTe804wvTn2NfAj2tTr/6ktpkEojPdGeq
	8LiTVsKvkWWIimqslmbAY8g6pBWeBD4QtWIV+j9WimJ7z2/3M4DP17NDX/Yzu8g9ZSzIa+sv5C0ps
	ixJUppulGZEjiEAcjiLpHg/gazBpUKzHVnjGf+lS5YDoVgugsCGgbq1Dm3e0mt2WFG3RbAZiuPXqs
	YXq+yfFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQtfa-0002aW-Tu; Sat, 02 Nov 2019 13:42:22 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQtfT-0002ZY-1P
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 13:42:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572702116;
 bh=h+XLGZgaXnLBawlPiG/UWpDjzgvkaAmMdoEeD7J3xyg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=c80KcgMJP7AgUKG/w6d+GdeCPFXqmxdehl+zHf+COyPYaUfCxPeG3S+grz0PUYOEU
 NfhVpH6lePgwjqNojo2OrmcIbySAkSa5Jzx4ZTU3PZDEVhoebi2ht2DE8OFqZUMvtK
 mXqTCU/Xbs0fjJCQu3hiKWR7YsWvs53f3TEmJBUk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MY68T-1iRqTx0JHJ-00YSmX; Sat, 02 Nov 2019 14:41:56 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH RFC V2 6/6] ARM: dts: bcm2711-rpi-4: Enable GENET support
Date: Sat,  2 Nov 2019 14:41:33 +0100
Message-Id: <1572702093-18261-7-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
References: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:N6m+f5BFnGoJCatvwlFDrW3tbyCRprl/nNngMCQxjVeOZVZUmse
 crXhNJXNNQvkCLfFuvNH7TSH7iNjlqiwG4NnCz7Y1fxERxRdQgDMGxSJDy8Y9XUOfrHazvR
 9GI4tJ23WH4NjLv9vI/dI4SOSmb1taHCpera9yrVB/Xv4kUfrkU3NTJb86vFcV3Yauz6Mxi
 OPJurtK/qCQsN131mN/mg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fpdkccpY6cQ=:+Y5/e/UMkB45uES7ufA1zh
 NTRe3cEbUEVBSAnQz7vmRp4vFnzdv8cIdnuxm+pKTQtIG7vy8w7X9inzCKlNbuJyU3WSZ8/5u
 OOmTTv9eV9hfjavAPNf5bSdQK9h2B5prvUJvmEu9p7r6hRTcMMhZTb/8IiFB5/qS1ssFGnQTk
 mjK94BMbfxWwMaU4W+iCbVXc/EEFJ8vXPH/0YGNSDSR/bBeI4gl676GttsOfHxw6eiHreclpE
 fwUf8r6aOXMpjFHtX6d++DIrrFZE/hSKzJdMyyGtGLl+rtqIXn0u5VEQtNK5arimFykTP4FCG
 VuMiF6fxX/31Ujya4IwBLzF2vtPtb8VPFi15J7Uou4VXbuzqUXwPviVjh92kI67j8jELCoIgs
 x7URHxzPm3ZE/w+a0lmAgaNHdqckK192R9tqFD6SkbUV8YALXHqA5vTwc9RTUr0X8Udb6zkTT
 CMW5hsy2KYoeQd/L628nMwOcSbv02I8R3UBU7khIGm07H3+BNc1mBqwx3SWePPoZRJtMtnE/p
 V+1O8QOQyzaXWMbcLjYcHbfehQ7MmflZeyESnYTCd1tZzEpvSWHDu9tsYKGrdqGBe/p8b3/Xg
 o8GYP8iaH2YnBJNuglN9k18ibia/9q5QDbxwZxCqWhzadMwmJQYPV2CyjaMZW/sercPIUC1IT
 0mDclnirqgYkwco3uCBp1axXeDTJRpsHof1BqOp1377HETvST+0QwghTlrgm6+pyL3L73156E
 VzeD62fxXc+ZgjYj+Yauzu4uQJ+2lTncdl12SbSZ4jl6sYmWbL6nPnrSP4ad8rxnpkb9+Q9mX
 a+TwzxnvnUJL1Na4MqiEAzJmOd6NGxJEXlJjIX+VriCoxg0fpTNfHVHYLNSlz4BiDOt5DzXRH
 Jv7yoKnaEFkX9JQcEt0KzkyQMSunEZPAxq4IZThrqB9Id/18rlwH9DJSgk9e/s4RofZ+bN7+h
 TZlGXIMtPNjBT1Ily+MBBvIr7bWnk4kliRNpdRZekFHKmOpKEUw8+CX2Y4ehJA4RE12WZzQUs
 8c52jB72jqpegH9oAzRuPvn6KWnzmNsfEtu5HkIP02M1IVcOP2Xsx5ylCLP8MUuQbBllL5YAt
 ySlqzCo1PtxLfNra40VBMw0Si6nU5fdZzkJmZB1QImhlAnNZN746Q3so5lGVDpc34kFxJYA1f
 YOpRvkUfsR+RcuLSHPT1ZpwjDkSERZNk78nE8QjDaaa8d73QrJxpmOQ0I0on0z/ptStogYZOW
 XZFUNXthUeQjrdzDtTBbG24poMqxnxV9IqcGLHA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_064215_414828_6346335E 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables the Gigabit Ethernet support on the Raspberry Pi 4.
The defined PHY mode is equivalent to the default register settings
in the downstream tree.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Signed-off-by: Matthias Brugger <mbrugger@suse.com>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 23 +++++++++++++++++++++++
 arch/arm/boot/dts/bcm2711.dtsi        | 19 +++++++++++++++++++
 2 files changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index cccc1cc..904efe1 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -19,6 +19,10 @@
 		reg = <0 0 0>;
 	};

+	aliases {
+		ethernet0 = &genet;
+	};
+
 	leds {
 		act {
 			gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
@@ -97,6 +101,25 @@
 	status = "okay";
 };

+&genet {
+	phy-handle = <&phy1>;
+	phy-mode = "rgmii-rxid";
+	status = "okay";
+
+	mdio@e14 {
+		compatible = "brcm,genet-mdio-v5";
+		reg = <0xe14 0x8>;
+		reg-names = "mdio";
+		#address-cells = <0x0>;
+		#size-cells = <0x1>;
+
+		phy1: ethernet-phy@1 {
+			/* No PHY interrupt */
+			reg = <0x1>;
+		};
+	};
+};
+
 /* uart0 communicates with the BT module */
 &uart0 {
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index ac83dac..ff24396 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -305,6 +305,25 @@
 			cpu-release-addr = <0x0 0x000000f0>;
 		};
 	};
+
+	scb {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <1>;
+
+		ranges = <0x0 0x7c000000  0x0 0xfc000000  0x03800000>;
+
+		genet: ethernet@7d580000 {
+			compatible = "brcm,genet-v5";
+			reg = <0x0 0x7d580000 0x10000>;
+			#address-cells = <0x1>;
+			#size-cells = <0x1>;
+			interrupts = <GIC_SPI 157 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 158 IRQ_TYPE_LEVEL_HIGH>;
+			dma-burst-sz = <0x08>;
+			status = "disabled";
+		};
+	};
 };

 &clk_osc {
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
