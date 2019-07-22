Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DDA6F929
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PSruEzDnDzPzKUccGCQMNuV5hXNTqNsVZ9Wnv1dl/qE=; b=U1RM6gsR8R16ml3Py/1LnZrOyV
	eMLLuAj6uH9TIDaew99HfsncV+zIwz4wEfaC218MXc0Uydd0TskgAPtyGydsnwSCS2CkYcwSNevYT
	dgcWhdA4nLcdJTVSUQFtHICxaP9Ttfh+xP21aHtdGNEdJdDRWaNMfFHvnOGaClnxKq+srGOVrDgE3
	uUo+VEFeKx+6kpe9WZ3xL8fR3tkVBNUg7/Kqu074izTQNTHOQ5Go7CH2s7jUsCq6h4R/vmiKqLfs4
	xGmmY6eRopAWIi3+7UaUrZMaNqcHmsodwaxlDYmFiGZNqFVsDWjNOeI50tClQTHBaC6/5l0D97EQG
	07Yg4fAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRJl-0005qj-7j; Mon, 22 Jul 2019 05:57:01 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRIi-0005G3-9m; Mon, 22 Jul 2019 05:55:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563774935;
 bh=QSYvua6cFBBgHcG13EjnKxqnh2n/IRF+zYxZbCTi1YM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=OFZ7iXgOrXm+fm0HqfkHaTwKPyQmfRGaas2f7x5QNYuF8Ezqo+zlZFgNnTEeAuZ5m
 DkatNLGVUO/TWiymdyiXwEmEMALRubzvELTvKHarx0DMNJUCubn0D5DqxbA2Odr83l
 +EgjLO0pzvsx0HOEBaCRpjmir8ZWZa5G8Zd7EYGw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.98]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0Mb31L-1i9Qr608PT-00Kklu; Mon, 22
 Jul 2019 07:55:35 +0200
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
Subject: [PATCH 01/18] ARM: bcm283x: Reduce register ranges for UART,
 SPI and I2C
Date: Mon, 22 Jul 2019 07:54:32 +0200
Message-Id: <1563774880-8061-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:tBeg4e+PRnl9rhRHHJIkca6IIEKDr2SDF7z8y6MNYTuSjVA/knb
 usgo3t6iV7x8lOIxnZ7j6rH9vvkQBBcpfLffwvUxYVycAJiML//sV6K0/6P7gh2mXfXS06c
 qfbDA2NiInjIkpm4z6XPnOSq7rTYOVmyFmZA8nxY/aB1xlS/MKDzA1HMRNw3UD4+lB3h8oq
 NBYi4DmOejYZhNJVjgHvA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2ATciYaqYyA=:EVrpHXvoNnbFWY+imnXVTk
 J4iXTc9ih4iKjlhbix48xG0/Ld61JMJnTO3aIOyLuwlTr+Q4ZAPck5xtaivuPDDMdG8Fx83af
 I7F6hwQavYO5o1Vs0/gaMtJ/R0Pox35t/OGq7TTFEQZTQC4iEyj/m/zwGJW+4UCQULC44wdkc
 U2hxIdtAinz0nwS3fdoEPRTS74v5NrJsHHzS5HNxuiIPQfwKVBwQvYlE49DA9E7PjgbunniSj
 gvdMZj63FPH+2gVjDfQL4FrjyMm/A9Bv5jJrmV2y1sfwb3haJYNlALN0hwu16EOr4r2FG9M2W
 ce2r4KcN370Q3+FO2mZluQwa9V/p0JAN4SXCkH5sf/d4EpEbXeSBETmvdpiwR7DKGRdlgVVl7
 HkJkW4VsAEZIL/SeX+noy5u412a7ZGizJsokxc4wdq6cNW2c6GBjHY/h/POwHbWvBuR4ibN5d
 XX9eGLEj8C35oimb2/wgbEcN231iyyb888R4FxQiY44B3mIzS6fnA+NWe58AdKeY/d96itpIx
 H6TjGcuMYn/ijhThLsZDvCU/J7hrWgw+Bw9IZLBhTBNZuTeLSFL4QqqnQ9L0YpWsIpZuFVwwe
 fHiDMqlSqWHvyaK3F5DbONfZis5Z1UNK8MUrOV6YSOI86CcbMkSZ5bmQ1L5Wf/1rjvT9jtC0N
 7GAnyEkFqOuixRWhYa0QrlqgCSeKB0QGZG7Ru5fAO6YAgOkXFF7wJUFZEzL6qbtclcXQBBAec
 nXd3SKSjFqysGLrmzSXLre8BQIROtIEXinSwdg/RL9tN2Gy0LdH0cwQ+xfkHfoCFWquwIF89w
 GoM3l2MVzF5cNkR+YDrbHV0TkcJC9AO7bbWbPT5iCwvJ/myOUSZppFr+HgoVsXIhI86oqaIDl
 IgukA7nkwH2FH7xTrSrSe69aaLLN+BcjN3CHGjrnW0K73SQCBlk0otssjZZcaJCOGYqE06vbh
 3+5xzMmkqi+Hhg7qQNP087J0u119KNtiEXxT7Z24jBr6sivX6QUcExmvHMP14KfVMBR4n/2/b
 sjBRAbmpPv4lIEuK2TDQGaR57wzOkuX5c2CJDGSst5kGXF/gAU5tKIptAxE7Ip9CCTVQs61S2
 y+2kdLlBAbfcjg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_225556_637632_69B4D091 
X-CRM114-Status: GOOD (  11.52  )
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

The assigned register ranges for UART, SPI and I2C were too wasteful.
In order to avoid overlapping with the new functions on BCM2711
reduce the ranges.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/boot/dts/bcm283x.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index 4b21ddb..2d191fc 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -397,7 +397,7 @@

 		uart0: serial@7e201000 {
 			compatible = "brcm,bcm2835-pl011", "arm,pl011", "arm,primecell";
-			reg = <0x7e201000 0x1000>;
+			reg = <0x7e201000 0x200>;
 			interrupts = <2 25>;
 			clocks = <&clocks BCM2835_CLOCK_UART>,
 				 <&clocks BCM2835_CLOCK_VPU>;
@@ -428,7 +428,7 @@

 		spi: spi@7e204000 {
 			compatible = "brcm,bcm2835-spi";
-			reg = <0x7e204000 0x1000>;
+			reg = <0x7e204000 0x200>;
 			interrupts = <2 22>;
 			clocks = <&clocks BCM2835_CLOCK_VPU>;
 			dmas = <&dma 6>, <&dma 7>;
@@ -440,7 +440,7 @@

 		i2c0: i2c@7e205000 {
 			compatible = "brcm,bcm2835-i2c";
-			reg = <0x7e205000 0x1000>;
+			reg = <0x7e205000 0x200>;
 			interrupts = <2 21>;
 			clocks = <&clocks BCM2835_CLOCK_VPU>;
 			#address-cells = <1>;
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
