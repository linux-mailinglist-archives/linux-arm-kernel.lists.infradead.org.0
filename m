Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE2E181A11
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 14:43:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=goMXJNgmAA2yxQqHCIsBZAVzL+JOeF70VrQDD3CUt+E=; b=gNhXSO8SH7pPvR
	YOKNhOjF7E39Cib17MvFAdTNyVxou319CRegpNssCu28tVmU6pLPMIkdAU7qlkHC+E7IGxrQKJmf4
	QETRjH06Fg+3KeHvqRaXaQXxtxZYyzJ0Z4fkZtTvCW8Wb9gISfygqCBaRDrL46lYOTUblq46EaMV0
	amtJNzQvr+AgtFlWu6a20whEdJN2HT1eefaSTgkD4F9PvvYdkJlJckBoLhUE9oUFg0CtY+RYjeMCD
	QbNJVJ2jCitwF+HDhwwI2w6DpelUhNi8RL4+0Egv7/W6b+lr1i382xJCLBBuIf7fPh+QJtZ+iiwip
	n3PzOS0erILsk68hmu1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC1dt-0002jQ-Be; Wed, 11 Mar 2020 13:43:25 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC1dm-0002j0-2S
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 13:43:19 +0000
X-UUID: e93dc5672ec343799f4acc68d6ee60ab-20200311
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=A72jYG29ZYGID3peLueFYfZ09ab4hxkJOXi8FenC89M=; 
 b=idwf/PwLyaHjJ6WkHCzFSRrOGds9HsrQmOGkGMZxxq6CFiZw/hm7kM7+1lAtuH6+dq8ZTRamOg7hmUjiyLGXV39n2PzKUMw+qvy4jb67Q5amB7tiad1MJy1LsN87/ATiVCovU0dkiRaQrAUq04nZY7pGvyMgqdsqLollN6h5IHw=;
X-UUID: e93dc5672ec343799f4acc68d6ee60ab-20200311
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 689955952; Wed, 11 Mar 2020 05:43:14 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 06:43:12 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 21:42:13 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 11 Mar 2020 21:43:18 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
 <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Qian Cai
 <cai@lca.pw>, Andrew Morton <akpm@linux-foundation.org>, Stephen Rothwell
 <sfr@canb.auug.org.au>
Subject: [PATCH -next] kasan: fix -Wstringop-overflow warning
Date: Wed, 11 Mar 2020 21:42:44 +0800
Message-ID: <20200311134244.13016-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_064318_119808_CE06B1E5 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>,
 wsd_upstream <wsd_upstream@mediatek.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Compiling with gcc-9.2.1 points out below warnings.

In function 'memmove',
    inlined from 'kmalloc_memmove_invalid_size' at lib/test_kasan.c:301:2:
include/linux/string.h:441:9: warning: '__builtin_memmove' specified
bound 18446744073709551614 exceeds maximum object size
9223372036854775807 [-Wstringop-overflow=]

Why generate this warnings?
Because our test function deliberately pass a negative number in memmove(),
so we need to make it "volatile" so that compiler doesn't see it.

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Qian Cai <cai@lca.pw>
Cc: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
---
 lib/test_kasan.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/test_kasan.c b/lib/test_kasan.c
index f123b4b8aadf..e3087d90e00d 100644
--- a/lib/test_kasan.c
+++ b/lib/test_kasan.c
@@ -289,6 +289,7 @@ static noinline void __init kmalloc_memmove_invalid_size(void)
 {
 	char *ptr;
 	size_t size = 64;
+	volatile size_t invalid_size = -2;
 
 	pr_info("invalid size in memmove\n");
 	ptr = kmalloc(size, GFP_KERNEL);
@@ -298,7 +299,7 @@ static noinline void __init kmalloc_memmove_invalid_size(void)
 	}
 
 	memset((char *)ptr, 0, 64);
-	memmove((char *)ptr, (char *)ptr + 4, -2);
+	memmove((char *)ptr, (char *)ptr + 4, invalid_size);
 	kfree(ptr);
 }
 
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
