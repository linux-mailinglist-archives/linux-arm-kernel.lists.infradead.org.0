Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0655A160AFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:46:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZunWj9b2NyTmEYbEVN6b6ZvlK0I4S/evxc372C11As=; b=YiIJxc9pYkPL2V
	dGc87hco5XusoHxkjiE4NQIMB3mNMXGmhm5WuMx3vyrhWCLyA8zROAMvGl9/LSKKuISRuhiRUulGb
	PN6zf1dH0+rQgjil9gUMMRnFRYQ25SBiosQ3aWfdqJF5nzTfGaoxX3tm3JYie3bR5ZG11H0NrRMOv
	m9bu3UB399tiI4LuV7LblBrY42flUGSCWaXcJwoQVTYwz6fO7OGb4RPy6Tfs6mG2YlRJ7qTHOZ1QM
	KKp7/T6D1Qb/w57oYyjsqIaRAMjYFz409I68MrYr78Tl7DyKnf7pfQlcaGvnCWDb+lrZSrF5n2OMg
	9GmM33mqBfwLNjoyeVKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aAS-0007AW-SX; Mon, 17 Feb 2020 06:46:08 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7M-0003h4-T6
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:42:58 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 456AE546D;
 Mon, 17 Feb 2020 01:42:56 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:42:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=zutLwkCFJwr4H
 OIeiYIfzlC7l/v47tnp9l6lYRGMDUc=; b=JsdZLFt3JUJzmrJ0rn6xzKBgrItg1
 gNspE5jw1f6wyXMVIHyaZ9OVQpeZjPfc2Je6iUi+G63uZMa7rCfk9q7OOQ0SK9tt
 Gti261rG31Z/4M5IVg2EHPcUN8khm4U48UUDVOtqfafsv6IqhkXBKhRNG9AnQpno
 AGGkeqPZFBlMk67DpzmKCafME7mg+lQFTv3T8bBqr7M0Zv2n6qfqisKHYciJCYbq
 6PvqHZ1MZ8GFDRmx4vdap9FqEX9tjiac2fvzQrf1lzlTdO6qYBvXNJuZ9kOtldaj
 izxfIl10lR3Jro93dx+lzfVxbXuOJN7zpZQJPQgiOdC5OLCS7aQQU7pxQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=zutLwkCFJwr4HOIeiYIfzlC7l/v47tnp9l6lYRGMDUc=; b=GJNaWC3w
 06NtYj84M01lqQA4XI+ArLdnf7e4BAuKkANxyEJkRBWeje2qkDdh+ZZW/50l1n/P
 5P55BcMAhPn6YSG28PnSlUp0+AHS4u2KxtG56wXCcOJ2wPlCd27bANF4qWOyFpNR
 nZE32oJ4lOv+EI/Rfkoz0NopbulvuM/se36d/eGutR0bgCBlrhg2wQqbGpLU9mNH
 RdDtygi9bhIbosZmsxOV1hVCJ0qPxEXTM+XGCHIAfXXXp3HeSYkSAnhHp/wEfiva
 HS2VtjdDk3ys6V39YyqtPMIXa/Z73tNFqmJtpYLNODjx5EBUDO+gwLq7vWybG3Mk
 u9kKNRRAW06LWQ==
X-ME-Sender: <xms:8DVKXg-y1ruVNvt3CXWNHiyu4rQ9nyYca3dpOBzsbZlRucChtHUt0A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpeejnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:8DVKXq9OBQUgfvocvdlc9udwuoGMljBt1tOXxhOrhl2q8G1yOQYFOg>
 <xmx:8DVKXoSWix7WNAnQK-uFcAyZ7s1uf6UOJDTYqHXirHdM-55qXzNFzQ>
 <xmx:8DVKXmccCTNFmnwfzJPBT5I9SYGm-zfV8DQs544-aTLEWsiti3aBNg>
 <xmx:8DVKXjH-2Uwdtoy-ej-HycyT4dSmxyW41Zc_8KTMA6oOxOdvYJ_T5Q>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7DB533280062;
 Mon, 17 Feb 2020 01:42:55 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 08/34] ASoC: sun8i-codec: Fix direction of AIF1 outputs
Date: Mon, 17 Feb 2020 00:42:24 -0600
Message-Id: <20200217064250.15516-9-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224257_118132_FB9E84F9 
X-CRM114-Status: UNSURE (   9.83  )
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
 Samuel Holland <samuel@sholland.org>, linux-kernel@vger.kernel.org,
 stable@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The naming convention for AIFs in this codec is to call the "DAC" the
path from the AIF into the codec, and the ADC the path from the codec
back to the AIF, regardless of if there is any analog path involved.

The output from AIF 1 used for capture should be declared as such.

Cc: stable@kernel.org
Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 0eca75d22f13..83c812742cc1 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -399,12 +399,12 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 			    SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0R_ENA, 0),
 
 	/* Analog ADC AIF */
-	SND_SOC_DAPM_AIF_IN("AIF1 Slot 0 Left ADC", "Capture", 0,
-			    SUN8I_AIF1_ADCDAT_CTRL,
-			    SUN8I_AIF1_ADCDAT_CTRL_AIF1_DA0L_ENA, 0),
-	SND_SOC_DAPM_AIF_IN("AIF1 Slot 0 Right ADC", "Capture", 0,
-			    SUN8I_AIF1_ADCDAT_CTRL,
-			    SUN8I_AIF1_ADCDAT_CTRL_AIF1_DA0R_ENA, 0),
+	SND_SOC_DAPM_AIF_OUT("AIF1 Slot 0 Left ADC", "Capture", 0,
+			     SUN8I_AIF1_ADCDAT_CTRL,
+			     SUN8I_AIF1_ADCDAT_CTRL_AIF1_DA0L_ENA, 0),
+	SND_SOC_DAPM_AIF_OUT("AIF1 Slot 0 Right ADC", "Capture", 0,
+			     SUN8I_AIF1_ADCDAT_CTRL,
+			     SUN8I_AIF1_ADCDAT_CTRL_AIF1_DA0R_ENA, 0),
 
 	/* DAC and ADC Mixers */
 	SOC_MIXER_ARRAY("Left Digital DAC Mixer", SND_SOC_NOPM, 0, 0,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
