Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D37FA136E35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:38:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=jelOVuCrdmIQNUDazAJcJRpTeTnnhzE81oyl7rxBUho=; b=mJT
	x3QCbGbFIBT5+Vjaa88UPygwLEShltF2hRskxS17xaCflGlOiEwsG3YzFeDcvEpLlbiur7MlukkQ8
	8YrGxBK5o1jtof952beVk/1MMJdLVNVTi/YSqWAE8kMJ5ODBbaWbfYtsZjGmq/ZewKj6MD/wzamdX
	tsfIM/7sWSSgBgiGDIFAReSoyef6mxuasUPcsqkCKhOlfGNUbPZ3fVl2NtH++g4xuu02mxuVCxkdJ
	S353uxjqY8q5St4aKZrg5tFRM4zj9QlFoRUXWX6Zynyemcgfmlw6ZXmrod2Apt3pKiPooxANJDaiF
	tgMiJ8g/MdB7R7lrD1pF8t+4SV2brwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipuUP-00079d-Oj; Fri, 10 Jan 2020 13:38:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipuUG-00074F-QU
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 13:38:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB29C1063;
 Fri, 10 Jan 2020 05:38:02 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6BCB93F534;
 Fri, 10 Jan 2020 05:38:02 -0800 (PST)
Date: Fri, 10 Jan 2020 13:38:01 +0000
From: Mark Brown <broonie@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Applied "ASoC: stm32: dfsdm: fix 16 bits record" to the asoc tree
In-Reply-To: <20200110131131.3191-1-olivier.moysan@st.com>
Message-Id: <applied-20200110131131.3191-1-olivier.moysan@st.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_053804_976504_FA3AEA82 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, olivier.moysan@st.com, alexandre.torgue@st.com,
 tiwai@suse.com, linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
 Mark Brown <broonie@kernel.org>, mcoquelin.stm32@gmail.com, perex@perex.cz,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: stm32: dfsdm: fix 16 bits record

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.5

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 8e55ea19125b65cffe42747359af99d545e85f2f Mon Sep 17 00:00:00 2001
From: Olivier Moysan <olivier.moysan@st.com>
Date: Fri, 10 Jan 2020 14:11:31 +0100
Subject: [PATCH] ASoC: stm32: dfsdm: fix 16 bits record

In stm32_afsdm_pcm_cb function, the transfer size is provided in bytes.
However, samples are copied as 16 bits words from iio buffer.
Divide by two the transfer size, to copy the right number of samples.

Fixes: 1e7f6e1c69f0 ("ASoC: stm32: dfsdm: add 16 bits audio record support")

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Link: https://lore.kernel.org/r/20200110131131.3191-1-olivier.moysan@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/stm/stm32_adfsdm.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/sound/soc/stm/stm32_adfsdm.c b/sound/soc/stm/stm32_adfsdm.c
index 81c407da15c5..08696a4adb69 100644
--- a/sound/soc/stm/stm32_adfsdm.c
+++ b/sound/soc/stm/stm32_adfsdm.c
@@ -153,13 +153,13 @@ static const struct snd_soc_component_driver stm32_adfsdm_dai_component = {
 	.name = "stm32_dfsdm_audio",
 };
 
-static void memcpy_32to16(void *dest, const void *src, size_t n)
+static void stm32_memcpy_32to16(void *dest, const void *src, size_t n)
 {
 	unsigned int i = 0;
 	u16 *d = (u16 *)dest, *s = (u16 *)src;
 
 	s++;
-	for (i = n; i > 0; i--) {
+	for (i = n >> 1; i > 0; i--) {
 		*d++ = *s++;
 		s++;
 	}
@@ -186,8 +186,8 @@ static int stm32_afsdm_pcm_cb(const void *data, size_t size, void *private)
 
 	if ((priv->pos + src_size) > buff_size) {
 		if (format == SNDRV_PCM_FORMAT_S16_LE)
-			memcpy_32to16(&pcm_buff[priv->pos], src_buff,
-				      buff_size - priv->pos);
+			stm32_memcpy_32to16(&pcm_buff[priv->pos], src_buff,
+					    buff_size - priv->pos);
 		else
 			memcpy(&pcm_buff[priv->pos], src_buff,
 			       buff_size - priv->pos);
@@ -196,8 +196,8 @@ static int stm32_afsdm_pcm_cb(const void *data, size_t size, void *private)
 	}
 
 	if (format == SNDRV_PCM_FORMAT_S16_LE)
-		memcpy_32to16(&pcm_buff[priv->pos],
-			      &src_buff[src_size - cur_size], cur_size);
+		stm32_memcpy_32to16(&pcm_buff[priv->pos],
+				    &src_buff[src_size - cur_size], cur_size);
 	else
 		memcpy(&pcm_buff[priv->pos], &src_buff[src_size - cur_size],
 		       cur_size);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
