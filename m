Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AE4126ED9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:24:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02jLW2cvz2W/Kj9FNWxwFK8Gw8oc50dKQZhEyxf9QYo=; b=ZPYyzsTFywbpKB
	geVFTS++ti7eByzvLXLOWQtalWjcB6jNEtAheZ10mCFSDTKq57ABJ/4PJdHX2co/17dgzf/qGaxO/
	PotMcEXYksgYo9pySwZtyztfhb7K1lt/w1ifxFyU9kPcsQ44kjjB6WZ05bbRU44G+oh/On2cViVSI
	rI/dG4QvaV5/cj47Frnu0mLyyrnMG0TiFgNMZdKubGlPEo94jgw8p0YCg40o75YCkOFsToA1dPZR5
	KliTIMLK9awZj3cCZkTUyMBowfndgnn5pLMjzn3dxi6fGDTJk7ofu+yNy9I5renZEcJWKYcSR+QTy
	uipt23PwK8dRyCp7jnZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2LW-0001eB-HU; Thu, 19 Dec 2019 20:24:30 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2J3-00083C-AC
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 20:21:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576786915;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=JtjZ1Nu6sfM70p1ADDmUjRAk5cVU1JLE+vgtlBuy/dc=;
 b=AENEP45PRAGAdVgvl400BGK4yjVGwrJ96ATZ3YB3qwDl9ik9mDf1HskqwGM88B3Bru
 y3r6ptDlzhdkWqXAEHqLYs9Y0gKrECFZEpuhL4m1Jh4wWvK3IpBvhceVN7aFbc/7oGUQ
 zaRb8rlAUvbX/q9luv0y0lG4yQQ6V25TzFMzl08f/ndDXZ2rGIVSIAAwGYHepQWGEXk4
 NyJwtUzqsb5qWkSp7gCPUzY5gsJG7swv4rgZbPfrAeyGM5UeMF/PX2vS09g24bqiK0M+
 4aHweCq/qZ1VD52vq9jSqk/PgClbVoOu8E+y8xX+AYdZKrVKpy4HO3QnJ6xvZq4m45/z
 ER8w==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXtszvsxM1"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 46.1.1 AUTH)
 with ESMTPSA id f021e2vBJKLk3ZH
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 19 Dec 2019 21:21:46 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 9/9] ARM: defconfig: u8500: Enable new drivers for
 samsung-golden
Date: Thu, 19 Dec 2019 21:20:52 +0100
Message-Id: <20191219202052.19039-10-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219202052.19039-1-stephan@gerhold.net>
References: <20191219202052.19039-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_122157_527549_5CE6A195 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:2 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new device tree for samsung-golden depends on some additional
drivers that are not selected in the u8500 defconfig yet:

  - Bluetooth: hci_bcm
  - WiFi: brcmfmac
  - Touchscreen: atmel_mxt_ts
  - Vibrator: gpio-vibra
  - Sensors: inv_mpu6050 (IMU)

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/configs/u8500_defconfig | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/configs/u8500_defconfig b/arch/arm/configs/u8500_defconfig
index 822cddfbf1af..aff87c5ecc43 100644
--- a/arch/arm/configs/u8500_defconfig
+++ b/arch/arm/configs/u8500_defconfig
@@ -30,6 +30,9 @@ CONFIG_IP_PNP=y
 CONFIG_IP_PNP_DHCP=y
 CONFIG_NETFILTER=y
 CONFIG_PHONET=y
+CONFIG_BT=y
+CONFIG_BT_HCIUART=m
+CONFIG_BT_HCIUART_BCM=y
 CONFIG_CFG80211=y
 CONFIG_CFG80211_DEBUGFS=y
 CONFIG_MAC80211=y
@@ -42,6 +45,7 @@ CONFIG_BLK_DEV_RAM_SIZE=65536
 CONFIG_NETDEVICES=y
 CONFIG_SMSC911X=y
 CONFIG_SMSC_PHY=y
+CONFIG_BRCMFMAC=m
 CONFIG_CW1200=y
 CONFIG_CW1200_WLAN_SDIO=y
 CONFIG_INPUT_EVDEV=y
@@ -52,9 +56,11 @@ CONFIG_KEYBOARD_STMPE=y
 CONFIG_KEYBOARD_TC3589X=y
 # CONFIG_INPUT_MOUSE is not set
 CONFIG_INPUT_TOUCHSCREEN=y
+CONFIG_TOUCHSCREEN_ATMEL_MXT=y
 CONFIG_TOUCHSCREEN_BU21013=y
 CONFIG_INPUT_MISC=y
 CONFIG_INPUT_AB8500_PONKEY=y
+CONFIG_INPUT_GPIO_VIBRA=y
 CONFIG_RMI4_CORE=y
 CONFIG_RMI4_I2C=y
 CONFIG_RMI4_F11=y
@@ -62,7 +68,9 @@ CONFIG_RMI4_F11=y
 # CONFIG_LEGACY_PTYS is not set
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_SERIAL_AMBA_PL011_CONSOLE=y
+CONFIG_SERIAL_DEV_BUS=y
 CONFIG_HW_RANDOM=y
+CONFIG_I2C_MUX=y
 CONFIG_SPI=y
 CONFIG_SPI_PL022=y
 CONFIG_GPIO_STMPE=y
@@ -113,6 +121,7 @@ CONFIG_IIO=y
 CONFIG_IIO_SW_TRIGGER=y
 CONFIG_IIO_ST_ACCEL_3AXIS=y
 CONFIG_IIO_ST_GYRO_3AXIS=y
+CONFIG_INV_MPU6050_I2C=y
 CONFIG_BH1780=y
 CONFIG_AK8974=y
 CONFIG_IIO_ST_MAGN_3AXIS=y
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
