Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC29014B264
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 11:16:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=WIq85jeRj7EVY+4SDUAk7nZsx1x7QP5wxqo0whxJjuc=; b=MLgC4M8f/uCoOX
	2C4iH2xfdQ+wb7G3zOQFyf8wZ505Cj/j11ImGIxFfPQPpVMqwKrju5KQyDy6u4d1dLoRpsdhIvyYH
	KkiclR6EPnf+nVnQVJOnDUpezlU+RkGZiHXiy+G7Lv31sR6doSEV9mXQewtqgaeQ7Lm4gUsKJlZbC
	2oSuqmR+Hq7RlTQuRuuhZFfyiEY9P72XFclwE9q+qTYQ6CHya6BcT+hp1+SYUFAzRluoBYvO2Zc02
	J0TeERlVv+2cHOSNDGI+iX0pv43dIkqAN3BLznbXXOFABLRIcmgATz44Pa1VMry0zg/zHQ6kyyKtL
	tmBUlWRN/6LTgra4sV3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwNuU-00050Q-9M; Tue, 28 Jan 2020 10:15:54 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwNuM-0004zz-HC
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 10:15:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C63F4AEE0;
 Tue, 28 Jan 2020 10:15:44 +0000 (UTC)
In-Reply-To: <1580148908-4863-5-git-send-email-stefan.wahren@i2se.com>
Date: Tue, 28 Jan 2020 11:05:22 +0100
Subject: Re: [RFC PATCH 4/4] ARM: dts: bcm2711-rpi-4-b: Add SoC GPIO labels
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Stefan Wahren" <stefan.wahren@i2se.com>, "Florian Fainelli"
 <f.fainelli@gmail.com>, "Linus Walleij" <linus.walleij@linaro.org>, "Ray
 Jui" <rjui@broadcom.com>, "Scott Branden" <sbranden@broadcom.com>
Message-Id: <C07C8Z5BBTXF.1BE33YFX2000I@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_021546_716035_B51AB7FF 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Mon Jan 27, 2020 at 7:15 PM, Stefan Wahren wrote:
> This adds the labels for all the SoC GPIOs on the Raspberry Pi 4.
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
> arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 74
> +++++++++++++++++++++++++++++++++++
> 1 file changed, 74 insertions(+)
>
> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> index 1b5a835..6607e2e 100644
> --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> @@ -71,6 +71,80 @@
> };
> };
>  
> +&gpio {
> + /*
> + * Parts taken from rpi_SCH_4b_4p0_reduced.pdf and
> + * the official GPU firmware DT blob.
> + *
> + * Legend:
> + * "NC" = not connected (no rail from the SoC)

You could drop this comment as there are no NC uses.

> + * "FOO" = GPIO line named "FOO" on the schematic
> + * "FOO_N" = GPIO line named "FOO" on schematic, active low
> + */
> + gpio-line-names = "ID_SDA",
> + "ID_SCL",
> + "SDA1",
> + "SCL1",
> + "GPIO_GCLK",
> + "GPIO5",
> + "GPIO6",
> + "SPI_CE1_N",
> + "SPI_CE0_N",
> + "SPI_MISO",
> + "SPI_MOSI",
> + "SPI_SCLK",
> + "GPIO12",
> + "GPIO13",
> + /* Serial port */
> + "TXD1",
> + "RXD1",
> + "GPIO16",
> + "GPIO17",
> + "GPIO18",
> + "GPIO19",
> + "GPIO20",
> + "GPIO21",
> + "GPIO22",
> + "GPIO23",
> + "GPIO24",
> + "GPIO25",
> + "GPIO26",
> + "GPIO27",
> + "RGMII_MDIO",
> + "RGMIO_MDC",
> + /* Used by BT module */
> + "CTS0",
> + "RTS0",
> + "TXD0",
> + "RXD0",
> + /* Used by Wifi */
> + "SD1_CLK",
> + "SD1_CMD",
> + "SD1_DATA0",
> + "SD1_DATA1",
> + "SD1_DATA2",
> + "SD1_DATA3",
> + /* Shared with SPI flash */
> + "PWM0_MISO",
> + "PWM1_MOSI",
> + "STATUS_LED_G_CLK",
> + "SPIFLASH_CE_N",
> + "SDA0",
> + "SCL0",
> + "RGMII_RXCLK",
> + "RGMII_RXCTL",
> + "RGMII_RXD0",
> + "RGMII_RXD1",
> + "RGMII_RXD2",
> + "RGMII_RXD3",
> + "RGMII_TXCLK",
> + "RGMII_TXCTL",
> + "RGMII_TXD0",
> + "RGMII_TXD1",
> + "RGMII_TXD2",
> + "RGMII_TXD3";
> +};
> +
> &pwm1 {
> pinctrl-names = "default";
> pinctrl-0 = <&pwm1_0_gpio40 &pwm1_1_gpio41>;
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
