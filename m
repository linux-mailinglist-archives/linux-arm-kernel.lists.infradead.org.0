Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FE17D12E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 00:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NL4DtWqIKPmvO+zb7auVHVKCyEePlIbpWNlWXqYkOGY=; b=HIdEs+E3KAnWsM
	xgEmLUZx9q0qNYjZ29RPvVH5XFy5rCsV1YS0BRiXlxwLl7kGtu/N8d1PBVg9hUC5Yuf/blwKt2KlF
	Cb3HMECIzW5j3U7e3WEGlTWX8Th97LdIWoX3z3qy+67w26vzQasHLU+yx+OTs7oPi8bGlvCGAtjUq
	YqK3B4OCl5QE5XEB3NyrFnUodHdy6/nG7QaESoqTYNj2txAH1gSq/Dkko8nnoDWHQFB6yr38eYpSr
	73NHLjmMAP3ALfdaEqB9sbRzNxgbgmbcN63tFKO2kDEoOskqlHU4ZFmkeQMOX9TFml2wBeYdiWCzj
	VOaMQHSS1T+pjjf1Qjtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsx9U-0008Iw-MN; Wed, 31 Jul 2019 22:32:56 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsx9G-00089b-RS
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 22:32:44 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hsx98-0008H1-UL; Wed, 31 Jul 2019 22:32:35 +0000
From: Colin King <colin.king@canonical.com>
To: Jun Nie <jun.nie@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org
Subject: [PATCH] ASoC: zx-tdm: remove redundant assignment to ts_width on
 error return path
Date: Wed, 31 Jul 2019 23:32:34 +0100
Message-Id: <20190731223234.16153-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_153243_040933_75C75FEC 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

The value assigned to ts_width is never read on the error return path
so the assignment is redundant and can be removed.  Remove it.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 sound/soc/zte/zx-tdm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/zte/zx-tdm.c b/sound/soc/zte/zx-tdm.c
index 5e877fe9ba7b..0e5a05b25a77 100644
--- a/sound/soc/zte/zx-tdm.c
+++ b/sound/soc/zte/zx-tdm.c
@@ -211,7 +211,6 @@ static int zx_tdm_hw_params(struct snd_pcm_substream *substream,
 		ts_width = 1;
 		break;
 	default:
-		ts_width = 0;
 		dev_err(socdai->dev, "Unknown data format\n");
 		return -EINVAL;
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
