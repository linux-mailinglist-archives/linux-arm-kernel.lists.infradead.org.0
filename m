Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D72DF809D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 20:53:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bw8He4WOMPwfPtLw50VeruUJ0TWzit2uLOS++nR6ZWg=; b=iNWTjaA37G+dXhlPFm7WgGzqVy
	yIME6dn3UwoPn4p7qjMUs1MKMRIOjzmC+iu1p1Ds0NQCDSzZhf1YWPfblDLYbookBWWuV1BqWkqra
	iXQx/f2rTL515DRE7IwFMiSOrX+CM8dZuZLClofPGIfznpTzGYfiVUh0lOwYYLWtlj+5C/GyLb2eh
	J1BiXUJErOHhN+wjngwLvBXNcIKv/vxqozEFK0CB1FxBfWJrG32xogKuyfqccbulh05Tz6adrC4q6
	VWP9lJVM+hXncrdxcUEiMagxPWJ9JiY+hb9u+e7xRbAav2thhIAXCDi8ifJ/nu+FPzAdJt1rzhvtX
	8y+HwOPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFkL-000386-Np; Mon, 11 Nov 2019 19:53:09 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFih-0001cv-44
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 19:51:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573501793;
 bh=am5k+ShH8U/QfQdyBRZNILtXr6ux5dgQyoLfNDeiNlM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ZWLhzips9JEVDIrybY6YZcYBeIVNzxFEKx90FCwd2Yiba8sDGCabOeWQ347jmVkr7
 ogVIhSnMlCy45GR5EjCClDrm3fXviNF7L7mKdH6W5/MiD3CMKn7EB3KMm/4a06aBHU
 uZqFYg9N9RGBN5PsEVU3JvL8fdUFDi8zGLmo67wg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MGz1V-1ihfgw2UBX-00E9p7; Mon, 11 Nov 2019 20:49:53 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V5 net-next 7/7] ARM: dts: bcm2711-rpi-4: Enable GENET support
Date: Mon, 11 Nov 2019 20:49:26 +0100
Message-Id: <1573501766-21154-8-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
References: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:UbrYrgHW74lfPA+tgJPjDhRQ6IU7i7clWdYMrwjznjqM4z8OCOv
 9soJZvWh6RiQjlx86Z4/ybxzlbBbCNoWCxQlfbKHxsUtUJapUW6VkMLllv8A6l7+DKr0up1
 ttn3VEs/6ZR1/JwC/HOvqKkvM3mCvjip6er3QlQeVsN+hQZE2GCRPObWy2qgkIvbZqajF/3
 ROvXvD0XmLIqc4aQSP1rQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:grgUlR0qMM0=:g+87Wk7DpT63/3SlHoio/H
 QTUC9LkZyBoxnpDHuuTBxZ/sMXjNFqsmoWwwM2K+4MblutuXqlS4LSx6XAto5aNy5VDpvDVr3
 TeukniDGy+yKwRev2xXONw9DYmMCGX/CPQfzx1/ZBuh9Zu9t+KoTBx/rUlFdGgXO4hyEGdKHJ
 UOOA+tbd95sjl/72JNSNcophpZkRTX4n5LB53ye3OnxxBUKDe0NMhs5cmgn4z2wmb0OzQTPeK
 v/+4gOLM7ebmIqchn6JVJx4UgaMMLmryU9TDCn3Y0/R6MK+R8nl5DzK9nPFfYPMhcpys0gJoz
 DzYwn1bzopphNrPyKVz4dQVQ8KnEurKaMeJA791iWl3dSdaJgdx9Y5EfM3vzOGRlwSgQIFAy2
 n1uBj3fkakArQ1PWdY4Pwj8GrjZL2RaOF/NCJSfDkBfVpwGrYi2Wv4QaUsPBi+/N0bYxnuns3
 64zBjryA+Wc7EDF3CGRs//6C2F9Nxi8WT9sUjSz1+zfGv1a2J34qvKj5N6KlrW97i9jytGp++
 qmds288WQfB1aOAUVS9+OIDzlogo0HgFpmc8jWNXvOnfpmsPpfD97Gqb9iOGchjgLDPNzTshl
 RLjKvGqQ7NBwStZkAMW+aXZG4kWRIa8PoQNSudd7qaXFsvcxf4FQl0C6XwyBn1bGXsM3x5zKn
 v4vtMQARqStBLrQpwBfzUogAFjX8eV8wh6/ynFcugCQNzlyPAGtVIMI7weinOJbIWcSd97FxD
 44mlK961rBcPBKnKssezG3ujTgMzaYS3GoWVUndhTmHMK0EqB1JR2uk/7fYFCwJrnMAdrP1Re
 v/QaGTh6TxXjhCUs5DMV/z/VQzNTpcOIWKvxi2hJLCp5oGCR5Qpbn6tG3rVEhO9G4bapQoNBz
 NnbuortocfuBz5itzKt3kbP3DhNB/bSFqko8fMcqAOht1OCcl734k2NWv5pemPxIcJLN3CxfX
 Dk0i2s+aCoKNKyj4Jy/TQ3ZUmDhcvQDQxP+uOLK8/FXXHOKUBvvTEq/nUCRi4q2Xy/DguPc/e
 Dfl026/Hx2EmacHN7BvXV2fow57s1hn6E9ThXG9Jg/dZsNsniuOu0NBojv61W+CfyvqlUehYt
 2zUo3kipSI/irjy5lJ1gl9G+Z87s6h5gMRsIX4aw0eQNoZZWghmawg8POkiAU0geDOkkgJV0s
 rIRz2cXTRziCZrLf0AY8i/LEuLsMH3CGTbyLtTxtwcak9P7RhUd/+2oGP02Lt3MaE6kScdQiN
 VyE18gITYg62+tlQUO54NRoHQ2JhoNBOHHsJSCw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_115127_487448_6834BBAB 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Doug Berger <opendmb@gmail.com>,
 netdev@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
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

Signed-off-by: Matthias Brugger <mbrugger@suse.com>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 17 +++++++++++++++++
 arch/arm/boot/dts/bcm2711.dtsi        | 26 ++++++++++++++++++++++++++
 2 files changed, 43 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index cccc1cc..1b5a835 100644
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
@@ -97,6 +101,19 @@
 	status = "okay";
 };

+&genet {
+	phy-handle = <&phy1>;
+	phy-mode = "rgmii-rxid";
+	status = "okay";
+};
+
+&genet_mdio {
+	phy1: ethernet-phy@1 {
+		/* No PHY interrupt */
+		reg = <0x1>;
+	};
+};
+
 /* uart0 communicates with the BT module */
 &uart0 {
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index ac83dac..a571223 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -305,6 +305,32 @@
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
+			compatible = "brcm,bcm2711-genet-v5";
+			reg = <0x0 0x7d580000 0x10000>;
+			#address-cells = <0x1>;
+			#size-cells = <0x1>;
+			interrupts = <GIC_SPI 157 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 158 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+
+			genet_mdio: mdio@e14 {
+				compatible = "brcm,genet-mdio-v5";
+				reg = <0xe14 0x8>;
+				reg-names = "mdio";
+				#address-cells = <0x0>;
+				#size-cells = <0x1>;
+			};
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
