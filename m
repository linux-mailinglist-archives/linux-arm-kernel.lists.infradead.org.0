Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B0F19F780
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=JpbyECVFbOM7u4Orrg752ywXVsfc59M9PZjinpQouzg=; b=MWF
	VllqWIz6vMWTtHvSf4kFcfjAx7+J3xgKZg7wQjRVBFzKdv7Rkhh2VuNvDQPxYZMMAxu7UD2dgWBSW
	AuwdkZ9xDrwMmYnu1sbgvgjQRM5aLrxXHbW0xQJcsiz2HV+y9GIWWzkQkR19ptbKrFI+8ecIxwtYZ
	nAiA8WVxIhmg7X7YqizOIE+MFuBw3Ijd/eDElzj+PLQRAum/qXgoH6AgPm2KJMLyPTBgbeUKIrWjy
	6N8L1NBVQgq3g8NSg/uQM8hLEQvDR92Ot5qSBXRMs86jg7tgBL/6BHZ35mULUTJI7jk19HFpaJZvw
	hjBCMVI6jd0kntUOcaYTsDt8QVQXbrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLSM0-0006PL-RD; Mon, 06 Apr 2020 14:03:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLSLu-0006OX-CH
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:03:51 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F061C23433;
 Mon,  6 Apr 2020 14:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586181829;
 bh=UbkFYXsatuzQbUdxGVDQAxnHxupZla2aqzUmbNgnnGI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=F8Wsfrq0K11uyIa+GRybKbyBxjyoiQ72PIhjJXXAD60jFxbbOrC4Q4w3iv3l/BCOg
 lJlT3GYD87feNnOAUIEaPoSpOJQBWeGU4GmwpJPLNmpRQZAqKLlBlFIku2Bnqr6+Je
 TKQsB7z6IBrmoerd2HKKbinAfmIEktdHGKNMqioo=
Date: Mon, 06 Apr 2020 15:03:46 +0100
From: Mark Brown <broonie@kernel.org>
To: Julia Lawall <Julia.Lawall@inria.fr>
Subject: Applied "ASoC: stm32: sai: Add missing cleanup" to the asoc tree
In-Reply-To: <1586099028-5104-1-git-send-email-Julia.Lawall@inria.fr>
Message-Id: <applied-1586099028-5104-1-git-send-email-Julia.Lawall@inria.fr>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_070350_439070_8DDF3C5A 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org, Olivier Moysan <olivier.moysan@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Takashi Iwai <tiwai@suse.com>,
 kernel-janitors@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: stm32: sai: Add missing cleanup

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git 

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

From 7506baeed8d05fc164254c64af14cfed2ac14446 Mon Sep 17 00:00:00 2001
From: Julia Lawall <Julia.Lawall@inria.fr>
Date: Sun, 5 Apr 2020 17:03:48 +0200
Subject: [PATCH] ASoC: stm32: sai: Add missing cleanup

The commit 0d6defc7e0e4 ("ASoC: stm32: sai: manage rebind issue")
converts some function calls to their non-devm equivalents.  The
appropriate cleanup code was added to the remove function, but not
to the probe function.  Add a call to snd_dmaengine_pcm_unregister
to compensate for the call to snd_dmaengine_pcm_register in case
of subsequent failure.

Fixes: commit 0d6defc7e0e4 ("ASoC: stm32: sai: manage rebind issue")
Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

Acked-by: Olivier Moysan <olivier.moysan@st.com>
Link: https://lore.kernel.org/r/1586099028-5104-1-git-send-email-Julia.Lawall@inria.fr
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/stm/stm32_sai_sub.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/sound/soc/stm/stm32_sai_sub.c b/sound/soc/stm/stm32_sai_sub.c
index 2bd280c01c33..0d0c9afd8791 100644
--- a/sound/soc/stm/stm32_sai_sub.c
+++ b/sound/soc/stm/stm32_sai_sub.c
@@ -1556,8 +1556,10 @@ static int stm32_sai_sub_probe(struct platform_device *pdev)
 
 	ret = snd_soc_register_component(&pdev->dev, &stm32_component,
 					 &sai->cpu_dai_drv, 1);
-	if (ret)
+	if (ret) {
+		snd_dmaengine_pcm_unregister(&pdev->dev);
 		return ret;
+	}
 
 	if (STM_SAI_PROTOCOL_IS_SPDIF(sai))
 		conf = &stm32_sai_pcm_config_spdif;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
