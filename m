Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A16163FEE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:04:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HhDlzK9E2ryXSMFoF4z7DD+dXJ3DJJdteWbq/tyBBEw=; b=ODs
	TVsAr9BL5NaEtlKK3wqdRcZfKbujewlTVaEfXuO8CbNC8Mssw2+kBcVvpogdhXD4qwPCNTrM3Mul3
	WBvtj5ONwQ/+9yPaHOwqERYwh/C9kvS7QR4ABJXUNPAfQonY/IyI38+vdRWaqdBphPvvC6GGphO7m
	pY/TtykqfulQu00Q50Fg3dL1ZgjwotflXI2IUDOEJ+AD9KB8VukQmKIZxay5Q1uuaL6R0ZD0q9hHj
	JR7Iu8f+DoWlbdMCQkohMZTMfThWtYaH4bEOYT5DRAWo3Qjnl2idOZgTglFsxYuGX6iD2QapWDYUH
	BVlDqqWuKm3QqvhtyTVeDNw1pfCfgwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4LHg-0001dZ-OD; Wed, 19 Feb 2020 09:04:44 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4LHY-0001cO-6j
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:04:38 +0000
Received: by mail-pf1-x441.google.com with SMTP id 2so12168996pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 01:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=zzjNsVT7oFssvopVPRdGW/YTCcDi0QZYWBWNA17kwhg=;
 b=eNHopnRDIVVrepw5vDCEHq2Oka1gXLsWwAXhAKzSHRO7h69Y9ZTIgAIKTw5sIE1zcr
 dDFIvcL0ReVbdcKCQOIsJTxWs7E9rSs/Ehg6Sjqt7C804okv8FBBfTp8WyrqoQ7qfyZ1
 um28qJXOkM72Gb0thvNp8UdV8ZDW5FB9sfqtK1Khzx5Lcw2l8j/DRfX3m6U/VHT3G7aO
 VA5Ql/nTRfhqLJGefDkORrM6q+9nmHHIeRph1hJVh9wwvnEzIF6Qp868Orz+oAtG3xow
 Cu4+wEg4IgD3AOV2KvTcJfY0sSWMMaac/CGvNqWXa9+rlA0eo1htT3NY7k7dZp/z5DPB
 bobQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=zzjNsVT7oFssvopVPRdGW/YTCcDi0QZYWBWNA17kwhg=;
 b=FdKAqHgTW/C89TiPPmx6s+1jrqJXiLnv3gsbVJzo+UwqSasXN32TS+kP4nTbB7i7yc
 Z3ewGoe1r81MutLApRNYkmjQ6s6gX4LoLeOJwi6EF4dud3uwJI/EJXmyYtLKKaCiwMIu
 9QlA4Ckn6Tb85RU6XUfsGQb1+Nr+tQJ7BL9cGJyJZNXQH9BbAlKQzqbcoi81+aJh3ba0
 W6RsGLDl0icY5VvzN3bkkevmiCAiQY+qqWtjUU/xGmvJbBBKO+eu0vz3w3CRG9EDJ3R/
 5aoy3fD4xpiopZcVPQhek0NN4Zu7RvYvU2Uh4JQrXTimAQ3jjL5RDQhb1ix3dssJ4KHi
 f5Fw==
X-Gm-Message-State: APjAAAWy4mElVpUaEaCOFW7Odhkyu9/SUD4WwNl0iDuPeoyV5y/TJLgS
 OEJxVa4lejDkwrEFfVDu4go=
X-Google-Smtp-Source: APXvYqyUx/ed9xaA7LIfb73jmGtEiSRQm+UAORQvBANl91x/+R19025joyq1EtFB4+oxNnDeYjNruQ==
X-Received: by 2002:a63:2a02:: with SMTP id q2mr26247331pgq.198.1582103073166; 
 Wed, 19 Feb 2020 01:04:33 -0800 (PST)
Received: from localhost.localdomain ([101.13.197.106])
 by smtp.gmail.com with ESMTPSA id b25sm1849858pfo.38.2020.02.19.01.04.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 19 Feb 2020 01:04:32 -0800 (PST)
From: Jeff Chang <richtek.jeff.chang@gmail.com>
To: lgirdwood@gmail.com
Subject: [PATCH v2] ASoC: MT6660 update to 1.0.8_G
Date: Wed, 19 Feb 2020 17:04:24 +0800
Message-Id: <1582103064-25088-1-git-send-email-richtek.jeff.chang@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_010436_246544_BAAE5F79 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richtek.jeff.chang[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, richtek.jeff.chang@gmail.com,
 linux-kernel@vger.kernel.org, tiwai@suse.com, perex@perex.cz,
 jeff_chang@richtek.com, broonie@kernel.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeff Chang <jeff_chang@richtek.com>

1. add mt6660_component_settign for Component INIT Setting

Signed-off-by: Jeff Chang <jeff_chang@richtek.com>
---
 sound/soc/codecs/mt6660.c | 78 +++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 75 insertions(+), 3 deletions(-)


changelogs between v2 & v1
        - remove parse DT and apply function about Chip INIT SETTING.
        - use hard coding for MT6660 Component INIT SETTING.


diff --git a/sound/soc/codecs/mt6660.c b/sound/soc/codecs/mt6660.c
index a36c416..88cf228 100644
--- a/sound/soc/codecs/mt6660.c
+++ b/sound/soc/codecs/mt6660.c
@@ -9,7 +9,6 @@
 #include <linux/i2c.h>
 #include <linux/pm_runtime.h>
 #include <linux/delay.h>
-#include <linux/debugfs.h>
 #include <sound/soc.h>
 #include <sound/tlv.h>
 #include <sound/pcm_params.h>
@@ -225,14 +224,87 @@ static int _mt6660_chip_power_on(struct mt6660_chip *chip, int on_off)
 				 0x01, on_off ? 0x00 : 0x01);
 }
 
+struct reg_table {
+	uint32_t addr;
+	uint32_t mask;
+	uint32_t val;
+};
+
+static const struct reg_table mt6660_setting_table[] = {
+	{ 0x20, 0x80, 0x00 },
+	{ 0x30, 0x01, 0x00 },
+	{ 0x50, 0x1c, 0x04 },
+	{ 0xB1, 0x0c, 0x00 },
+	{ 0xD3, 0x03, 0x03 },
+	{ 0xE0, 0x01, 0x00 },
+	{ 0x98, 0x44, 0x04 },
+	{ 0xB9, 0xff, 0x82 },
+	{ 0xB7, 0x7777, 0x7273 },
+	{ 0xB6, 0x07, 0x03 },
+	{ 0x6B, 0xe0, 0x20 },
+	{ 0x07, 0xff, 0x70 },
+	{ 0xBB, 0xff, 0x20 },
+	{ 0x69, 0xff, 0x40 },
+	{ 0xBD, 0xffff, 0x17f8 },
+	{ 0x70, 0xff, 0x15 },
+	{ 0x7C, 0xff, 0x00 },
+	{ 0x46, 0xff, 0x1d },
+	{ 0x1A, 0xffffffff, 0x7fdb7ffe },
+	{ 0x1B, 0xffffffff, 0x7fdb7ffe },
+	{ 0x51, 0xff, 0x58 },
+	{ 0xA2, 0xff, 0xce },
+	{ 0x33, 0xffff, 0x7fff },
+	{ 0x4C, 0xffff, 0x0116 },
+	{ 0x16, 0x1800, 0x0800 },
+	{ 0x68, 0x1f, 0x07 },
+};
+
+static int mt6660_component_setting(struct snd_soc_component *component)
+{
+	struct mt6660_chip *chip = snd_soc_component_get_drvdata(component);
+	int ret = 0;
+	size_t i = 0;
+
+	ret = _mt6660_chip_power_on(chip, 1);
+	if (ret < 0) {
+		dev_err(component->dev, "%s chip power on failed\n", __func__);
+		return ret;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(mt6660_setting_table); i++) {
+		ret = snd_soc_component_update_bits(component,
+				mt6660_setting_table[i].addr,
+				mt6660_setting_table[i].mask,
+				mt6660_setting_table[i].val);
+		if (ret < 0) {
+			dev_err(component->dev, "%s update 0x%02x failed\n",
+				__func__, mt6660_setting_table[i].addr);
+			return ret;
+		}
+	}
+
+	ret = _mt6660_chip_power_on(chip, 0);
+	if (ret < 0) {
+		dev_err(component->dev, "%s chip power off failed\n", __func__);
+		return ret;
+	}
+
+	return 0;
+}
+
 static int mt6660_component_probe(struct snd_soc_component *component)
 {
 	struct mt6660_chip *chip = snd_soc_component_get_drvdata(component);
+	int ret;
 
 	dev_dbg(component->dev, "%s\n", __func__);
 	snd_soc_component_init_regmap(component, chip->regmap);
 
-	return 0;
+	ret = mt6660_component_setting(component);
+	if (ret < 0)
+		dev_err(chip->dev, "mt6660 component setting failed\n");
+
+	return ret;
 }
 
 static void mt6660_component_remove(struct snd_soc_component *component)
@@ -506,4 +578,4 @@ module_i2c_driver(mt6660_i2c_driver);
 MODULE_AUTHOR("Jeff Chang <jeff_chang@richtek.com>");
 MODULE_DESCRIPTION("MT6660 SPKAMP Driver");
 MODULE_LICENSE("GPL");
-MODULE_VERSION("1.0.7_G");
+MODULE_VERSION("1.0.8_G");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
