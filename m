Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A86DE6F935
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NSKGpaGXPZMIMaqFmsOpt0rrps3rsC30VldLtae9J6c=; b=h2i7i5O4TmofWpmecRxG7DdJgL
	rXLuU+3WzQvgB74ClWyseR46xAffwnZlJ/vIIFXd1Q/vYoaPGfyIIc/WnxHbeXe5yvT4y1hkUpd5X
	+qhcNjvOXWiNLkVe2ICkGH4HB4/LuI33iY0bs1k7/amy3lYGb9USVWWf2KvbfvhDbH7ZJrHOqBeMr
	d/7RICv4OX53VM8XMQqNOphOhufsR27Vuw2jovjhHj+pTbWHWXd/CluAEz8FKwylpXbeShLLDcxjo
	C/Kf7ZvdQKnKrzips8IJZedlPWIpEzovFVAgV16s39TnpOfcEVG1wJdZOZe9c4rBS34ODDbrNq6IS
	7bRo+qwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRKn-0006oV-V4; Mon, 22 Jul 2019 05:58:06 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRIi-0005G7-OV; Mon, 22 Jul 2019 05:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563774938;
 bh=f172zsKe8yNWds5ywNLrH91B/sTzHWIKm+VpqMgCJDM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Ybeb0TcFGtRyIal+8MgzFGfkwMU1sxdLcHz0xTomsuBA7KEsHM/I2wFXJMbX4yjzL
 8w1pzuapzfPVl6ovylYHjPt0GfYv0TEBFi9vy9s0AlHbRU1fwDtNPmyV85OyRNfZl4
 It2UXBQhGN7Vx75ZTp6lpOJT9547XtfjOjB9WDrU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.98]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0LzHZ7-1iSsdU3S2T-014Tm4; Mon, 22
 Jul 2019 07:55:38 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 04/18] ARM: dts: bcm283x: Define MMC interfaces at board level
Date: Mon, 22 Jul 2019 07:54:35 +0200
Message-Id: <1563774880-8061-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:AXy4t8CxDUNd15b3CCEUgH+gIkCfO0Qm9Fz8w70RGONbuZsEztq
 qBu5Px4rWSx/Ng7D2yPwnCIFyZdPj/0ji+DQZ3YSXuvpSYS+N+sAZ0p85mFQ7o8XRRHw0iK
 /FtqxsVBxW2rcrknt7pz7/0UditF+dkSen/SHbyUd4zNhvITYb0VjYWOjH8kWAbr7MKkzBI
 /Yu0ioD3oL2ymU0mP7tUw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ScrwUdDYiSA=:bSCt8W9lfYgPUCA8uQCa1m
 GZOP7x65nEu7JfNyPqqhs8D21K2VIqwU7ZdrWtns2Dou3QjyEMdkDS6T4l3PdzP2EsYhWR2HS
 qF+YiYRJXfDHC0wVsBuvMTKlyizTk8QQxwY4BzTXavUpNPJ/jpBzUCocs2VrGZaRUA3IhJHJn
 0Skv7SiykRzbY/i0jKk+eBm+y7YIZe3hKlcV8+F41rplvE+W4okoIjs9C6fzgC3wGnHYT9NKt
 8NzOo+KcPmqf88zTz5+9JlgHy4zNfAUo+McX1Txxax+YbH15bCNRZia4g1cVwjh9qGItShGhZ
 0zNsWR3Ih/hXUYjm39HabqX/DadaqsGkavet3MYiWkFZ/5pGIfZQz0qktUXrnnGPlivesrIe0
 RNUHp3u48aELT8+uWnnuWJZcdUdP7/Q8sxiXsXGhnrnlAx+Ijiy1ykWmH4ysDgGXrQGONuEw7
 YDDJ8gw8ATlmAx9G2A1hDc4NwDeabuC/+xeQCyC+Rm5pTcecoFAUWPLF9nd6w/Wo2Z1N+1e2n
 vDiCtfCzfXWZbvR/F17qgOE1snUDEYQPgQESCPWDiq2sSD/RztUVCyq+rXBj0Xrydx1WI2DCk
 Uwtfdzl7rKs2DpiYLW2n7Tnbh8dnxKbAgaltDDOaLC1LyIRtf1NU0VgCr5ZkgsRnzxAHMwWEr
 DZCgk7Jxhgszwg0DttTpP613HCkVVFKjFSii20dbXjvrLMWdKvtXdJwvvFl40pGoM5CeLXIq3
 Cz70Wa6X/ZWAHvo8R5BJZDEqcxivG01lKCwREwJXfjaTDWW3rSj+G5MsCiXYf3WV3++YHMi2G
 EjJbL2y/G47DFj6joRReGL9yIpVCX9Tufw5DN9UdjJlDliXxdYO9c2damQfnhs2Ozr+bE1w05
 ANOo0QBwuJ2eEWW15uh4ea2x8LtFuTvAz0PD0tDY0ecfr4DfeeajN9YpGa6Xc/t39w8myZgro
 psutpJwihMPeE+UjRDIW6iprD3Bosyvt9JhRyKUEzqe1KDg2oAiJJgm1XyrhFa3xlyRYi7+9m
 GYsC0mCxeNXgP4MFHmHCE88g0/X1tkcUsbA/T30f4N1RvZqLrGsXv5/SAsbE7vc2KQ3QCu5MB
 652VLbOPxVYq8Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_225557_089949_793065BA 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
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
