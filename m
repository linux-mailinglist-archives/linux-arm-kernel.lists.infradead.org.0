Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC79F0086
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 15:59:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b7aPRaLjgRuCp5UaAkNECMKisV8KnPjKjCTlYNreUWU=; b=a4sOzbIzwuJ2F0
	jEz2SNoy437bMABwe1IuaaWxpqN3jW0TmaJpusXSVSgoLMnICfJkJblKedCbcUEe3f2WKZu/BUDXM
	qXEjU5kDkN6hIuVb/Yt43sEq2zLHR9a4/qTV5ufSxQ43XrhL6pX7a48OAxCoW69OXc+t7lAvvi9fJ
	1iq6816VH+FAMIM3jfHudGIjvTyYRuq7TvH46JjQR9CUakueCnS2GZcejx53lrSnMLepFl/xqfo+0
	YLe1UdArA4ITpCWibybjSm2saG6aJzh73sv+M+oLQD1ZnpONeKZQXIZNFblSVicql1JsJWBkjAr+x
	d3VoxXj3wWFMBFP7zidw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0Id-0005Np-Vc; Tue, 05 Nov 2019 14:59:15 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0IJ-0005HI-Rk
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 14:58:58 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iS0I9-0002nP-Av; Tue, 05 Nov 2019 14:58:45 +0000
From: Colin King <colin.king@canonical.com>
To: Corentin Labbe <clabbe.montjoie@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S . Miller" <davem@davemloft.net>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH][next] crypto: allwinner: fix spelling mistake
 "recommandation" -> "recommendation"
Date: Tue,  5 Nov 2019 14:58:45 +0000
Message-Id: <20191105145845.60786-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_065856_046412_11E267A4 
X-CRM114-Status: UNSURE (   9.28  )
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

There are spelling mistakes in dev_warn messages. Fix these.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 2 +-
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
index 8e4eddbcc814..bc7ee265c51f 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
@@ -469,7 +469,7 @@ static int sun8i_ce_get_clks(struct sun8i_ce_dev *ce)
 		}
 		if (ce->variant->ce_clks[i].max_freq > 0 &&
 		    cr > ce->variant->ce_clks[i].max_freq)
-			dev_warn(ce->dev, "Frequency for %s (%lu hz) is higher than datasheet's recommandation (%lu hz)",
+			dev_warn(ce->dev, "Frequency for %s (%lu hz) is higher than datasheet's recommendation (%lu hz)",
 				 ce->variant->ce_clks[i].name, cr,
 				 ce->variant->ce_clks[i].max_freq);
 	}
diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
index e58407ac256b..04b5b90ba965 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
@@ -502,7 +502,7 @@ static int sun8i_ss_get_clks(struct sun8i_ss_dev *ss)
 		}
 		if (ss->variant->ss_clks[i].max_freq > 0 &&
 		    cr > ss->variant->ss_clks[i].max_freq)
-			dev_warn(ss->dev, "Frequency for %s (%lu hz) is higher than datasheet's recommandation (%lu hz)",
+			dev_warn(ss->dev, "Frequency for %s (%lu hz) is higher than datasheet's recommendation (%lu hz)",
 				 ss->variant->ss_clks[i].name, cr,
 				 ss->variant->ss_clks[i].max_freq);
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
