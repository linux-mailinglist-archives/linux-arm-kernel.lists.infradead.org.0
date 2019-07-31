Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 057EF7CED1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KncmaTmVc1Vv5CdwsIq9bZrsCt+F79xZxulusOrJNp8=; b=DNx
	XWQWVkKcI02mEic8en/WLhd/gwXhm8zo33MlUrph+icjzoEkjMzASUE7plYM0HgNtHfZiuYZMuvB3
	Ethw2Q5q6Gyk8tZ6mt7UMx8QchXf7wtD/NzlRu3iKyubmSsOHqWriQmHgCuGIwOEyC4bnWboe1kqY
	lM47UE1MZke3ryJpBEAkSzYJJRY24YhRC1SXJPMlmLUz3jFVkxYlTR3YMptg/Nbs0Y1mcS/6cwr1H
	D5iU/E0U+JITOO4qRxM4g34A4XqAYKQOJ2NJsqgM4BTmcyVP2AN2MipTZifVoIFyeAEhrDxF4eOsE
	9kNsBLxIo2jB0sf1nBgjd6R+nvBEKhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvNF-0001iq-K3; Wed, 31 Jul 2019 20:39:01 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvMv-0001Ud-Q0
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:38:43 +0000
Received: by mail-vs1-xe43.google.com with SMTP id h28so47218302vsl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=L4Tl5485GNCbBNzPALyO9jFAKxSVUDo2VTt4y0HMbAc=;
 b=ofZWWtS5ZWqQtpc9yer1nhq6viqjcYncIAGy4woJNgEe24OrmcTyAuaPYbJud1ZPxS
 d8NxLYzD0QA/XYfFmCJ5vzqkytrW9aCNOZpa0YxpDMyG6HQvHi6W7s3tWQB3YgHd2ayz
 TRa1ga5Ghsnm7qCRWcXY9mXYD3b/NnkpGhgoKIc8UTiTy6tHKNAcpUdepziwSrv7yZJa
 EqAIbxsyZBOJhRkxvvRJI+OwkWzOYuvpQ9ZwRxE3WSuLxrHTSDZXDLu3TOeSFqbaGWYw
 c2wkGNBWMOYw8WiiboqENEhtuNH4/4u1g9oDjnDnhBUKgJUbq3j48HWJLXHf5KebtJ3y
 QL0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=L4Tl5485GNCbBNzPALyO9jFAKxSVUDo2VTt4y0HMbAc=;
 b=YxSSD18BPZvGQRy7gV6JOPXvqJP6TaY9Qh389Ff3riMnfzyvBAhNIC5UqMfFW085Xx
 MAnF/u9Pl1UJZDB7udkhkKf1kuFsRXWz+TTS45EWF9dmTlMipGhGLKKYB5iRgZ2alBZH
 ZkugqD0V+SuPt/eenD3hl8n0zkQANqXE+gsN9mQlrDKG7ivyg19TDHCEaklDkn6P/ozi
 EAOXgFIz++8TaWIdUzNR+NGRvwlLdL2PL6rJB+sefiitvEGYfTCWmZV71f4WS4IvaA+d
 aW1Y32l45EricrUYBnUzqnwiPs505pOaHeND36i5elj4UQFy9+7E8yPD6Iyk6qNgJGsM
 +9EA==
X-Gm-Message-State: APjAAAX2mxbEd2tcZFf8VngIgXFopL9eGFdRSRjARfcv12ldc8P/EsJR
 +71ystUY7Hv/LBjioO9dtHdZyg==
X-Google-Smtp-Source: APXvYqwtVnkE/nTu9d2ervMPefdplu+skmjsj9M8Fn84HuBzn/RmQ72eprdarhaEmYf1cGiaCI4ygA==
X-Received: by 2002:a67:1281:: with SMTP id 123mr69227162vss.10.1564605520701; 
 Wed, 31 Jul 2019 13:38:40 -0700 (PDT)
Received: from qcai.nay.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id k7sm18697069vkk.48.2019.07.31.13.38.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 13:38:40 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH] arm64/mm: fix variable 'tag' set but not used
Date: Wed, 31 Jul 2019 16:38:18 -0400
Message-Id: <1564605498-17629-1-git-send-email-cai@lca.pw>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_133841_839582_9098AC6A 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andreyknvl@google.com, Qian Cai <cai@lca.pw>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When CONFIG_KASAN_SW_TAGS=n, set_tag() is compiled away. GCC throws a
warning,

mm/kasan/common.c: In function '__kasan_kmalloc':
mm/kasan/common.c:464:5: warning: variable 'tag' set but not used
[-Wunused-but-set-variable]
  u8 tag = 0xff;
     ^~~

Fix it by making __tag_set() a static inline function.

Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/include/asm/memory.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index b7ba75809751..9645b1340afe 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -210,7 +210,11 @@ static inline unsigned long kaslr_offset(void)
 #define __tag_reset(addr)	untagged_addr(addr)
 #define __tag_get(addr)		(__u8)((u64)(addr) >> 56)
 #else
-#define __tag_set(addr, tag)	(addr)
+static inline const void *__tag_set(const void *addr, u8 tag)
+{
+	return addr;
+}
+
 #define __tag_reset(addr)	(addr)
 #define __tag_get(addr)		0
 #endif
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
