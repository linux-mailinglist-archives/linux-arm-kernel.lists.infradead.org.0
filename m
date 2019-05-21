Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFAB257BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 20:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNmSPxHY8zeUcna2z4SBilbWO0OWYI9Nx8HCIZAUm0g=; b=iilRYC7FJAVeW0
	8c6P0bhPZqJLa9HfGrQTINjv7h7BPRJIzBnoUAyVErxV0nMjS+VV/vN2LXtlY0hVzK0OKmqnTc6O8
	NSaekWVvXKFY0yugKogmX26b5Z4fcdNlQVtdHBFbPg5U+ob92hzp8FTSrXPQVdFdx7kIwyj5HgvyC
	jkPH5lNsvh30UYtgkgI2MPjE+RnNiaBTX9NnzMmwdUGEGJFC15s3XuvwLqagt55VVysPy+B/CdbW4
	gmy4gy5azZMvfupVvzQcKQzwAsXFdXx+l71ZXbH8jhcVJvTb6heaRyhCt6qLkwkDFUKFgpqmG/WML
	kubPhYq8wEYgfHQ4kGTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT9mZ-000849-4m; Tue, 21 May 2019 18:46:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT9mS-00083k-83
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 18:46:33 +0000
Received: from ebiggers-linuxstation.mtv.corp.google.com (unknown
 [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91473217D9;
 Tue, 21 May 2019 18:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558464391;
 bh=c2/Vk86BeZ4DWmvggGGHr/xonfHRq7UPwimX1ebxIYY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KiftFtsOit+ddvqoHrePibxUCR0KdVwQmlajT/K2EZ9wyF09RqWbVCyYqDpd+f7nB
 m5I7W7pCfaTBJhsVY6C0Ll1sDiZ8I9TKFlLLPD9jcf52ALvU1yZQfoqjRdanC/t1vg
 Vb+NUES5/Ua+pI8n8KZ1OlzIpvVus9zWvn5zd38Y=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-crypto@vger.kernel.org,
	Herbert Xu <herbert@gondor.apana.org.au>
Subject: [PATCH] crypto: jitterentropy - change back to module_init()
Date: Tue, 21 May 2019 11:46:22 -0700
Message-Id: <20190521184622.37202-1-ebiggers@kernel.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190521183417.GA121164@gmail.com>
References: <20190521183417.GA121164@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_114632_302956_2A80D622 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eric Biggers <ebiggers@google.com>

"jitterentropy_rng" doesn't have any other implementations, nor is it
tested by the crypto self-tests.  So it was unnecessary to change it to
subsys_initcall.  Also it depends on the main clocksource being
initialized, which may happen after subsys_initcall, causing this error:

    jitterentropy: Initialization failed with host not compliant with requirements: 2

Change it back to module_init().

Fixes: c4741b230597 ("crypto: run initcalls for generic implementations earlier")
Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 crypto/jitterentropy-kcapi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/jitterentropy-kcapi.c b/crypto/jitterentropy-kcapi.c
index 6ea1a270b8dc2..787dccca37159 100644
--- a/crypto/jitterentropy-kcapi.c
+++ b/crypto/jitterentropy-kcapi.c
@@ -198,7 +198,7 @@ static void __exit jent_mod_exit(void)
 	crypto_unregister_rng(&jent_alg);
 }
 
-subsys_initcall(jent_mod_init);
+module_init(jent_mod_init);
 module_exit(jent_mod_exit);
 
 MODULE_LICENSE("Dual BSD/GPL");
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
