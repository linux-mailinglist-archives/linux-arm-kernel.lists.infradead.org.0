Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63636110011
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 15:22:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LJqcIi5A5FcnLejBP1KOcWJRvloeMz35Um4IXJIHLb0=; b=eeWkIdaNDZbLR+
	+XQM6DHSmayrZP332hFNdeRydVJA5bHE5hFX4ppF+ozgJEfPTKrx8g4dUr+Ljx9j1foKthAwnaVYV
	x70pbsktKooMg8CrivwhFQtBWPXyivGtzlKxsOouhWcs2zJWH3Cpe0rmEoqlgX6BudsuuvYjBD8Y1
	xpQ5E0hJ8jfH5wSz4TvP6PHB1keRiF84p1YPFvRRW+H+eWcVxhp2/tV6bj915Inh2T3jaxlx5kOFg
	oTwva/ohgJ8b93qbWqPtctCduQqdPnUVrP1OmyChHufiqvgew1wmRfeLr0ozGc+TKzMGSjRIk/MJS
	7NYlMtlwamhnFoBn7Auw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic94C-0006on-6b; Tue, 03 Dec 2019 14:22:16 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic943-0006nq-R4
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 14:22:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575382917;
 bh=VPL5dxTYRT1YckwTNyKeV63nmsga6aqCNvYIhHWOx+I=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=PtycFUyrkw8ngoFP4NBX5zi6AZFApbjcOB/Wf+mtZ8M/G3kN+e98sjt7LnwUWSxay
 QEtQKSQqMBS5TM+3LWISFc60TVuzTYP3C+w66bo4c0Ln930S+NXnXOW/OoxmdJw0OU
 d46XcXOKlShmq6ZiF2myP5w4baveg1jWHChUXjJg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from zaphod.peppercon.de ([212.80.250.50]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MbAcs-1i5H9Z1tRg-00bdwu; Tue, 03
 Dec 2019 15:21:57 +0100
From: Ingo van Lil <inguin@gmx.de>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Peter Rosin <peda@axentia.se>
Subject: [PATCH] ARM: dts: at91: Reenable UART TX pull-ups
Date: Tue,  3 Dec 2019 15:21:47 +0100
Message-Id: <20191203142147.875227-1-inguin@gmx.de>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:QFxVTPMDMPVZDLRdDkSXfFJ/Lba6s9TWcXRRXPKkp2exq3hKr3o
 XR6keVtstbA3XPhAqxrFGwUA76Zj05+n1guPDpbO89RS51w6/7k3+HRWTfbrgJnV+OSlG+e
 lRWeVV4ITBPVv69Ef9c9oNm2i9Bt/f/OqBspTRA6JC1eDIhMEYOJ/KqcftLK4cCgUVCuLnY
 R1eINlC1EzdRYhD7qL4ww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:swqUhQVh+9A=:sLaJarqLcvtQsBJ9EdMkJc
 c1s0YJSFI7NAeuhyWINcb/pqor0OBEL0JxZf7pHFVigeeo6WWn+hhLYV+C3epz98Jpx4AQ+rs
 TxwHsuArg3yU6xzwIxPMeUResz9Uq9dcEMLUgbLsELJy+x9dh7Eazrz9FJJN4dc8f/sGt6eVh
 JFIaocQiLayeTcxCRsuJW276ywF5SPX0GD6ezB163iOrLhkO+bUipu6vZolTIWVBMn30P6tFM
 PFkJ8hu5gZ0ViD96aRIZgPsGSFD5tHXtmpaRS672XOH2h8enP1CrbeWoR+gVmUEK54K7a5XqV
 QvYmu1bj4kPKyRqg2b3PDG61kxoCE4QAEEfnZMUzboY6IqFXLPtNqaOqqUZk1wH8WQN5mEaC3
 bxkIOG9t80ICsxXQ7QCrKib/aCjMPftsLS+89ZuK2b10beIfgGjoVrK51daZ0wAofnBlq6eiZ
 SJjoy0Sj8+u9fCTACR0yx9swgkiKN3+H7+LJ+59PGx+3rNos7WN/JNhOEakQlAgWrcMrv9JZg
 uI/0i4pH2b5DZiY6caKVJj2B7NYMbDo+B52JKc6waJU4/IOwdnQnXngOYZ4QphYpwVmzQtGYx
 eZflHgNscZSDGFjWPs0mXlKzHTkaQ41mPOH9iD4sLiVJTJU/WE/t3HO9Gz11lM7S2XVVkGp8M
 eiL2fnlgYTOIiCXCPC0EK2Sb03B/FfwP5IW6y7b7coloTYtCul09elk6JG7yYANZpt7536rRJ
 MPRMIqt4V+ldPISGSbr+dACK1kQEdLa/P6cZModXUQZunQhlgOwllhM7qPIZK5/8Z+zNsVCIn
 q7f4qSL51pEel+1RX0iN3nicnPZGbHowVFNlU76r+/jqgGMPe60vrA6jmSmBBVcGKIufr5XBY
 3Wh41m6rFqvYEJPXSWj5BRretjPpQsEIcIcAP7U/TmcGZ8k+6k/pQ2eLwLm4I1xM/F00GmuHq
 WmeQCPFsK0EJl1G4fMDDtRBjv7wXBYg0EXKmrpOw9zP+iJG86z8g7JYXeayHVg2c9fJAPbhxH
 ChqStxoRX0/tjy1//T12hdCOzA+hYSMX3znCvOkpHYcU1zw06/QYd8MSjVQ0SEoLHH4K5tT4A
 tJYC+VZ8W1dfUPCbpuxRDWGPWhGdDpNx/IjJrVccLqDG/QvmIW9+asBkSQWSp2yRZ7G/Wszcg
 ChZ+5QwLD+KsEhjFDcDzMpgkiRriPiSk+fuj0kSDZeezIOUe7T+OQGPuJxZ0euhXFypLm6Ik6
 NVbvhK4PKG3t8saBfkteaMORXakbUcuHcHqKf9g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_062208_812178_08D7CADE 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (inguin[at]gmx.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Ingo van Lil <inguin@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
