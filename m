Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5C4160AD2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:44:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQCk1UMmCS4uvyJKKRkLKOS2PjY26Y08HpC/6kW472o=; b=ggHVmO98dvSMrS
	MQ2bsFjhSsCVU6qkzP+rgcUa/4ZQexkAZAVjybBk/Lg2znLeQ5JNU0aAfaYKLvvfeOc/KduSNZC2a
	71PVmslbDCPMWjZeop+eA4mY/HqSJUePy5Oal1C5+HrV/MDfMCJ5hhxOcbCKSa8I0qKUWDlevE1je
	BH2t7ar6HzBuZ/GOZ6rXWYV0IhJOD3LvAmEl75dZ3kKxlAl1uHhhC8uvtw82Qv6U8uCFtmODd2MeK
	5MJI+IenO2G6ANF1vyCcrzEOeY/M571GG4SFAOKdAZNCXsmYiYe/WnqffsWFgg/EoF/027len7xyc
	/SPkTxc7k7QGsJhO4V8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3a9G-0004sk-Ed; Mon, 17 Feb 2020 06:44:54 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7K-0003fC-AC
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:42:56 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id AF91A52A0;
 Mon, 17 Feb 2020 01:42:53 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:42:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=/r22J9LyeZH3n
 hDCjpJzsr1zZdkXKV/PR9xsFs//i4A=; b=RkZQd/plZ75InhtalRrUTNzlvrQDI
 V+DjOl2jqUeIv08IGxLfhJIShJWcrP3UmUePGseFiLDSiGl/QhcfSP6v5qaUJwOU
 d/rXUJ9E63xRv/jtQPW0LNakay1bdxhGQYAAk9esejDaI+vNMDsPJAKxXP7SH83v
 VxwiWvMeSNUCmhCDrAHqGEFMVowC2EJxEqZZOWiGVpjyIDnZ0vOUHnt5z8XbFpIR
 II82yO3+Oyg6moAedc23v5V0ASV1VPz7udjRWPKR3YFgR9ZryNDPhO1JzgijSmKp
 4srOtYmjnSsCGTa4aWGhIQnPrNbd3fIqKN84tKPyf0v+ZM0fUIi47WK0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=/r22J9LyeZH3nhDCjpJzsr1zZdkXKV/PR9xsFs//i4A=; b=4A4KsHWr
 AHjQVFafot3515noqJwL7Rxql6EXlbl/OxkAe9sV+KdoDL6lBiHXsys4AZGEHOTD
 jMK+buGerTqJ+SmtKrr02483bRKbGDQ5jUmLHz9pQg2hJeOaEWn4cq0NoCdVdhg3
 l96zT8Cbi6mrwW/5STuEtHHCZLYfXgemu3z76Qk3EbAFVjhYyjw2aFUwGaS0BQw7
 jKCCFTvrDD84K3R/Za6Upu7KWHbBMfa1nR/t9o84APO08ENHCWvXLVpo47tzMGIu
 MY92krHAC1T2b4haAiX/0Y23Zit6Dw29jUnhXm/HVwT8GLjy6TwMKmjAEUtLiEZM
 1+cj7wCWxgYQQQ==
X-ME-Sender: <xms:7TVKXr0-o8ELo-TzRnG8KnI9PRIms0MAh8frMdCinqciToHwnJK3hg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:7TVKXi0bmbe0A7Qb41GS_IeKJk8QLApCAXNV9R6vyb2LLQ_2QDVFPA>
 <xmx:7TVKXhUBYj158EV3ESNGss-OK29itzxpdMcwLR95RtAz_lvmqAc-ow>
 <xmx:7TVKXkjc94DvGv4d2-mwOCW7RIcdMSzjMTxe2j8s7ZQnAHYTp-2ZPQ>
 <xmx:7TVKXvBFR55WaXcyhc5tivgDJeGi5gSkxGgx23jagq6uviiWuCi2kg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id F2BFC3280062;
 Mon, 17 Feb 2020 01:42:52 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 04/34] ASoC: sun8i-codec: Remove unused dev from codec
 struct
Date: Mon, 17 Feb 2020 00:42:20 -0600
Message-Id: <20200217064250.15516-5-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224254_490063_18FA7C5F 
X-CRM114-Status: UNSURE (   8.86  )
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

This field is not used anywhere in the driver, so remove it.

Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 14cf31f5c535..33ffbc2be47c 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -86,7 +86,6 @@
 #define SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV_MASK	GENMASK(12, 9)
 
 struct sun8i_codec {
-	struct device	*dev;
 	struct regmap	*regmap;
 	struct clk	*clk_module;
 	struct clk	*clk_bus;
@@ -544,8 +543,6 @@ static int sun8i_codec_probe(struct platform_device *pdev)
 	if (!scodec)
 		return -ENOMEM;
 
-	scodec->dev = &pdev->dev;
-
 	scodec->clk_module = devm_clk_get(&pdev->dev, "mod");
 	if (IS_ERR(scodec->clk_module)) {
 		dev_err(&pdev->dev, "Failed to get the module clock\n");
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
