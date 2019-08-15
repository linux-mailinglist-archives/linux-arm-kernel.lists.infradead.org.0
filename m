Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4DE8F1D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 19:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=xSe6ydVplK84XvT5Oc+SSIOvhc+LD9eFCTKAyxU/c4g=; b=YD5
	Vi2DpYiauU+r0+cGBzqBDftkYGbsa3laqOfMifbLxYree+jnuGKP8stI7L/vgQzg7RxeKndiVf3qx
	EBAcBKmAsnue6hwghEQpn7nBk0dTP3/yLnA7SEZk2TP+6aAHCNSHp0oAXkJCE8QejAuheeyFzaiHI
	igDPA9tFLfoakZKiSxq1//L4UYxrAFMlb5hR2XbuIry+y4gGbwOW/m/wR37cpyMN+k8gLyqKBtrrO
	/1dR1j9tOLdAHgtyvK+iu0HzPtfb43vLFxa6SXVFSm5+tsifEtax2BaPOz3Y1Xbqrg4WT06wAmcYV
	nnXKowCw4wwQ4c3fA79pQgmQgnExemg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJLv-0007ub-PH; Thu, 15 Aug 2019 17:15:56 +0000
Received: from mail-wr1-f99.google.com ([209.85.221.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJKX-0005sE-2M
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 17:14:40 +0000
Received: by mail-wr1-f99.google.com with SMTP id b16so2848089wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 10:14:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=YPeSnlp85BSgqZ8FUqvf/b5hI6uRVke7m+e+NVbbr4w=;
 b=GhD+lOrw5+tV6+XKHOX8LBY+AQI5zJhSQRCabxqdJKf3CPVKPkJL54FQs2YExDu3gv
 7auAKWVHEmvQLOtkCZMDYRYs8l3mv4xsU80CPT3rDR0Q084s+9Rtu+x/j8aOxtpXFLT6
 ay43ALBNa2i9FrM725u6lCyUL2lYUgJ5yz2Ez77Y/jkZRL3c6xPGvM2b0uGIpdD6Avyk
 hXZ6dv4+kxKg4nyzLNGYfmepTJAT2hWS3/Onb+Xuv27Bl3MVj00mGoXikeceJlKugzD5
 U6wLXZlSyyMpBXLb32jD+6IrZVveRkoybyGCVr84tBsCJjREWYVsnv2PldkqNXnqQ0p6
 6Dpw==
X-Gm-Message-State: APjAAAVzRTxOtTQYTgG40kyz4q8GB8cuu8t8siZk/n4PCVbL7P3nEm4W
 sW8woKdvvqVmTOqeKqdpjVlIjpuPg34Ves6iMj8H/17strWp8vWc1pkyzMjESbWa6A==
X-Google-Smtp-Source: APXvYqwzCFxnd7Tnrw+VcKoRu5IrfLOdJxhmvb9tC1g2WmdJI+J7y+97oDUNU/8wBnVKOLWS0o9WgLgcpwBa
X-Received: by 2002:adf:f5c5:: with SMTP id k5mr6963937wrp.42.1565889267066;
 Thu, 15 Aug 2019 10:14:27 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id o9sm58910wrg.25.2019.08.15.10.14.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 10:14:27 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hyJKU-00052B-Ld; Thu, 15 Aug 2019 17:14:26 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 173082742BC7; Thu, 15 Aug 2019 18:14:26 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Applied "ASoC: mt2701: remove unused variables" to the asoc tree
In-Reply-To: <20190813143811.31456-1-yuehaibing@huawei.com>
X-Patchwork-Hint: ignore
Message-Id: <20190815171426.173082742BC7@ypsilon.sirena.org.uk>
Date: Thu, 15 Aug 2019 18:14:26 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_101429_105333_47AADEFD 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.99 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, perex@perex.c, tiwai@suse.com,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: mt2701: remove unused variables

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.4

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

From a9e792d006edbd33724f2eb858887d3b591d82c5 Mon Sep 17 00:00:00 2001
From: YueHaibing <yuehaibing@huawei.com>
Date: Tue, 13 Aug 2019 22:38:11 +0800
Subject: [PATCH] ASoC: mt2701: remove unused variables

sound/soc/mediatek/mt2701/mt2701-afe-pcm.c:799:38: warning:
 mt2701_afe_o23_mix defined but not used [-Wunused-const-variable=]
sound/soc/mediatek/mt2701/mt2701-afe-pcm.c:803:38: warning:
 mt2701_afe_o24_mix defined but not used [-Wunused-const-variable=]
sound/soc/mediatek/mt2701/mt2701-afe-pcm.c:835:38: warning:
 mt2701_afe_multi_ch_out_i2s4 defined but not used [-Wunused-const-variable=]

They are never used, so can be removed.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Link: https://lore.kernel.org/r/20190813143811.31456-1-yuehaibing@huawei.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/mediatek/mt2701/mt2701-afe-pcm.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/sound/soc/mediatek/mt2701/mt2701-afe-pcm.c b/sound/soc/mediatek/mt2701/mt2701-afe-pcm.c
index 9af76ae315a5..d7f5defa50c2 100644
--- a/sound/soc/mediatek/mt2701/mt2701-afe-pcm.c
+++ b/sound/soc/mediatek/mt2701/mt2701-afe-pcm.c
@@ -796,14 +796,6 @@ static const struct snd_kcontrol_new mt2701_afe_o22_mix[] = {
 	SOC_DAPM_SINGLE_AUTODISABLE("I19 Switch", AFE_CONN22, 19, 1, 0),
 };
 
-static const struct snd_kcontrol_new mt2701_afe_o23_mix[] = {
-	SOC_DAPM_SINGLE_AUTODISABLE("I20 Switch", AFE_CONN23, 20, 1, 0),
-};
-
-static const struct snd_kcontrol_new mt2701_afe_o24_mix[] = {
-	SOC_DAPM_SINGLE_AUTODISABLE("I21 Switch", AFE_CONN24, 21, 1, 0),
-};
-
 static const struct snd_kcontrol_new mt2701_afe_o31_mix[] = {
 	SOC_DAPM_SINGLE_AUTODISABLE("I35 Switch", AFE_CONN41, 9, 1, 0),
 };
@@ -832,11 +824,6 @@ static const struct snd_kcontrol_new mt2701_afe_multi_ch_out_i2s3[] = {
 				    PWR2_TOP_CON, 18, 1, 0),
 };
 
-static const struct snd_kcontrol_new mt2701_afe_multi_ch_out_i2s4[] = {
-	SOC_DAPM_SINGLE_AUTODISABLE("Multich I2S4 Out Switch",
-				    PWR2_TOP_CON, 19, 1, 0),
-};
-
 static const struct snd_soc_dapm_widget mt2701_afe_pcm_widgets[] = {
 	/* inter-connections */
 	SND_SOC_DAPM_MIXER("I00", SND_SOC_NOPM, 0, 0, NULL, 0),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
