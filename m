Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18405160B04
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:47:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCLr+qOYoVrhg1WT3YqtBSKoowWpDyL/pRcnrerSoms=; b=QwKovhb7CCv3eo
	sff5ugPr4fTRfIn/vh2Wm66pJSM2wwdCI7OehbDmduqq6gZGWGXIAco+5bctAO5BxrUKZ4rjCXJac
	9bk5Tub/bL9RjEYNvtlkRnSW0Sp7jHx+6c2bjxZIPpCm1W/2B6q99mcUGrrKCUVzDiDsBPp82ItxO
	QLibG+6UxxsevML8GsOP4lLwhEBIg8391i6RkTpAu8DRboqm310fwI4iYwlxV+CVFuRKSAGjmnxyT
	Za9jBk8DZZSEsA82mJMBPczLWTGlIqLgx2QndrXsz+nw0sDFYdMYWQC4weWPnGmfhXDpDvdRDvh2e
	7oL65+BOua0rRZOVZGEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aBa-00087v-RQ; Mon, 17 Feb 2020 06:47:18 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7P-0003js-Jm
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:01 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id BA4DE5232;
 Mon, 17 Feb 2020 01:42:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:42:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=gQog3OlsgbAsZ
 oLI+7srNygrqMavGsdiz3aPBAseJDU=; b=u3/G47gGQc2OcFGLR6Z943suj10dP
 2awt9rhUf0OXIvckkiO/1eKKXwIXwX4/a1sxwuPDLUCcvHjp/A/L8eBR0EJcrjyH
 V8Y/jWmeY6wQN3KYLpDnAVjjAJl0izK+CqcQToAEMEJiolkpztrh2GxheA/+Nv2n
 B3vQXz9hiUlt1SdwInsx4nALN4Php+jvqbZyQ/bWbCwIpYZbIgcXC2zD95gnB2en
 h2ZjQVlEM54Xv/Ip9plM0rKs+fqZ8NESeRgZMbyxN1sWSS6tGpgsm3e3Lt1APZ02
 1F6dGCDA2twKVw6WkWxPcV/PjrAQoaoviFw447Dm8Omy005SZmEp6y11Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=gQog3OlsgbAsZoLI+7srNygrqMavGsdiz3aPBAseJDU=; b=e5iBbcJH
 IOAg9pVnocAPi6Sp8i0kx74fJsqeNs+m5vYL8YhdQkcT16sejyy/knoZ6jIjr6L9
 eStJA2Z8YsEU9M8sUbHD+uwFbamymGLKcDOnEwW+i6taWq5QPYpAOhG25YCLepia
 BMiVzqSwsbuf97uLJ9zwNuQep3NB3xMZOgHsmHDzFXJSjnhB4zz8xKyiZW5rQ0+U
 5eEjRWs8DMSFgJnHDNIlBHYftYq2dm0bp/oVon7466XcygsECgrAaAVpR2ON2Y/U
 5JXUPu3/BKDZkP3tGnwtDujxQTSm5/ZeQxMXgL53dHcCcuesp+q484kETOR5swJa
 ItoaAcLmkM0edQ==
X-ME-Sender: <xms:8jVKXuQmi8WsaVVubwPEj6CNm7lba6kG47PQZNxu5xekAssIY1l52g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpeejnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:8jVKXiOE8VBa7iCQyks4ezIEgJ92NqvqQLUwGH4OWim9WojisX2TpQ>
 <xmx:8jVKXudkoM3216rtbn1l4mHCP66Kqjl5arGzptKYw7a0QtABtVLeNg>
 <xmx:8jVKXlWWWwmoeg2LuRuTRzcSmVpQk79P1JBDLkLIUmccjXWLB6pTvA>
 <xmx:8jVKXvvOSXyCkl1AFqItQpJgmVl6iO9dLrau2FwI9-T0nBWus2w4MQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0985D328005A;
 Mon, 17 Feb 2020 01:42:58 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 12/34] ASoC: sun8i-codec: Fix AIF1 MODCLK widget name
Date: Mon, 17 Feb 2020 00:42:28 -0600
Message-Id: <20200217064250.15516-13-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224259_820907_D1EADC83 
X-CRM114-Status: UNSURE (   8.91  )
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

It should be "AIF1", not "AFI1".

Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")
Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 3d5ed2f4575a..03cfe4e17ff7 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -430,7 +430,7 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 	SND_SOC_DAPM_PGA("ADC Right", SND_SOC_NOPM, 0, 0, NULL, 0),
 
 	/* Clocks */
-	SND_SOC_DAPM_SUPPLY("MODCLK AFI1", SUN8I_MOD_CLK_ENA,
+	SND_SOC_DAPM_SUPPLY("MODCLK AIF1", SUN8I_MOD_CLK_ENA,
 			    SUN8I_MOD_CLK_ENA_AIF1, 0, NULL, 0),
 	SND_SOC_DAPM_SUPPLY("MODCLK DAC", SUN8I_MOD_CLK_ENA,
 			    SUN8I_MOD_CLK_ENA_DAC, 0, NULL, 0),
@@ -461,9 +461,9 @@ static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
 	{ "AIF1", NULL, "SYSCLK AIF1" },
 	{ "AIF1 PLL", NULL, "AIF1" },
 	{ "RST AIF1", NULL, "AIF1 PLL" },
-	{ "MODCLK AFI1", NULL, "RST AIF1" },
-	{ "DAC", NULL, "MODCLK AFI1" },
-	{ "ADC", NULL, "MODCLK AFI1" },
+	{ "MODCLK AIF1", NULL, "RST AIF1" },
+	{ "DAC", NULL, "MODCLK AIF1" },
+	{ "ADC", NULL, "MODCLK AIF1" },
 
 	{ "RST DAC", NULL, "SYSCLK" },
 	{ "MODCLK DAC", NULL, "RST DAC" },
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
