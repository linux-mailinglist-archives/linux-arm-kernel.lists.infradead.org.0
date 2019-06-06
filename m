Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8337B370A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iGVk8gyG/okB/lQ2S38hNOv4TUXLL9xiuLAAdhaYqO8=; b=uTyEtzgHL32BTz
	I6k7Avo5fmlU+91fkNBd167spHt34do4zFsBD1w7t7R1d4KC3MsfnT7z1HqF2kEi7bmFX1Hmri+IK
	Ju4w4pvdsYmk87j3KA3ArZvXoeSl4O/xFx8gjSvVIUu7QH6YHz5/OdZ4cAMiVcWhCzbobNzKy38sq
	0+qwuROATzXUlcHz5fLONpe7QdsJnDuBRkSAS9MBeOj3PPTWYiJK+6z8WMF9JI0w5jBcmsd2r4vI8
	SA3oR82Gy+U4CoUYBoFm+jYiALIeIyD6RBt+OJ1k+TwmzZl8xkTwX/oU+9jHDerioXPJDXyhyzYA6
	BL04CK8wQQR+CgITMSbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYozx-0006Wf-3J; Thu, 06 Jun 2019 09:47:53 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYozU-00062w-A4
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:47:33 +0000
Received: by mail-lj1-x243.google.com with SMTP id 131so1377344ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 02:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rKGTOfiJLhxkK5DAGNPwC06vm8bKZwP8i9X7cgh9zRA=;
 b=K+PqH70Mt8b5TNW5xvyKMCLzJtovkyWC4zw7/gWft90LGfZ2cANg/5W/zie4WCakja
 iqBzR6M/vddI7/EJkTSwFeHsH6hRt4shQeumyR/ZYmDdgkZiqc5Wm6oLzCIacG4Q0Mqv
 lvJIBpKkC+6yMDO0x90jeibFkzrw1QpAao7YTIOOadlwLYolHX6oIJ4WCgLM2CD/yUgl
 ePdQIpZw28df1WlqwFUyJoe6wpBHUCyVK64DdRONB0FcZyGGFE9EMlKystWQFaI1LAzr
 Lg6zc7EfV2TgzfWHFK+Ug4ER7oXkMFTR73mMQVaH3VMxJUeutxA+xdU/7CS1ix1hp2qW
 ig2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rKGTOfiJLhxkK5DAGNPwC06vm8bKZwP8i9X7cgh9zRA=;
 b=ps0RY/7miDR29oG/C4AVmRU5PvLibtXGasopa0+e0lbz8D3wble7nZvPRfvGXMFV8x
 TBYa5EQLvMvEP8zMZpF1sDFICnw4XlIzNpdQeqkmkx1rW/VCrfh1Bqa4PH0+GwwSglN1
 qUhmjFw0Ill3if4j5GXrY0nMgC1KeUS+zUHQWLiBMYczPbGtoeNs/lqlf8gkUEGPSceC
 uNmtQHou2nNRrvt0XRDQxiIfcnol4nrZvJYdrw3pZgBTTvsQiY6yO5wSX3lzqpZiHk/M
 n3eCgk/LSfzcHdCYGstt06A2O9aG/y9ETG49d4cle0lllGFfK8ROhGVcMs9aQ8WKMtGe
 lulw==
X-Gm-Message-State: APjAAAWb0BEeO9T3BrepvX+mownb34Qkoq2wv0pXWRgk89sZuYWZcrIM
 zOh9HV9LO0uN+o1SVoWS9C1qww==
X-Google-Smtp-Source: APXvYqxPlKZHL9CiyClyWDvutiKzyHn6nhVbMEAw7QIESvJ4dLD6VWjiINM1rxgc+VbZYV5LMX8zug==
X-Received: by 2002:a2e:9284:: with SMTP id d4mr24398129ljh.26.1559814442103; 
 Thu, 06 Jun 2019 02:47:22 -0700 (PDT)
Received: from localhost (c-1c3670d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.54.28])
 by smtp.gmail.com with ESMTPSA id r24sm124610ljb.72.2019.06.06.02.47.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 02:47:21 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: airlied@linux.ie, daniel@ffwll.ch, a.hajda@samsung.com, mchehab@kernel.org
Subject: [PATCH 4/8] drivers: media: i2c: fix warning same module names
Date: Thu,  6 Jun 2019 11:47:17 +0200
Message-Id: <20190606094717.23766-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_024724_795908_B610BBAB 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: marex@denx.de, andrew@lunn.ch, linux-fbdev@vger.kernel.org,
 f.fainelli@gmail.com, Anders Roxell <anders.roxell@linaro.org>,
 linux-arm-kernel@lists.infradead.org, b.zolnierkie@samsung.com,
 lee.jones@linaro.org, s.hauer@pengutronix.de, lgirdwood@gmail.com,
 stefan@agner.ch, davem@davemloft.net, broonie@kernel.org,
 dri-devel@lists.freedesktop.org, p.zabel@pengutronix.de,
 netdev@vger.kernel.org, linux-media@vger.kernel.org, shawnguo@kernel.org,
 vivien.didelot@gmail.com, linux-kernel@vger.kernel.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building with CONFIG_VIDEO_ADV7511 and CONFIG_DRM_I2C_ADV7511
enabled as loadable modules, we see the following warning:

warning: same module names found:
  drivers/gpu/drm/bridge/adv7511/adv7511.ko
  drivers/media/i2c/adv7511.ko

Rework so the names matches the config fragment.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
This is only one issue that have been addressed.
The other issue is that itseems to refer to the same device name in
i2c_device_id, any guidance how that should be solved?


Cheers,
Anders

 drivers/gpu/drm/bridge/adv7511/Makefile | 10 +++++-----
 drivers/media/i2c/Makefile              |  3 ++-
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/adv7511/Makefile b/drivers/gpu/drm/bridge/adv7511/Makefile
index b46ebeb35fd4..e367426bd73e 100644
--- a/drivers/gpu/drm/bridge/adv7511/Makefile
+++ b/drivers/gpu/drm/bridge/adv7511/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
-adv7511-y := adv7511_drv.o
-adv7511-$(CONFIG_DRM_I2C_ADV7511_AUDIO) += adv7511_audio.o
-adv7511-$(CONFIG_DRM_I2C_ADV7511_CEC) += adv7511_cec.o
-adv7511-$(CONFIG_DRM_I2C_ADV7533) += adv7533.o
-obj-$(CONFIG_DRM_I2C_ADV7511) += adv7511.o
+drm-i2c-adv7511-y := adv7511_drv.o
+drm-i2c-adv7511-$(CONFIG_DRM_I2C_ADV7511_AUDIO) += adv7511_audio.o
+drm-i2c-adv7511-$(CONFIG_DRM_I2C_ADV7511_CEC) += adv7511_cec.o
+drm-i2c-adv7511-$(CONFIG_DRM_I2C_ADV7533) += adv7533.o
+obj-$(CONFIG_DRM_I2C_ADV7511) += drm-i2c-adv7511.o
diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
index d8ad9dad495d..b71a427a89fd 100644
--- a/drivers/media/i2c/Makefile
+++ b/drivers/media/i2c/Makefile
@@ -35,7 +35,8 @@ obj-$(CONFIG_VIDEO_ADV748X) += adv748x/
 obj-$(CONFIG_VIDEO_ADV7604) += adv7604.o
 obj-$(CONFIG_VIDEO_ADV7842) += adv7842.o
 obj-$(CONFIG_VIDEO_AD9389B) += ad9389b.o
-obj-$(CONFIG_VIDEO_ADV7511) += adv7511.o
+obj-$(CONFIG_VIDEO_ADV7511) += video-adv7511.o
+video-adv7511-objs          := adv7511.o
 obj-$(CONFIG_VIDEO_VPX3220) += vpx3220.o
 obj-$(CONFIG_VIDEO_VS6624)  += vs6624.o
 obj-$(CONFIG_VIDEO_BT819) += bt819.o
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
