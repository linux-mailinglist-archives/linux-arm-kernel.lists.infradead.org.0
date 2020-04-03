Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E8719DEDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 21:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2/Jgto9O9ndhG7N2wwh8YqYjQmS2xGxP+i+EAYec+Uw=; b=PCPQnCwJXdCv7ojcivsBzXO6NT
	FHdFt1KaGwqsus5EOuYRb/cOfF6g151A3XVSNIO1nGSKuO7S3m9ytk9eCd91fiFNdKiwzpWeWIe/n
	+2SWwMKPKJMTyUHmSe6f3HuD3EcB2iOlDDbU3DKO3Ps3BlsCtsnIcdG2hRB3su7ZL/vqUppriAPvq
	m1r6SgWRfJIyMbcWJw3VKQSDU304nyNsegrtzEtsRle+l/59rXUYWkJKhjb2sutTpx0hzityFfRKV
	kY6cMfd22uJOg9OWWqEadFV1j5TK9gjznBO3f9n3GG3fIZzn/8TPTm76Ds7+F0jdMstP6UqHbLsC7
	eUPFA07Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKSMy-0008BH-Ea; Fri, 03 Apr 2020 19:52:48 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKSL9-0006Rc-N0
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 19:50:57 +0000
Received: by mail-wm1-x342.google.com with SMTP id a81so8986297wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 12:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DUwfWiW0UJxalwoOZqAt5RYAz8XQErLckHV7vR83OWY=;
 b=pirqFxhtHNPHRAEdKqSTs4Euef6KGq6HZwRdcmT4t4aLwZMfvlhm7hlrjmVzTdRxpl
 eFo9dW0UBEptLeS9GP9lAySK33wFSJBQqw42epc7Nu3ycqFuIMEpb1YyARdOSnQPhxFU
 Wlo2JpiSRrQpWc6DS4QNsKZbC8SCuIPzI3J6tZ87ccf5wHcLzCkFt9hULvgPnqRxQ8By
 9CBmjph2lVCBrzXF3VxhiT+ySEDwV/Jd1cF+YBimg3snUdVsY0DIlvHNBuZTnHMQR4Dz
 atH8ar4NRKj2bagsgPCfxiNbRZNZj65BxFSphFJOj1QNvspMV36m6ij9Z6+ClozPVGGq
 u96g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DUwfWiW0UJxalwoOZqAt5RYAz8XQErLckHV7vR83OWY=;
 b=OM7xURdmw1zlXwfEPyb86JV+ECKRrNyW3NT2csuVGibf1f3JyeBUY19Ien9VwgD4dj
 JHWNt+Y8RtXJONlZpCo2kQE7lJjlmLPQ8xqR8pOxH5E3WZhKCeKczP1cPi8FRaUT5AOd
 VnsboKCfI3D6YXz4qw3GQQjTPgD86gZkhVkyoEieRxWWSrJi3uo3w38+lbzAmYSvfP9h
 Pbi2nZfa9a9hOYyaKl6Na9Svn+5vLRGGd3B6jBikYortzkkiKQKLytDiWfnPhkApquAx
 j9Z+7bT/JoQF8R2B64F7aGbk02sfO1cL3Urp5MzRcpPHaa7UaDDNe+y2M9dUpEQSDnPq
 Tgkg==
X-Gm-Message-State: AGi0PubSHozFS8qHQgKDOP9CrY3nsf5LWuhXPX5SUGN0QcOo8ZxxbB+g
 LY7W6ANQI+hYYBGQm/6YQnTjREaSHUM=
X-Google-Smtp-Source: APiQypKOyL9ads/3hMVSff7qNmS6J5YYs0teENKpVn9t8B1IfnPqaGI7AiHQNnoMwQBYFwAvtKTTvQ==
X-Received: by 2002:a1c:7308:: with SMTP id d8mr10713890wmb.31.1585943454150; 
 Fri, 03 Apr 2020 12:50:54 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id c17sm8102448wrp.28.2020.04.03.12.50.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 03 Apr 2020 12:50:53 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 7/7] crypto: sun8i-ss: better debug printing
Date: Fri,  3 Apr 2020 19:50:38 +0000
Message-Id: <1585943438-862-8-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585943438-862-1-git-send-email-clabbe@baylibre.com>
References: <1585943438-862-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_125055_759762_9B01B4DA 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Corentin Labbe <clabbe@baylibre.com>, linux-sunxi@googlegroups.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch reworks the way debug info are printed.
Instead of printing raw numbers, let's add a bit of context.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
index d7832e2eb39c..cbeaf1962c05 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
@@ -420,19 +420,19 @@ static int sun8i_ss_dbgfs_read(struct seq_file *seq, void *v)
 			continue;
 		switch (ss_algs[i].type) {
 		case CRYPTO_ALG_TYPE_SKCIPHER:
-			seq_printf(seq, "%s %s %lu %lu\n",
+			seq_printf(seq, "%s %s reqs=%lu fallback=%lu\n",
 				   ss_algs[i].alg.skcipher.base.cra_driver_name,
 				   ss_algs[i].alg.skcipher.base.cra_name,
 				   ss_algs[i].stat_req, ss_algs[i].stat_fb);
 			break;
 		case CRYPTO_ALG_TYPE_RNG:
-			seq_printf(seq, "%s %s %lu %lu\n",
+			seq_printf(seq, "%s %s reqs=%lu tsize=%lu\n",
 				   ss_algs[i].alg.rng.base.cra_driver_name,
 				   ss_algs[i].alg.rng.base.cra_name,
 				   ss_algs[i].stat_req, ss_algs[i].stat_bytes);
 			break;
 		case CRYPTO_ALG_TYPE_AHASH:
-			seq_printf(seq, "%s %s %lu %lu\n",
+			seq_printf(seq, "%s %s reqs=%lu fallback=%lu\n",
 				   ss_algs[i].alg.hash.halg.base.cra_driver_name,
 				   ss_algs[i].alg.hash.halg.base.cra_name,
 				   ss_algs[i].stat_req, ss_algs[i].stat_fb);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
