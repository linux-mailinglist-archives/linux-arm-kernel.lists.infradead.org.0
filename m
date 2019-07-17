Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0206D6C1BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=568eLGYGsgvhR8usMBZbWTKxu2W8YA1NA9yyqykwgjM=; b=mxAykdRN7eBF0gRfL1IA/Fwhv4
	KVlPaXFU9bZvr58TCVf6KEs5dnuG/TwKeD/cdBdHrRXQESrEoeXKo2UPWWU1OFXPOS59jVOOLm8Ia
	014oMJgIknOzURnL4ltcL9HsvUiIwtdIjk0XjDf0Ggzx1ri52H9Btnw7lnq3ecBQZlYprUNzTD3t5
	GIaXQnIdcx6HQjvG2TpZKVWTNMQvQuLOXYbmE7sTeo5EpAzrHP8rKeU9PECCoBpsP0A8pCsmckcIv
	swkGE+j/jZvavdoor+pgPq2r2ohKYK8kjnDrO4nn7sTS7CZwI1pP9cmQBJ868mTG1l0NDPBhk0740
	W9/pM1QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnpzN-0004QH-Ke; Wed, 17 Jul 2019 19:53:21 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpx3-0002tM-0H; Wed, 17 Jul 2019 19:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563393040;
 bh=/s7RMumfEwstl7olzGA0BrPMCx0k4sO1vVXkkHXi5NQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=DQT9SRiMDY7EAJx0y1jQ+KIpPbedDgA05TuwXyNBsdyuz8S3/IpJO7C73eBBy6EKT
 tWvFg8Owi3d0OcWxcyPao7tx2uQGZ9cn11tc12IyRA1TEJMl74p3rtyPEQdmd7Y+lS
 o3D4ofiQsDUu27r2XV5+s1XIacAXV7DadXDYgUDk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LwW8p-1iW7LU49CJ-018I3U; Wed, 17 Jul 2019 21:50:40 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 01/18] ARM: bcm283x: Reduce register ranges for UART,
 SPI and I2C
Date: Wed, 17 Jul 2019 21:50:09 +0200
Message-Id: <1563393026-17118-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:CJ8wET5URohu2KkeXrcHhHmDGXGjU8/uihiC24UzNWPG8WPnILf
 MfvakcJvuZMx9UYZpnoVxqjUjj9CFUPr9HYpW6wquTSG8xiks3u6xDlibcCFNAeVhnDuFPt
 PU3dL773rKuf1yzm9BsVVJgJScV2VvCZtN8VVDCjxyJuGIR+TVfkYtLbk8Zf9S0Fz38QO5W
 Vdiv7O8Pi4EOwg6UBF2bw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tseAc+LVRIM=:cZ8AUJyQf/pMWFJC1pvF3B
 hPcGoFpHwxoX+DpKZ8sE95r/GV5N/Jj1xSw/ePw/hpvVGBdWUYHecfFO2CYtaTOYG60sHAgVs
 IWrLdqlISLsm+pjLnEwJaux78AyX/98ndTWzcvuOFjj+grV4um8qMVHsbaJLqtWh2098rv3Bc
 MK6+SnhAtW8XWk43KAlAb3UDqtYQkBEYmIdmL6N2KMovL6AwDz+4MDc59BWViwCKBN7P/QakF
 N30QI2Aa6e5btOUMhlgw/TcXue2vqnkk/46dThDehB+tRzbmbMFC1ugCg7xYr+3Rqx6Qo45U3
 cE84UAXceqqK+c32ZlhimUgu/0ShIhaVb+6EYSadiWbV2u68X0/yDue7YavVnT0kwi0zmueuF
 s9VUCO3xu40ZETp7lIN2WzQWuiVfmoLaz2jBsumEUF6omT2ePfMMzE3t3p7FfC/tba6XRhDum
 8sYwVfRXGsPD3rCtVjKwLlHef8FBACIIOT7kv5iAdbDSs8qw3WzQ2JHcyGC3MxCECqJnpdhQG
 mwyeUhkb3we70Z83/6rCGhAPudd9orsgoD+Get9DOP93RXsTMJSFQhY8YctYdS/0PdQfIZyFu
 J5b7edClUN97ecMDl41d8tk152BE/wwo8MdBoUa8g24rl1+1BlwWrc1zSlkZD5c0C9uCtdPIB
 ZjeYOpHXLmFznEjTXhDTpn4U2XW7RVc9g+D2cSoQdmv2tRUg+xhNkLtbnlEcUNUkx1OcxaHiC
 5yFqVHYmJv6Qilt7lwd6X+c1zUsfRnOBifBd9N+rjZ9R/RBXu7GQhjY61w8LpkAfmZaLjvcvB
 axFvv3lWDEwmifet47dgKooTblXd/ykOdXx3kBPQLwUbKK4opFrKQE0MctT1trFOQ4iRCAeUv
 vMPcB6dPzOm3IjB5EK+JbDzyQ8Irz9gJ/DVr3du1/UufdQ5mhAyHg4Mc+u4NAarYOJ5APnC4V
 aGmTyO1c8dXuAAT3gR+8aNk+6rXU7Bfbw7hGqYlA9qprlOxSKivfNt4lPUP8YdZQOl1QSUNAO
 1UT29IYmOFgt02uDfUd8gODihZYYI3FERshOmkfW/ANYtvTK/GRRpQrkpDtd9hFkmzX/fEiba
 LBvZlDz3MZ6CL4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_125057_338988_12702098 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
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

The assigned register ranges for UART, SPI and I2C were too wasteful.
In order to avoid overlapping with the new functions on BCM2838
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
