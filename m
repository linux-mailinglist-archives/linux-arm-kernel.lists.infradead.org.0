Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 672C13014E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 19:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xTosnws7tdP47oz+4+lMJIg04HnYJNwSK7EzkRPnOCs=; b=fSMxrTtc9oOD7P
	ZKLFr4GvPUEUhYYEfeGLM5cPoFnJRQZ5oI581EEV/E4K+SfLYprpqJdS31qVm5WSjVhPG8DIRDuEQ
	2LoFv7x0l0tm1RjffH17iECOK+JTd8e6Lv3/hA76p3gH/AV7lAgg/TC2in5Q4RWk85RCvnzgFBAkq
	cqYkxIHHxc19s4aqwbKngwnR0k2VRX5HsWhaNc+ZptOeIoSuldRG3JS6DUzPthY6IBcHggy5Tw9FO
	cKFQopINNlKKiznGghYltqpXX5mN+5L7AmjBs5D2QAtMFc9ZO7Lgd4aYsuGHIz4eHkhPiwTW9KCI/
	fwvyBxmpHZyHefN+FZuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWPFg-00015m-Ko; Thu, 30 May 2019 17:54:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWPFZ-000157-55
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 17:54:02 +0000
Received: from ebiggers-linuxstation.mtv.corp.google.com (unknown
 [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C039F25ECD;
 Thu, 30 May 2019 17:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559238840;
 bh=D/PAsRdmHinV0G8J8RSgg+BLFB1EZv/D0c+yzSUAlhI=;
 h=From:To:Cc:Subject:Date:From;
 b=SmpYdl/4ara6nxE2+chm8yUcFEOCr3bQNqCB9DY6QMKQygP7tdj02728lmpiPZJ0Q
 ol9U5cqM0GTUkOM3wnZyQ0rSy6LEzVQZv3kvI7Rbr0kafSkQ0fOdTBku0adckxgl2h
 IFOIWAGHt/ORavLSFlX76Pnv3G96EtlIxxZUqpzQ=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH] crypto: lrw - use correct alignmask
Date: Thu, 30 May 2019 10:53:08 -0700
Message-Id: <20190530175308.196938-1-ebiggers@kernel.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_105401_206323_87C4B29D 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Ondrej Mosnacek <omosnace@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eric Biggers <ebiggers@google.com>

Commit c778f96bf347 ("crypto: lrw - Optimize tweak computation")
incorrectly reduced the alignmask of LRW instances from
'__alignof__(u64) - 1' to '__alignof__(__be32) - 1'.

However, xor_tweak() and setkey() assume that the data and key,
respectively, are aligned to 'be128', which has u64 alignment.

Fix the alignmask to be at least '__alignof__(be128) - 1'.

Fixes: c778f96bf347 ("crypto: lrw - Optimize tweak computation")
Cc: <stable@vger.kernel.org> # v4.20+
Cc: Ondrej Mosnacek <omosnace@redhat.com>
Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 crypto/lrw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/lrw.c b/crypto/lrw.c
index fa302f3f161e0..b43ea285b8c79 100644
--- a/crypto/lrw.c
+++ b/crypto/lrw.c
@@ -388,7 +388,7 @@ static int create(struct crypto_template *tmpl, struct rtattr **tb)
 	inst->alg.base.cra_priority = alg->base.cra_priority;
 	inst->alg.base.cra_blocksize = LRW_BLOCK_SIZE;
 	inst->alg.base.cra_alignmask = alg->base.cra_alignmask |
-				       (__alignof__(__be32) - 1);
+				       (__alignof__(be128) - 1);
 
 	inst->alg.ivsize = LRW_BLOCK_SIZE;
 	inst->alg.min_keysize = crypto_skcipher_alg_min_keysize(alg) +
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
