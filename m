Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29041EE931
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 19:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OPbeK2Grs1mMv29kpk0fACQPqA2xHpMgayZCk6ywkTo=; b=Wz/7UaAFPGGdSu
	6TS0D3sURp79UH0yj8n+sedrf/ytypd6jRm0wxpA5Y7KwN8GwgA3LthcPpn7GRkCmufgTXHZXOaEN
	Tq9KFhAvfdB5ILpi8c6GWE0Ma0zgXtMGb/fdCEDLyk40jJF8gSVy+OHsXx4aqBkg8e6/ZAxWoqcWg
	t9k6/3a1dXJg7k1xORSzr+rQ//xFQPfeSXU/4O+pXyqGQ/10wKPsfWJT3NhfLgkq+W71zJjMuct1d
	gViq+ymDxTB83zZndTSKCPDyXbbtm3K4tAYdCHhjF3jDR+3PWheQLFj25RyD8z5ZmREZmijx05DpU
	u1u17v5VCbVaFtp4fE7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgtPz-00026j-S6; Thu, 04 Jun 2020 17:12:39 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgtPq-00026C-Pc; Thu, 04 Jun 2020 17:12:32 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1jgtPc-0003GT-NF; Thu, 04 Jun 2020 17:12:16 +0000
From: Colin King <colin.king@canonical.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Kevin Hilman <khilman@baylibre.com>,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Subject: [PATCH] ASoC: meson: fix memory leak of links if allocation of ldata
 fails
Date: Thu,  4 Jun 2020 18:12:16 +0100
Message-Id: <20200604171216.60043-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_101230_968427_DB4B54A9 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

Currently if the allocation of ldata fails the error return path
does not kfree the allocated links object.  Fix this by adding
an error exit return path that performs the necessary kfree'ing.

Addresses-Coverity: ("Resource leak")
Fixes: 7864a79f37b5 ("ASoC: meson: add axg sound card support")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 sound/soc/meson/meson-card-utils.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/sound/soc/meson/meson-card-utils.c b/sound/soc/meson/meson-card-utils.c
index 2ca8c98e204f..5a4a91c88734 100644
--- a/sound/soc/meson/meson-card-utils.c
+++ b/sound/soc/meson/meson-card-utils.c
@@ -49,19 +49,26 @@ int meson_card_reallocate_links(struct snd_soc_card *card,
 	links = krealloc(priv->card.dai_link,
 			 num_links * sizeof(*priv->card.dai_link),
 			 GFP_KERNEL | __GFP_ZERO);
+	if (!links)
+		goto err_links;
+
 	ldata = krealloc(priv->link_data,
 			 num_links * sizeof(*priv->link_data),
 			 GFP_KERNEL | __GFP_ZERO);
-
-	if (!links || !ldata) {
-		dev_err(priv->card.dev, "failed to allocate links\n");
-		return -ENOMEM;
-	}
+	if (!ldata)
+		goto err_ldata;
 
 	priv->card.dai_link = links;
 	priv->link_data = ldata;
 	priv->card.num_links = num_links;
 	return 0;
+
+err_ldata:
+	kfree(links);
+err_links:
+	dev_err(priv->card.dev, "failed to allocate links\n");
+	return -ENOMEM;
+
 }
 EXPORT_SYMBOL_GPL(meson_card_reallocate_links);
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
