Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9E4F6EC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 07:57:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bw8He4WOMPwfPtLw50VeruUJ0TWzit2uLOS++nR6ZWg=; b=e2/qkKOaQ8PUoRgvQZlNxGjH79
	8op+1S1FOnyJzxPu+/kaFDr4xHSozyHZEAhsYxCToL/buW+2xDb1oLSKsw6kpT9oN3eYpCI9dnJHl
	ZTAjHZR+5ihIbFd3d+ye4RjdFpeTfB4VtT1hYKAm+3xgLYCDF6yFu4MNZgc7m5hmLs5+I5qTezhMh
	7D6McTo+QTwWLfBLPilcc7OXHhuZEuxfRXwWDN1CgiyYJfeKLLencLYQKHI0cJmv2qvjqUrbh1lOg
	NOOCGnb9rA/se8aTZ3a/jUPjBV2O9SqZhmXJ2frmuElszp6ukYe5jK7rJwC3EKJjZD1acrBX4BM7Q
	uh6QnmZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU3dq-0002tZ-Jt; Mon, 11 Nov 2019 06:57:38 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU3df-0002sx-GO
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 06:57:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573455364;
 bh=am5k+ShH8U/QfQdyBRZNILtXr6ux5dgQyoLfNDeiNlM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=RApLwqGMk/oF/T5fy2n6Ki38f/8gU1sAmixbHhlw3w1a7r8ohDhQ7v/NqitDChArt
 qWBhwPankPJZaw0slnTVr3USIkng8xK7WrbVZgRXCMjmVciWkSAisNO549MMRyOWHT
 KWPcQ0JIfJvg+gfrJaKOH7l0Na5b3BwuY4MLO9hA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MFKGZ-1ieqKo3hVZ-00FmJG; Mon, 11 Nov 2019 07:56:04 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V4 net-next 7/7] ARM: dts: bcm2711-rpi-4: Enable GENET support
Date: Mon, 11 Nov 2019 07:55:41 +0100
Message-Id: <1573455341-22813-8-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573455341-22813-1-git-send-email-wahrenst@gmx.net>
References: <1573455341-22813-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:FtYw9AitZ/QWi6w2TJzn4EBO/VhwqWfVGIfXiA4PmfXq1eBy23k
 muNpAVhuygC+ZOR06igORgZiQv1dAJXdmyX7LtqN8uUZmcGGTjBKRADTPf3vJBnih9tfulD
 qlP33dILLeEuc1kaQiICvpE3+1knRWBVsMCLY/nYTwlIWbWFOrmgQwTIrZ9QNzOSRQyD1US
 ZHVZUCSdmV4x7pRIMDgSA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VEcE/ir0bqg=:JaxsQix5JyZ8OVQ8MCL5dy
 h+CuFtGAhAaAt67se0yoAFCbDhAz4z/B3qHYexipnRMhOL7yba5WHSFcx0J7DlZn99+ap942t
 8QOa2uUYcutnLQlp8fp9xwlzykVx3jg0+bOa2qA7g/58lKlQM7L3q1ZdrGgqldMgKhrpq2qfZ
 zv1vdURGvJxZhEe/MDFiAxzh5+c1o0Ogag5TJVyH5iZkvFnSqV27xOozh50aiHjDbfi4Jy7zk
 P+KPswjbW583RA2tz9pD9Uqt3TYY20bEfX/23U813fBimEvk3ggmV11mbGg5WipEhJNPp0JCJ
 5S0TCjiEaMGhS7Tv+uXcqXO/cotg7PMBIkRSt02gUbYFoqEjgDZNrZXRUzZ4wSHh1dWbOl/sw
 qJvx0rN7aEeFPbS+fTLQgHOlUPB4A6uRVLzTh0oSGPpmXs+BgayfD2zrUQJfwkjHU/u862N+M
 +tT6HC5i6chR2hmoF+E75BxtwFZFPMrNLfVa90nyKKYmo+6cVZr5cXE2mtCm9pa7xaSo49txr
 0Hw0wo5AZPojFkQgsraq74smoLrNyFtHX6l42+JO0Qt0C9oDo0CytmFlQF9y8ctbnNFCF4nPm
 CtIdrKDKB8r6qpS/3EqUID7zxVSIBm5ijfIwaG7Mlhu8L2cnq+cSw6w6t803h16eatJ8VC0ty
 1enBFgaUb9KOImqxH50hqC7DW9CGpnkmQq4UTc5clxP+jGdqW+EnCwXzXAAK8Tq/75xe4ORT9
 0k7Kv7c9NIdTQ7jjJHlw3Dzv5o3Gs6n2F7qu7fw1Vcugm9RQkL+oEiiyYB9xcRcJ+wqD80ioA
 mkKPRDPCxgwxklnRqwrlD6RO5H3eS7pzNw3AQPJXE4G6BrKQFFORimgHYCZgEP8T3S2QINYaM
 tQ0zZE4PU+ncf2kqrNuMQ1befO/hTXZi3MrIyk9zSQCAW/8U0r/vp3O6jnXXX41NAONKrvdxt
 w64yq1xYtA0matk40zJRd2GdQcYBxX9qsotZm1pzx9E9nyTi2ohbgie/fNekdw2ck9ao9+6Vg
 YG3idxsdetLUijaq/7UmhfHOVgWzObqO7TCUcPy0tybpEQ3/EXq0KulpNc5Cb7U/9jAux0Nt0
 LSTfxxuZSpOl542kSCQ7jVZNJYmhMWTLrbJuHKnWxAPExfxwNoTldvePff2i2N7YcpzkzkUz6
 2Tdm0pH9bJ4WZ8+GbUHlDy/CawrSoE8l2/lGuZg9L5WARF94F6Q2BXbHnI9Q4P5D0qBnlIjhx
 IzsOj9HN3UJ2fwHKH8vsY5DlhIv4JUDLsLyZ1IQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_225727_882702_0473C882 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
