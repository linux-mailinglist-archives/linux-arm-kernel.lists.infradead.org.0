Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3506816506F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 21:58:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=3n6Ge3D6PhkXQpxVj59YHmOKVeONOKlf03dxPqucZ00=; b=MLO
	etG6PJm/QcshkbmDWfgO7uqSsFaO3BvdsCJxJCAUOi05Wuw1fuPnyBQmxjkhzvCptLnaZxv1+hEUs
	nmSMxM5e5pU3mSqm1i3EFIK5atW8YbtqVmxiYwd2vbAe0cXeMnfTvpiRBkljC5s2eGD59Fe0gy5qf
	CNSf+vrLsLYKkcP5cNyHN3EZvQTSOADQ88ECBkNTz7tADXYP1j/Di9q/dCtuhK8+kQHrMpS1ikGV8
	4Owl2WZ3w4irGFUsEUDOjwHr9tjVFVdP7WuLmmcVXXYl3gS+lSiCU6Xxy7OqLeI6DtvL+l2k5Ha96
	uiGVxoXBOxfaqh3ubvL0sec7K9S71Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4WQA-0006Cy-QF; Wed, 19 Feb 2020 20:58:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4WPz-0006BA-Px
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 20:58:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5892FEC;
 Wed, 19 Feb 2020 12:58:02 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A06E3F68F;
 Wed, 19 Feb 2020 12:58:02 -0800 (PST)
Date: Wed, 19 Feb 2020 20:58:00 +0000
From: Mark Brown <broonie@kernel.org>
To: Jeff Chang <jeff_chang@richtek.com>
Subject: Applied "ASoC: MT6660 update to 1.0.8_G" to the asoc tree
In-Reply-To: <1582103064-25088-1-git-send-email-richtek.jeff.chang@gmail.com>
Message-Id: <applied-1582103064-25088-1-git-send-email-richtek.jeff.chang@gmail.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_125803_933624_53F9803D 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, richtek.jeff.chang@gmail.com, tiwai@suse.com,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, matthias.bgg@gmail.com,
 Mark Brown <broonie@kernel.org>, jeff_chang@richtek.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: MT6660 update to 1.0.8_G

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git 

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From eaa2330bfcbf1d600776e219c5d2080f36a3c59c Mon Sep 17 00:00:00 2001
From: Jeff Chang <jeff_chang@richtek.com>
Date: Wed, 19 Feb 2020 17:04:24 +0800
Subject: [PATCH] ASoC: MT6660 update to 1.0.8_G

1. add mt6660_component_settign for Component INIT Setting

Signed-off-by: Jeff Chang <jeff_chang@richtek.com>
Link: https://lore.kernel.org/r/1582103064-25088-1-git-send-email-richtek.jeff.chang@gmail.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/codecs/mt6660.c | 78 +++++++++++++++++++++++++++++++++++++--
 1 file changed, 75 insertions(+), 3 deletions(-)

diff --git a/sound/soc/codecs/mt6660.c b/sound/soc/codecs/mt6660.c
index 1a3515df1764..bcec82aa57fb 100644
--- a/sound/soc/codecs/mt6660.c
+++ b/sound/soc/codecs/mt6660.c
@@ -8,7 +8,6 @@
 #include <linux/i2c.h>
 #include <linux/pm_runtime.h>
 #include <linux/delay.h>
-#include <linux/debugfs.h>
 #include <sound/soc.h>
 #include <sound/tlv.h>
 #include <sound/pcm_params.h>
@@ -224,14 +223,87 @@ static int _mt6660_chip_power_on(struct mt6660_chip *chip, int on_off)
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
@@ -505,4 +577,4 @@ module_i2c_driver(mt6660_i2c_driver);
 MODULE_AUTHOR("Jeff Chang <jeff_chang@richtek.com>");
 MODULE_DESCRIPTION("MT6660 SPKAMP Driver");
 MODULE_LICENSE("GPL");
-MODULE_VERSION("1.0.7_G");
+MODULE_VERSION("1.0.8_G");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
