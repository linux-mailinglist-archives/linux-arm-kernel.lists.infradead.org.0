Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E8413E394
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:03:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3xnDo3Ose709qKAEP7B7xliA9o19PYwoMMj7uBIHUGg=; b=hCki9Hq2Ilo1Z+
	IZfRp5isZ0HyA4grLb7w+yzf1YjcqBlxleI3709mRWQjK8uf4YeoDd921+/D253P2B+dbrlekhqK7
	swLDm2VmQVuIMokZ47adZgObVCuT62XqDPOCXTw/Cnkf4wFSzxL3U0LaSQzjNAN7zcIlhP/ZzgTAI
	6A8qWJ41oU3wu4b76+T8lQaLM6ZG2jCn85oe1ZVoypdu0bfAU2NLf4J2Wj7MQXkNWb5UEmBIq3F/b
	YeEvlSIHqJKxp1bekSvA9LVRKlXPhpvTRujmZAbGAH3lo3DPdzFHwCkRdpU0opQ1DBTnq0s7LFwpx
	UumUWd8xseL5WxJDVboQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8Xh-0002Q7-Se; Thu, 16 Jan 2020 17:02:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8RA-0003rt-BF
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:56:10 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E5F524680;
 Thu, 16 Jan 2020 16:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193763;
 bh=/LFljjM9wXtT7AF1NZ86AQkwrJppmbCRjR8pgtvV8dQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DlOjce5YaXePq/0zafStpmO7pqnn1E7wWIejS4TeHwUsSj/rBw1y3OWYgdNKEp7/w
 wEmuKEsQYdWvnIQ0zS3Df5zXR9mNcdIRUzI94e43ihN5aLMMqrQS4CS08aHT1B/ss2
 gdfVI66jGK/+3RePGintiwcKFs7nx+GZuPuBlixs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 049/671] ASoC: sun8i-codec: add missing route for
 ADC
Date: Thu, 16 Jan 2020 11:44:40 -0500
Message-Id: <20200116165502.8838-49-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165502.8838-1-sashal@kernel.org>
References: <20200116165502.8838-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_085604_433360_F5374CD9 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, alsa-devel@alsa-project.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vasily Khoruzhick <anarsoul@gmail.com>

[ Upstream commit 9ee325d029c4abb75716851ce38863845911d605 ]

sun8i-codec misses a route from ADC to AIF1 Slot 0 ADC. Add it
to the driver to avoid adding it to every dts.

Fixes: eda85d1fee05d ("ASoC: sun8i-codec: Add ADC support for a33")
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/soc/sunxi/sun8i-codec.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index bf615fa16dc8..a3db6a68dfe6 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -465,7 +465,11 @@ static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
 	{ "Right Digital DAC Mixer", "AIF1 Slot 0 Digital DAC Playback Switch",
 	  "AIF1 Slot 0 Right"},
 
-	/* ADC routes */
+	/* ADC Routes */
+	{ "AIF1 Slot 0 Right ADC", NULL, "ADC" },
+	{ "AIF1 Slot 0 Left ADC", NULL, "ADC" },
+
+	/* ADC Mixer Routes */
 	{ "Left Digital ADC Mixer", "AIF1 Data Digital ADC Capture Switch",
 	  "AIF1 Slot 0 Left ADC" },
 	{ "Right Digital ADC Mixer", "AIF1 Data Digital ADC Capture Switch",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
