Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29471514B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 04:42:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Nw9sANspUt8TMc3YNpCRNtzEXYdvz29hiMasl55gwzM=; b=h59
	sK6mrCxAFku+TGMieYOrW3gd3RvWLlc6aMFZ4bp+YDwEmlATsrr2ajlaIruMryOCY1I2JibJtY1FC
	m318STHDxxk9utq/B3dTNq3gOjnknhkAUt6LbzXMiBmWxjO11thJrX7D32yZxHtPUyxGdlXTTY582
	pwt6Ot8z4hjbkhdhV/53rXgpLrxE62di0M7bsADsEEbCefKEAgS2i2z1B0dklq8HLW1/avuZPsb0s
	SBRDpX6pYnnynRfWpF2zBc8qMIMZbK85K3upmB/7Y3iY8IUAez+pfHbIz6alkZMPZIvy+AaDDyXkV
	FZCkTZ03l1yUkKDaMAacCwQlOAzfwdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyp5y-00072F-71; Tue, 04 Feb 2020 03:41:50 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyp5t-00071s-52
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 03:41:46 +0000
Received: by mail-pg1-x541.google.com with SMTP id u131so8932542pgc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 19:41:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1wmDFAPTkYAVmGiYdseoOV0PhssU/32kZAP1D1mGzWo=;
 b=noKxKsEi5hJ2cN/mBOCu3khdeeb7bbWj7tR9w6qPmD+eX8jqCpDkZyQY9nO5WpAeZA
 GzNWgpYijTZ0q7eBbDClz2SaJONmfVvs40Amgr75dA7c7xRfDL/NoCYojvslUcK3l+gV
 nur8NYEHNaC7kp2kCeYxQbi7G98N/2gM2sD9U4AxFQGYoqgJzhcZIPn39aRiRX1EavUk
 21Pzq6OyY9jQjvZC0/smnR24WtF0kPZk6kT74Roc4sx2zTN7i+JSsfHsCr+oXo2NidiA
 vcHoCfVrdx/DoGAOclpJlomGpakDmrVb0mgdFGU4txNrSgm8N9HZ0/qoG7xPODXUdGP+
 ydbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1wmDFAPTkYAVmGiYdseoOV0PhssU/32kZAP1D1mGzWo=;
 b=mhTZ90iCG+QqVurIl99qUhEos2yf4ChYIwR5AiR5mUJaA1iZtz88UkGt6H/hv/J2G4
 RphdB+4KRhN5Arx9pUqGY50klJsSTkcElxuCr4LHewtzlwenOlpTMDqAmsl3rs1hx0zj
 0FSXxshGbq219Rv39BpvfD3jGodCbcqWq2Wr1Kfq4K1Sp4ZpSgKdfMuMaBgSTqb6fCeC
 ZiKRP502KQdpT2wk+V54Zj5nqTTYtMsFoWyvyicSR+1v6AiVjQNNuh153bLYKps3VViA
 4S9CNHjRPsIBflFq6ajAdqQ0s0cV92zbTxiUwM7TDbOPPGV7IKX1pjysbN2mT/tIXeX7
 LZig==
X-Gm-Message-State: APjAAAXdYSfIOjcn0Awws+n1vbJcP1XDPO7oD39Eqslf5LAay8VugWyD
 rOdQy3UvaAJVCJ0euVxTSeY=
X-Google-Smtp-Source: APXvYqxg3TSdFJZZvoI2dsCVEsSxKOoClXMJvrr+oBpfUQsKLTXYgnyJiFnjM+W2BxkO+0zW38D7rA==
X-Received: by 2002:a63:e309:: with SMTP id f9mr29046059pgh.391.1580787703774; 
 Mon, 03 Feb 2020 19:41:43 -0800 (PST)
Received: from localhost.localdomain ([101.12.16.40])
 by smtp.gmail.com with ESMTPSA id 23sm11294194pfh.28.2020.02.03.19.41.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Feb 2020 19:41:43 -0800 (PST)
From: Jeff Chang <richtek.jeff.chang@gmail.com>
To: lgirdwood@gmail.com
Subject: [PATCH] ASoC: MT6660 update to 1.0.8_G
Date: Tue,  4 Feb 2020 11:41:37 +0800
Message-Id: <1580787697-3041-1-git-send-email-richtek.jeff.chang@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_194145_218972_B9D07842 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richtek.jeff.chang[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

1. add parsing register initial table via device tree.
2. add applying initial register value function at component driver.

Signed-off-by: Jeff Chang <jeff_chang@richtek.com>
---
 Documentation/devicetree/bindings/sound/mt6660.txt |  53 ++++++++++
 sound/soc/codecs/mt6660.c                          | 114 ++++++++++++++++++++-
 2 files changed, 164 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/mt6660.txt


Following Mr. Mark's Suggestion, I create another patch for applying our chip INIT SETTING.


diff --git a/Documentation/devicetree/bindings/sound/mt6660.txt b/Documentation/devicetree/bindings/sound/mt6660.txt
new file mode 100644
index 0000000..2a1736b
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/mt6660.txt
@@ -0,0 +1,53 @@
+MT6660 MediaTek Speaker Amplifier
+
+This device supports I2C mode only.
+
+Required properties:
+
+	- compatible : "mediatek,mt6660"
+	
+	- reg : The I2C slave address
+
+Optional properties:
+
+	- rt,init_setting_num : The initial register setting element number.
+
+	- rt,init_setting_addr : the addreses array for INIT Setting table.
+
+	- rt,init_setting_mask : the mask array for INIT Setting table.
+
+	- rt,init_setting_val : the value array for INIT Setting table.
+
+Example:
+
+	mt6660@34 {
+		status = "ok";
+		compatible = "mediatek,mt6660";
+		reg = <0x34>;
+		rt,init_setting_num = <26>;
+		rt,init_setting_addr =
+			<0x20 0x30 0x50 0xB1
+			 0xD3 0xE0 0x98 0xB9
+			 0xB7 0xB6 0x6B 0x07
+			 0xBB 0x69 0xBD 0x70
+			 0x7C 0x46 0x1A 0x1B
+			 0x51 0xA2 0x33 0x4C
+			 0x15 0x68>;
+		rt,init_setting_mask =
+			<0x80 0x01 0x1c 0x0c
+			 0x03 0x01 0x44 0xff
+			 0x7777 0x07 0xe0 0xff
+			 0xff 0xff 0xffff 0xff
+			 0xff 0xff 0xffffffff 0xffffffff
+			 0xff 0xff 0xffff 0xffff
+			 0x1800 0x1f>;
+		rt,init_setting_val =
+			<0x00 0x00 0x04 0x00
+			 0x03 0x00 0x04 0x82
+			 0x7273 0x03 0x20 0x70
+			 0x20 0x40 0x17f8 0x15
+			 0x00 0x1d 0x7fdb7ffe 0x7fdb7ffe
+			 0x58 0xce 0x7fff 0x0116
+			 0x0800 0x07>;
+	};
+
diff --git a/sound/soc/codecs/mt6660.c b/sound/soc/codecs/mt6660.c
index a36c416..5df2780 100644
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
@@ -225,14 +224,48 @@ static int _mt6660_chip_power_on(struct mt6660_chip *chip, int on_off)
 				 0x01, on_off ? 0x00 : 0x01);
 }
 
+static int mt6660_apply_plat_data(struct mt6660_chip *chip,
+		struct snd_soc_component *component)
+{
+	size_t i;
+	int num = chip->plat_data.init_setting_num;
+	int ret;
+
+	ret = _mt6660_chip_power_on(chip, 1);
+	if (ret < 0) {
+		dev_err(chip->dev, "%s power on failed\n", __func__);
+		return ret;
+	}
+
+	for (i = 0; i < num; i++) {
+		ret = snd_soc_component_update_bits(component,
+				chip->plat_data.init_setting_addr[i],
+				chip->plat_data.init_setting_mask[i],
+				chip->plat_data.init_setting_val[i]);
+		if (ret < 0)
+			return ret;
+	}
+	ret = _mt6660_chip_power_on(chip, 0);
+	if (ret < 0) {
+		dev_err(chip->dev, "%s power on failed\n", __func__);
+		return ret;
+	}
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
+	ret = mt6660_apply_plat_data(chip, component);
+	if (ret < 0)
+		dev_err(chip->dev, "mt6660 apply plat data failed\n");
+
+	return ret;
 }
 
 static void mt6660_component_remove(struct snd_soc_component *component)
@@ -386,6 +419,75 @@ static int _mt6660_read_chip_revision(struct mt6660_chip *chip)
 	return 0;
 }
 
+static int mt6660_parse_dt(struct mt6660_chip *chip, struct device *dev)
+{
+	struct device_node *np = dev->of_node;
+	u32 val;
+	size_t i;
+
+	if (!np) {
+		dev_err(dev, "no device node\n");
+		return -EINVAL;
+	}
+
+	if (of_property_read_u32(np, "rt,init_setting_num", &val)) {
+		dev_err(dev, "no init setting\n");
+		chip->plat_data.init_setting_num = 0;
+	} else {
+		chip->plat_data.init_setting_num = val;
+	}
+
+	if (chip->plat_data.init_setting_num) {
+		chip->plat_data.init_setting_addr =
+			devm_kzalloc(dev, sizeof(u32) *
+			chip->plat_data.init_setting_num, GFP_KERNEL);
+		if (!chip->plat_data.init_setting_addr) {
+			dev_err(dev, "%s addr memory alloc failed\n", __func__);
+			return -ENOMEM;
+		}
+		chip->plat_data.init_setting_mask =
+			devm_kzalloc(dev, sizeof(u32) *
+			chip->plat_data.init_setting_num, GFP_KERNEL);
+		if (!chip->plat_data.init_setting_mask) {
+			dev_err(dev, "%s mask memory alloc failed\n", __func__);
+			return -ENOMEM;
+		}
+		chip->plat_data.init_setting_val =
+			devm_kzalloc(dev, sizeof(u32) *
+			chip->plat_data.init_setting_num, GFP_KERNEL);
+		if (!chip->plat_data.init_setting_val) {
+			dev_err(dev, "%s val memory alloc failed\n", __func__);
+			return -ENOMEM;
+		}
+
+		if (of_property_read_u32_array(np, "rt,init_setting_addr",
+					chip->plat_data.init_setting_addr,
+					chip->plat_data.init_setting_num)) {
+			dev_err(dev, "no init setting addr\n");
+		}
+		if (of_property_read_u32_array(np, "rt,init_setting_mask",
+					chip->plat_data.init_setting_mask,
+					chip->plat_data.init_setting_num)) {
+			dev_err(dev, "no init setting mask\n");
+		}
+		if (of_property_read_u32_array(np, "rt,init_setting_val",
+					chip->plat_data.init_setting_val,
+					chip->plat_data.init_setting_num)) {
+			dev_err(dev, "no init setting val\n");
+		}
+	}
+
+	dev_dbg(dev, "%s, init stting table, num = %d\n", __func__,
+		chip->plat_data.init_setting_num);
+	for (i = 0; i < chip->plat_data.init_setting_num; i++) {
+		dev_dbg(dev, "0x%02x, 0x%08x, 0x%08x\n",
+				chip->plat_data.init_setting_addr[i],
+				chip->plat_data.init_setting_mask[i],
+				chip->plat_data.init_setting_val[i]);
+	}
+	return 0;
+}
+
 static int mt6660_i2c_probe(struct i2c_client *client,
 			    const struct i2c_device_id *id)
 {
@@ -401,6 +503,12 @@ static int mt6660_i2c_probe(struct i2c_client *client,
 	mutex_init(&chip->io_lock);
 	i2c_set_clientdata(client, chip);
 
+	ret = mt6660_parse_dt(chip, &client->dev);
+	if (ret < 0) {
+		dev_err(&client->dev, "parsing dts failed\n");
+		return ret;
+	}
+
 	chip->regmap = devm_regmap_init(&client->dev,
 		NULL, chip, &mt6660_regmap_config);
 	if (IS_ERR(chip->regmap)) {
@@ -506,4 +614,4 @@ module_i2c_driver(mt6660_i2c_driver);
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
