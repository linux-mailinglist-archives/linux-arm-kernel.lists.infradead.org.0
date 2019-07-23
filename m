Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E82713B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJ9WcM5tt9JW3FOjxkNsqkgJVXx1zxJaaM4ZBE+Xgks=; b=HDJP3f2MjklRVS
	1Dl64gd3MZ7BLfOGuzwXgqcqN+DP5KZvpUJmt3A9xNZfgbU2XmqhVF1siZXoTZFUHvWSqJa8NOmPH
	0iVHMSG2YjNyD8IGGcwgSqxvkb3r9raSx0eeHR4DoTs82cvi/dU8LyLqYCDNWVY19umX1Z7I+5KFi
	J37/9aU3/ckSh7zx5cY3U4+jRLl8CavjqB5IG1SCLbYWzk1eblTkAkmPJQSbWpOq8/QBugs+WcfdQ
	qMh5X7N4PaQ/6CGxbkZeNj7FHNu1PZ2PPKmcueliCHi4EUa/zWZ0gNvMEgA0sBquiCaTai4R1Oag5
	aVdUIct70iYVkA66yRsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppyO-0001ua-2d; Tue, 23 Jul 2019 08:16:36 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppxP-0001dY-PD
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:15:37 +0000
Received: by mail-lf1-x143.google.com with SMTP id c19so28678895lfm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 01:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D1oO0t/6rvgZKHymZt/cKIk03PnDXSWmmQZH/Nk0Db0=;
 b=XAl6oynbIK3RlWcqp/Jmudl5+FAHheEPZPLaQDqFm6DLM/AO0l1HhV4haR3b6wEGMx
 IyMy7+rsjsTOCQrIFo+U9wix2/A5suNO8pd8u28wEV0CjzXdWWl5yAXuykgbk0VTf/q+
 uplZw/rK7eTPq29JupEf9n/E3K3qG9Nvs5Q51Y0VbcAke5k8aaxtDjcFgjKeC8pj9BD/
 ov/8uBJITClv2pTpPO9E3+hbMVkvZKPub4QTZp6xWfBkyfD6hYLzfvAjlLFWo5FN6Lcp
 aKFUCSiIptpeXEidjT0xCF0sxVeNWm6jbrXkL3oGR7WjX9k9jGMIanCSEzeEhHhdjnDj
 6jEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D1oO0t/6rvgZKHymZt/cKIk03PnDXSWmmQZH/Nk0Db0=;
 b=HC4GgjQyOZHTqUCWBaMh4sDFbSwvM0+pvHraxjhcn7uAMGhrtMIaNk6yX15GHgBHEH
 f48lTHi+H9hz0+n3H+mUUbKrXfAMaLa+3TZTt5BffiosPJD2bXV6b1iJEo78QVNED+1C
 8s2QXDgUVZxuD89XoRfIu3zf8cxEqW8QPUUiqeoKI0qxmfQlklaI7LwQznz6LXYN4tlf
 H4EKXxMu8mw0w/G69YBrgBXtmpTwPvaBg59+j/csxYhSzBsCEHxwmoKFl+lWNBR+QSdw
 q8I46yOPsGO2BdfQ783mufNYRI7eiXuBh4J1Un54v1y6+B/oKtv5tNWpf2Gc7PrqRFrA
 cbgA==
X-Gm-Message-State: APjAAAXyLkDWtkLQdyuYYjkww8SfCB32F1EtCyuEfiKuAHhTwYbl6dZq
 HNVHQHgQm9//pUP3e2d0U1HCvNVl/us=
X-Google-Smtp-Source: APXvYqxMKLmJvN/+Xv939aGEbqdfM+eRBUFJprHw23TQPtOAEmqcQf+NxU3Sv7MRS7ZmOeSmyLRf0A==
X-Received: by 2002:a05:6512:15a:: with SMTP id
 m26mr33640127lfo.71.1563869734131; 
 Tue, 23 Jul 2019 01:15:34 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id v12sm7881772ljk.22.2019.07.23.01.15.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 01:15:33 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH 2/2] ARM: defconfig: u8500: Add new drivers
Date: Tue, 23 Jul 2019 10:15:23 +0200
Message-Id: <20190723081523.13079-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723081523.13079-1-linus.walleij@linaro.org>
References: <20190723081523.13079-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_011535_855939_166DBD6D 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables the new or updates driver options for U8500
that got merged into v5.3-rc1:

- CMA, MCDE driver, LIMA driver and the Samsung S6D16D0 driver
  enabled by default bringing up the new graphics support.
  Include the LOGO so we can see when the graphics are live.
- We use the IIO hwmon bridge for reflecting temperature
  in the system.
- Set MUSB to PIO mode as this is the one working most stable
  for the time being.
- HWSPINLOCK needs to be set to get the hardware semaphore
  driver to compile and link properly.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: please apply this directly for v5.3
---
 arch/arm/configs/u8500_defconfig | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/u8500_defconfig b/arch/arm/configs/u8500_defconfig
index 215bd3cd6e34..822cddfbf1af 100644
--- a/arch/arm/configs/u8500_defconfig
+++ b/arch/arm/configs/u8500_defconfig
@@ -21,6 +21,7 @@ CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_PARTITION_ADVANCED=y
+CONFIG_CMA=y
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
@@ -58,7 +59,6 @@ CONFIG_RMI4_CORE=y
 CONFIG_RMI4_I2C=y
 CONFIG_RMI4_F11=y
 # CONFIG_SERIO is not set
-CONFIG_VT_HW_CONSOLE_BINDING=y
 # CONFIG_LEGACY_PTYS is not set
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_SERIAL_AMBA_PL011_CONSOLE=y
@@ -67,6 +67,7 @@ CONFIG_SPI=y
 CONFIG_SPI_PL022=y
 CONFIG_GPIO_STMPE=y
 CONFIG_GPIO_TC3589X=y
+CONFIG_SENSORS_IIO_HWMON=y
 CONFIG_THERMAL=y
 CONFIG_CPU_THERMAL=y
 CONFIG_WATCHDOG=y
@@ -74,6 +75,13 @@ CONFIG_MFD_STMPE=y
 CONFIG_MFD_TC3589X=y
 CONFIG_REGULATOR_AB8500=y
 CONFIG_REGULATOR_GPIO=y
+CONFIG_DRM=y
+CONFIG_DRM_PANEL_SAMSUNG_S6D16D0=y
+CONFIG_DRM_LIMA=y
+CONFIG_DRM_MCDE=y
+CONFIG_BACKLIGHT_CLASS_DEVICE=y
+CONFIG_BACKLIGHT_GENERIC=m
+CONFIG_LOGO=y
 CONFIG_SOUND=y
 CONFIG_SND=y
 CONFIG_SND_SOC=y
@@ -82,6 +90,7 @@ CONFIG_SND_SOC_UX500_MACH_MOP500=y
 CONFIG_USB=y
 CONFIG_USB_MUSB_HDRC=y
 CONFIG_USB_MUSB_UX500=y
+CONFIG_MUSB_PIO_ONLY=y
 CONFIG_AB8500_USB=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_ETH=m
@@ -98,6 +107,7 @@ CONFIG_RTC_DRV_AB8500=y
 CONFIG_RTC_DRV_PL031=y
 CONFIG_DMADEVICES=y
 CONFIG_STE_DMA40=y
+CONFIG_HWSPINLOCK=y
 CONFIG_HSEM_U8500=y
 CONFIG_IIO=y
 CONFIG_IIO_SW_TRIGGER=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
