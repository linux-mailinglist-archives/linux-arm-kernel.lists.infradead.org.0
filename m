Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F28971D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 07:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FkhmfRhNLxA7u+BrfQdNe4ZcAyPaQ7hxXtnt1q/Vn/s=; b=HnFhAUP0oFNoNg
	zQxp9rCK5kE7Z84F0iTv/zgFKbYQsukwcF7ew1Z4O6rCB0h76PE8EOLhXi8zHe1ejMuNbVBtYaDL9
	tlzGa1KfPpWdzb0VJJNWI10+cb7x9Ic3jwQk5FRtkjaGblDXg3LLJVf0c+guUSw+G5Q2TsuFUzdSI
	iq4+c7r199QS/b4/P3zVZjZ9fVxCv7Wo+fn/yBBNQDJ8xAz9G6lOnV2y56VMcoOuJFKMuwKV6VAiW
	6/wljnsNp5D97e7vwy8cSybwzdHC/r8lCktLBOmuWvdIiEqaWX8iZ7wbrQwyYouAocUr6h94TU0/+
	Icp2d7J3yufImgKV+SKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0JdE-0000sy-Dq; Wed, 21 Aug 2019 05:58:04 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0JbW-0007by-MS
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 05:56:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so709982plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 22:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kVMeqsg/mfUvkErCbhFnFtOVad83MIZWTR0g/QLKhHg=;
 b=gRuFZtDYE6HaBYpsqgwODQ5NYhb1E049C4CJPD6ptRyASE/L1glTUH7bxw+GO/6EEg
 LgJYH1de4KJdYzTlcW3231lYYamXUxjEsP+/agV/DShX+MaHAoOdTiMvxP8GD5mzsPtQ
 4VllDrbGELoCByPwRR/auQv+UwUSB0QT5xQfBFsKikylin/F0djpNzmzSZitfGPN7ZCZ
 YC/aObf4medqKPVSPfR9B+pNujvRW1z3NYykHXwajvpohzUBMbqaF1NVcoR8c/LqoIiq
 k45t4zHmxKCh58MfySNql6iervFLLVNFoNV5PkYKQ6Ntgp6DeYwhNAjYhw1ZupTib+mx
 98bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=kVMeqsg/mfUvkErCbhFnFtOVad83MIZWTR0g/QLKhHg=;
 b=GxG0tTPUmp3yOuxD5JDuNfN7mg+saVH0tYHxy4NpHd9vDscIzW1E9zDeF+HnxvSSBT
 691eOi2Ghwgtdn6gpqcnP+0qW3zld7S0w6aUEm3n8mUYkzDbIMXpwRmRE2B1GM6Yvvoz
 NfrHBSDF/VOMEMG3mTOeEbo9oHXYpnh93Ewy3Mbtv/IkpQs5d1iXSm8SZjl5jL0mNt45
 bLiTZtRetVs0If1OfikVGrrLqxBrN4MSW9i7X5vmVZx64LDiQin2uzOy55KDDpm7uVFo
 ubdd97v7yVaY4bcPcSOwHHCH5QnmaLUJgXJFKPXXEIEyHdv5GOqsNSN00OQXbhaoMSRQ
 Qj3w==
X-Gm-Message-State: APjAAAUpZx0gsA/uMF0n8cpCFGMQ5igyPvbHoVzRoqBkgwqxJV2pd49E
 3cU1G6luBsXM8ilwOVw5ov0=
X-Google-Smtp-Source: APXvYqwbrMpfNmsuAWcz4Hd/RXIbJ08v7L7s3HTxAg5HMw3qLUl5LopPuCkywBUbJMhNt/nfh7X96Q==
X-Received: by 2002:a17:902:bb85:: with SMTP id
 m5mr8924448pls.322.1566366978155; 
 Tue, 20 Aug 2019 22:56:18 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.56.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 22:56:17 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 6/7] ARM: configs: multi_v7: Add ASPEED G6
Date: Wed, 21 Aug 2019 15:25:29 +0930
Message-Id: <20190821055530.8720-7-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190821055530.8720-1-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_225618_823632_D5376D14 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the ASPEED AST2600 system and associated ASPEED devices so we
get build coverage.

The changes to the UART configuration to ensure the default console
(UART5) works.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/configs/multi_v7_defconfig | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 3dc02a5e7672..ebb00321b1eb 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -9,6 +9,8 @@ CONFIG_ARCH_VIRT=y
 CONFIG_ARCH_ALPINE=y
 CONFIG_ARCH_ARTPEC=y
 CONFIG_MACH_ARTPEC6=y
+CONFIG_ARCH_ASPEED=y
+CONFIG_MACH_ASPEED_G6=y
 CONFIG_ARCH_AT91=y
 CONFIG_SOC_SAMA5D2=y
 CONFIG_SOC_SAMA5D3=y
@@ -200,6 +202,7 @@ CONFIG_MTD_NAND_VF610_NFC=y
 CONFIG_MTD_NAND_DAVINCI=y
 CONFIG_MTD_NAND_STM32_FMC2=y
 CONFIG_MTD_SPI_NOR=y
+CONFIG_SPI_ASPEED_SMC=m
 CONFIG_MTD_UBI=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_RAM=y
@@ -306,7 +309,11 @@ CONFIG_INPUT_STPMIC1_ONKEY=y
 CONFIG_SERIO_AMBAKMI=y
 CONFIG_SERIAL_8250=y
 CONFIG_SERIAL_8250_CONSOLE=y
+CONFIG_SERIAL_8250_NR_UARTS=5
+CONFIG_SERIAL_8250_RUNTIME_UARTS=5
 CONFIG_SERIAL_8250_EXTENDED=y
+CONFIG_SERIAL_8250_MANY_PORTS=y
+CONFIG_SERIAL_8250_ASPEED_VUART=m
 CONFIG_SERIAL_8250_SHARE_IRQ=y
 CONFIG_SERIAL_8250_BCM2835AUX=y
 CONFIG_SERIAL_8250_DW=y
@@ -351,6 +358,8 @@ CONFIG_SERIAL_STM32=y
 CONFIG_SERIAL_STM32_CONSOLE=y
 CONFIG_SERIAL_DEV_BUS=y
 CONFIG_VIRTIO_CONSOLE=y
+CONFIG_ASPEED_KCS_IPMI_BMC=m
+CONFIG_ASPEED_BT_IPMI_BMC=m
 CONFIG_HW_RANDOM=y
 CONFIG_HW_RANDOM_ST=y
 CONFIG_TCG_TPM=m
@@ -360,6 +369,7 @@ CONFIG_I2C_ARB_GPIO_CHALLENGE=m
 CONFIG_I2C_MUX_PCA954x=y
 CONFIG_I2C_MUX_PINCTRL=y
 CONFIG_I2C_DEMUX_PINCTRL=y
+CONFIG_I2C_ASPEED=m
 CONFIG_I2C_AT91=m
 CONFIG_I2C_BCM2835=y
 CONFIG_I2C_CADENCE=y
@@ -464,6 +474,7 @@ CONFIG_CHARGER_MAX77693=m
 CONFIG_CHARGER_MAX8997=m
 CONFIG_CHARGER_MAX8998=m
 CONFIG_CHARGER_TPS65090=y
+CONFIG_SENSORS_ASPEED=m
 CONFIG_SENSORS_IIO_HWMON=y
 CONFIG_SENSORS_LM90=y
 CONFIG_SENSORS_LM95245=y
@@ -594,6 +605,7 @@ CONFIG_VIDEO_V4L2_SUBDEV_API=y
 CONFIG_MEDIA_USB_SUPPORT=y
 CONFIG_USB_VIDEO_CLASS=m
 CONFIG_V4L_PLATFORM_DRIVERS=y
+CONFIG_VIDEO_ASPEED=m
 CONFIG_VIDEO_STM32_DCMI=m
 CONFIG_VIDEO_SAMSUNG_EXYNOS4_IS=m
 CONFIG_VIDEO_S5P_FIMC=m
@@ -663,6 +675,7 @@ CONFIG_DRM_MXSFB=m
 CONFIG_DRM_PL111=m
 CONFIG_DRM_LIMA=m
 CONFIG_DRM_PANFROST=m
+CONFIG_DRM_ASPEED_GFX=m
 CONFIG_FB_EFI=y
 CONFIG_FB_WM8505=y
 CONFIG_FB_SH_MOBILE_LCDC=y
@@ -762,6 +775,7 @@ CONFIG_USB_MXS_PHY=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_FSL_USB2=y
 CONFIG_USB_RENESAS_USBHS_UDC=m
+CONFIG_USB_ASPEED_VHUB=m
 CONFIG_USB_CONFIGFS=m
 CONFIG_USB_CONFIGFS_SERIAL=y
 CONFIG_USB_CONFIGFS_ACM=y
@@ -870,6 +884,7 @@ CONFIG_RTC_DRV_TEGRA=y
 CONFIG_RTC_DRV_ST_LPC=y
 CONFIG_RTC_DRV_STM32=y
 CONFIG_RTC_DRV_CPCAP=m
+CONFIG_RTC_DRV_ASPEED=m
 CONFIG_DMADEVICES=y
 CONFIG_AT_HDMAC=y
 CONFIG_AT_XDMAC=y
@@ -920,6 +935,9 @@ CONFIG_TEGRA_IOMMU_SMMU=y
 CONFIG_REMOTEPROC=m
 CONFIG_ST_REMOTEPROC=m
 CONFIG_RPMSG_VIRTIO=m
+CONFIG_ASPEED_LPC_CTRL=m
+CONFIG_ASPEED_LPC_SNOOP=m
+CONFIG_ASPEED_P2A_CTRL=m
 CONFIG_RASPBERRYPI_POWER=y
 CONFIG_QCOM_GSBI=y
 CONFIG_QCOM_PM=y
@@ -952,6 +970,7 @@ CONFIG_ARM_TEGRA_DEVFREQ=m
 CONFIG_TI_AEMIF=y
 CONFIG_IIO=y
 CONFIG_IIO_SW_TRIGGER=y
+CONFIG_ASPEED_ADC=m
 CONFIG_AT91_ADC=m
 CONFIG_AT91_SAMA5D2_ADC=m
 CONFIG_BERLIN2_ADC=m
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
