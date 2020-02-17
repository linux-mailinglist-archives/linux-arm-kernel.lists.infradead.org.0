Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70801160AFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:46:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=naloYbhHqMBEH5YYnTriE9n2fYCMNwCXCqVDeGUcR68=; b=KIBIF4mC4ooAPu
	CwiQ61AznaKsRdgsb38oeh9CnE+CCzah9yF9LsDqFK2ed8dN6fYkcXTODYgF+NQ2z5jruVJZRkVcE
	BxG9+tkt4rwOJyhv48oav1Y/GC2ytmU6mRc2WHgT0Rrr4zHFj0VQOwKvMNGQvJY6Wa2IM2T3Kna4h
	emqHTSKsJNHqZzt796C0VExV/bFY8ewF54WGUNOKkKz5aOAasf52tE3+BFukQSxyvtLNGCMKPKG+3
	OKW2BTRAfeYx/QNTMXMt4zU9uAciPTh1TKPIX1GT0EfR+o4WaxljsZDg6yRurQJVzn4Sa0kErtEZ9
	NMU3xay76frUZCe2qOkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aAG-0006ut-B8; Mon, 17 Feb 2020 06:45:56 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7M-0003gU-7e
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:42:57 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9E80353C8;
 Mon, 17 Feb 2020 01:42:55 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:42:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=4oosZxTt0fEhw
 STmSYl/k9XHF9CYNsoiHSHZf3lt07Q=; b=KutxqOI2gtyYxbFsVOgHWlx2v9cmo
 BpFrEABQgpDfbqZyHiDLWIom96ahWk4e5WdCMw5dEAeWf8RSAJHUJpLr6v6tMBVD
 aEWui8VNH0fTv7WI8Zyo7nXXIzkQ0S3aslvUixhct5UpOdmCvYDrD+o14UHRrF8/
 1mby+g9uNvncxRhavhv/oUkNuz+Ogo3/6gC/tTrvXD+81ZZpd6obyAZs+oV1fSYK
 +IHc2X0C+kYPvI36QpznniVIDjZ1Yht0WZjRZ1ynG3qDjoJ7d4449EPK0fMpY+OC
 9XdLT1JNPL4AvPt+R2ALyLXImveGHzw0buip3kN7vu9OtRY4jhg+FWkjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=4oosZxTt0fEhwSTmSYl/k9XHF9CYNsoiHSHZf3lt07Q=; b=kJLHeIeK
 WA2mLG2C2mgX6ZDGh1f8gCQb0jnh8mCvanXsgorKFkr58AYTexH2m6nim8A6kzNQ
 AzVbfFQjr8dNLchrVlantceTauO7hWTHl406KNAoeFOsmG7Yei4yCB/BZ+lDXxSb
 +U5nsSUuiIt1/qRqZKo5agBaEoJc+ipKYJl3sZZnuxaZuFXrYdN8wgpX4jaK5mbi
 9TQrNNytPMPfz4hVgpXMZ20Rm5nE9nIg0FkFJEvMpPJQOAMBWHu6d/KjlRnGEleM
 gcYk6WH/yQhzeRDoXUK5Z5a07gyN3YeSuHYyMf+thFeYIYTFkpz5egeuEh0I6f3d
 Nb9mhXcU+pDtQQ==
X-ME-Sender: <xms:7zVKXtxAOZORVKqyIycYBsYoZmo3x8DLue4BMkpx06iGcUpdVKUHag>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:7zVKXjYpAbDpyKYoH52pGJQ1K-0RBvLVy6NqAbqVtir0aE2s8wwThw>
 <xmx:7zVKXt3BfpcTWrZSblEV3aa98g9kymKemgU4pWTiqJADvEt1ZcajHw>
 <xmx:7zVKXpiueZEVCBUR9R_HT0YExyrLcSoaI1Hp2-WZDqe_cafH_8JxeQ>
 <xmx:7zVKXp_QzYTIEtGNdgHO5jFYO9kTsJtRKPps1BB_ADuk3MJS4sGpkw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id D68C63280059;
 Mon, 17 Feb 2020 01:42:54 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 07/34] ASoC: sun8i-codec: Remove extraneous widgets
Date: Mon, 17 Feb 2020 00:42:23 -0600
Message-Id: <20200217064250.15516-8-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224256_431382_F2B55BB9 
X-CRM114-Status: UNSURE (   8.18  )
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

This driver is for the digital part of the codec, which has no
microphone input. These widgets look like they were copied from
sun4i-codec. Since they do not belong here, remove them.

Cc: stable@kernel.org
Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index cb3867644363..0eca75d22f13 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -441,10 +441,6 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 			    SUN8I_MOD_RST_CTL_DAC, 0, NULL, 0),
 	SND_SOC_DAPM_SUPPLY("RST ADC", SUN8I_MOD_RST_CTL,
 			    SUN8I_MOD_RST_CTL_ADC, 0, NULL, 0),
-
-	SND_SOC_DAPM_MIC("Headset Mic", NULL),
-	SND_SOC_DAPM_MIC("Mic", NULL),
-
 };
 
 static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
