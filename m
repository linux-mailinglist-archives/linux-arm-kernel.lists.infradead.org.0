Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CE8E194C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 13:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UhbnPm08cCqo+9rWKUaseM17H5JpRtX4ahxKvU9vYMY=; b=AJKIXbZ31EVczv
	rWmEH+89i52kuQdUSZV9/Kz8bAYXeDSMtLV7uP+Z6WPHCnzTfVpC7V3efMDkQZPKz8LkP2EfjnTJY
	Jg9SBSKLhcnWWsl6WDMf7RyFdvvCR+B6gj+iJzGMAW1fbZi0NnlzxCmvzD7e9jhOT0j7QI2xXeUqI
	zj711+4nduqAyam7cMrCNpJPawrLvOzJST53Aj0LOmpcbhEiOWnL5ZE1vPjJqJCz50KAlr0szKOYX
	ISiFhx+g924hlAfaAISezh+6RF8pNb7XUJeEI3Yql1+/BWINqDdMgc6fBBxM3M1m8Ghy+mrYVeAQF
	z1RE12gduXbErq9ag/1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNF89-00031a-CO; Wed, 23 Oct 2019 11:48:45 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNF7y-000314-A6; Wed, 23 Oct 2019 11:48:35 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iNF7o-000451-Tl; Wed, 23 Oct 2019 11:48:24 +0000
From: Colin King <colin.king@canonical.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Vic Wu <vic.wu@mediatek.com>,
 Ryder Lee <ryder.lee@mediatek.com>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: [PATCH] crypto: mediatek: remove redundant bitwise-or
Date: Wed, 23 Oct 2019 12:48:24 +0100
Message-Id: <20191023114824.30509-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_044834_484127_D48762DB 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

Bitwise-or'ing 0xffffffff with the u32 variable ctr is the same result
as assigning the value to ctr.  Remove the redundant bitwise-or and
just use an assignment.

Addresses-Coverity: ("Suspicious &= or |= constant expression")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/crypto/mediatek/mtk-aes.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/mediatek/mtk-aes.c b/drivers/crypto/mediatek/mtk-aes.c
index 90c9644fb8a8..d43410259113 100644
--- a/drivers/crypto/mediatek/mtk-aes.c
+++ b/drivers/crypto/mediatek/mtk-aes.c
@@ -591,7 +591,7 @@ static int mtk_aes_ctr_transfer(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
 	start = ctr;
 	end = start + blocks - 1;
 	if (end < start) {
-		ctr |= 0xffffffff;
+		ctr = 0xffffffff;
 		datalen = AES_BLOCK_SIZE * -start;
 		fragmented = true;
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
