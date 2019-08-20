Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237E395F3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 14:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=MMFqJRO27WcV2yClN4mkzExvlbamtswh84+P4ZjAa+Y=; b=K0D
	uZrZcqQgB5yMxbBgRWS2AKMBq2heYMl2MDnQY2vyP+OODe8xWK24kK/gIkoT803EYwPaGczNiscNx
	5tsKI/0hrvQB7G/5b9seErILTeUKd9pZjiXwqasQK5Wa8SHIrjBpQsfa8vEGHoWoqcjUmXFXV6dVg
	H8Ttdr2i2NOuG8ruh+/bV4S3QizZVZkYYaVmArjGmIT4N8hBJ1vsgQSopOGvqMHk6CeB6pT/HcCZE
	H+5B9jmVnfj6pMl+4uSCfma1Qek/ZKzLZpfOcM04DupEPu+Y5WHqmaUt7nFFYp7ceSBD/rFhvV3RZ
	peiglnqn1cyaCy7DS3TphPzuo269yug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i03fR-0006qO-J0; Tue, 20 Aug 2019 12:55:17 +0000
Received: from mail-wr1-f98.google.com ([209.85.221.98])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i03f8-0006q2-Lm
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 12:55:00 +0000
Received: by mail-wr1-f98.google.com with SMTP id j16so12276184wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 05:54:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=OOt4IqCTKjc4kL7SLf/udmDIHzSd6i//mvrhfYwtNus=;
 b=Xol5vtOWtNI+O4RCjgMTaqtz0egPeCAx5M3RQ6pVyws3tsWOnMAOI2qeg95OJl2fje
 IL5hvzepb+clj6JMr3D2+/MF1iYsIflRPJzEd0SJ7S/Ac8aE5V3S9ylMSz1POM8IR9Mj
 l4EKqSWk/nJA4cOK8iNzm/K96gvBp6aakBikaxAjYRyrZY8z9UtWBDJCpWyJdB31jeZX
 HmDQ9TrqCg2NnIBfqwSySaJw/Tlv0trwOEgRv+Sbp0cVAcHH7FXTIVYRi/+0lXxuqL+n
 KbDmcSGuK7QA1zi/Iz6DrM4PKYJU2BYeP2byu3X09tDQiq+LmmIdP07AK9nb+E23lu9i
 YgFA==
X-Gm-Message-State: APjAAAWJ359emCg7W/Q5ar918PNlGUldR+B/jlkGMIxBNdgMlhDmYdLw
 j2AV6OgPrIVAU/v29hw9+yiBrYd1ee62DZzTK7qqWJB8J6mmbK2yQL72GjW2CJEVIg==
X-Google-Smtp-Source: APXvYqzE8OuONFaCn4iaMvy5NR3jibFQ56MCWMLu1F8nQR1KcJNG2lQEbBekp1lfPUIy731ekEybfMDnk8pt
X-Received: by 2002:a5d:4b41:: with SMTP id w1mr8437925wrs.23.1566305695604;
 Tue, 20 Aug 2019 05:54:55 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id c1sm324295wrn.65.2019.08.20.05.54.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 05:54:55 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i03f5-0002Dl-2Y; Tue, 20 Aug 2019 12:54:55 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 23AD32742ABD; Tue, 20 Aug 2019 13:54:54 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Applied "ASoC: uniphier: Fix double reset assersion when
 transitioning to suspend state" to the asoc tree
In-Reply-To: <1566281764-14059-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820125454.23AD32742ABD@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 13:54:54 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_055458_717218_38FBED19 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.98 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: uniphier: Fix double reset assersion when transitioning to suspend state

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.3

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

From c372a35550c8d60f673b20210eea58a06d6d38cb Mon Sep 17 00:00:00 2001
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Date: Tue, 20 Aug 2019 15:16:04 +0900
Subject: [PATCH] ASoC: uniphier: Fix double reset assersion when transitioning
 to suspend state

When transitioning to supend state, uniphier_aio_dai_suspend() is called
and asserts reset lines and disables clocks.

However, if there are two or more DAIs, uniphier_aio_dai_suspend() are
called multiple times, and double reset assersion will cause.

This patch defines the counter that has the number of DAIs at first, and
whenever uniphier_aio_dai_suspend() are called, it decrements the
counter. And only if the counter is zero, it asserts reset lines and
disables clocks.

In the same way, uniphier_aio_dai_resume() are called, it increments the
counter after deasserting reset lines and enabling clocks.

Fixes: 139a34200233 ("ASoC: uniphier: add support for UniPhier AIO CPU DAI driver")
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Link: https://lore.kernel.org/r/1566281764-14059-1-git-send-email-hayashi.kunihiko@socionext.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/uniphier/aio-cpu.c | 31 +++++++++++++++++++++----------
 sound/soc/uniphier/aio.h     |  1 +
 2 files changed, 22 insertions(+), 10 deletions(-)

diff --git a/sound/soc/uniphier/aio-cpu.c b/sound/soc/uniphier/aio-cpu.c
index ee90e6c3937c..2ae582a99b63 100644
--- a/sound/soc/uniphier/aio-cpu.c
+++ b/sound/soc/uniphier/aio-cpu.c
@@ -424,8 +424,11 @@ int uniphier_aio_dai_suspend(struct snd_soc_dai *dai)
 {
 	struct uniphier_aio *aio = uniphier_priv(dai);
 
-	reset_control_assert(aio->chip->rst);
-	clk_disable_unprepare(aio->chip->clk);
+	aio->chip->num_wup_aios--;
+	if (!aio->chip->num_wup_aios) {
+		reset_control_assert(aio->chip->rst);
+		clk_disable_unprepare(aio->chip->clk);
+	}
 
 	return 0;
 }
@@ -439,13 +442,15 @@ int uniphier_aio_dai_resume(struct snd_soc_dai *dai)
 	if (!aio->chip->active)
 		return 0;
 
-	ret = clk_prepare_enable(aio->chip->clk);
-	if (ret)
-		return ret;
+	if (!aio->chip->num_wup_aios) {
+		ret = clk_prepare_enable(aio->chip->clk);
+		if (ret)
+			return ret;
 
-	ret = reset_control_deassert(aio->chip->rst);
-	if (ret)
-		goto err_out_clock;
+		ret = reset_control_deassert(aio->chip->rst);
+		if (ret)
+			goto err_out_clock;
+	}
 
 	aio_iecout_set_enable(aio->chip, true);
 	aio_chip_init(aio->chip);
@@ -458,7 +463,7 @@ int uniphier_aio_dai_resume(struct snd_soc_dai *dai)
 
 		ret = aio_init(sub);
 		if (ret)
-			goto err_out_clock;
+			goto err_out_reset;
 
 		if (!sub->setting)
 			continue;
@@ -466,11 +471,16 @@ int uniphier_aio_dai_resume(struct snd_soc_dai *dai)
 		aio_port_reset(sub);
 		aio_src_reset(sub);
 	}
+	aio->chip->num_wup_aios++;
 
 	return 0;
 
+err_out_reset:
+	if (!aio->chip->num_wup_aios)
+		reset_control_assert(aio->chip->rst);
 err_out_clock:
-	clk_disable_unprepare(aio->chip->clk);
+	if (!aio->chip->num_wup_aios)
+		clk_disable_unprepare(aio->chip->clk);
 
 	return ret;
 }
@@ -619,6 +629,7 @@ int uniphier_aio_probe(struct platform_device *pdev)
 		return PTR_ERR(chip->rst);
 
 	chip->num_aios = chip->chip_spec->num_dais;
+	chip->num_wup_aios = chip->num_aios;
 	chip->aios = devm_kcalloc(dev,
 				  chip->num_aios, sizeof(struct uniphier_aio),
 				  GFP_KERNEL);
diff --git a/sound/soc/uniphier/aio.h b/sound/soc/uniphier/aio.h
index ca6ccbae0ee8..a7ff7e556429 100644
--- a/sound/soc/uniphier/aio.h
+++ b/sound/soc/uniphier/aio.h
@@ -285,6 +285,7 @@ struct uniphier_aio_chip {
 
 	struct uniphier_aio *aios;
 	int num_aios;
+	int num_wup_aios;
 	struct uniphier_aio_pll *plls;
 	int num_plls;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
