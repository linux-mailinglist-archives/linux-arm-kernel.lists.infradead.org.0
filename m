Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4A4F8891
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 07:30:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XodjuzsD4KaA6Z9jdZRYXMJFP4xDABUFo9wuwIkuxVk=; b=TXa9EE5O+6LoYq
	JbN2cO/NKNiK/6Aw2zVvgtirWvR6CuCPOkm39VxXeYXiLteV9C9dwBdaCYx+kPWn3XuBx5eCRCJKE
	5bMK8r/TVldtiHW4RR1J5SRCSgMWV/+D9YlTIJO9qXwoTZxP8w4WHwyMSN5aVHrFP9P2bVpTh5pMD
	0HQgClSOaHhspYgwMBRuR0YT09iFiPpxJMyUO7Kgf8ltFwkb9ZNWx2rCkSxYqSHzlqcLuMbEsyhZx
	3B37F4M9gD0AzSkZb5wKDqdYsF/CNl/AJ9dM6qWEud6U1ChRtJnJZSZXWbCkgWeSeItH9g0XjYe4k
	E+VgtOaL9eueLZSmkRDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPgz-0001V7-Be; Tue, 12 Nov 2019 06:30:21 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUPfw-0000ta-5q
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 06:29:17 +0000
Received: by mail-pf1-x441.google.com with SMTP id 193so12577083pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 22:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UUDGU5bEK87zS/zvlEOKFxc9b+Lh+WyGcJ2az77spzU=;
 b=P9PYlZgua/JfV89heBJgV98TMQ1fAx+Av1ZqdGidwAkRfFx9jMLlyIOewz1DdLTVyw
 Ns8I10lupzo1siKw1nmXKsxAg24aO/KDa0ldzvMvVlTglIXiiO0Hfi2xS1sM19y7dyjj
 CqZotFtKtjwZnnvNmOjVIf8LmhHr+cVY6XEuP2h1XKA5R0JEt1ios+ojFoZzS5iEoTar
 OtLOB3FlOREz4WC0T9VAiLOe6D04eBP+Ygo10RvPjo6DS/y0qFJJFTjL19t/acSRbNup
 n+uWAtc/i7uGSW8UJKIPHjBUourFI9wTA+mFODNSDr8+C1ldjkQS133eX1Tzgb0vZcNM
 2PVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=UUDGU5bEK87zS/zvlEOKFxc9b+Lh+WyGcJ2az77spzU=;
 b=TJucJ62ELmypejgoAaKMh0AyxEpYr+bgbyLhsHsJpCQ2dLltvE35r8ng20FtT04JLR
 D4dKB0yqb93tiF9voClXWbFew48bLNrwsYSwGperzpQcWivSq45TwgimUfdDEgIDPeOu
 jC5s2AI++lAY/sndPaJBitWooFKHFwErqNu2uzr9sVaKejisr50eqlmEnqjN9eSywzf1
 /w9rmGSyXUBbL+MR93wveRzsDr6ZS9op0kuL4hW8E/zX4NZR0kYc3UJQztOJNlTvcSfd
 0dtW1sBNJwLMPj9oQ9Er4rawI9cZPDK+WvzOG4PUHbY7G2en+tPEEj9CF2P+Xf2mzpQW
 BuCQ==
X-Gm-Message-State: APjAAAVGptlM7aLa9vcW3ik364XMwNw0xudtohMNrrw38HBEzMol0o8w
 m6Spjlb5JMTYaIroCAkzoR8=
X-Google-Smtp-Source: APXvYqyHE2Nv+8XZ3okYhk6S/FI2JZ4VYd65cFUTQ0SXTUhJGGxPHG2Oeqf6Ux1G9ymGLeb4cLnb8Q==
X-Received: by 2002:a17:90a:f013:: with SMTP id
 bt19mr4259314pjb.16.1573540155266; 
 Mon, 11 Nov 2019 22:29:15 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id x20sm18573707pfa.186.2019.11.11.22.29.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 22:29:14 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Subject: [PATCH 3/5] ARM: config: aspeed-g4: Add MMC, and cleanup
Date: Tue, 12 Nov 2019 16:58:55 +1030
Message-Id: <20191112062857.32638-4-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112062857.32638-1-joel@jms.id.au>
References: <20191112062857.32638-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_222916_234808_673B40AE 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PCA muxes now depend on I2C_MUX. SPI si now required by SPI-NOR.

Add the eMMC driver, and remove the FSI SBEFIFO which is not used on AST2400
systems.

The remaining changes are cleanups from regenerating the defconfig.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/configs/aspeed_g4_defconfig | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/arm/configs/aspeed_g4_defconfig b/arch/arm/configs/aspeed_g4_defconfig
index 1857df992484..303f75a3baec 100644
--- a/arch/arm/configs/aspeed_g4_defconfig
+++ b/arch/arm/configs/aspeed_g4_defconfig
@@ -132,10 +132,12 @@ CONFIG_ASPEED_BT_IPMI_BMC=y
 CONFIG_HW_RANDOM_TIMERIOMEM=y
 # CONFIG_I2C_COMPAT is not set
 CONFIG_I2C_CHARDEV=y
+CONFIG_I2C_MUX=y
 CONFIG_I2C_MUX_PCA9541=y
 CONFIG_I2C_MUX_PCA954x=y
 CONFIG_I2C_ASPEED=y
 CONFIG_I2C_FSI=y
+CONFIG_SPI=y
 CONFIG_GPIOLIB=y
 CONFIG_GPIO_SYSFS=y
 CONFIG_GPIO_ASPEED=y
@@ -185,6 +187,12 @@ CONFIG_USB_CONFIGFS_F_LB_SS=y
 CONFIG_USB_CONFIGFS_F_FS=y
 CONFIG_USB_CONFIGFS_F_HID=y
 CONFIG_USB_CONFIGFS_F_PRINTER=y
+CONFIG_MMC=y
+# CONFIG_PWRSEQ_EMMC is not set
+# CONFIG_PWRSEQ_SIMPLE is not set
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_PLTFM=y
+CONFIG_MMC_SDHCI_OF_ASPEED=y
 CONFIG_NEW_LEDS=y
 CONFIG_LEDS_CLASS=y
 CONFIG_LEDS_CLASS_FLASH=y
@@ -216,7 +224,6 @@ CONFIG_FSI_MASTER_GPIO=y
 CONFIG_FSI_MASTER_HUB=y
 CONFIG_FSI_MASTER_AST_CF=y
 CONFIG_FSI_SCOM=y
-CONFIG_FSI_SBEFIFO=y
 CONFIG_FANOTIFY=y
 CONFIG_OVERLAY_FS=y
 CONFIG_TMPFS=y
@@ -231,7 +238,6 @@ CONFIG_SQUASHFS_ZSTD=y
 # CONFIG_NETWORK_FILESYSTEMS is not set
 CONFIG_HARDENED_USERCOPY=y
 CONFIG_FORTIFY_SOURCE=y
-# CONFIG_CRYPTO_ECHAINIV is not set
 CONFIG_CRYPTO_HMAC=y
 CONFIG_CRYPTO_SHA256=y
 CONFIG_CRYPTO_USER_API_HASH=y
@@ -247,14 +253,14 @@ CONFIG_DEBUG_INFO_REDUCED=y
 CONFIG_DEBUG_INFO_DWARF4=y
 CONFIG_GDB_SCRIPTS=y
 CONFIG_STRIP_ASM_SYMS=y
+CONFIG_SCHED_STACK_END_CHECK=y
+CONFIG_PANIC_ON_OOPS=y
+CONFIG_PANIC_TIMEOUT=-1
 CONFIG_SOFTLOCKUP_DETECTOR=y
 # CONFIG_DETECT_HUNG_TASK is not set
 CONFIG_WQ_WATCHDOG=y
-CONFIG_PANIC_ON_OOPS=y
-CONFIG_PANIC_TIMEOUT=-1
 # CONFIG_SCHED_DEBUG is not set
-CONFIG_SCHED_STACK_END_CHECK=y
 CONFIG_FUNCTION_TRACER=y
-# CONFIG_RUNTIME_TESTING_MENU is not set
 CONFIG_DEBUG_WX=y
 CONFIG_DEBUG_USER=y
+# CONFIG_RUNTIME_TESTING_MENU is not set
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
