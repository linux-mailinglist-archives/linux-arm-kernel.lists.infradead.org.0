Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CBF6C1BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NSKGpaGXPZMIMaqFmsOpt0rrps3rsC30VldLtae9J6c=; b=uC8PHEpk5dBjj4ONXJlatKjbXj
	K83AsvdPZhcFExlm/wYk7AXhLZD35azDfHsYk+OHg21j/MtfTf4+cHHonyF1+Z9zKTalwfKuvzbP6
	pVRee5ok3dBpfYBFCA3RwUT21Zdq5OJYZA61SN2f/1n2RJXkCaWmURnZ3SQc7ee07DgRcK46utYnW
	pGZ3YQLFSIFCHlynnAyfujiPonSsdwuDU9XZOmf84nesh9bCObDBAD1858g+IgRbZl2z+sCt5aH2E
	e9MpY5/iunPAiaiTry4XHziVkNJLDPwcKb3JHHpI3SBhvYpQRTHu2tqYUzfS1gkVcyaklqwxFzeoC
	QO+3Ie2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnpz5-0004Ba-Cs; Wed, 17 Jul 2019 19:53:03 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpx3-0002tQ-2t; Wed, 17 Jul 2019 19:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563393042;
 bh=f172zsKe8yNWds5ywNLrH91B/sTzHWIKm+VpqMgCJDM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Tv4A/dDgMolikNBm+JtZ0RlECJ3ZyUChhY66nAUeHgMSSN29uiUxCmTndGMwxzJDa
 wH4q+BUod2AqZzek2yfBtDvP8azIEDQZmZMjYizNmNjWJnp2GWzAAULyI9qDGJn/pv
 n2lQH60H03uBOxGUNLreKK1pKnKvpXeyN1JFOCyg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0Lqm3a-1iR0Vs0b46-00ePMb; Wed, 17 Jul 2019 21:50:42 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 04/18] ARM: dts: bcm283x: Define MMC interfaces at board
 level
Date: Wed, 17 Jul 2019 21:50:12 +0200
Message-Id: <1563393026-17118-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:H8tyGOQ3tJi9HfWsUh8IFqaDsyoK8hSWvUbKpltQvTPzJX6qe0f
 HgR+Rntga2x/7aiAKrTlT1yAxRFZqlaQDlEorJuMrdGO6vsoGjBiycREYAlkBszNeKBGhIf
 3+P/0oIZ6+NwaMgLEosm+lH1tqm1SLjb0+b7UXy9IL9S5MAtwYjSGZSJ4lIrUUo4SvPVmfW
 97oyK/XM8cpqRxz/r5XMw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:M6Ulwco7aDI=:jO2dIyMmdhPx9EfRZATEDg
 pu97MlafezUqgKn4IBooFf4ejlf99GrlQgofCsWTvEiycJj8YJUfFVzNLnT0OhRaENatHAi3c
 HgRhOG1xQH695LfztmmFndFfTUsDA5vYLuet2EMuhdpstb+8RdKN+eG+3MGM4Y8Hawi67sR17
 ZgbkkyEstWHD78Vh3cMw3K0CD1FMPquZl293kXfdqJdTGfN2NrgOZOIy5p/qwmTGAR8MacD2m
 2FLYeyOse+XM8M26gfcXyTYxh/pSZajw/5GhjGNlMmegWoS0XpfKetpsVWlVDO4A7YhcUTNOJ
 oYQqVEV9My8c6nG+TkLI+xJv2JVSOVH5SzWxrVea/YyBd6JaGS8+oFh2u+9QyvDYhGjVfmmb/
 C58H/yqeplgS0EM0vpbF5J0rw4m2maj3gxTmrEdusapSwg6zbJ//63ywzSLwTHRU4CP7nlrop
 1hhcajeRiSN1LdNn4RJjd5lnFer311nofo6ObFdXHdRWJziYh7NoPcMjF6DkEeGTWNeUp0HeF
 SwZj0q/JL7kT+7SuH7YP6bgXpePJv6xmAgLdTgPmR31mUI80u6f3siYzm3gwp1CrzxH7Y8Q6+
 ORmiW6EMbbbsN4AJNeKSRPsr1uwCFN5aAbVi9AVITpNBwloyI7LMSCBU4Fo87k48s1y+isCkR
 2Wqq2NZG8E7bZjV1JElxceU4KrJk/8JVgejYT5GQr92Ajg7NeIDUAOX9kWVzNRSPWxGYOJM1X
 RsnwWqHnJWvkj7gWp8cAs+DjHuLTXSEkky7TAx7bUOlIhUvgUETbY6Ky1tXMCDvYkR5ov6Cqd
 ouXSSSnMrI1yH3bFqzdHgW//79X7k48u2SF0AflAPFB9qCbHfK2Ntt5K8EuPbP3qznudN5DjZ
 +jLL5tzZNd4MthI+IkH81yS3ATyzFD77QCBCOe5jReIJTbqoMV3Ohdx3bO447s9d7umCW9bN1
 Cxs73m7Ao5Ur5NlwuQCy9X+AkU2m6azqSFiCH3HUMYR++833n8OA+K4aFuOmGiAPx8b/ENuVU
 l4A3JX0cI+4ChYgM+XDZ997xRBan44HLuzLM+1h3JVCOSifpdlYtX2NZhvigpaWcg68+Bxzmo
 D5lz5gihNSIbzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_125057_438535_AD2966F2 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Starting with RPi 4 this is the first board, which doesn't use sdhost
as default SD interface. So the MMC interfaces should be defined finally at
board level. Since all boards using sdhci already does this, we can drop the
pinctrl part from bcm2835-rpi.dtsi.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/boot/dts/bcm2835-rpi-a-plus.dts  |  7 +++++++
 arch/arm/boot/dts/bcm2835-rpi-a.dts       |  7 +++++++
 arch/arm/boot/dts/bcm2835-rpi-b-plus.dts  |  7 +++++++
 arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts  |  7 +++++++
 arch/arm/boot/dts/bcm2835-rpi-b.dts       |  7 +++++++
 arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts |  7 +++++++
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts  |  7 +++++++
 arch/arm/boot/dts/bcm2835-rpi-zero.dts    |  7 +++++++
 arch/arm/boot/dts/bcm2835-rpi.dtsi        | 13 -------------
 arch/arm/boot/dts/bcm2836-rpi-2-b.dts     |  7 +++++++
 arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts |  7 +++++++
 11 files changed, 70 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts b/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
index db8a601..cb3f08d 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
@@ -107,6 +107,13 @@
 	status = "okay";
 };

+&sdhost {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhost_gpio48>;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_gpio14>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-a.dts b/arch/arm/boot/dts/bcm2835-rpi-a.dts
index 067d1f0..2d167d9 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-a.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-a.dts
@@ -102,6 +102,13 @@
 	status = "okay";
 };

+&sdhost {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhost_gpio48>;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_gpio14>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
index 1e40d67..83a3a60 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
@@ -109,6 +109,13 @@
 	status = "okay";
 };

+&sdhost {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhost_gpio48>;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_gpio14>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts b/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
index 28e7513..b6b4fea 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
@@ -102,6 +102,13 @@
 	status = "okay";
 };

+&sdhost {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhost_gpio48>;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_gpio14>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b.dts b/arch/arm/boot/dts/bcm2835-rpi-b.dts
index 31ff602..b5782fa 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b.dts
@@ -97,6 +97,13 @@
 	status = "okay";
 };

+&sdhost {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhost_gpio48>;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_gpio14>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts b/arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts
index 4764a25..41afea4 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts
@@ -81,6 +81,13 @@
 	hpd-gpios = <&gpio 46 GPIO_ACTIVE_LOW>;
 };

+&sdhost {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhost_gpio48>;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_gpio14>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
index ba0167d..5ecc403 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
@@ -116,6 +116,13 @@
 	};
 };

+&sdhost {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhost_gpio48>;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_gpio32 &uart0_ctsrts_gpio30>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero.dts b/arch/arm/boot/dts/bcm2835-rpi-zero.dts
index 3b35a8a..84c7035 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero.dts
@@ -98,6 +98,13 @@
 	hpd-gpios = <&gpio 46 GPIO_ACTIVE_LOW>;
 };

+&sdhost {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhost_gpio48>;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_gpio14>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi.dtsi b/arch/arm/boot/dts/bcm2835-rpi.dtsi
index 715d50c..40bac52e 100644
--- a/arch/arm/boot/dts/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2835-rpi.dtsi
@@ -68,19 +68,6 @@
 	status = "okay";
 };

-&sdhci {
-	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_gpio48>;
-	bus-width = <4>;
-};
-
-&sdhost {
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdhost_gpio48>;
-	status = "okay";
-	bus-width = <4>;
-};
-
 &usb {
 	power-domains = <&power RPI_POWER_DOMAIN_USB>;
 };
diff --git a/arch/arm/boot/dts/bcm2836-rpi-2-b.dts b/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
index 7b4e651..f97ec95 100644
--- a/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
+++ b/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
@@ -113,6 +113,13 @@
 	status = "okay";
 };

+&sdhost {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhost_gpio48>;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_gpio14>;
diff --git a/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts b/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts
index 6c8233a..433e306 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts
@@ -80,6 +80,13 @@
 	hpd-gpios = <&expgpio 1 GPIO_ACTIVE_LOW>;
 };

+&sdhost {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhost_gpio48>;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_gpio14>;
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
