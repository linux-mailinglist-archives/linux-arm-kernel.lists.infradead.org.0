Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8F413D454
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 07:27:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++6bFSCm4jzBozW/ebO+tGi8blRxKyibKY1FUoNTzog=; b=l6SPy+aXBltoNc
	UJeqNoNT81cCkSNnImIFxhW26Jez4pB61DzUdUDCQWThwuRB2/6gUeD95qmAGnTjr6Cq2sY3CiDmb
	v4oNNev8NL9lgvKp/0Aoa+JozCtoIf1vMHLXNIULfqbXgdVkmLfHgk4XSzwk89qt+MoH4XPIDJC9G
	VnRt0qpt2uESuakabzObJKYo8pVx1zWJBk4/We1nCgoBjUn9g/8Vtf7NSkifM3wwDJzrHYtlwogvi
	Mc+XKHvW2HgQRECQptufHRK0xoeOB3a0vmtKfMHhNYEK7AqhlvtSr65YmdTmpuWBXiKGNXTkoFAKm
	sPOfflmbkrejtFqPq0Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irycz-00021K-GK; Thu, 16 Jan 2020 06:27:37 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iryc8-0001Nb-I5
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 06:26:48 +0000
Received: by mail-pj1-x1043.google.com with SMTP id m13so1082888pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 22:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SI5glm9tTBFJlI56hJYs/doyA7zUbu5YUKwxBp+hpYY=;
 b=GfTRpKom0tPQq8D4aXQyI2foQczp9UuJXSAyw66CT6hkWQrJmpym0PT6cvNRyGY8Uk
 0VvHyXu1/QQxb3+Jjk5FQ//6OW1fSF4+GEXglW8TGLZKjd4szY+kf1EU0mFv2H1ywD7M
 VbwSiZQaQuyCsyymCLbnA4sRvShcMEGUaENZ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SI5glm9tTBFJlI56hJYs/doyA7zUbu5YUKwxBp+hpYY=;
 b=ZcHsizOqbqDQjAAEyxXJ01zVPpANkiNXqmiJj6a3P0gc6QbYjd+vqIhKijAq39KLrN
 VFrx+YftlEZhDuyjAaHI+ZieEiFRikvRwuiWYG3JOVn9AXgamB4Vl4tZdjkYuabLuNuz
 rP6nfphzr0mSrOIWoG4yMtOOVxEWG2svDHHHmC/b+ablQY4XNYDpadxe8KQvOSvoqU6a
 dOF5yLZYPPckyHZ0xrfpOhCYyiaN0rNGTY7Q/2zZQweTCAPVjTHFoEnimQyU8e6WQfgU
 oTqOF1/n3na/oWFQ5DR+C+UeXhXb+KylInMzL4K70xUB/am3RNIHLdlhne/AR5kAyTJh
 Hi0g==
X-Gm-Message-State: APjAAAXS9wrjmRuswszJJTt7l2ZvX5XNZdVc2CZYT3jYL91lSdR0ti6X
 xNl2wUeL+1LfFmVPYd/zuvOjEA==
X-Google-Smtp-Source: APXvYqyt2Oz5lp6I4QYJC6msD4qYWnWAGuSCIA+DMfGiAHr8tDPwjSQJBDVs1A0BbM5XvepejAB4uQ==
X-Received: by 2002:a17:902:6b8c:: with SMTP id
 p12mr29998912plk.290.1579156003508; 
 Wed, 15 Jan 2020 22:26:43 -0800 (PST)
Received: from localhost
 (2001-44b8-1113-6700-097c-7eed-afd4-cd15.static.ipv6.internode.on.net.
 [2001:44b8:1113:6700:97c:7eed:afd4:cd15])
 by smtp.gmail.com with ESMTPSA id r3sm24681158pfg.145.2020.01.15.22.26.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 22:26:42 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 kasan-dev@googlegroups.com
Subject: [PATCH v2 3/3] kasan: initialise array in kasan_memcmp test
Date: Thu, 16 Jan 2020 17:26:25 +1100
Message-Id: <20200116062625.32692-4-dja@axtens.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116062625.32692-1-dja@axtens.net>
References: <20200116062625.32692-1-dja@axtens.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_222644_620599_8B55881A 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: christophe.leroy@c-s.fr, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, x86@kernel.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, linuxppc-dev@lists.ozlabs.org,
 dvyukov@google.com, Daniel Axtens <dja@axtens.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

memcmp may bail out before accessing all the memory if the buffers
contain differing bytes. kasan_memcmp calls memcmp with a stack array.
Stack variables are not necessarily initialised (in the absence of a
compiler plugin, at least). Sometimes this causes the memcpy to bail
early thus fail to trigger kasan.

Make sure the array initialised to zero in the code.

No other test is dependent on the contents of an array on the stack.

Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Signed-off-by: Daniel Axtens <dja@axtens.net>
---
 lib/test_kasan.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/test_kasan.c b/lib/test_kasan.c
index a130d75b9385..519b0f259e97 100644
--- a/lib/test_kasan.c
+++ b/lib/test_kasan.c
@@ -619,7 +619,7 @@ static noinline void __init kasan_memcmp(void)
 {
 	char *ptr;
 	size_t size = 24;
-	int arr[9];
+	int arr[9] = {};
 
 	pr_info("out-of-bounds in memcmp\n");
 	ptr = kmalloc(size, GFP_KERNEL | __GFP_ZERO);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
