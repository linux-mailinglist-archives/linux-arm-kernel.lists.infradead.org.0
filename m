Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8868F6100
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 20:03:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bw8He4WOMPwfPtLw50VeruUJ0TWzit2uLOS++nR6ZWg=; b=oF27zpY7CikquRDYDXqW8tG30E
	b1N4rTH+qmYbiZroQgl9HtVBSarLxo5KthWluRkfsqTKRFRv+5l8c0SEfe91PpF4tCo/wxDrPnaMN
	dKidL2iUsXB1jGYjrcUUu+3SeJD/L1aJnWoBPf4EPNazBAf9pYZDd2Tr0uXMjlv0wqls523fXEYzH
	gercHy8q5cwQdwf71QuDRnqDTVNyyEZmJvMpPX3U3nr/8+23zo/Sykhuiy3Tl1mlPpvNI26p5oSgP
	efiEB9Zxzu2wpU4yBpC/Ug6aD1hqw0S5KFflQiGx+Lhm4Q6o3erOJ2wsAmSjl11dZn9fxgDYwbTcb
	U//OMsLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTW0y-0007XM-6E; Sat, 09 Nov 2019 19:03:16 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTVzr-0006n4-7G
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 19:02:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573326042;
 bh=am5k+ShH8U/QfQdyBRZNILtXr6ux5dgQyoLfNDeiNlM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=cZpggyVblENYQ8ikzV3r4BcTVr7iUbdFFO0vGhP4E0prQQMVaC8FJjxNXMyaU0W56
 Yc5thYPFmb1lJKMv7B4OJYhsC/JCvZ+3pAT0c08PmamjTxQ3iGpKwTBA0yqaCjKw+V
 iHozUROD3nlt/ZFPCp614kLZ256rHiRBKqx/jMWg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MlNpH-1i46K43UU9-00lpmk; Sat, 09 Nov 2019 20:00:41 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V3 net-next 7/7] ARM: dts: bcm2711-rpi-4: Enable GENET support
Date: Sat,  9 Nov 2019 20:00:09 +0100
Message-Id: <1573326009-2275-8-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
References: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:0oger14fwpFQo8s87jr5yrqC+lDUCdi9IE6VdOjEBDE/rVbwlzG
 iYpUGckhrV1HUKj3aVRXJXtn539zkzIoK2SF64wVFeAuCzWN8DX2l9ceVSn0kwMh5XhWzC/
 B6INzHgRuZOyaLx+NmsM2obXgb/BvEUDD9pP9QvGESGr1wBHHo+zkbwL5TKxXiIJpUVyRNw
 lhp4bRTVvUJCxnouvN6zA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4+Xt7+RTBHU=:VS24gW3EpEapiurPZu4hJt
 763PrKk9aWi5WOTtTm4JoR/QNX6LR6BiEU2LFDwfYpUShTl/RZO/GDKiZj+mEuTFMlrT4lI8X
 247uhgbg9an/tvWNkSRH6hV3y1/RTy73ODaw+Rd7UXhgcb3/7VrWx9gG5D3z61NF1SGf6pZJ2
 NV05iSOBPzvKoOFV4T6K4fzbfO8k5UQHQGg1oKtyzbNcbjchK9ZCZvEwY9pMkSb9VsQcSb5sK
 TIeolYc3EFyXHgYF9H79qEEOjprPdyrUgCmng66MYqX6C2nsoKRdcAwNvymJMn3394FooYVV6
 /IK8047Gx06UQHD7+BhIMIBIc3HfiPgNMnpuWAVQdUhJdyV1GsVHpAIeiXsiIGJ93jOza9Q8R
 V51bVR4vdMatyhZe7jQjFC6ba3xNwGw5eIO7BeIcVnJV/tDfsSzh6VF11TjzBTj6OgwEzA4ZJ
 HY4tOjDIraslDfEXA6tf8p/AkgSaX2GweQKrotJSEljkpIbdtBk6bffo/pqrqyCzL9C7vhi22
 erFF864RjHqznNyNv/Hsfeju//xII5u4uqG773jo7IHQekzED36ZhOl+nfVzOdA1bdytv7ap4
 mRl1eOWUtYx0qZpQY+YI5CrEJhWZXb2eZ6nt3BWBnAqLdX8vf7TdcZjXt8SMR6U3R1SVWy+KO
 A/W4aKCJllzntt6uyw11U5+UOPTF+CrCoSiY4EUXf42QRppymKXDi1wbunDF6SJoGmDReFXAb
 Tub4M+3VRI1f2msUIzIadh9Bgd2G1YPqlxr9euWOI3GvrfTqs88gcYYJQ4Xu1bDR5HcfjpeJN
 Qsxrbb6w39lLTZBa6iDbGMSmbtHDU2WlJ7ShIII3WeeCU8+U9+ijmE93NsxvqcvuSHCai1PHF
 V45l28+cQl2K4ipHAFyhItEX/8pFhx2Sfz8O8qbyOUlXLcRe0lGixPW7YI9v2tgkt3DKMA2Rh
 mUcdTy1GLDtRz3+NiBcD9IdtEZawhj9LUYjfvOI0SNUaM4x4lwfBah6l5NhrHgXWRIdWQdCna
 kkYBn2CkUvceytdXz5bb5HtQT3eWDogN/nsdENu63ji8bxLBXlG9e7Dt9viIT/2Zj0zSN1H6s
 ThWvnH0qA7mR6pfxs60MGEaPvXfS9hycYTz+ukkAIwa+uFTfrx3H+rZ+j/zxfWNZrUyj4uUGi
 /FjOCMH65RqfnFm7hh+FmyIlLFQB0f7eOkd4mfhRjp6LZkuJf0iIFKhTY9iK1HVv5pEcGLXbf
 W/+7Kvd3ldYzOTQV6e5zP6k1EkJL5Epyz5aMSzg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_110207_555485_AE381278 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
