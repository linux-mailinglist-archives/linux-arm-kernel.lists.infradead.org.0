Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 167181BFACC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Eo2DaC5lmSUgPEKlli2mBrwhuDdANmcSTszQDbgHrg=; b=WqJH2PL4kl4Rmq
	JkxZeIrOKRZBfE2p6TTYDm9bfx0sMIbKV/jtctVfyy6qphaWXW7fUuj9aBLU/EjTrHQ8R61O+zoHp
	brDQtCGNRAgh8llW1rxPHtbBHNsk3SO+d6EbyhrJu9mzm7d8+99E13k44Hh2fq4zex/gFzdtAlAZq
	HzT5gtitIULDc7T6cis3JVrmxVhv6DJrSoNrm0+Wec/l+sAsDWbvBmfBYcsBSQuT7T3DdgvJBml0y
	WMC2b0+Np4TBdYC6Ds0tYF6Jg1TqQ+YVFafkVFa6Q41UyCM2nU1q5os+CKZldaTI9rCGP/ZshaiXH
	waU+t0sbyg6w94/s8Kig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9fd-0006YH-Vk; Thu, 30 Apr 2020 13:56:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9cL-0001Tm-QG
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:52:48 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 484EC208D6;
 Thu, 30 Apr 2020 13:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588254765;
 bh=yVDzDf7BPjN8V3Q1sj6RasbrxByVjWam1uXEnqFNqCI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YSMFJE9OiX3uoaACvAsghtvRXNeshOFE856YUdaLMBtM+opDBhu3E2HPefVXnILN2
 j2kmmYw0Kjg+lgacxxXoDGNl0vauE33NgpDQ2T9FTjegxEILXOvIrPFtqdFDFimnmo
 ky3sZoKvPckTAyutniKwxh24nuMwS9HL3lgaN3Ho=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 23/57] ASoC: stm32: sai: fix sai probe
Date: Thu, 30 Apr 2020 09:51:44 -0400
Message-Id: <20200430135218.20372-23-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200430135218.20372-1-sashal@kernel.org>
References: <20200430135218.20372-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_065245_938584_F66A0F5F 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, alsa-devel@alsa-project.org,
 Mark Brown <broonie@kernel.org>, Olivier Moysan <olivier.moysan@st.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Olivier Moysan <olivier.moysan@st.com>

[ Upstream commit e2bcb65782f91390952e849e21b82ed7cb05697f ]

pcm config must be set before snd_dmaengine_pcm_register() call.

Fixes: 0d6defc7e0e4 ("ASoC: stm32: sai: manage rebind issue")

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Link: https://lore.kernel.org/r/20200417142122.10212-1-olivier.moysan@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/soc/stm/stm32_sai_sub.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/sound/soc/stm/stm32_sai_sub.c b/sound/soc/stm/stm32_sai_sub.c
index d3259de43712b..7e965848796c3 100644
--- a/sound/soc/stm/stm32_sai_sub.c
+++ b/sound/soc/stm/stm32_sai_sub.c
@@ -1543,6 +1543,9 @@ static int stm32_sai_sub_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	if (STM_SAI_PROTOCOL_IS_SPDIF(sai))
+		conf = &stm32_sai_pcm_config_spdif;
+
 	ret = snd_dmaengine_pcm_register(&pdev->dev, conf, 0);
 	if (ret) {
 		dev_err(&pdev->dev, "Could not register pcm dma\n");
@@ -1551,15 +1554,10 @@ static int stm32_sai_sub_probe(struct platform_device *pdev)
 
 	ret = snd_soc_register_component(&pdev->dev, &stm32_component,
 					 &sai->cpu_dai_drv, 1);
-	if (ret) {
+	if (ret)
 		snd_dmaengine_pcm_unregister(&pdev->dev);
-		return ret;
-	}
-
-	if (STM_SAI_PROTOCOL_IS_SPDIF(sai))
-		conf = &stm32_sai_pcm_config_spdif;
 
-	return 0;
+	return ret;
 }
 
 static int stm32_sai_sub_remove(struct platform_device *pdev)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
