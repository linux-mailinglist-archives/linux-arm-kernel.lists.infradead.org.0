Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1566F160B08
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AEBDSGroSGSLHm8qvwlZjXAN7UEaQRZkFf+rru3Le4=; b=VZCvsDUHiiFUDX
	wFJRK5J/siEoBHymzpsU4mAA/1tVTwGxNybbMK6g7ZIiJsMJmLu2s4hl6H3QIOupEWugTcZvhuY6K
	+m4NLFCDA82ePNuY1zaSYQdzwW9TRArwR1wBIcB4oPBrMFIda3UGKw2kDgF6OLB3fEWGsEh+Gl4qZ
	1Ea/JEKGo3GGOG6IgCFsmbhw3fDR6tJqHV8wMvKX5G6HRZxrhXpcUBtEmaN4j1waw9FMFTRmd+vgx
	XNfv6SjR0iQlP6SiJNz7Wo4sh6s3O2VDsbR6PqbgtegO56/ybRq+qiBZk9gWicD7AshrTJhvgD/rc
	6g9uXViQb2RXMWoXP6rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aCG-00009B-Lw; Mon, 17 Feb 2020 06:48:00 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7R-0003lb-9o
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:03 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 86F9A5529;
 Mon, 17 Feb 2020 01:43:00 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=bWdMIahH29yFf
 zqwPIeEk1em2GgGUD8m6unCtTeCgqs=; b=oDmFapVanONA3Slt7PN7tEJnclOhm
 tdlQ6XiGyxMevoxHuUMikFZhHM6eywY8irIudalh+02wtXA1Mzr5UN6cKLFAUPsp
 baeBXslamCMNxmfCZgnFougtNU1LtRN+OI5BySI+w7eLGIwL5S+C+locXD1AwdGy
 kWc7GNCwfq/EHLWnkGcoyYVnDEQ7P28HIfzPQvkPeuHNXpfRSQ9oX5za1zfn+auU
 7odde6VyrqIPfqU7xwbGUXUx+7dw/BoyBhmroyGAganlcZ4nCitS2BGXdULF+AR4
 +Du2J9jvDUVUTt/HYBIG9/iHM072/J4nwPD5gx00oZioQSpD1Lc9NYvUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=bWdMIahH29yFfzqwPIeEk1em2GgGUD8m6unCtTeCgqs=; b=Gfk6BOFV
 5zfCdamui7/Aovbs/sbmd47cRRRmgFhF/gIHUSVoSxFKpHwNjdk6w1jInKl7lXT4
 P8FhmCZfU55lJ8IXOTsqMzeI1j3FTfLn4Cu2gDW7LJFEARStHOY99OMdnzdHbbHZ
 kveQSffYUBaNAvzd5aMLFg1XZgYNeMsQ92V1RvM/emc9bbYjoAQsUmuE1D6gc91o
 WfaWxrgOBp9UMl3EpQuNMvG1XSvYS42xKnw3iegogqY4YUkTWmW2eaiiybIHS+IU
 zxqCS9xa9eNNHFiC91UaCKLSudxCD995iWU1d42Rb++VjWzjYX2vvexn//xqr61n
 qy28BIysxXMygg==
X-ME-Sender: <xms:9DVKXv2Oybe4YvNfBc8OTA-hrH5ArG7P98gJQG0rOiTKtxMs3imlPA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpeejnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:9DVKXssjNf9P2VJhB7qaCyD2XDPjjoQo2YTXkrrdVBzymNRvqVJzmw>
 <xmx:9DVKXvgup7UmBZHeFUDXzqBgUpXELuWbWNToAkLRd4nhBpIg7jFkPw>
 <xmx:9DVKXrAwi2k8dWc3qso-tuKpuJG87IWiZlI4Ye_slPFXdBA487TOKw>
 <xmx:9DVKXnhyvJdLZiM8CNr_S3RxUz0AEGUa-R_6pGaS3vjB-rIaPPVnZA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id D1AD63280059;
 Mon, 17 Feb 2020 01:42:59 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 15/34] ASoC: sun8i-codec: Fix ADC_DIG_CTRL field name
Date: Mon, 17 Feb 2020 00:42:31 -0600
Message-Id: <20200217064250.15516-16-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224301_528305_9928A171 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the enable bit for the "AD"C, no the "DA"C.

Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 6c2fe8549668..0063fa301fab 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -64,7 +64,7 @@
 #define SUN8I_AIF1_MXR_SRC_AD0R_MXR_SRC_ADCR		9
 #define SUN8I_AIF1_MXR_SRC_AD0R_MXR_SRC_AIF2DACL	8
 #define SUN8I_ADC_DIG_CTRL				0x100
-#define SUN8I_ADC_DIG_CTRL_ENDA			15
+#define SUN8I_ADC_DIG_CTRL_ENAD				15
 #define SUN8I_ADC_DIG_CTRL_ADOUT_DTS			2
 #define SUN8I_ADC_DIG_CTRL_ADOUT_DLY			1
 #define SUN8I_DAC_DIG_CTRL				0x120
@@ -392,7 +392,7 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 	/* Digital parts of the DACs and ADC */
 	SND_SOC_DAPM_SUPPLY("DAC", SUN8I_DAC_DIG_CTRL, SUN8I_DAC_DIG_CTRL_ENDA,
 			    0, NULL, 0),
-	SND_SOC_DAPM_SUPPLY("ADC", SUN8I_ADC_DIG_CTRL, SUN8I_ADC_DIG_CTRL_ENDA,
+	SND_SOC_DAPM_SUPPLY("ADC", SUN8I_ADC_DIG_CTRL, SUN8I_ADC_DIG_CTRL_ENAD,
 			    0, NULL, 0),
 
 	/* Analog DAC AIF */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
