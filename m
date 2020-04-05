Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E6519EC66
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 17:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=71YT1kly86tsCElo7jVYcUkxWgwfqOGFw5rIZ6oz+BE=; b=LyR
	FN+rL7gLRLOLBmRRiJ3kPKPXqSFrQp6UM3HhbaXVyabMWZBZDKReZpLVXn/QyHKsl47zGEJmHjJNn
	RXy16hePOrREJHS9Mr6gd0JPw/X/X8UpfsPAUroHXsYGjeNeG9qucopxtuPzBnRIirZ8ww2b2B+vG
	L8agxXWKscFr4CZJvcWNmn8yShYdbTFdaTzeezGA3QeTExZEwFJ7jRVLys4D+ndv+0WxGkYBz/enC
	2XGYULNiFgJDcc5CilgqnzTfkTFf2PPAxreKkUYx/apAT8NBrDxWuUIEfnZKj6GAouHM8FMEP3MS/
	N/dDznbb+cS4kGFJcEoMIhjk7rQ/dyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL7Q8-0002aY-99; Sun, 05 Apr 2020 15:42:48 +0000
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL7Q1-0002Yn-CU
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 15:42:43 +0000
X-IronPort-AV: E=Sophos;i="5.72,348,1580770800"; d="scan'208";a="443899687"
Received: from palace.rsr.lip6.fr (HELO palace.lip6.fr) ([132.227.105.202])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/AES256-SHA256;
 05 Apr 2020 17:42:31 +0200
From: Julia Lawall <Julia.Lawall@inria.fr>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: [PATCH] ASoC: stm32: sai: Add missing cleanup
Date: Sun,  5 Apr 2020 17:03:48 +0200
Message-Id: <1586099028-5104-1-git-send-email-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_084241_717263_FD0DB4FF 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, kernel-janitors@vger.kernel.org,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit 0d6defc7e0e4 ("ASoC: stm32: sai: manage rebind issue")
converts some function calls to their non-devm equivalents.  The
appropriate cleanup code was added to the remove function, but not
to the probe function.  Add a call to snd_dmaengine_pcm_unregister
to compensate for the call to snd_dmaengine_pcm_register in case
of subsequent failure.

Fixes: commit 0d6defc7e0e4 ("ASoC: stm32: sai: manage rebind issue")
Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

---

Not tested.

 sound/soc/stm/stm32_sai_sub.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/sound/soc/stm/stm32_sai_sub.c b/sound/soc/stm/stm32_sai_sub.c
index 2bd280c..0d0c9af 100644
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


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
