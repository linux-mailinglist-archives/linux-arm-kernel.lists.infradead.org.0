Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DB28BE51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Fm+L0Uuk8auTbU0jUlFYbOEEhzRwI9vy3JwInftabDU=; b=i37FQdmC6N9wPEF3bVTLjXpOee
	3l0yndHxJMDZDrYAYtIlG0dIP9WwQxgkfpxBiUa1PeFoUv8gMkXbL8+fA43ZP0C9Ussr74gJXl49f
	ZSlf40wECcCDSU/Dn8kttwM3taG4ye7GpwPcAuzrDzp+/UadnzqkAwgBU/JmptlkMUzd5/M1MSwe2
	LIO1bAktNGkFiJD41uMrqOmC6DfrBHvtYK+RlYsDDGyEdhEOb0JEJV8uMnYYa41HLWtFsWpOS79Fs
	C0bLWUt2eg39qeeKwsArzhyUuVUde1xgjHdO3qI+JnN9Dcp1ouGs+ovWZy51cJWWsa/HRcv5NEuKE
	Wz3cURMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZYS-00009x-C4; Tue, 13 Aug 2019 16:21:48 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZXm-0008Mq-Sj; Tue, 13 Aug 2019 16:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565713257;
 bh=iDUcfRWgj6xMZ6ufkHWxUXFO8H+8dzKn12ZcmJVMWeI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=dCCwDtMigstSqGI9gP6G2PaZPNT5E4d3jocGaFRRFzopTdUVIYfODuCd04Y9grOhM
 fw2AB4t0MVxKCr3o4tdT0O4Hro1D+Aj4jbA5bpj0KChoG9/4F3EnTbPXUO0Dv5GHgo
 PjaC1CmUMOxf50c0Yg+IVNQGGlIWLQGSfxtFqQxk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1M3lc9-1hxIIF3UNH-000xKJ; Tue, 13 Aug 2019 18:20:56 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V2 01/13] ARM: dts: bcm283x: Enable HDMI at board level
Date: Tue, 13 Aug 2019 18:20:36 +0200
Message-Id: <1565713248-4906-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:YeUUJDIN5zMfxRBinVGGPBzmrODzPMlVYsAXObRVUltuHVuiyj/
 PB/mvRpGBXubvAnEdwOGqM10roF2Q5/iYO0jGY2RtHz42ErMNzJkUIXjscRrf+knxTd4mmK
 B9buV8kkhs0YVT91EkuamKADVi7RIJ7gV1Ejlqxd9MlGN4tKoVUXnrMyc9fZ6gSyrnyCU1U
 3qut7AU+rBD+AOd114wpA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fNRUHP566jo=:GTXSW49JCETG09U/9GoNNk
 A/UQoeRsY1ChScmzOVh5PnI0AZRjP6v3u/2EaepghWRoswOKqMo9RcAGsF/AA3+p5Fa2pRedS
 m90GqZY1f85W3Olw4YF5Y49us7+ztI0l/L86X89Wu3aA9a7XzLE++W8mGxQubtq9qiXTEIr5j
 DPRpdUr6uVyg0oPw2HUf843PpTE59IMdqnB689C5Vcsx4UKEP4nKyXeF9CGHOl5OrMZFOa1FG
 Yu/NybQNj/aMJY84EWv0JXEdPDPB5GzGNVUw67zbbtM8f4AUMHaSgeDOjZ7qM5A3FbW9O9XmC
 HGFyhBXWRYik+LjnZEjm6zQJ3xbbwtrFyVfdqsTTVZpC0Djk+JmsRePirxn4EVzkOPQHpoFFb
 ZZ5Wklbr2KsBd/9/67gERBAdcgs0TiDfys2ENJm183jIaRQcLsvSRNFIygwQizB5uAMyjdfzd
 bE+wZfzYixUnDcx+vWGTyaOLAmUf+dG8IXCxcxTM0N6XX1+9ai93aCiu4vBXRvQUOpEGDmvkD
 KNyr5gP1GpKxs8njI5Rr5pZ5NppDDU0X9+X3WPSICv1IgNYmvYaw0YIZvMsM5rzitoLQzA1Cl
 2yPNdae/e2E0LbEJfhrU8GhhrZZ3zeg2xRTH5jlgqLF9gqPU4OZwS9qkEBzu5s9GqihFo0QRG
 sNuJcUYwUMCarZjgZVg8ENvZ6I7oLADRsZyS0cASCAu5BSFZ9nY2WPLmUxTmgQudYPUvBJAZh
 JNGAC5v5pmPa0fLopxi5Bt0CVtJmQDlHQekpI7baUS6QMSRGGIBXO9dCfM9Va3EkpNBolxtCd
 jl6O5xn9KiBaRcGWCobQic7I+bl91lMMWOb4oHpS53s/OwxpgmOMo352Iki+EVfZe/QSRchYr
 V6fpzpDCp/Ja/vBtXACJLKj2kZ4nWQ1zhnpmlpIVrOyFxy03tkbNq+vuHKteZiqoGDIlsHGu1
 1q+TJeJNaLVXkaDXj6JjpIcnog+igGXWrPd2Soovl+ExD0ef6XAwiLQyaGBWR27oZTDUXKylq
 uzEy7qf39vJmO8aQ6rBnBjeWwqPGsPUJ6wAz8ZV24AAKxbIxp423HZzyn4B59DqyxXi5S3CGx
 Np+9NfcMbBkXMRAn7iloX1KYBIJAAJF+0F5Ks1SL8vBIrNKrHuolH3Udg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092107_231354_2C5AF232 
X-CRM114-Status: GOOD (  11.64  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There might be headless setups of the Compute Module without HDMI,
so better enable HDMI at board level. Btw this allows moving HDMI
into bcm2835-common.dtsi.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/boot/dts/bcm2835-rpi-a-plus.dts   | 2 ++
 arch/arm/boot/dts/bcm2835-rpi-a.dts        | 2 ++
 arch/arm/boot/dts/bcm2835-rpi-b-plus.dts   | 2 ++
 arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts   | 2 ++
 arch/arm/boot/dts/bcm2835-rpi-b.dts        | 2 ++
 arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts  | 2 ++
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts   | 2 ++
 arch/arm/boot/dts/bcm2835-rpi-zero.dts     | 2 ++
 arch/arm/boot/dts/bcm2835-rpi.dtsi         | 5 -----
 arch/arm/boot/dts/bcm2836-rpi-2-b.dts      | 2 ++
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts | 2 ++
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts | 2 ++
 arch/arm/boot/dts/bcm2837-rpi-3-b.dts      | 2 ++
 arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts  | 2 ++
 14 files changed, 26 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts b/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
index 5b42e9a..6c8ce39 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
@@ -104,6 +104,8 @@

 &hdmi {
 	hpd-gpios = <&gpio 46 GPIO_ACTIVE_LOW>;
+	power-domains = <&power RPI_POWER_DOMAIN_HDMI>;
+	status = "okay";
 };

 &pwm {
diff --git a/arch/arm/boot/dts/bcm2835-rpi-a.dts b/arch/arm/boot/dts/bcm2835-rpi-a.dts
index b716214..17fdd48 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-a.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-a.dts
@@ -99,6 +99,8 @@

 &hdmi {
 	hpd-gpios = <&gpio 46 GPIO_ACTIVE_HIGH>;
+	power-domains = <&power RPI_POWER_DOMAIN_HDMI>;
+	status = "okay";
 };

 &pwm {
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
index 3318082..b0355c2 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
@@ -106,6 +106,8 @@

 &hdmi {
 	hpd-gpios = <&gpio 46 GPIO_ACTIVE_LOW>;
+	power-domains = <&power RPI_POWER_DOMAIN_HDMI>;
+	status = "okay";
 };

 &pwm {
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts b/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
index 97d7eb5..33b3b5c 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
@@ -99,6 +99,8 @@

 &hdmi {
 	hpd-gpios = <&gpio 46 GPIO_ACTIVE_HIGH>;
+	power-domains = <&power RPI_POWER_DOMAIN_HDMI>;
+	status = "okay";
 };

 &pwm {
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b.dts b/arch/arm/boot/dts/bcm2835-rpi-b.dts
index 37e02a1..2b69957 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b.dts
@@ -94,6 +94,8 @@

 &hdmi {
 	hpd-gpios = <&gpio 46 GPIO_ACTIVE_HIGH>;
+	power-domains = <&power RPI_POWER_DOMAIN_HDMI>;
+	status = "okay";
 };

 &pwm {
diff --git a/arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts b/arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts
index 41afea4..a75c882 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-cm1-io1.dts
@@ -79,6 +79,8 @@

 &hdmi {
 	hpd-gpios = <&gpio 46 GPIO_ACTIVE_LOW>;
+	power-domains = <&power RPI_POWER_DOMAIN_HDMI>;
+	status = "okay";
 };

 &sdhost {
diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
index f38f388..09a088f 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
@@ -105,6 +105,8 @@

 &hdmi {
 	hpd-gpios = <&gpio 46 GPIO_ACTIVE_LOW>;
+	power-domains = <&power RPI_POWER_DOMAIN_HDMI>;
+	status = "okay";
 };

 &sdhci {
diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero.dts b/arch/arm/boot/dts/bcm2835-rpi-zero.dts
index 5fd0686..6dd93c6 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero.dts
@@ -101,6 +101,8 @@

 &hdmi {
 	hpd-gpios = <&gpio 46 GPIO_ACTIVE_LOW>;
+	power-domains = <&power RPI_POWER_DOMAIN_HDMI>;
+	status = "okay";
 };

 &sdhost {
diff --git a/arch/arm/boot/dts/bcm2835-rpi.dtsi b/arch/arm/boot/dts/bcm2835-rpi.dtsi
index f5125b7..6c6a7f6 100644
--- a/arch/arm/boot/dts/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2835-rpi.dtsi
@@ -67,11 +67,6 @@
 	power-domains = <&power RPI_POWER_DOMAIN_USB>;
 };

-&hdmi {
-	power-domains = <&power RPI_POWER_DOMAIN_HDMI>;
-	status = "okay";
-};
-
 &vec {
 	power-domains = <&power RPI_POWER_DOMAIN_VEC>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/bcm2836-rpi-2-b.dts b/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
index 6a89999..0455a68 100644
--- a/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
+++ b/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
@@ -106,6 +106,8 @@

 &hdmi {
 	hpd-gpios = <&gpio 46 GPIO_ACTIVE_LOW>;
+	power-domains = <&power RPI_POWER_DOMAIN_HDMI>;
+	status = "okay";
 };

 &pwm {
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
index 0e29aaa..66ab35e 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
@@ -118,6 +118,8 @@

 &hdmi {
 	hpd-gpios = <&gpio 28 GPIO_ACTIVE_LOW>;
+	power-domains = <&power RPI_POWER_DOMAIN_HDMI>;
+	status = "okay";
 };

 &pwm {
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
index a1487ae..74ed6d0 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
@@ -125,6 +125,8 @@

 &hdmi {
 	hpd-gpios = <&gpio 28 GPIO_ACTIVE_LOW>;
+	power-domains = <&power RPI_POWER_DOMAIN_HDMI>;
+	status = "okay";
 };

 &pwm {
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
index a36bfdb..054ecaa 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
@@ -126,6 +126,8 @@

 &hdmi {
 	hpd-gpios = <&expgpio 4 GPIO_ACTIVE_LOW>;
+	power-domains = <&power RPI_POWER_DOMAIN_HDMI>;
+	status = "okay";
 };

 /* uart0 communicates with the BT module */
diff --git a/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts b/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts
index 433e306..588d941 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-cm3-io3.dts
@@ -78,6 +78,8 @@

 &hdmi {
 	hpd-gpios = <&expgpio 1 GPIO_ACTIVE_LOW>;
+	power-domains = <&power RPI_POWER_DOMAIN_HDMI>;
+	status = "okay";
 };

 &sdhost {
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
