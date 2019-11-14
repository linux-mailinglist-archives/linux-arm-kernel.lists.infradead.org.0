Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB34FC4DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 11:58:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+WIABukdIpdMcwCfqmFGrFoZmN/DQ6XUUI0cXspcMrw=; b=rF81KFAR0ypIVG
	SaWa0AWd93Ob3j8m2qnZ3NGNyrxx2aL3SACxaTHQWF78CqBsyxHPCFj8KRBCicZCIC0RL+pbGt29G
	7IqipAWUDll314cyb/8vQzw6Y0BLhAVes3p5Cip0Wb6SHZ6dZv+4r+26GID/ElOcIPejAtN/M3M38
	7NllmkcPIYl/dnonrYRqpFYLQUdwKUvyBXKLhBiz+cuKgCKmcOqduF0PdwlTduaRycFKVADV7ASjt
	r/cnAiN5myJjT2RmkZJ0jyjg1lozdV5qdfqZcJe3TLy+GmuiDAvhKTuB2lDNPvQZ/C9Wp3dZM2wJe
	2FGGv7wiNEcukk14MSbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVCpU-00013u-Pd; Thu, 14 Nov 2019 10:58:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCpO-00013R-B6
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 10:58:19 +0000
Received: by mail-wm1-x341.google.com with SMTP id 8so5378978wmo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 02:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lUDQmuDK49ImgwHVLgjE9X4paiR383d/ziyJit2HbDw=;
 b=uqr9FAH6BQ7HESVl57/IfLRJbzZXTLbF2wXTTboVQw0KZFt3nmPkyWuA3rbJ3nFooJ
 GBBn1lAcHoEkVrUl1Px9R87ovisLn98BFe4cHyQ34IWaOOLj5kKONpgT9azV6sqf5AFQ
 4FFwf1CDhdPxctlYTrdjZ/lpnmCyWz1nttXvgJv0E6Eunhni2s9RictuIk9p11tqoQeO
 oEYr7RwlqfStQXgig2bZblBaYoBp1nI+M3fNBihSPD7M41fLR2YhjQgiUsat7wFCW/Bd
 +FMoSMKrO40wztajwS1w9LAz1MXLTL15zc2Wh39+0AXmSNNtIHoWJjFSFaBz4EqHr/5L
 OFlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lUDQmuDK49ImgwHVLgjE9X4paiR383d/ziyJit2HbDw=;
 b=biUsB2TuCr+vMdIgT6lfyJlfQxSkou8pQ5AqCRGDbzO+KnnGGczIygRIvOlVlGslFi
 sSU++xmoWeb2svty5JwM5jvzSnP2pu4OFZ7bR2C5wTM3Ip369beBdwlktolHLukf63nP
 EBRcSSQPjkKxG4RoOHmGSptsqN6OZGDtnGL4EFn33ItAVlHJaBpI6MfQD79YDtoS2f0S
 Us48bCU8z7ocd5fmWQHYfXkdsiQ6cMcl7Di9CFNONYaIuPNUFgWSnOQ/y2o9h+0Opguq
 ZKWiwlxtuWeEo0Cg0Q8G2RxzRzuzzg4pw69lVqCfzuAhUS7H2OOjmEsTytC5OVlAiuoK
 hBTQ==
X-Gm-Message-State: APjAAAW2z3/c/85M3wtSFIkTYScE2i0IIx4dyceJcAzW8xpKRm/BSzER
 1MOZIpI6oQ0Uo4Yowfpspu0=
X-Google-Smtp-Source: APXvYqx2jCcvlo2boZJ1P3rOWROelM+uphB4pp6k229Qk5W3qr+3NetY+PuKuVIistmjIBMc/9ubzg==
X-Received: by 2002:a7b:c24b:: with SMTP id b11mr7571066wmj.125.1573729096886; 
 Thu, 14 Nov 2019 02:58:16 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id b66sm6042770wmh.39.2019.11.14.02.58.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 02:58:16 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH] crypto: sun4i-ss: use crypto_ahash_digestsize
Date: Thu, 14 Nov 2019 11:58:13 +0100
Message-Id: <20191114105813.13171-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_025818_406518_F407E3DA 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The size of the digest is different between MD5 and SHA1 so instead of
using the higher value (5 words), let's use crypto_ahash_digestsize().

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c
index ee518dcdba42..ec5d9ce24bb8 100644
--- a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c
+++ b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c
@@ -227,7 +227,7 @@ static int sun4i_hash(struct ahash_request *areq)
 	 */
 	if (op->byte_count) {
 		ivmode = SS_IV_ARBITRARY;
-		for (i = 0; i < 5; i++)
+		for (i = 0; i < crypto_ahash_digestsize(tfm) / 4; i++)
 			writel(op->hash[i], ss->base + SS_IV0 + i * 4);
 	}
 	/* Enable the device */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
