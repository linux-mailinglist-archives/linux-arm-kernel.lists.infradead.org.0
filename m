Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33473BBDCB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 23:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=HsOoWkWm3vIBH5cY4nop9yCA0Lt0Iprovi75mD7C3WU=; b=cfn
	iyaV28vY6Mu+p2EUf+bdeUCHVsAzL+0dZq+bzGwp7VK57YTlh0vlXLUIDFjC4G1IK+sRvj5IJ3+yQ
	WDO/ZkvK8oieNe5EJpZ1iI+gvyImehmNAHXDuL7Oq5uUIiS0AwD6Ht21hgKCeeH6e5RowNU6k/hU4
	qdha5IlfyqSFTklDM6J2ZWPfR81fbtNUg0ZAyCd8DM6/m8/5tHrVTbjwViNhXVi7RwIV0bP8wGmjX
	zznpSCUSZLBJUnWZpKBpLsFNs6nretFmaCUXwk7y/eeUk3UMIVK8vho35Gba9nEc4ylzjEk47c5xf
	KO6CXDlkAXeWC5i/7NuXgi29TF5RWeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCVnj-0000IE-RA; Mon, 23 Sep 2019 21:23:19 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCVnV-0000Ga-NI
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 21:23:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=bWmHVulB7Ia3zVa8uWWuDJ6sdbuUGFEHD8sBOacMu8g=; b=QB4vkNcmVCFF
 tNE6wEDzsTxsMFfra4xABuUGgxu5gAkDXKXKejrOhpKwDvxUu2SA7HCo/8qfY+HMBzVIH9PyXKfxn
 WslcpxZ2NUCXy4V1ut6mj11NxcnFxBzi9LoAPkov2kcOFa8mmU98x63OgPvae4jmKEjdE/c7+lSbG
 nT71M=;
Received: from [12.157.10.114] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iCVnQ-0005WS-C0; Mon, 23 Sep 2019 21:23:00 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id B13CDD02FDA; Mon, 23 Sep 2019 22:22:58 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Applied "ASoC: wm8994: Do not register inapplicable controls for
 WM1811" to the asoc tree
In-Reply-To: <20190920130218.32690-2-s.nawrocki@samsung.com>
X-Patchwork-Hint: ignore
Message-Id: <20190923212258.B13CDD02FDA@fitzroy.sirena.org.uk>
Date: Mon, 23 Sep 2019 22:22:58 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_142305_905395_062E480A 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, Krzysztof Kozlowski <krzk@kernel.org>, robh+dt@kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: wm8994: Do not register inapplicable controls for WM1811

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.4

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

From ca2347190adb5e4eece73a2b16e96e651c46246b Mon Sep 17 00:00:00 2001
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Date: Fri, 20 Sep 2019 15:02:10 +0200
Subject: [PATCH] ASoC: wm8994: Do not register inapplicable controls for
 WM1811

In case of WM1811 device there are currently being registered controls
referring to registers not existing on that device.
It has been noticed when getting values of "AIF1ADC2 Volume", "AIF1DAC2
Volume" controls was failing during ALSA state restoring at boot time:
 "amixer: Mixer hw:0 load error: Device or resource busy"

Reading some registers through I2C was failing with EBUSY error and
indeed these registers were not available according to the datasheet.

To fix this controls not available on WM1811 are moved to a separate
array and registered only for WM8994 and WM8958.

There are some further differences between WM8994 and WM1811,
e.g. registers 603h, 604h, 605h, which are not covered in this patch.

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
Link: https://lore.kernel.org/r/20190920130218.32690-2-s.nawrocki@samsung.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/codecs/wm8994.c | 43 +++++++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 17 deletions(-)

diff --git a/sound/soc/codecs/wm8994.c b/sound/soc/codecs/wm8994.c
index c3d06e8bc54f..d5fb7f5dd551 100644
--- a/sound/soc/codecs/wm8994.c
+++ b/sound/soc/codecs/wm8994.c
@@ -533,13 +533,10 @@ static SOC_ENUM_SINGLE_DECL(dac_osr,
 static SOC_ENUM_SINGLE_DECL(adc_osr,
 			    WM8994_OVERSAMPLING, 1, osr_text);
 
-static const struct snd_kcontrol_new wm8994_snd_controls[] = {
+static const struct snd_kcontrol_new wm8994_common_snd_controls[] = {
 SOC_DOUBLE_R_TLV("AIF1ADC1 Volume", WM8994_AIF1_ADC1_LEFT_VOLUME,
 		 WM8994_AIF1_ADC1_RIGHT_VOLUME,
 		 1, 119, 0, digital_tlv),
-SOC_DOUBLE_R_TLV("AIF1ADC2 Volume", WM8994_AIF1_ADC2_LEFT_VOLUME,
-		 WM8994_AIF1_ADC2_RIGHT_VOLUME,
-		 1, 119, 0, digital_tlv),
 SOC_DOUBLE_R_TLV("AIF2ADC Volume", WM8994_AIF2_ADC_LEFT_VOLUME,
 		 WM8994_AIF2_ADC_RIGHT_VOLUME,
 		 1, 119, 0, digital_tlv),
@@ -556,8 +553,6 @@ SOC_ENUM("AIF2DACR Source", aif2dacr_src),
 
 SOC_DOUBLE_R_TLV("AIF1DAC1 Volume", WM8994_AIF1_DAC1_LEFT_VOLUME,
 		 WM8994_AIF1_DAC1_RIGHT_VOLUME, 1, 96, 0, digital_tlv),
-SOC_DOUBLE_R_TLV("AIF1DAC2 Volume", WM8994_AIF1_DAC2_LEFT_VOLUME,
-		 WM8994_AIF1_DAC2_RIGHT_VOLUME, 1, 96, 0, digital_tlv),
 SOC_DOUBLE_R_TLV("AIF2DAC Volume", WM8994_AIF2_DAC_LEFT_VOLUME,
 		 WM8994_AIF2_DAC_RIGHT_VOLUME, 1, 96, 0, digital_tlv),
 
@@ -565,17 +560,12 @@ SOC_SINGLE_TLV("AIF1 Boost Volume", WM8994_AIF1_CONTROL_2, 10, 3, 0, aif_tlv),
 SOC_SINGLE_TLV("AIF2 Boost Volume", WM8994_AIF2_CONTROL_2, 10, 3, 0, aif_tlv),
 
 SOC_SINGLE("AIF1DAC1 EQ Switch", WM8994_AIF1_DAC1_EQ_GAINS_1, 0, 1, 0),
-SOC_SINGLE("AIF1DAC2 EQ Switch", WM8994_AIF1_DAC2_EQ_GAINS_1, 0, 1, 0),
 SOC_SINGLE("AIF2 EQ Switch", WM8994_AIF2_EQ_GAINS_1, 0, 1, 0),
 
 WM8994_DRC_SWITCH("AIF1DAC1 DRC Switch", WM8994_AIF1_DRC1_1, 2),
 WM8994_DRC_SWITCH("AIF1ADC1L DRC Switch", WM8994_AIF1_DRC1_1, 1),
 WM8994_DRC_SWITCH("AIF1ADC1R DRC Switch", WM8994_AIF1_DRC1_1, 0),
 
-WM8994_DRC_SWITCH("AIF1DAC2 DRC Switch", WM8994_AIF1_DRC2_1, 2),
-WM8994_DRC_SWITCH("AIF1ADC2L DRC Switch", WM8994_AIF1_DRC2_1, 1),
-WM8994_DRC_SWITCH("AIF1ADC2R DRC Switch", WM8994_AIF1_DRC2_1, 0),
-
 WM8994_DRC_SWITCH("AIF2DAC DRC Switch", WM8994_AIF2_DRC_1, 2),
 WM8994_DRC_SWITCH("AIF2ADCL DRC Switch", WM8994_AIF2_DRC_1, 1),
 WM8994_DRC_SWITCH("AIF2ADCR DRC Switch", WM8994_AIF2_DRC_1, 0),
@@ -594,9 +584,6 @@ SOC_SINGLE("Sidetone HPF Switch", WM8994_SIDETONE, 6, 1, 0),
 SOC_ENUM("AIF1ADC1 HPF Mode", aif1adc1_hpf),
 SOC_DOUBLE("AIF1ADC1 HPF Switch", WM8994_AIF1_ADC1_FILTERS, 12, 11, 1, 0),
 
-SOC_ENUM("AIF1ADC2 HPF Mode", aif1adc2_hpf),
-SOC_DOUBLE("AIF1ADC2 HPF Switch", WM8994_AIF1_ADC2_FILTERS, 12, 11, 1, 0),
-
 SOC_ENUM("AIF2ADC HPF Mode", aif2adc_hpf),
 SOC_DOUBLE("AIF2ADC HPF Switch", WM8994_AIF2_ADC_FILTERS, 12, 11, 1, 0),
 
@@ -637,6 +624,24 @@ SOC_SINGLE("AIF2DAC 3D Stereo Switch", WM8994_AIF2_DAC_FILTERS_2,
 	   8, 1, 0),
 };
 
+/* Controls not available on WM1811 */
+static const struct snd_kcontrol_new wm8994_snd_controls[] = {
+SOC_DOUBLE_R_TLV("AIF1ADC2 Volume", WM8994_AIF1_ADC2_LEFT_VOLUME,
+		 WM8994_AIF1_ADC2_RIGHT_VOLUME,
+		 1, 119, 0, digital_tlv),
+SOC_DOUBLE_R_TLV("AIF1DAC2 Volume", WM8994_AIF1_DAC2_LEFT_VOLUME,
+		 WM8994_AIF1_DAC2_RIGHT_VOLUME, 1, 96, 0, digital_tlv),
+
+SOC_SINGLE("AIF1DAC2 EQ Switch", WM8994_AIF1_DAC2_EQ_GAINS_1, 0, 1, 0),
+
+WM8994_DRC_SWITCH("AIF1DAC2 DRC Switch", WM8994_AIF1_DRC2_1, 2),
+WM8994_DRC_SWITCH("AIF1ADC2L DRC Switch", WM8994_AIF1_DRC2_1, 1),
+WM8994_DRC_SWITCH("AIF1ADC2R DRC Switch", WM8994_AIF1_DRC2_1, 0),
+
+SOC_ENUM("AIF1ADC2 HPF Mode", aif1adc2_hpf),
+SOC_DOUBLE("AIF1ADC2 HPF Switch", WM8994_AIF1_ADC2_FILTERS, 12, 11, 1, 0),
+};
+
 static const struct snd_kcontrol_new wm8994_eq_controls[] = {
 SOC_SINGLE_TLV("AIF1DAC1 EQ1 Volume", WM8994_AIF1_DAC1_EQ_GAINS_1, 11, 31, 0,
 	       eq_tlv),
@@ -4258,13 +4263,15 @@ static int wm8994_component_probe(struct snd_soc_component *component)
 	wm8994_handle_pdata(wm8994);
 
 	wm_hubs_add_analogue_controls(component);
-	snd_soc_add_component_controls(component, wm8994_snd_controls,
-			     ARRAY_SIZE(wm8994_snd_controls));
+	snd_soc_add_component_controls(component, wm8994_common_snd_controls,
+				       ARRAY_SIZE(wm8994_common_snd_controls));
 	snd_soc_dapm_new_controls(dapm, wm8994_dapm_widgets,
 				  ARRAY_SIZE(wm8994_dapm_widgets));
 
 	switch (control->type) {
 	case WM8994:
+		snd_soc_add_component_controls(component, wm8994_snd_controls,
+					       ARRAY_SIZE(wm8994_snd_controls));
 		snd_soc_dapm_new_controls(dapm, wm8994_specific_dapm_widgets,
 					  ARRAY_SIZE(wm8994_specific_dapm_widgets));
 		if (control->revision < 4) {
@@ -4284,8 +4291,10 @@ static int wm8994_component_probe(struct snd_soc_component *component)
 		}
 		break;
 	case WM8958:
+		snd_soc_add_component_controls(component, wm8994_snd_controls,
+					       ARRAY_SIZE(wm8994_snd_controls));
 		snd_soc_add_component_controls(component, wm8958_snd_controls,
-				     ARRAY_SIZE(wm8958_snd_controls));
+					       ARRAY_SIZE(wm8958_snd_controls));
 		snd_soc_dapm_new_controls(dapm, wm8958_dapm_widgets,
 					  ARRAY_SIZE(wm8958_dapm_widgets));
 		if (control->revision < 1) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
