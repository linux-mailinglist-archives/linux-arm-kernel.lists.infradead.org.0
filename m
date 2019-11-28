Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B0D10C664
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 11:07:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y7sS6CXf2j5/cY/CfhGvWZ28sNY1OGiuIRQE+uiD1h4=; b=pk/HcC+WyDfure
	9k4t/nfmBH6cMCdaDSP4mleD+YrLQUNiAAwMF7BY+qUi04s1VhbifFIlFSPCGxFqe9mPPc4oz/MGh
	FhhPTxG965nG1NiHpewqr8/E5H2fuNOnz6+542jMFnSKsv1sbgWdfi+StC+VbE4TTJsAcUW3G07P/
	c9oEl3plCbP1tBx4zvZrXJxlgljq5pP264k0RENzM2uQi1C7HNH9/gIhxTQzWL0cH+4t3/iDbQwqx
	PAB8soJGwi8dPiOgsIw14JOO0HoxSQIDiwZFEHrMN4OzARE0kEWHVwxRWeKSKBm9SejvUd3L4h3DI
	M1dEi7kzcyPywcY+FatA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaGi1-0007JO-8a; Thu, 28 Nov 2019 10:07:37 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaGhr-0007J0-Ht
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 10:07:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574935637;
 bh=2zQMZkhlvmPqfR4bW72WrM1X2vOkND7H6zw+qEX8U5k=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=iEds2dpH2W3n3NJOrhRzYwYttZYZPWAic1OVdy18yKJNcwTxZilTgDlfiKzjjTL3h
 mtSALC+BdRWTn0Vmudr9QahS1Y3pKGu8KrSQ0BeMD0gzHAWqxmXvX8BNYxDKxvdOB6
 ojQ5Q7FKOumz3xNhkLLRzeumJpuObp/kcEuDSpy8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from zaphod.peppercon.de ([212.80.250.50]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M5QF5-1iYtG53Kz7-001SCD; Thu, 28
 Nov 2019 11:07:16 +0100
From: Ingo van Lil <inguin@gmx.de>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Peter Rosin <peda@axentia.se>
Subject: [PATCH] ARM: dts: at91: Reenable UART TX pull-ups
Date: Thu, 28 Nov 2019 11:06:29 +0100
Message-Id: <20191128100629.10247-1-inguin@gmx.de>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:vfC3vJk8FsxmCb+AYv4X1cMohXEUY1LuX9wBqpCyDJoGWoWFDzo
 9sVXgCFcBslpRL0rLv/bVR/TXeYnDV5c7xpr6AfN8nLPwzSqCELZ63B8AhEg3dHHIMS2GNY
 eOw5URR1tw0oQTsQBnmIhSHbc7GVrDwdBl8W7qN/xitPcGKqpskpVaGM3b1kyigaLTLb3is
 h2TZ3r2bcsudsmA7YWxgA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:C8HVvU9iQbk=:h9qsrHMA0oVtcEFWSYszlB
 Dc9s97AuEb63IuZo/uw0YM7z9jVr8hMOi3N8bL/ijy+VhN+JceR2qUuQTTxc5wfxCqg/5S2Pq
 6wCdJisvuiI8RuDiNQ7zPgrRWhBvtsh/us6HyMVANcfNMZ7nkGx7Nqore8hwRTHda9M8dQKgn
 2gyEVyCynLub5m9vFfLKE6IDQHNu6SQnESnvtO4UlCexz9toxnIx+qBHo+aqYQTzVVeAhDaM0
 7BRGD4K9s6iSEO0Ah831HOGh2wYk3OujP7mpcwaHjaiiGISy7TfUh1T763JnG1n5/U5gJHH6u
 W/1YsOH0lF0AA0EBVXPdvlbC97da8wWY9iUASlgktCeN9JX6G8U2un+b3d4dw1YIq1TpshuD3
 WepXRA8H9Z7gca3H4d3ULiVOYFQWwryGWf4x0YRgZmBcJWWoazp68qU7KtKQfdXq8g5/gAHZF
 w6HpBm91yVIbB+c+GW5pwPzIh+B4YcB78zpFCg2I9YlUK5MQ1ypxL23l1Bp6yT2qKVe4O69wg
 eQ/LPTPo7DFf5C6rYViVZJTm1jBlFBElYrmiZnf0MU4s16OmJmJIHzmRCTvsFp6VfbrZwf0+y
 5A6SvWp77+8npSN9/WiK/4Pmi8iN5Ib+hmzxc9PZMHU0eR6T3kWSAPJ4Y4S4ip/HaDJ+yx2PB
 L0f2uYhltx14kBwCkwCt0STm+6N0BdqfWjzJ9Hs3rEc0iaPTD1p0IrgHSXOUkUsVOkX8wZ33G
 gGXIm+ifjufPZq460dOUA5gNWklP7KJ7HVeMxCT02IOj/UYEng+nkGrlq19i9jcKGlSkFpzpk
 hW8tBhdwoX9CYvSvaRVYlMxcYRL0A250ZFK9MkhxogOzj61t0Tyz7rvw1pxWq4HeZ+0MvMZCm
 e0WcS/6NnL7HV5+M2rO6dkkuNkyDTPpAqs0OK+eWGf42ki761MUrLmNNkham/nY5FYICZcjb1
 k0hPRg/CLaeLVAGDqN1gDlERxoFqx+HOkBHfgsp+yrpdiNWWLNiSJcXQv9S84zZZKZDKMM/w8
 j1XRq5X+nMR192RxPsi1pV9fWvbenP5Gm7dfPO8R5dEvuIhCOtqeM5Ef9PzTYPpC4BXQ5HaBk
 7ppV7JEejNbwbGH72AL7okhwBQrck2mO+k0nC08UxKOmpIyzAscIxsO63UTHgl494227Eny6D
 +LK9eXOP9r+f8kq+zfNjIK2RwI0zMhvK7PJn0KvD7M1fExU50qM2z2hxunmRLg8bDcutOBWUY
 HxtfIijQwPtzdeGyOwXPgJG03/C7lnt2VPAW3vg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_020727_926881_802E08AD 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (inguin[at]gmx.de)
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Ingo van Lil <inguin@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pull-ups for SAM9 UART/USART TX lines were disabled in 5e04822f.
However, several chips in the SAM9 family require pull-ups to prevent
the TX lines from falling (and causing an endless break condition) when
the transceiver is disabled.

From the SAM9G20 datasheet, 32.5.1: "To prevent the TXD line from
falling when the USART is disabled, the use of an internal pull up
is mandatory.". This commit reenables the pull-ups for all chips having
that sentence in their datasheets.

Signed-off-by: Ingo van Lil <inguin@gmx.de>
---
 arch/arm/boot/dts/at91sam9260.dtsi | 12 ++++++------
 arch/arm/boot/dts/at91sam9261.dtsi |  6 +++---
 arch/arm/boot/dts/at91sam9263.dtsi |  6 +++---
 arch/arm/boot/dts/at91sam9g45.dtsi |  8 ++++----
 arch/arm/boot/dts/at91sam9rl.dtsi  |  8 ++++----
 5 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boot/dts/at91sam9260.dtsi b/arch/arm/boot/dts/at91sam9260.dtsi
index dee9c0c8a096..16c6fd3c4246 100644
--- a/arch/arm/boot/dts/at91sam9260.dtsi
+++ b/arch/arm/boot/dts/at91sam9260.dtsi
@@ -187,7 +187,7 @@
 				usart0 {
 					pinctrl_usart0: usart0-0 {
 						atmel,pins =
-							<AT91_PIOB 4 AT91_PERIPH_A AT91_PINCTRL_NONE
+							<AT91_PIOB 4 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
 							 AT91_PIOB 5 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

@@ -221,7 +221,7 @@
 				usart1 {
 					pinctrl_usart1: usart1-0 {
 						atmel,pins =
-							<AT91_PIOB 6 AT91_PERIPH_A AT91_PINCTRL_NONE
+							<AT91_PIOB 6 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
 							 AT91_PIOB 7 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

@@ -239,7 +239,7 @@
 				usart2 {
 					pinctrl_usart2: usart2-0 {
 						atmel,pins =
-							<AT91_PIOB 8 AT91_PERIPH_A AT91_PINCTRL_NONE
+							<AT91_PIOB 8 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
 							 AT91_PIOB 9 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

@@ -257,7 +257,7 @@
 				usart3 {
 					pinctrl_usart3: usart3-0 {
 						atmel,pins =
-							<AT91_PIOB 10 AT91_PERIPH_A AT91_PINCTRL_NONE
+							<AT91_PIOB 10 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
 							 AT91_PIOB 11 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

@@ -275,7 +275,7 @@
 				uart0 {
 					pinctrl_uart0: uart0-0 {
 						atmel,pins =
-							<AT91_PIOA 31 AT91_PERIPH_B AT91_PINCTRL_NONE
+							<AT91_PIOA 31 AT91_PERIPH_B AT91_PINCTRL_PULL_UP
 							 AT91_PIOA 30 AT91_PERIPH_B AT91_PINCTRL_PULL_UP>;
 					};
 				};
@@ -283,7 +283,7 @@
 				uart1 {
 					pinctrl_uart1: uart1-0 {
 						atmel,pins =
-							<AT91_PIOB 12 AT91_PERIPH_A AT91_PINCTRL_NONE
+							<AT91_PIOB 12 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
 							 AT91_PIOB 13 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};
 				};
diff --git a/arch/arm/boot/dts/at91sam9261.dtsi b/arch/arm/boot/dts/at91sam9261.dtsi
index dba025a98527..5ed3d745ac86 100644
--- a/arch/arm/boot/dts/at91sam9261.dtsi
+++ b/arch/arm/boot/dts/at91sam9261.dtsi
@@ -329,7 +329,7 @@
 				usart0 {
 					pinctrl_usart0: usart0-0 {
 						atmel,pins =
-							<AT91_PIOC 8 AT91_PERIPH_A AT91_PINCTRL_NONE>,
+							<AT91_PIOC 8 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>,
 							<AT91_PIOC 9 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

@@ -347,7 +347,7 @@
 				usart1 {
 					pinctrl_usart1: usart1-0 {
 						atmel,pins =
-							<AT91_PIOC 12 AT91_PERIPH_A AT91_PINCTRL_NONE>,
+							<AT91_PIOC 12 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>,
 							<AT91_PIOC 13 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

@@ -365,7 +365,7 @@
 				usart2 {
 					pinctrl_usart2: usart2-0 {
 						atmel,pins =
-							<AT91_PIOC 14 AT91_PERIPH_A AT91_PINCTRL_NONE>,
+							<AT91_PIOC 14 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>,
 							<AT91_PIOC 15 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

diff --git a/arch/arm/boot/dts/at91sam9263.dtsi b/arch/arm/boot/dts/at91sam9263.dtsi
index 99678abdda93..5c990cfae254 100644
--- a/arch/arm/boot/dts/at91sam9263.dtsi
+++ b/arch/arm/boot/dts/at91sam9263.dtsi
@@ -183,7 +183,7 @@
 				usart0 {
 					pinctrl_usart0: usart0-0 {
 						atmel,pins =
-							<AT91_PIOA 26 AT91_PERIPH_A AT91_PINCTRL_NONE
+							<AT91_PIOA 26 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
 							 AT91_PIOA 27 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

@@ -201,7 +201,7 @@
 				usart1 {
 					pinctrl_usart1: usart1-0 {
 						atmel,pins =
-							<AT91_PIOD 0 AT91_PERIPH_A AT91_PINCTRL_NONE
+							<AT91_PIOD 0 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
 							 AT91_PIOD 1 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

@@ -219,7 +219,7 @@
 				usart2 {
 					pinctrl_usart2: usart2-0 {
 						atmel,pins =
-							<AT91_PIOD 2 AT91_PERIPH_A AT91_PINCTRL_NONE
+							<AT91_PIOD 2 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
 							 AT91_PIOD 3 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

diff --git a/arch/arm/boot/dts/at91sam9g45.dtsi b/arch/arm/boot/dts/at91sam9g45.dtsi
index 691c95ea6175..fd179097a4bf 100644
--- a/arch/arm/boot/dts/at91sam9g45.dtsi
+++ b/arch/arm/boot/dts/at91sam9g45.dtsi
@@ -556,7 +556,7 @@
 				usart0 {
 					pinctrl_usart0: usart0-0 {
 						atmel,pins =
-							<AT91_PIOB 19 AT91_PERIPH_A AT91_PINCTRL_NONE
+							<AT91_PIOB 19 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
 							 AT91_PIOB 18 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

@@ -574,7 +574,7 @@
 				usart1 {
 					pinctrl_usart1: usart1-0 {
 						atmel,pins =
-							<AT91_PIOB 4 AT91_PERIPH_A AT91_PINCTRL_NONE
+							<AT91_PIOB 4 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
 							 AT91_PIOB 5 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

@@ -592,7 +592,7 @@
 				usart2 {
 					pinctrl_usart2: usart2-0 {
 						atmel,pins =
-							<AT91_PIOB 6 AT91_PERIPH_A AT91_PINCTRL_NONE
+							<AT91_PIOB 6 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
 							 AT91_PIOB 7 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

@@ -610,7 +610,7 @@
 				usart3 {
 					pinctrl_usart3: usart3-0 {
 						atmel,pins =
-							<AT91_PIOB 8 AT91_PERIPH_A AT91_PINCTRL_NONE
+							<AT91_PIOB 8 AT91_PERIPH_A AT91_PINCTRL_PULL_UP
 							 AT91_PIOB 9 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

diff --git a/arch/arm/boot/dts/at91sam9rl.dtsi b/arch/arm/boot/dts/at91sam9rl.dtsi
index 8643b7151565..ea024e4b6e09 100644
--- a/arch/arm/boot/dts/at91sam9rl.dtsi
+++ b/arch/arm/boot/dts/at91sam9rl.dtsi
@@ -682,7 +682,7 @@
 				usart0 {
 					pinctrl_usart0: usart0-0 {
 						atmel,pins =
-							<AT91_PIOA 6 AT91_PERIPH_A AT91_PINCTRL_NONE>,
+							<AT91_PIOA 6 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>,
 							<AT91_PIOA 7 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

@@ -721,7 +721,7 @@
 				usart1 {
 					pinctrl_usart1: usart1-0 {
 						atmel,pins =
-							<AT91_PIOA 11 AT91_PERIPH_A AT91_PINCTRL_NONE>,
+							<AT91_PIOA 11 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>,
 							<AT91_PIOA 12 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

@@ -744,7 +744,7 @@
 				usart2 {
 					pinctrl_usart2: usart2-0 {
 						atmel,pins =
-							<AT91_PIOA 13 AT91_PERIPH_A AT91_PINCTRL_NONE>,
+							<AT91_PIOA 13 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>,
 							<AT91_PIOA 14 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

@@ -767,7 +767,7 @@
 				usart3 {
 					pinctrl_usart3: usart3-0 {
 						atmel,pins =
-							<AT91_PIOB 0 AT91_PERIPH_A AT91_PINCTRL_NONE>,
+							<AT91_PIOB 0 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>,
 							<AT91_PIOB 1 AT91_PERIPH_A AT91_PINCTRL_PULL_UP>;
 					};

--
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
