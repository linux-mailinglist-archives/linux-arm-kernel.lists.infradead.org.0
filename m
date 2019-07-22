Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A5870194
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BYY2IwcQn72AssehZ0A833IWtYKkDsSR6IlShoh5TC4=; b=tlyu4sGMgip6go
	zs7818HgvqxozUW6niJIZeSyuNDjL5EfJ5tWQacuy76Om+2t/9ZB0+1A/8k7g0z0BW81ibv5mm5V0
	FREh2vVHAYIyCOI+HHouM/AeZCMwglxbbGqlBqooNafFFCSisXvRFJk33AUKA/XqMuI4N7EMVzekw
	Mn88IaaanuSvfRjogoCLhToPC4Zd62z1scJK+v/tGc06Hgw3q6QX4NGTY1O2SLnvmkrHqeAha1YXd
	ym226WanLNDH1GkH4qaJzMGdqIlsJQ8CJwz3/k03J88dFHgA23ZPSCZQT1MnQd6IdlIzNXMgX48w6
	VXiOVp4r8jyoXJ5BMlnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYdp-0003T9-Gd; Mon, 22 Jul 2019 13:46:13 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYcL-0001QQ-HS
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:44:43 +0000
Received: by mail-wr1-x442.google.com with SMTP id c2so36288943wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gk5SBc/PQrRw2/WE7KefplwNGkECcCyB4KQSmX+BTmQ=;
 b=oMdKNkXLkaP9sSsQPXeW5E9HuRIDnGJLDCKBG0jCKWc10aWI5al0uhDXtBHPI6dv8i
 HPZv3gN1k0OFHKVcoVnYg9zpRfV/OBl17ptQ6mRQElPqqqVDrjB2r5Oqo7sFP4pcb1ra
 PM1Ix8qi7QKyGM4he0DnNAdiSIeRJ1rWcBDtQSz4kYm4Izt2yieU7kUaPR9ecS18Oyw4
 OAgX1n9mlI635tsJm2aAyiz9Epq9CKXaBVkcD4rHZ6ct9O5il3cMHgN4Aee8MeOy/dBz
 UajQ8y9i1z6ugIcxI80gALDSIBaicqDqynPVY5gy4rPjQ2T+amnvPcjgReyJOhgwpWAh
 cjow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gk5SBc/PQrRw2/WE7KefplwNGkECcCyB4KQSmX+BTmQ=;
 b=NXE8LozVJ/6OpYzFGEY4LUCy5z2OZbN843EkYMmxrlviAFFUgt8DQIkrkuma2p32ks
 9f2VlHxiJLbiug3Cc8lRzNQJmlvNi6EwoDg96SNewe9fe7hExuEiXZqkqFRrT33jz+h7
 TT3PZ/whk8DV/ourlc5gkW50Q5MXG+dyEaNMWQjk6itQD3pZypO0k8+ddVE/scK6DI18
 XslaR6QNT30FyclHXsjxuxp4cQLqARsWWh5MhCeNi+FrKV64JRSu0QDkaG+ogxdcEXqn
 Z/U350eE800evZY9Qdk2fwfU41TyEzzKbrXU2WrGU9I29MqJ70qSZE3aNlBHPsd/MvXY
 ycvA==
X-Gm-Message-State: APjAAAXdwVVh5Lsqg8dWML5yRbhGSr5WEaesmTZI6nijCxo5OufdpKAS
 ox3kowJddIaSKg/b+pHR90c=
X-Google-Smtp-Source: APXvYqyH5Daii/W5FgVsigcc5EM5zvOq0oWT61laPegjMx3sk6AFUM5Vv73AT8S3lbRAaWz6NO9M/A==
X-Received: by 2002:a05:6000:42:: with SMTP id
 k2mr31786194wrx.80.1563803080115; 
 Mon, 22 Jul 2019 06:44:40 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id p6sm40652484wrq.97.2019.07.22.06.44.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:44:39 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 1/9] ARM: davinci: refresh davinci_all_defconfig
Date: Mon, 22 Jul 2019 15:44:15 +0200
Message-Id: <20190722134423.26555-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722134423.26555-1-brgl@bgdev.pl>
References: <20190722134423.26555-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064441_732194_6C2C33E5 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Refresh davinci_all_defconfig with current master.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/configs/davinci_all_defconfig | 26 +++++++++-----------------
 1 file changed, 9 insertions(+), 17 deletions(-)

diff --git a/arch/arm/configs/davinci_all_defconfig b/arch/arm/configs/davinci_all_defconfig
index 9a32a8c0f873..7c2a39305f2b 100644
--- a/arch/arm/configs/davinci_all_defconfig
+++ b/arch/arm/configs/davinci_all_defconfig
@@ -10,13 +10,6 @@ CONFIG_CGROUPS=y
 CONFIG_CHECKPOINT_RESTORE=y
 CONFIG_BLK_DEV_INITRD=y
 CONFIG_EXPERT=y
-CONFIG_MODULES=y
-CONFIG_MODULE_UNLOAD=y
-CONFIG_MODULE_FORCE_UNLOAD=y
-CONFIG_MODVERSIONS=y
-CONFIG_PARTITION_ADVANCED=y
-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_ARCH_DAVINCI=y
 CONFIG_ARCH_DAVINCI_DM644x=y
 CONFIG_ARCH_DAVINCI_DM355=y
@@ -31,9 +24,7 @@ CONFIG_MACH_MITYOMAPL138=y
 CONFIG_MACH_OMAPL138_HAWKBOARD=y
 CONFIG_DAVINCI_MUX_DEBUG=y
 CONFIG_DAVINCI_MUX_WARNINGS=y
-CONFIG_PREEMPT=y
 CONFIG_AEABI=y
-CONFIG_CMA=y
 CONFIG_SECCOMP=y
 CONFIG_ZBOOT_ROM_TEXT=0x0
 CONFIG_ZBOOT_ROM_BSS=0x0
@@ -47,6 +38,12 @@ CONFIG_CPU_FREQ_GOV_POWERSAVE=m
 CONFIG_CPU_FREQ_GOV_ONDEMAND=m
 CONFIG_CPUFREQ_DT=m
 CONFIG_CPU_IDLE=y
+CONFIG_MODULES=y
+CONFIG_MODULE_UNLOAD=y
+CONFIG_MODULE_FORCE_UNLOAD=y
+CONFIG_MODVERSIONS=y
+CONFIG_PARTITION_ADVANCED=y
+CONFIG_CMA=y
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
@@ -64,7 +61,6 @@ CONFIG_BT_HCIUART_LL=y
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_FW_LOADER=m
-CONFIG_DMA_CMA=y
 CONFIG_DA8XX_MSTPRI=y
 CONFIG_MTD=m
 CONFIG_MTD_TESTS=m
@@ -168,8 +164,6 @@ CONFIG_SOUND=m
 CONFIG_SND=m
 CONFIG_SND_USB_AUDIO=m
 CONFIG_SND_SOC=m
-CONFIG_SND_SOC_TLV320AIC3X=m
-CONFIG_SND_SOC_DAVINCI_MCASP=m
 CONFIG_SND_SOC_DAVINCI_EVM=m
 CONFIG_SND_SIMPLE_CARD=m
 CONFIG_HID=m
@@ -214,14 +208,12 @@ CONFIG_MMC_DAVINCI=y
 CONFIG_NEW_LEDS=y
 CONFIG_LEDS_CLASS=m
 CONFIG_LEDS_GPIO=m
-CONFIG_LEDS_TRIGGERS=y
 CONFIG_LEDS_TRIGGER_TIMER=m
 CONFIG_LEDS_TRIGGER_HEARTBEAT=m
 CONFIG_LEDS_TRIGGER_DEFAULT_ON=m
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_OMAP=m
 CONFIG_DMADEVICES=y
-CONFIG_TI_EDMA=y
 CONFIG_COMMON_CLK_PWM=m
 CONFIG_REMOTEPROC=m
 CONFIG_DA8XX_REMOTEPROC=m
@@ -259,10 +251,10 @@ CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ASCII=m
 CONFIG_NLS_ISO8859_1=y
 CONFIG_NLS_UTF8=m
+# CONFIG_CRYPTO_HW is not set
+CONFIG_CRC_T10DIF=m
+CONFIG_DMA_CMA=y
 CONFIG_DEBUG_FS=y
 CONFIG_DEBUG_RT_MUTEXES=y
 CONFIG_DEBUG_MUTEXES=y
-# CONFIG_ARM_UNWIND is not set
 CONFIG_DEBUG_USER=y
-# CONFIG_CRYPTO_HW is not set
-CONFIG_CRC_T10DIF=m
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
