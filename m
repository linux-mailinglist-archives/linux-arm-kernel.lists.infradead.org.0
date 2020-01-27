Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8317C14A9A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 19:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DPuQWycqdw9CxoKuQR42+vWv5iNmyUIYkTHQf1KLxgY=; b=ezMQm6leJB6R6ZsKnfpCgXjitb
	W3Nw1Je9MEi8SZ9v+eC3CeiTFqVt/5x1h0N8bH5ZGdptzjP+SrRIS6oD0h4pJFGg6ugBUnLmcef06
	eNSulzVLTX6qsyPkqj4pRr4fXRyP4R9Om3GidBwWl8vRQ0LLc8ssJkt/K9nW7BslGHjMmEwd+QSiF
	t7aYAjYBf45g9TP/aPeAlsgEUzpwNrdiQB0+jY4cWlMTSrz+61Fp9Ay+NopbRoQ+ZY6VHVCHoXwma
	eg91Z/Mc359cQ4CBaUn20N4gS5IUc0CMh77YTOYq3QHaJUuO5FR7ARenQTie073XFTCQtrkfCIXeJ
	h8y1Bvlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw8vy-0008F1-Fz; Mon, 27 Jan 2020 18:16:26 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw8vL-0007pp-4e
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 18:15:48 +0000
Received: from localhost.localdomain ([37.4.249.152]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MIdS1-1iqMAq2lZF-00EeIy; Mon, 27 Jan 2020 19:15:41 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [RFC PATCH 4/4] ARM: dts: bcm2711-rpi-4-b: Add SoC GPIO labels
Date: Mon, 27 Jan 2020 19:15:08 +0100
Message-Id: <1580148908-4863-5-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580148908-4863-1-git-send-email-stefan.wahren@i2se.com>
References: <1580148908-4863-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:Gxba3mqtzEfAZsLaIh9BPR5KGgNDsOM8n/SyTdefyB0S+Ix6nQ6
 3ZLcgMmQ0ZYCLRjSx9LHkgciD9ISLplz152G/qC58KgorZhlZLhVE974IeKAkTW7W6RIHig
 h04Lium+H3BT4cdz+bIAKz1RoTVdqSRp3Bov22Fv5E4IbNQGvAgEx4Sh7aDH+pVGti//bPm
 sxDDXE5ZOXGV0qV3mvozA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cCaO9H+V7fw=:e54AxDo4xa1RNP7BrlXkUw
 hcxiAvXNAIgIOvr2ULYOCL0TL9NzkdUBAFNQCWXg+9tQt4S1g6hU8gHkciuR6wa+2Cp8Xx5tX
 +llHcigXOC2W2A3/H9CyAonFLfN2LtqKP65pY2L50CbaZwjnsBqXhx204sIbiRowV9mxvafPo
 t2qbrWIi7u6FIMFVrCPP6wE54WKajQz0y/dLzyYY97zKFvnWCVnVi+wqat0odNyoSPsqVn0bZ
 IosK/ArAU/cdn47p/tTAICkZ4LT3Hej8lWbLgs37gDw8DDTbDojBGQNroAepDuL3/RNn+lzON
 kdG+mueLFX0OBuSSfviiSheetOwE1yiesBRvOGGH8SPAdosy99GUDu9JWlb+5Nu0T59IQTm7O
 Fjvqcu1fiL9L6Qw24XdH9osD6cr2kE4395AH6pP7KLf3KbZClN203u6SfTB9Xw5mAK1mLTOJO
 8C2OC1qX/NFSNffy6qM68jxJ+dRjhB2kyFtiquL5w85hQ9A+0UHh47pQP+vii1XlpE/xYDuRX
 VqTiy7fJn8xtcDs0VAoOVnelun1+ppzMdObQpGWaheuA29O4gvaKjA55oKwCw1zzpVOzHmLAg
 FhqvMZv3NiqUlLpj85vqbQT9r4U6POpxLorzLyvoarWOy7nvAyVdepSLB7BhbJWwrIbzeiFNd
 2mNR6PTfFZbsMkXdj67sk75MnEgUMjxerASnkhv0xHqQXo/rbdc2HX7fC/1Ft04B1HJextbil
 GrPQ6dSPe5SCpjQP6yd9yhLNoaLeNEHpY5Ds0M1hULtqYkJiubORBMvp9H1mmjV7o5UCHqlOW
 S9QPe97AN6cfCJGvjb5uYcfneUnc1K0Bj8mmXat9B6fHaxA7pDEsAS1Cy0OgtFjH/t37B1P
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_101547_491226_F9BAEAA0 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the labels for all the SoC GPIOs on the Raspberry Pi 4.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 74 +++++++++++++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index 1b5a835..6607e2e 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -71,6 +71,80 @@
 	};
 };
 
+&gpio {
+	/*
+	 * Parts taken from rpi_SCH_4b_4p0_reduced.pdf and
+	 * the official GPU firmware DT blob.
+	 *
+	 * Legend:
+	 * "NC" = not connected (no rail from the SoC)
+	 * "FOO" = GPIO line named "FOO" on the schematic
+	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
+	 */
+	gpio-line-names = "ID_SDA",
+			  "ID_SCL",
+			  "SDA1",
+			  "SCL1",
+			  "GPIO_GCLK",
+			  "GPIO5",
+			  "GPIO6",
+			  "SPI_CE1_N",
+			  "SPI_CE0_N",
+			  "SPI_MISO",
+			  "SPI_MOSI",
+			  "SPI_SCLK",
+			  "GPIO12",
+			  "GPIO13",
+			  /* Serial port */
+			  "TXD1",
+			  "RXD1",
+			  "GPIO16",
+			  "GPIO17",
+			  "GPIO18",
+			  "GPIO19",
+			  "GPIO20",
+			  "GPIO21",
+			  "GPIO22",
+			  "GPIO23",
+			  "GPIO24",
+			  "GPIO25",
+			  "GPIO26",
+			  "GPIO27",
+			  "RGMII_MDIO",
+			  "RGMIO_MDC",
+			  /* Used by BT module */
+			  "CTS0",
+			  "RTS0",
+			  "TXD0",
+			  "RXD0",
+			  /* Used by Wifi */
+			  "SD1_CLK",
+			  "SD1_CMD",
+			  "SD1_DATA0",
+			  "SD1_DATA1",
+			  "SD1_DATA2",
+			  "SD1_DATA3",
+			  /* Shared with SPI flash */
+			  "PWM0_MISO",
+			  "PWM1_MOSI",
+			  "STATUS_LED_G_CLK",
+			  "SPIFLASH_CE_N",
+			  "SDA0",
+			  "SCL0",
+			  "RGMII_RXCLK",
+			  "RGMII_RXCTL",
+			  "RGMII_RXD0",
+			  "RGMII_RXD1",
+			  "RGMII_RXD2",
+			  "RGMII_RXD3",
+			  "RGMII_TXCLK",
+			  "RGMII_TXCTL",
+			  "RGMII_TXD0",
+			  "RGMII_TXD1",
+			  "RGMII_TXD2",
+			  "RGMII_TXD3";
+};
+
 &pwm1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pwm1_0_gpio40 &pwm1_1_gpio41>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
