Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 108C41A76F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EjwhrJ5ZLLUnalXGeYp7DPMZ/cz+SzQdO/nHsNh9xDM=; b=Jv+1wMMkgb3WpL
	+M9k8F6Vb9fU13XSZZ5yrjks+a1qJkz7IWSFkt6+RI6EXAKhoaFXdKKF8Xre6++5izyqtPtdI2LQI
	I5XfrFrykEUPDLUK15IGZrdSD7YSDtSuO9+m0g0oOLHStf5zTFB5DLUjeDPpmFHxNn+hoYUqr/1R8
	33JC4zg/8yhuM3wFZ5EkXZrn4Q/tUA/URK1aQu7yWquIcGg29+52sYmM/cSzDQUdmVjxW3kT44jVi
	bVC5kjc4xop9rlQsxvLmDdrcyAhYlRD8SHiyiTVaM6GlAWYBph64UsTA7NLouSaAv50Fz7Xcth+cs
	fFFYDPhQMjoXjVPMHGbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOHWw-0007Ju-V8; Tue, 14 Apr 2020 09:06:54 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHWo-0007JY-2D
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 09:06:47 +0000
Received: by mail-lf1-x141.google.com with SMTP id l11so8773569lfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 02:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HiAeoGufY0fUZ6uWz8+luCRqwR1G0ee7jnFhzr4rQCk=;
 b=d/yxnUnsbxOdD2EW85pJvF3sbTU8/KMMj6JcjsMMmsh0Fyl8wC2l64RHyWZiCsuCVP
 xi2Xa4qRu8B+2MV4SdvuxtatUcxRGjDEEBPPUQJS7Rj7Oaf8C3KxbnhnYtHFQWCtKJMj
 /b0KCF6sHvD+hkF8c0YhcmpsPAOV50pN6lfFabE28Rdmhr8o53C+q+yZQWXKymJ2Cnmq
 eHL9W52YMzY2G+sNT3VZvbJpbsBE1mAfguOXTKD1xbyenLGxfyqbChkvyeCjNfteICeW
 9fhEdQ/ciFG1gGPUZc37GbkKU3PwWoBQJ90szrB1m1wWUlruJrZdjE1ZvnW7oq/BmC9Z
 T48Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HiAeoGufY0fUZ6uWz8+luCRqwR1G0ee7jnFhzr4rQCk=;
 b=tT0m3gKGwA2I7QvEcTkhh7q4TiwPI6qfZu/M5kUUcyzi+w7N7djTaMqYDg3WQepIyN
 nV5iS/ZrbjNSge8C6284yaPtGXNYPeLXZ1Hrs477pq61shB0q6R9hJnVhpsB9DwAERh/
 YP30BC11I04WTXITaChCAhBHLOjmSGH2j3Xtz7zOwQqqF43bY/Lp9CBClaFewnz99Hwg
 q/7CJC38S36Nv3eS2GnpCE7KDJkN+uT+2r91R9ohLuy2z1UgaUJxGpbKZ8ZFmKBZmFR5
 JGCFNFvhxIy8q+UVGDyuLKRSI9vDSt/WWgFuVF6OEoycwq5tcte6s/WB/kiALQt4Tqsj
 DoKA==
X-Gm-Message-State: AGi0PuZO3Hyq1P9pvuQmD8DruTvUqspLaXbHz0Vx8TH5SO3+kNe8hksj
 Ih/jNW1hhupqRvsXIfi7hGVXaBvgYGM=
X-Google-Smtp-Source: APiQypLzpYgm5gZoWG76IwB3l8BYfiD3GWhfHrpeNjoBUpzZvLpevdkkbQZET79ehpic3woC2jVIeA==
X-Received: by 2002:a19:c216:: with SMTP id l22mr8861058lfc.172.1586855202963; 
 Tue, 14 Apr 2020 02:06:42 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id u1sm8683584ljo.65.2020.04.14.02.06.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 02:06:42 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: defconfig: u8500: Enable new drivers for ux500
Date: Tue, 14 Apr 2020 11:06:38 +0200
Message-Id: <20200414090638.13307-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_020646_111561_D184FF29 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new device tree for samsung-skomer and the HREF520
devicetree enables some additional drivers that are not yet
selected in the u8500_defconfig:

- The GPIO-based I2C bus master driver for some peripherals
  that do not use the I2C hardware master.
- The Novatek NT35510 driver for the Skomer panel.
- The Sony ACX424AKP driver for the HREF520 panel.
- The GPIO-based backlight driver for Skomer.
- The BMA180 driver for the BMA254 accelerometer found in the
  Skomer.
- The new GP2AP002 driver for the GP2AP002S00F proximimty sensor
  found in the Skomer and Golden devices.

Cc: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
This patch is based on top of Stephan's Golden enablement
defconfig patch.
---
 arch/arm/configs/u8500_defconfig | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/u8500_defconfig b/arch/arm/configs/u8500_defconfig
index 0fd2726cf1c1..28dd7cf56048 100644
--- a/arch/arm/configs/u8500_defconfig
+++ b/arch/arm/configs/u8500_defconfig
@@ -72,7 +72,7 @@ CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_SERIAL_AMBA_PL011_CONSOLE=y
 CONFIG_SERIAL_DEV_BUS=y
 CONFIG_HW_RANDOM=y
-CONFIG_I2C_MUX=y
+CONFIG_I2C_GPIO=y
 CONFIG_SPI=y
 CONFIG_SPI_PL022=y
 CONFIG_GPIO_STMPE=y
@@ -86,11 +86,14 @@ CONFIG_MFD_TC3589X=y
 CONFIG_REGULATOR_AB8500=y
 CONFIG_REGULATOR_GPIO=y
 CONFIG_DRM=y
+CONFIG_DRM_PANEL_NOVATEK_NT35510=y
 CONFIG_DRM_PANEL_SAMSUNG_S6D16D0=y
+CONFIG_DRM_PANEL_SONY_ACX424AKP=y
 CONFIG_DRM_LIMA=y
 CONFIG_DRM_MCDE=y
 CONFIG_BACKLIGHT_CLASS_DEVICE=y
 CONFIG_BACKLIGHT_GENERIC=m
+CONFIG_BACKLIGHT_GPIO=y
 CONFIG_LOGO=y
 CONFIG_SOUND=y
 CONFIG_SND=y
@@ -121,10 +124,12 @@ CONFIG_HWSPINLOCK=y
 CONFIG_HSEM_U8500=y
 CONFIG_IIO=y
 CONFIG_IIO_SW_TRIGGER=y
+CONFIG_BMA180=y
 CONFIG_IIO_ST_ACCEL_3AXIS=y
 CONFIG_IIO_ST_GYRO_3AXIS=y
 CONFIG_INV_MPU6050_I2C=y
 CONFIG_BH1780=y
+CONFIG_GP2AP002=y
 CONFIG_AK8974=y
 CONFIG_IIO_ST_MAGN_3AXIS=y
 CONFIG_IIO_HRTIMER_TRIGGER=y
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
