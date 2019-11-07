Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DCAF395F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 21:17:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wQ2Ov79zYtsovQwbRIhurII8DEPiL6in6DB0mT/wbBE=; b=pDmaD5h+b+qMnO
	5DBNRiVrdRpxl2u80ohbp7p7QkbIyEfufTIZDhA+2DZgbPQsj0bXS+SjdmroUZr+WMGBfig2vcgOw
	Dxgy7gQv+/vzSHAOseiMUaHztHLWun/Zv1+TqFCEescwSPbDQFhGJjLy2KFQmOKoW4f46900VLZ0B
	/4pEozDLHTDGcqbntamfyGzRuCslXQpfDrOW1g+T35u8dao4LBMb+4c4U1h1eQAqO8VP7ECn3xQ50
	KQH8qkKhnnQvNrg0RhHQuh9Y9gAf4XDOKp1AlR8pphfYdMKU87VIHHS2iad4RfE32ai/tpMCiuI1Z
	W92i1i2l5RbHdP/6nWrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSoDZ-0006Ah-5R; Thu, 07 Nov 2019 20:17:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSoDL-00069W-UE
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 20:17:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id f2so4496926wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 12:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8Eh1A+XBqcPZEFBnh+HgUCyw+82+aoc7YA8bWZyx/XU=;
 b=HdbGDG/bD9rfLuXChKqfIL0GLBdwAQkoeEUR08XO5vmvDP4d9n5jwJzBtM5nafVUXy
 IbxdQZMZkDC143pI38WUWa9gkoPM4Ct8HTsfcpCvJyXbPWy6b1amMm4RNAayLLmuWkCF
 ot/OuCxCp8MppEtlxsnDIRm0zBzr2Y3olP1hj3Cfuhfe83eyDO1jtOrMhJgItBHinr5L
 NNo8Jeg3Xsvw+g9kiTxfMp/D1kolWj04wOkYmWlZHv4bo6wUkwhs7rp1K3ce/3oKRlrN
 cSVTDjamow1Jbjv7k3iY237zJd4PIhhBdAypb7a7ki5+2AsUX8w0g22P+oMjeBuyTZyv
 65xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8Eh1A+XBqcPZEFBnh+HgUCyw+82+aoc7YA8bWZyx/XU=;
 b=NBxZAGlNLmdPVq5ye1Kpc+HtwOXDKZm20/jXW048HoQJ5ON2NQxQJWWKxnB2GIU2rW
 8MHN+vde3AwrRNODQWfqopuXVlMnJ08bWFzrgs/mG3uFUY8q3oLMic/zdDugkZocYOAQ
 B1pferqnzPsCjkR5+V/PKt6H07CUI0uQiVX8Y1rAdMbbZmptwI25EYPW2V/v40slPUuk
 DWLLa0Dkw09i5SF92Kbjn2VDW6LBYrUMniDz1l3IxyVQobNPVwsGfVp18+tCUgU7N8un
 oD26iPBIyGzWjqe2qB/uxw4rW5Ejms5FBoXYSD+vpJH7R4FHoCw/XJRYIhv0PRFG+lEB
 n6gA==
X-Gm-Message-State: APjAAAX6HtuOxIj8gvbNebNU78n0AzcFwfD3B13nxIpAzEoW/gxknLDe
 zdOHaw/BKjYWA9u+RybijpxnWg==
X-Google-Smtp-Source: APXvYqxskYQg9q985hoq9WCm5QC668oyfjuHraw4eT/RktdibeQ6Rb2kp4vLE3njmdl9xUCiiFZ/Nw==
X-Received: by 2002:a5d:5262:: with SMTP id l2mr4768386wrc.113.1573157826508; 
 Thu, 07 Nov 2019 12:17:06 -0800 (PST)
Received: from localhost.localdomain ([95.147.198.88])
 by smtp.gmail.com with ESMTPSA id d11sm3215162wrn.28.2019.11.07.12.17.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 12:17:05 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@google.com
Subject: [PATCH 01/10] ASoC: max98090: remove 24-bit format support if RJ is 0
Date: Thu,  7 Nov 2019 20:16:53 +0000
Message-Id: <20191107201702.27023-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_121708_109123_F6BFC986 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, linux-kernel@vger.kernel.org,
 Yu-Hsuan Hsu <yuhsuan@chromium.org>, Mark Brown <broonie@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yu-Hsuan Hsu <yuhsuan@chromium.org>

[ Upstream commit 5628c8979642a076f91ee86c3bae5ad251639af0 ]

The supported formats are S16_LE and S24_LE now. However, by datasheet
of max98090, S24_LE is only supported when it is in the right justified
mode. We should remove 24-bit format if it is not in that mode to avoid
triggering error.

Signed-off-by: Yu-Hsuan Hsu <yuhsuan@chromium.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Change-Id: I68110cd295e9cd1c692bbd3cc3fbc247d92759a0
---
 sound/soc/codecs/max98090.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/sound/soc/codecs/max98090.c b/sound/soc/codecs/max98090.c
index 607f68597c21..25565f364af8 100644
--- a/sound/soc/codecs/max98090.c
+++ b/sound/soc/codecs/max98090.c
@@ -1847,6 +1847,21 @@ static const int dmic_comp[6][6] = {
 	{7, 8, 3, 3, 3, 3}
 };
 
+static int max98090_dai_startup(struct snd_pcm_substream *substream,
+				struct snd_soc_dai *dai)
+{
+	struct snd_soc_component *component = dai->component;
+	struct max98090_priv *max98090 = snd_soc_component_get_drvdata(component);
+	unsigned int fmt = max98090->dai_fmt;
+
+	/* Remove 24-bit format support if it is not in right justified mode. */
+	if ((fmt & SND_SOC_DAIFMT_FORMAT_MASK) != SND_SOC_DAIFMT_RIGHT_J) {
+		substream->runtime->hw.formats = SNDRV_PCM_FMTBIT_S16_LE;
+		snd_pcm_hw_constraint_msbits(substream->runtime, 0, 16, 16);
+	}
+	return 0;
+}
+
 static int max98090_dai_hw_params(struct snd_pcm_substream *substream,
 				   struct snd_pcm_hw_params *params,
 				   struct snd_soc_dai *dai)
@@ -2274,6 +2289,7 @@ EXPORT_SYMBOL_GPL(max98090_mic_detect);
 #define MAX98090_FORMATS (SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S24_LE)
 
 static struct snd_soc_dai_ops max98090_dai_ops = {
+	.startup = max98090_dai_startup,
 	.set_sysclk = max98090_dai_set_sysclk,
 	.set_fmt = max98090_dai_set_fmt,
 	.set_tdm_slot = max98090_set_tdm_slot,
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
