Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88661160B01
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:46:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErU1/FkyWCPS2iEnkvjiWCWb4mRZYRtv0ZkBH2xppiA=; b=RImlHVUkeEXC6+
	B36cIzdb5p/EMnOD4IqSisoo5rHbi4GQA8J/lNrpjL357serbXhJqwqMBuwBF3hEsZPfP1PltKYq3
	78oZrjyw/Bv1e7v3SfKjFKeZ1dkxPOQCgl258KQsArPZ257MYksP7X3NWnv+Pyo2KIE36jlJxFbUe
	OtTBmp44SyIGw5PparP/3fbVPPF2mFX6Xov0UmIssbAAADagO/+GR1rryo+JzpwaxEGpZD3xOLcng
	T5W79nLfwoW+1HVv92sc1TteXMT7ftyc7lcfKoyj4bhvOXzo7b74Q31quy8ow0EViQb9Q+stfuYEt
	1VevoqAaXLCF4nv8dG/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aB1-0007gs-KL; Mon, 17 Feb 2020 06:46:43 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7Q-0003kX-2E
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:02 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5B0AE5240;
 Mon, 17 Feb 2020 01:42:59 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:42:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=quPjEsfhLhkxZ
 JxWr8pdY2HamuseL6mLJzNXb0wlNAQ=; b=iYnsynIQaQ8rJpgkLfEnukcRnAEXZ
 AUpa+Md+7MnQL23o9Wi6C3GzBslTOnkjlWE9efbDS54FpzfACFYIS85VlVv/jX+E
 DRf1ewGLxn1K5xfWCbtvbI2mzRF+DYlpKnWDcCeR4/3Dvre8YwftM6/HLOYGPuDR
 v6sz5diQIZ4W7dx2xeSYE2FrK4bJGQsyLvdL805sayqfa2KZ27ckOjz26V2WJPu2
 bSfliW6KiqJK59MZUF5iyyNdCfAd0pT+Gg2JN4+/pEzUJD4vBw4nQexZJokyGXEq
 szxXGYEUDXHVMNwdF71ugVNmfGpmcCYlUTOHwPYhcls/fKvexukKRch3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=quPjEsfhLhkxZJxWr8pdY2HamuseL6mLJzNXb0wlNAQ=; b=AB4wG6tJ
 y9hHY+UgJpTnH5ooW/QWnC3TdWAbJCGrJJzIwdL6l7+EuY8Ld7XIqBA3B3Q+vXe6
 MMtt0LmKEjgyMVnUzEqXhDdsRy7Rp0Yu2D6hJm/dhk3XO43l1Tm9tBuCgVCwsmix
 PdUEitiqXDQfgRXydbEQdyjZFGlH4ELpQ78qykDvT7q4dZH0Gw3WF1ywiWMBblgz
 3CajymOQmYBh796jX5RF1u3zlhU7kMq9z/U4gmlymjpstsy6hGVNIxAzAfed7Dy3
 i9gb6KIPkJJKC4uoqx50MTHadkBN450KQaN52bCMHZToOEa5bNBM9CBnu5Wc5y8A
 8b0zsBwXy3TqJw==
X-ME-Sender: <xms:8zVKXq4no9v-8W8clfOk-kyd4Lyuc93uG1znpSY4iKF83smxYt6Y5g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpeejnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:8zVKXq3zWpR9CyukjTBk4TxDIlJIt-ayHp8f8sKBRsCh9ku6EyBOYw>
 <xmx:8zVKXiZkllV2gTaBopMwgHhzDNEdnPmqPLoQ99VWh0h5GRyNyZrLRg>
 <xmx:8zVKXu-_2DIGd0hQsed669T0S_3fS_6fYQ8D0hg2GUUOg3Q_-mBzeQ>
 <xmx:8zVKXp88cwrOgijRPne_-v92y0Nh8sOEVyH3Xa2kVXJOpgsJ0g2VAw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9CFF73280059;
 Mon, 17 Feb 2020 01:42:58 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 13/34] ASoC: sun8i-codec: Fix AIF1_ADCDAT_CTRL field names
Date: Mon, 17 Feb 2020 00:42:29 -0600
Message-Id: <20200217064250.15516-14-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224300_377986_07CED5B7 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
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

They are controlling "AD0" (AIF1 slot 0), not "DA0".

Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 03cfe4e17ff7..8b08cb34c503 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -49,8 +49,8 @@
 #define SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_16		(1 << 4)
 #define SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT		2
 #define SUN8I_AIF1_ADCDAT_CTRL				0x044
-#define SUN8I_AIF1_ADCDAT_CTRL_AIF1_DA0L_ENA		15
-#define SUN8I_AIF1_ADCDAT_CTRL_AIF1_DA0R_ENA		14
+#define SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0L_ENA		15
+#define SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0R_ENA		14
 #define SUN8I_AIF1_DACDAT_CTRL				0x048
 #define SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0L_ENA		15
 #define SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0R_ENA		14
@@ -406,10 +406,10 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 	/* Analog ADC AIF */
 	SND_SOC_DAPM_AIF_OUT("AIF1 Slot 0 Left ADC", "Capture", 0,
 			     SUN8I_AIF1_ADCDAT_CTRL,
-			     SUN8I_AIF1_ADCDAT_CTRL_AIF1_DA0L_ENA, 0),
+			     SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0L_ENA, 0),
 	SND_SOC_DAPM_AIF_OUT("AIF1 Slot 0 Right ADC", "Capture", 0,
 			     SUN8I_AIF1_ADCDAT_CTRL,
-			     SUN8I_AIF1_ADCDAT_CTRL_AIF1_DA0R_ENA, 0),
+			     SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0R_ENA, 0),
 
 	/* Main DAC Outputs (connected to analog codec DAPM context) */
 	SND_SOC_DAPM_PGA("DAC Left", SND_SOC_NOPM, 0, 0, NULL, 0),
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
