Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D6194E04
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nvg9sMmwFu3sE4lnH6Zt6V1OxGMAT0O3yQPUrboU71U=; b=ccqLMqorqX5Ttq
	5Asz0SSRxjEEyd1lWDmdsu0SO28g+kcFRMXxvR4g4GS5S4TKvywirWlOPQJC/7SrleWQ5snh+nuak
	wBdkYjEK9glx+dtdrO1mGzMyL4xpLsrqJJi30cToo6Om2RZfPmGv8Vd+qpqxox2c9b0mym+vTajCe
	PM8i1iJq9nMfcIS0agryGZIJxzFscBDJDJdRByif4I4ssx3n0Jtt03QT/7E9AOu8y6G9zwWl7ihnM
	5Rq6r8u4PLCrI+3+7s4biqk1mZ+6q1mbWnkHR5ZhSeT/GJUZblNVvpvJDuL/BNnZ7de3otW/dpkH7
	nk4u0EllZbIJbp7IXVlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hznJj-000128-Fw; Mon, 19 Aug 2019 19:27:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hznHf-0008U6-8c
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:25:40 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 19BD2206C1;
 Mon, 19 Aug 2019 19:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566242738;
 bh=KWvMAVh8158Vfot7bGOe/TZP6z7v55KtdLwvGs8+fyY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Rl8cyP+EOopS1H4rho1U/AiNRXHlyHm53mEiFLDzajk2B8TlmRoa1ogWcWL/12kro
 YOby6qvoM/VYXrXOe8an/y9R59mtvrUvlM5y9AfycmsJahHL7kWkYNeZnGmyt/6UW/
 RsWACt/0oxJL+R6W7/DSKGwDFhJKItIy4lgpLFdY=
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH 02/21] ASoC: sun4i-i2s: Switch to devm for PCM register
Date: Mon, 19 Aug 2019 21:25:09 +0200
Message-Id: <606d271187091e858e8c15e20555af0b79798fe1.1566242458.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
References: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_122539_399395_B595602A 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: codekipper@gmail.com, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

Since the introduction of the driver, a new managed helper for the
dmaengine PCM registration has been created. Let's use it to simplify a bit
our probe and remove functions.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 85c3b2c8cd77..1ed7670eae9c 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -1154,7 +1154,7 @@ static int sun4i_i2s_probe(struct platform_device *pdev)
 		goto err_suspend;
 	}
 
-	ret = snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
+	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
 	if (ret) {
 		dev_err(&pdev->dev, "Could not register PCM\n");
 		goto err_suspend;
@@ -1185,8 +1185,6 @@ static int sun4i_i2s_remove(struct platform_device *pdev)
 {
 	struct sun4i_i2s *i2s = dev_get_drvdata(&pdev->dev);
 
-	snd_dmaengine_pcm_unregister(&pdev->dev);
-
 	pm_runtime_disable(&pdev->dev);
 	if (!pm_runtime_status_suspended(&pdev->dev))
 		sun4i_i2s_runtime_suspend(&pdev->dev);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
