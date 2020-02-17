Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9941C160B12
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:49:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6DDAb/M+UZYLT4pv5UET6MGmfWZfY03IEq5ub0gq14=; b=D6U1AEXO/TEZzm
	mzfRg89ydCyAyz83tsFHnmYjgfAczuTYDkRiyVyvZAgB2cUPjxAm5EsCOCvBNBckWhbOKOyC6YTgl
	Qr8gr/Sr1ZRWgyZ3nB66PUbRGyJKF4pe13jW5hc3xNWpZPm6zHHckBMNoBhBALc5dKqv/AIrXL6ev
	mXuUM/NhM4mWUBYMEqik9hizzFHXU9yCZ50R0bwDTpbrFS2UHH+RJYZd/SRen1jWfcxJlyoeTPTx4
	mYQY3KqFelzBl9KDa/t/RryALIUhq8n5Q4Lt2WhI7vzvEtGiKpH/Oc3O/vLJUUWy4mKa6YviIcN1m
	Z+NlsEKaxhI1t799Y33Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aDy-0001Uv-To; Mon, 17 Feb 2020 06:49:46 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7T-0003nY-8u
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:05 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 65B4B539F;
 Mon, 17 Feb 2020 01:43:02 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Ka38TRYaT49vf
 pdd4Hx2SUEK/pkVlhY/GFkRWWqZ1Iw=; b=YkUlL4uCUFYm72WdplCV2egPKoT3g
 eEL9x7B8x7GchOFWWeUwjI4EOqQvFIKQvPa/5t2NdX2udiwBd0LECukJjjxM4t2N
 nBUPb2CfU0LsLQz7TY2PM3Jc/xfzSOYMEZ7w1wCKyU6TI6pBZu6iqwnDh7DtQHvX
 LHc10YVCl2Z+YaehH10R+AGOacdRXQv7vLJk014z7wqQ8VLFl0VwY2fd+sX+5L4S
 MKFi/7aDg9jCyMR9coZHqUJv5TRA9phGTZDqqjVgysB+V7IyZvNJYyrz1BHp8sWg
 HrwWaQ3OfCUeVNRN2fHnlMzpNaL8FWUpdl/qWiDEfjl5KpR4DrMpNQFPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Ka38TRYaT49vfpdd4Hx2SUEK/pkVlhY/GFkRWWqZ1Iw=; b=o57zOObe
 q1sivwubPtAEh8LNg0PFAi1axSJJ9qQ1QKhY8XTngxGbU+9/O9oxX+bUD/HkuIEL
 po3pb+C9LSxl2IONKaMu+xiQ0iNAqkhitBBtZLzvmQyCos9oIl6CwAKfPEIOmIMT
 SvI/HPY1YMoHm9L/OCdCofGxpt547YBYzAcdXX6z5X7Vlh0KG6gnTL4ysFtyFJZ1
 OJwrVODeKvo7XTgKatMgj1XS3uTlNg22L7/1GQNHpfl9bcRKDsrB/IsJBg8QiUDa
 pxz5Nc3qxy/gad0agbFVuGQse01FN387gV9K2B82kD9HDlPv0PPcmnlDy6GkgcuT
 1/bdzrN+HDWjbg==
X-ME-Sender: <xms:9jVKXn0FPsuD0woE-CZhJPVCjF7HZE8aFWSzuzSCmuMo2jgRWLiFNA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedujeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:9jVKXrBZH8WTh0eXzyLSQhSbgCKq-n15kVEcz1FXOo1ry1ReeSzT3w>
 <xmx:9jVKXsJ_reivPJ1nFomRunQiI0QJt-oGrTF7-yBV49FpbHGbtxOKXg>
 <xmx:9jVKXslnIQd-lTbQJIb7GYmDlObXUdV5lbHaFTCKoCa4EuUQa0C69A>
 <xmx:9jVKXraDwrxNGx6BdM-gXyt0IEioxlZN_skZo2IZ0AWaA4Fd_lse9g>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id A5DC9328005A;
 Mon, 17 Feb 2020 01:43:01 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 18/34] ASoC: sun8i-codec: Allow all clock inversion
 permutations
Date: Mon, 17 Feb 2020 00:42:34 -0600
Message-Id: <20200217064250.15516-19-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224303_477990_7423625E 
X-CRM114-Status: GOOD (  10.35  )
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

Since the hardware has separate bits for BCLK and LRCK inversion, we can
support any combination of normal and inverted clocks.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 36ce281286b5..f8cde149a92b 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -41,8 +41,7 @@
 #define SUN8I_SYS_SR_CTRL_AIF2_FS			8
 #define SUN8I_AIF1CLK_CTRL				0x040
 #define SUN8I_AIF1CLK_CTRL_AIF1_MSTR_MOD		15
-#define SUN8I_AIF1CLK_CTRL_AIF1_BCLK_INV		14
-#define SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV		13
+#define SUN8I_AIF1CLK_CTRL_AIF1_CLK_INV			13
 #define SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV		9
 #define SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV		6
 #define SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ		4
@@ -81,6 +80,7 @@
 
 #define SUN8I_SYS_SR_CTRL_AIF1_FS_MASK		GENMASK(15, 12)
 #define SUN8I_SYS_SR_CTRL_AIF2_FS_MASK		GENMASK(11, 8)
+#define SUN8I_AIF1CLK_CTRL_AIF1_CLK_INV_MASK	GENMASK(14, 13)
 #define SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV_MASK	GENMASK(12, 9)
 #define SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV_MASK	GENMASK(8, 6)
 #define SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_MASK	GENMASK(5, 4)
@@ -205,16 +205,18 @@ static int sun8i_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 	case SND_SOC_DAIFMT_NB_NF: /* Normal */
 		value = 0x0;
 		break;
-	case SND_SOC_DAIFMT_IB_IF: /* Inversion */
+	case SND_SOC_DAIFMT_NB_IF: /* Inverted LRCK */
 		value = 0x1;
 		break;
+	case SND_SOC_DAIFMT_IB_NF: /* Inverted BCLK */
+		value = 0x2;
+		break;
+	case SND_SOC_DAIFMT_IB_IF: /* Both inverted */
+		value = 0x3;
+		break;
 	default:
 		return -EINVAL;
 	}
-	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
-			   BIT(SUN8I_AIF1CLK_CTRL_AIF1_BCLK_INV),
-			   value << SUN8I_AIF1CLK_CTRL_AIF1_BCLK_INV);
-
 	/*
 	 * It appears that the DAI and the codec in the A33 SoC don't
 	 * share the same polarity for the LRCK signal when they mean
@@ -227,8 +229,8 @@ static int sun8i_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 	 */
 	value ^= scodec->inverted_lrck;
 	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
-			   BIT(SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV),
-			   value << SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV);
+			   SUN8I_AIF1CLK_CTRL_AIF1_CLK_INV_MASK,
+			   value << SUN8I_AIF1CLK_CTRL_AIF1_CLK_INV);
 
 	/* DAI format */
 	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
