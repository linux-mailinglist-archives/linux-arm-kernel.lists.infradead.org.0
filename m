Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C089E15DD3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:58:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Wpd79M7Hh6LHIvbTue3otMOum2rXdhdtGeCxoBsPaE=; b=WKinwjuDAxB1bF
	oj7+C5ikYdLcue4I/0NGO2GrLW3862H0/4s8CR3r9J+PaYYZwYtdnco4Fx/osL58gdBStG/TEGyma
	TqRygePRYYA4MJ24HmJJVzzLd4VPouZLiyqoMgCYZ/tE2lHZD7QGQJdmt7zQGNfRH/IE5mDv5Cje2
	51yVrCjHpfr9kYF0ydBCeWyadPIqZKaXWvFo1DyvhL3sx7V/KT9u2s2uCNGRIa8tsEBrDEQSjt5B6
	dq/0mRDqLoGQ0UOUDNUjZ9+036f7IJYVaJgU/QYPpQwIhmmGrMhDOTAxeqBdvWYuMv0LWtFVtYIta
	BrlI9VKujDd0M+mcQ2Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dLr-0002pr-6s; Fri, 14 Feb 2020 15:57:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dGz-00066x-Ha
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:53:00 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B4EF24681;
 Fri, 14 Feb 2020 15:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695577;
 bh=gQCl3t2EcBsDvz3br3y54JgMri+EC7RXVVMTJI5P1Wk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NCyyQwEuabI+sTmoIo3MvZTADXUTVRHP4E1m3Ijx3kVgknjMd0K2OicOLQyjUqUib
 3gdJpbTTzSOMU8B5OZpxOl6tEPabde4Jal22xMIEPGHnkuCzxAIZmYXQFoxwj3Qd4z
 sTniRczN5VQeI67r6h2UGlLbHwNEBdR0zQfW3WzQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 187/542] ARM: dts: at91: Reenable UART TX pull-ups
Date: Fri, 14 Feb 2020 10:42:59 -0500
Message-Id: <20200214154854.6746-187-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075258_514435_325D43DF 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ingo van Lil <inguin@gmx.de>, Peter Rosin <peda@axentia.se>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ingo van Lil <inguin@gmx.de>

[ Upstream commit 9d39d86cd4af2b17b970d63307daad71f563d207 ]

Pull-ups for SAM9 UART/USART TX lines were disabled in a previous
commit. However, several chips in the SAM9 family require pull-ups to
prevent the TX lines from falling (and causing an endless break
condition) when the transceiver is disabled.

From the SAM9G20 datasheet, 32.5.1: "To prevent the TXD line from
falling when the USART is disabled, the use of an internal pull up
is mandatory.". This commit reenables the pull-ups for all chips having
that sentence in their datasheets.

Fixes: 5e04822f7db5 ("ARM: dts: at91: fixes uart pinctrl, set pullup on rx, clear pullup on tx")
Signed-off-by: Ingo van Lil <inguin@gmx.de>
Cc: Peter Rosin <peda@axentia.se>
Link: https://lore.kernel.org/r/20191203142147.875227-1-inguin@gmx.de
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/at91sam9260.dtsi | 12 ++++++------
 arch/arm/boot/dts/at91sam9261.dtsi |  6 +++---
 arch/arm/boot/dts/at91sam9263.dtsi |  6 +++---
 arch/arm/boot/dts/at91sam9g45.dtsi |  8 ++++----
 arch/arm/boot/dts/at91sam9rl.dtsi  |  8 ++++----
 5 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boot/dts/at91sam9260.dtsi b/arch/arm/boot/dts/at91sam9260.dtsi
index dee9c0c8a0964..16c6fd3c42462 100644
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
index dba025a985270..5ed3d745ac867 100644
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
index 99678abdda930..5c990cfae254e 100644
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
index 691c95ea61754..fd179097a4bfd 100644
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
index 8643b71515650..ea024e4b6e095 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
