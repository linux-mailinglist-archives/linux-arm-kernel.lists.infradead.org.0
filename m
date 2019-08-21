Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B55C971D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 07:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnx2IIqx1BWHG++IMYv1un8/tYQmddCx9y5ZkKAzxFY=; b=T62MZ8L6Jy1iMH
	gi7VkAMhtGtgeUNuSsMxIY25b1xCxYI9rsIB0qIi7LrysOZ72VeGhklL/Kpu8YybIYkDWiA0hIam9
	aiB1OJUAs11VKo3Bbw7Tof8FNMG45RWOdsQncNbdyoHmcZbH7zfAqfnK1ZA9OK5RFhiNweNoPNaOz
	WGrfrbAs5zsgbzOe7ctuOtW+bsO4/j+UrkSpCe466laa0JSl0AGUI4KZ6vRr9LpZZ3w8MEvsSShlU
	xNMnZ3rsA6hjxdFz41DW9Ct+pPzMVWf+BUBtu95jYo23d5iaUXW7Zofpl5CBRqxdqJwFtBLAxRZAG
	Z6iTdY8mK9Ljt5vZpV5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0JdY-0001Hh-V5; Wed, 21 Aug 2019 05:58:24 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Jbb-0007fx-Da
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 05:56:28 +0000
Received: by mail-pl1-x643.google.com with SMTP id d3so733178plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 22:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Cl+8p7IjwOmu/57vcjZR8WI0fB01MFPdHX/I9mopYKM=;
 b=nLUkfdAcnMwMhCbckNJld74SrWq6OJpEZghk3AlLw3YrLeLkd64vM9dz4WPn0GSpUd
 sx2GEozETcKoqjFCb8CTrGGLggcZbhN33h+Zbv+wtoBllPojJGO6ktF6HfynDuVRJU/0
 MF13E62ssTk4bpVK+K9jjvpXJWpOmtTlgK7Vm3bsIaWD0tNZ4liKtl46D7Z363KldTzk
 G75OzMmWg9rvAQFlBzW/acDAxTz8A+7TXDElu7W7pYlKWED403UpAfhlsNl4NWMDqzS1
 TCntO4Jbxl8iTEVeO1TW0TteJqF14AEI86GZNB5VYi+xSRIlwWpMQqCaHTlrCj0q4Ezj
 qLqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=Cl+8p7IjwOmu/57vcjZR8WI0fB01MFPdHX/I9mopYKM=;
 b=MfcfmtET3losMQmNfaVaw4t9JnWRTpBlSyaAk+AETnbY2AUe8SuvlHHgL4ioWSqpXj
 5jBe2DiNfmrCc7e5YhKAkP1b3wkbPzXRsE36RKjCEZsLj05bEkoXP/x57THORuQAu6+u
 Rn9cVVpxXbIKgvDIbFb7A9TJFlsZd7ZqY7Mfe55of5geepGj0uYikDpOHMW5Pt7tKVFI
 gu7BS9PBerXSqZpK0OKGzWVOWdU4vHaGukDgnT39d0BzUuM/0mmXiihKRBdCIknhLW5s
 JM2Mm7u9MMb5+T5TKfp30X2cEwMYkr1dJWwLukvvCh9h+sKR9vvqty21VNbb/THHrpK7
 3LMw==
X-Gm-Message-State: APjAAAWD+tb6eW0VxN2oLb+apPMZU2eaidrXo+j2SzeszxWymjARdPD1
 ZLID9kJw8R5i5BBnToZBBLA=
X-Google-Smtp-Source: APXvYqzYQs1jmaRyUy+/+2oBaJRR5DJBG64wLpMysrA/dlWTCgTRjmToDLsMqmOik2O6WLD/5OCBCQ==
X-Received: by 2002:a17:902:9b94:: with SMTP id
 y20mr32176648plp.260.1566366982431; 
 Tue, 20 Aug 2019 22:56:22 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.56.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 22:56:21 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 7/7] ARM: configs: aspeed_g5: Enable AST2600
Date: Wed, 21 Aug 2019 15:25:30 +0930
Message-Id: <20190821055530.8720-8-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190821055530.8720-1-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_225623_540154_C55BD870 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

CONFIG_STRICT_KERNEL_RWX is enabled by default with ARMv7.

Turn on HIGHMEM as the EVB has 2GB of RAM, and not all is usable without
hihgmem.

The SoC contains Cortex A7 supporting VFP and has two CPUs.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/configs/aspeed_g5_defconfig | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/aspeed_g5_defconfig b/arch/arm/configs/aspeed_g5_defconfig
index 426d8e0c9890..597536cc9573 100644
--- a/arch/arm/configs/aspeed_g5_defconfig
+++ b/arch/arm/configs/aspeed_g5_defconfig
@@ -21,21 +21,26 @@ CONFIG_PERF_EVENTS=y
 CONFIG_SLAB=y
 CONFIG_SLAB_FREELIST_RANDOM=y
 CONFIG_ARCH_MULTI_V6=y
-# CONFIG_ARCH_MULTI_V7 is not set
 CONFIG_ARCH_ASPEED=y
 CONFIG_MACH_ASPEED_G5=y
+CONFIG_MACH_ASPEED_G6=y
 # CONFIG_CACHE_L2X0 is not set
+CONFIG_SMP=y
+# CONFIG_ARM_CPU_TOPOLOGY is not set
 CONFIG_VMSPLIT_2G=y
+CONFIG_NR_CPUS=2
+CONFIG_HIGHMEM=y
 CONFIG_UACCESS_WITH_MEMCPY=y
 CONFIG_SECCOMP=y
 # CONFIG_ATAGS is not set
 CONFIG_ZBOOT_ROM_TEXT=0x0
 CONFIG_ZBOOT_ROM_BSS=0x0
 CONFIG_KEXEC=y
-# CONFIG_SUSPEND is not set
+CONFIG_VFP=y
+CONFIG_NEON=y
+CONFIG_KERNEL_MODE_NEON=y
 CONFIG_FIRMWARE_MEMMAP=y
 CONFIG_JUMP_LABEL=y
-CONFIG_STRICT_KERNEL_RWX=y
 # CONFIG_BLK_DEV_BSG is not set
 # CONFIG_BLK_DEBUG_FS is not set
 # CONFIG_MQ_IOSCHED_DEADLINE is not set
@@ -140,10 +145,12 @@ CONFIG_ASPEED_BT_IPMI_BMC=y
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
@@ -194,6 +201,10 @@ CONFIG_USB_CONFIGFS_F_LB_SS=y
 CONFIG_USB_CONFIGFS_F_FS=y
 CONFIG_USB_CONFIGFS_F_HID=y
 CONFIG_USB_CONFIGFS_F_PRINTER=y
+CONFIG_MMC=y
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_PLTFM=y
+CONFIG_MMC_SDHCI_OF_ASPEED=y
 CONFIG_NEW_LEDS=y
 CONFIG_LEDS_CLASS=y
 CONFIG_LEDS_CLASS_FLASH=y
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
