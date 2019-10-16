Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA93D9445
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbZberGt6+c/8xUIBzxDDfUI9utK2Y4NYQb5b9fTmfU=; b=ZWQGt6TnskPlWj
	lP1dI6+ilPDk+xEDEbqCc2EpHWhwGAhOnQO8b+j8UbGSV0md/ULkTWWvOMTJUS4bRaUKj3z3xTHZM
	bErTIymHNFq+Cei8zg8+MS8dQGM7wWK1TjmfdY/aZiC8nM6LWHAcBKdB0B+E/a2QGM0w31v+coNLA
	wRQwfoaWA3ZXmERMwsJ3e8jGw2VWjz4St58bJy24umnPS+wm+Bq5n1oTlvYdxjemIjzNGZ1XtEGYb
	peXqpLUK/RzET2hd9jll8byAVv//Bt3UC73A987959zNfGABLx1Wk1IEGGuWViIeu4Dd2jfT3K06a
	3YChrbEWPBxz1IU/jGZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkbz-0008DW-Fq; Wed, 16 Oct 2019 14:49:15 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkbr-0008CS-81
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:49:08 +0000
Received: by mail-oi1-x243.google.com with SMTP id k20so20267878oih.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 07:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w1bxrgVA37G+vlASPmtvWKFuCtmhkeFNcRz6WRlmRjU=;
 b=cV/mvzRfHOQQSRtHHeQpRDH7Gm9zRPlfcWS9R5ZhcSzGTi98v3A9AAlhUsyazP7Laz
 5lmdp7D4vUQEi557gGii1CzHcNk+MgGKFrm/cbfY1drUb2PsXsHH1vYEBIfhUBte9h8R
 +9K66Slzy/v6RP1V8mAbkgQ3peCNr+vnwZ52Z6CdCaYh1cL+7DtTrGfiWg0yNmOAH2fe
 3ivwLseXQjkqFqEd99cHdWz/ycBGljWtsgl3pL+TsNn8LYHynVV2lxeDQp+j1qJOqsy8
 QgH3QGjL2dSW+TWsc0lbEwc34KDF8Pm5togWdw8MIEuc4PLQkfJQE1Cc3aNOtIo4JYVx
 4UNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w1bxrgVA37G+vlASPmtvWKFuCtmhkeFNcRz6WRlmRjU=;
 b=SiZpky0+Q/nZAfVoZrTrw6ovuWZfhaG2E01RLdG1QT9HynQ1ET9SOrWe8r0FhFl0qs
 eGGHePsFe+IRm4WVgwt3tR8/MNIIAcO230Jesp9K7+QWNl4FRAYEtXOB9JMFzKZOQNBi
 YYf8JjhfoicVN3NDLWmhplj4I7mPtGXANnbbYVRheC8yLD9eWYosHA/FuzZdeR1ZyMah
 Z+UD8xSV5a8KOFXjdaClW/zki5RIaXl6lhrey7c8Cpd0L6Kj0wbJhos50d55WRJOkQgd
 xWSZmkRsXCOPLBBfHh4DTUqM9vZa2aKyH21KOpt7edDW+if/27+DewZhD7WO7eHavDZO
 +EMw==
X-Gm-Message-State: APjAAAXt2v03f9RajFSdXFG9ecB/B7lxZ8nxFpNQygz6I7ftrLt5dzo0
 UVkk5y51vnpL+2JJ9smWkTA=
X-Google-Smtp-Source: APXvYqyN5zisgMnkVtiqZYBEqq7Y3oEfz/wNwyVWCQzqSRIXm/Hfh5W+j6xi9TCcQ44CZ63kx7p2kg==
X-Received: by 2002:aca:dd07:: with SMTP id u7mr4009174oig.106.1571237346163; 
 Wed, 16 Oct 2019 07:49:06 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id k3sm7281574otn.38.2019.10.16.07.49.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 07:49:05 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH -next v3] arm64: mm: Fix unused variable warning in
 zone_sizes_init
Date: Wed, 16 Oct 2019 07:47:14 -0700
Message-Id: <20191016144713.23792-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016031107.30045-1-natechancellor@gmail.com>
References: <20191016031107.30045-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_074907_286337_08644C75 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building arm64 allnoconfig, CONFIG_ZONE_DMA and CONFIG_ZONE_DMA32
get disabled so there is a warning about max_dma being unused.

../arch/arm64/mm/init.c:215:16: warning: unused variable 'max_dma'
[-Wunused-variable]
        unsigned long max_dma = min;
                      ^
1 warning generated.

Add __maybe_unused to make this clear to the compiler.

Fixes: 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Fix check for CONFIG_ZONE_DMA32 as pointed out by Will.

v2 -> v3:

* Use __maybe_unused attribute instead of preprocessor ifdefs
  to conform to section 21 of the coding style as pointed out by
  Catalin.

 arch/arm64/mm/init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 44f07fdf7a59..71b45c58218b 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -212,7 +212,7 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 	struct memblock_region *reg;
 	unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
 	unsigned long max_dma32 = min;
-	unsigned long max_dma = min;
+	unsigned long __maybe_unused max_dma = min;
 
 	memset(zone_size, 0, sizeof(zone_size));
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
