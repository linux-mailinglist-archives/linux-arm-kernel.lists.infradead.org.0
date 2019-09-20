Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A87BB903B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 15:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mFozVvDGuvV+BjkPs1dbI1QD2JcG3PZHYCvsoq8ZaMY=; b=Uggmt3pzXhP62KLXiC1ExeeLVV
	EwQWkko/wFqtb1SykES3eqcqzS8c/zmqUUO5bCbShaPwigj1P/b74a4t8xFtfjinyaxOmtawTN9cq
	8u1vxVfrSR9+sU3qoFDY6PQg7AXQeCLpkZu6q5m7tmaO6rDepTN0OBbJWArB12ipp53iUgVGBo0CP
	2nVQ8AKJ0fqrim7ZZP3o5YhzX9JBpTPSn5oD4t4mINreUxbUTETEpcEB3KO3VoBi9Bz+X1HYYehQ5
	BdF9MDwZrSTniJIKJQqbRoFrRy9B8H2d3BLHCRjCt/+8DwMZqS4eTG0Ytl4Hyn18yRv7eNHj2th2H
	QrlJ6eQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBIZK-0003Fv-7r; Fri, 20 Sep 2019 13:03:26 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBIZA-0003Ev-Vs
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 13:03:19 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190920130315euoutp0213f233ad6625d35a6c8524a6d48f978a~GJy1AgQKU2405524055euoutp02U
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 13:03:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190920130315euoutp0213f233ad6625d35a6c8524a6d48f978a~GJy1AgQKU2405524055euoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568984595;
 bh=D9tNRPpw4JBDC3enuE3czmFPYNVYkwMpP1BzVituycw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oStEUXvdTA6qFFPj8HceifJMDsm+eIEPsH/ifA6SK922uZQLpneyRVlkSK5RBghj3
 IL7ACEqiMxO3WXfDBWZVGacLKgXMuJ/AZ7+2tu+tNpoJk0mda2fIdgVi9UvMoRloV3
 PcKDHZ3c+sSr8q11OyMi1J60wOBOlPZTtlD4zS7I=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190920130314eucas1p148b1037f09e275f4a4d9cceb5dd12ac0~GJy0T8J2n2902029020eucas1p1H;
 Fri, 20 Sep 2019 13:03:14 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 7A.CB.04309.21EC48D5; Fri, 20
 Sep 2019 14:03:14 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130313eucas1p27758c613ab3a10296b92974f14bd521d~GJyzdjblb1582615826eucas1p2h;
 Fri, 20 Sep 2019 13:03:13 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190920130313eusmtrp2ba1ac84b71de585147e32ec705be47a7~GJyzL3qSr1022710227eusmtrp2r;
 Fri, 20 Sep 2019 13:03:13 +0000 (GMT)
X-AuditID: cbfec7f4-f2e849c0000010d5-d7-5d84ce1283d8
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id BC.1B.04166.11EC48D5; Fri, 20
 Sep 2019 14:03:13 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130312eusmtip2c8611c2c2acb9c6b42f766b5ade801c3~GJyyf10NF1303613036eusmtip22;
 Fri, 20 Sep 2019 13:03:12 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org, krzk@kernel.org
Subject: [PATCH v2 01/10] ASoC: wm8994: Do not register inapplicable
 controls for WM1811
Date: Fri, 20 Sep 2019 15:02:10 +0200
Message-Id: <20190920130218.32690-2-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190920130218.32690-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjuO2fn4uzIaZq+WCSsIhLSlLIDShcsmvTHP1EYmic9qKRTNrUs
 ITHvd4LQdKlIpa68tMxSqXS6NCSHtUrK4dShmTPJmSBK5jyK/57by/Pw8dG4rJHwpOOUyYJK
 ycfLSamk/f3y0BHZUFb40eZpd840rMe45xUtBHd/3Epypmwd4mr6hgjOaGyluCVTHsbpJr8S
 XIXxLcY19Zkpzj7/juCy3/RRXK8tl+CGGxax0y6KVnsmqeioNFMKnTafVLx4dEdRrllDipI2
 LVLYdftCqTBpULQQH5cqqHxPRkpjq22jRJLG76btlU6SgXK8C5ATDewx+Gj5QhYgKS1jGxA0
 mr/jIllEkG9q3SR2BNppPb51Uj/RhESjHsGKpYvcPhmoohwpkvWDYkMJcmA39hCMVWQSjhDO
 zmBQZmjGHIYrGwbWjuWNAwl7EEqKZjd0hg2E+b/dpFjnBU9buzeqndggmBmpw0S9nYLfs4yI
 z0JR9R+JiF3hV38bJeK9sNZRgzmKgb2LoKjrByWSMgRj/bVITAVCb//w+jx6fd5haOn0FeUz
 MGacJB0ysC4wMrfLIePr8F57OS7KDOTlyMT0AVjRlm9O84RC69rmHAUYqho3H6gUgb5aT5Uh
 r8rtslqEtMhDSFEnxAhqf6Vww0fNJ6hTlDE+UYkJOrT+gQb/9S++Rp2r1/SIpZF8J1M7kBUu
 I/hUdVqCHgGNy90YzfHMcBkTzafdElSJV1Up8YJaj/bQErkHc3uH5YqMjeGTheuCkCSotlyM
 dvLMQNUPXJtWlop7c8aTL5q83WyEscj5p3+EMiRCVzjqExIM+z2mc31L7ZoLPWFdT5xDJkY+
 TAb0aAYtgQtu57/xAVX8bOTMp0hafs6mM+wOfpg+Z66TWdMrT9kKW0JKY56Vr0wwyarPJ9wv
 +RasTi1ksaEd4wxT+BKfino8yF+uk0vUsbyfN65S8/8BRuQN9jwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42I5/e/4PV3Bcy2xBg9aZS2uXDzEZLFxxnpW
 i6kPn7BZXGndxGgx/8g5Vovz5zewW3y70sFksenxNVaLGef3MVmsPXKX3eLz+/2sFq17j7Bb
 HH7TzmpxccUXJgc+jw2fm9g8ds66y+6xaVUnm8fmJfUe0+f8Z/To27KK0ePzJrkA9ig9m6L8
 0pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07m5TUnMyy1CJ9uwS9jHlv7rAWzDGs
 eLN9E0sDY5tWFyMnh4SAicTyR2sZQWwhgaWMEpPemnYxcgDFpSTmtyhBlAhL/LnWxdbFyAVU
 8olR4u3WlWD1bAKGEr1H+8BsEQFNiY55t1lBipgFvjNJHHh8khkkISwQITH9/1mwIhYBVYm+
 ntdMIDavgLXE+68H2CA2yEus3nAArJ5TwEbi5Y1FTBAHWUuc3reXfQIj3wJGhlWMIqmlxbnp
 ucWGesWJucWleel6yfm5mxiBsbDt2M/NOxgvbQw+xCjAwajEw7vgREusEGtiWXFl7iFGCQ5m
 JRHeOaZNsUK8KYmVValF+fFFpTmpxYcYTYGOmsgsJZqcD4zTvJJ4Q1NDcwtLQ3Njc2MzCyVx
 3g6BgzFCAumJJanZqakFqUUwfUwcnFINjE3mTIan50Xf8Tv+5MMXv0q7cKvgbpWb7pYWlb9W
 FE8/fMjL+a3grSP+t5YJHeRLzJr4ZMVGn/DC8Au/zCbYrZ9taCm5wsWqYNqhRsHbXjHnlTK2
 3M1Ij70stufQo5yGOSd3S0yqUvpiMDXiWKJuS8ShP8J3bW13Jjduu7fM6vPV42t27rgXGa7E
 UpyRaKjFXFScCABjMFfAmwIAAA==
X-CMS-MailID: 20190920130313eucas1p27758c613ab3a10296b92974f14bd521d
X-Msg-Generator: CA
X-RootMTR: 20190920130313eucas1p27758c613ab3a10296b92974f14bd521d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190920130313eucas1p27758c613ab3a10296b92974f14bd521d
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130313eucas1p27758c613ab3a10296b92974f14bd521d@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_060317_162024_695C446D 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 lgirdwood@gmail.com, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
---
Changes since v1:
 - only Acked-by tags addition
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
