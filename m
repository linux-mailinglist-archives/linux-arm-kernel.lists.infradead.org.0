Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC23B160AF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9u5w1PyciEcYN+0ken09sB6VJ8xQpvw6ap+bKZbtwrM=; b=tzkkuzkTXhBPwQ
	ZXYDMHae3MqjU4dgba/SDqNEsyhjp/LH6qyorElthA6l28/YVFHJjILzQGoEjBbjILsMLsAirxBb+
	IzF6GopEe8lcOs+gmnQzhyfIOErPnsteOSo8bAOjFueFbEsGmkbLY9DtDEGmDZ1PziS0My+zBvoP1
	qf4cAeuiV2JSlMa8f7dfDY1ZgN/40tw5kVbgVUvTGjFGh3349s5tkkiFzSFLy907I4sA1ZXV2623f
	sLNPIe0MEiQXHgFIcPoMpAgMMGQSM5mhZqE2YvLMRTFUpecz6eJj4sLfpYPTiVRp+xrRpdKcHWTrv
	VAYVBd/5fwmUbQDCSswQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3a9z-0006fS-ES; Mon, 17 Feb 2020 06:45:39 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7L-0003gM-Oa
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:42:57 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 03161537E;
 Mon, 17 Feb 2020 01:42:55 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:42:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ijuXwZjdCzjoi
 Fk9M3o3Cb+h29NCqVUZXZzHgJRRplI=; b=R1ADsWhQSyvgkOpaH6PvX4LLq1DID
 +1PkIe0ueIMnb3e90XX+Bit989ONf5kAfy2rZM1n9jgXTtShfJlJIqAlrOSmcBZa
 B0NlnVDnbJrMyOyxQpfy02EiR9RfoNSpAqdlLaKrBFQIVS2dccEvYrampTn7Eu0T
 iTExLYS9s8XD+2DlOseKyH88JTiF1HqY+FSz2z4oXLfWJlFGc+Jor0sH5TzT8dpD
 hqLsck7pkN/9F8+OzNMne8ENI1Dz76azTUzFDY+5rCQU0DpI+78CwFm05cviAQYC
 FcfmC87DUEf2mkYnxrgu5zUH7YZDUz/qC04yo8kdwBq7PFk8vc83qpMrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ijuXwZjdCzjoiFk9M3o3Cb+h29NCqVUZXZzHgJRRplI=; b=neEzQIWl
 k4Mg6iMdCoHf7G1RfJWzmx/0WzH83GV5Ju9RATO830ZcWUsxlzNNWicFMBU9McUF
 9nd8SnpETMNSiukTKsZ8vakHBJk9Fqq8eewmsXdFRwoZvO2SbPcHtHak1tDqfwHj
 Ezj/1jf+J+ltApuI7Af5gdNICv5XXWXRPz1zxQhN76/ILHwgqnDcHJ+2Ne75AXVX
 yNPMgOm6UVTOauRmj9PZjci7iY+V4E61lIp7MciQQmxLxMXaCCDwYIDWX5py4+9T
 6dl39EDu5IF8BisxSof1soTMZ+fnKrD7M6ZrTxR6MNL9fKpVJJFUIoMSKk6IK8Ji
 EJUjJbjkHSbVaA==
X-ME-Sender: <xms:7jVKXlmRp5Uf3RuNr1-4QXcvEK_bezmmR3yp72lstXZ8yZ4_ookf6Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:7jVKXlHOHxKFP15X0p2WKTfP6GOwFJcwN12RFRFhCkjRCGNwnPX4wg>
 <xmx:7jVKXmqLPn0UUoVUmBYI8PAqid45svTo1S5EZW_KPZidYd3e4CKCXQ>
 <xmx:7jVKXp6hmQWLSvF1VCE-qum6q2jW0fGg6SPloV6zPsSLZaGOHk-U7Q>
 <xmx:7jVKXpP25F-DM9SwlLus5_SMjNfQK4RjdAtq50wP7jtXtW4aMt94pw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3B37A328005D;
 Mon, 17 Feb 2020 01:42:54 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 06/34] ASoC: sun8i-codec: Fix setting DAI data format
Date: Mon, 17 Feb 2020 00:42:22 -0600
Message-Id: <20200217064250.15516-7-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224255_937629_5A8D1571 
X-CRM114-Status: GOOD (  10.11  )
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

Use the correct mask for this two-bit field. This fixes setting the DAI
data format to RIGHT_J or DSP_A.

Cc: stable@kernel.org
Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 32b7410540c6..cb3867644363 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -81,6 +81,7 @@
 
 #define SUN8I_SYS_SR_CTRL_AIF1_FS_MASK		GENMASK(15, 12)
 #define SUN8I_SYS_SR_CTRL_AIF2_FS_MASK		GENMASK(11, 8)
+#define SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT_MASK	GENMASK(3, 2)
 #define SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_MASK	GENMASK(5, 4)
 #define SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV_MASK	GENMASK(8, 6)
 #define SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV_MASK	GENMASK(12, 9)
@@ -242,7 +243,7 @@ static int sun8i_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 		return -EINVAL;
 	}
 	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
-			   BIT(SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT),
+			   SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT_MASK,
 			   value << SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT);
 
 	return 0;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
