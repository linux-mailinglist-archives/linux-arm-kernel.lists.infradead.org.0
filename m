Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96CFE7B01
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 22:07:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZbqaknSP5kAf65x7IzKWyLjnJpzd8bRWWYzz3VKgUlQ=; b=anzLt203nTymZvHO7rVD8q7YvS
	JRD2aypbyroiJZI0Z52wcfjQv+GYuRwNZSVjDYSArSulv9W3TdvHlwuNdvFd+9vs0vHEz75xuU8G5
	d5MHu/LWx5Du6ss1MnlNvhiZZHNlNBNUxY49TwOewfob3iQV44vIkZIJvyen0VJfW7/+7XPcc3Ikr
	8c75do3jQGA9zG6/W5znmNYiLdS1b5tQPD7nJuSUEpPfcmsFvqIFPYOw2cxS4VkSg3l2r3z/RU3sW
	m62U4Tz6ew7p57N4KkQvRX2fyxRe8PCWB0dGMzLCoz7CJk8IedBFtQtUMhMJ89ZkuEgBJPf8c5RTe
	bd32mKWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPCEt-00008m-0d; Mon, 28 Oct 2019 21:07:47 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCDJ-0007VB-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 21:06:11 +0000
Received: by mail-wm1-x344.google.com with SMTP id g7so409365wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 14:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Trmz1oMdXkgQduJ6dSMyWBdvnJGLiBd9x/YQsqmt/z4=;
 b=sr3/upyfRhBPqhCuVvZlquM3tMXK+FLoz2Y2nWEL97AxtydZpmz7kH//aqFGKiF4Uj
 T2vIJpuxpjgsJR3rIQpNvFQVY5soBLF7Rzf3kczte3zotj8zq3w2XVhRZTCaDR7CqU7r
 RBUwhO+4i3EY/QsMdN4kaoQeRTj+v8bmrvmbWptIdITT6sdQlhfl3EEo7901M1AVyGBF
 BzpN7dQq3QUNjSisrKVonu11+AOT7oLI7vEVJZTKkyM/rLfUXe7RO2M52K6BA/L+sGVl
 aqo/xtW2v0EDkxghzjz9ty/HLo5VwHQQyNkUAqMZydgPyJwt+m557X5M9tHGkKY6jlxL
 JIBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Trmz1oMdXkgQduJ6dSMyWBdvnJGLiBd9x/YQsqmt/z4=;
 b=XyewGAteQzke6m/fZIvRS9d+G04FDM7QaphaKnHksFAIFfSKGqlK8Wq4CAkFFlpuJs
 AZiBwf59u9Pt2x33SswDaIXekwnp75WMOjWRE7Zjp1SHjNWfmoy2E08icxZ2zcbROE3z
 RWfROhW1DOAeWznlXZ2eY8kgoiAVwf6tu+x3iJqdFFn5BrbKkjGkPz1dUB3WHMOTVgkw
 /V8z+cgzRCEnX3z7wcVvt79iXQvyHQC9kLNYv/xFFnJ9NoM6SqzsJagu/SVcqUgF/Bav
 8adr43L5RPQAEL18PayUWF+MezIjIl+EavZvO8j782QLy1hwNh6B/57hgoEp1xjFBV8w
 L6Bg==
X-Gm-Message-State: APjAAAWnRx8UMhawRAwl4nK7rw5gWmAqhdCVBzoZ9Nt6Ii6RFcqlaHhD
 CepfzRe0/uxxEP7apxmXBNEy/w==
X-Google-Smtp-Source: APXvYqzrjUNW6FASV5OYKYITB32BLwiqX3gvbSlyQ2rHCnIhZsijRUh3wkyp6SvrHbUKPhK9PwFpvQ==
X-Received: by 2002:a1c:c90f:: with SMTP id f15mr1074821wmb.125.1572296767937; 
 Mon, 28 Oct 2019 14:06:07 -0700 (PDT)
Received: from localhost.localdomain (230.106.138.88.rev.sfr.net.
 [88.138.106.230])
 by smtp.gmail.com with ESMTPSA id b196sm927822wmd.24.2019.10.28.14.06.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 14:06:07 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-arch@vger.kernel.org
Subject: [PATCH 5/6] powerpc: Mark archrandom.h functions __must_check
Date: Mon, 28 Oct 2019 22:05:58 +0100
Message-Id: <20191028210559.8289-6-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028210559.8289-1-rth@twiddle.net>
References: <20191028210559.8289-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_140609_578615_299A92F4 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-s390@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, x86@kernel.org,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We cannot use the pointer output without validating the
success of the random read.

Signed-off-by: Richard Henderson <rth@twiddle.net>
---
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
---
 arch/powerpc/include/asm/archrandom.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/powerpc/include/asm/archrandom.h b/arch/powerpc/include/asm/archrandom.h
index f8a887c8b7f8..ee214b153a71 100644
--- a/arch/powerpc/include/asm/archrandom.h
+++ b/arch/powerpc/include/asm/archrandom.h
@@ -6,17 +6,17 @@
 
 #include <asm/machdep.h>
 
-static inline bool arch_get_random_long(unsigned long *v)
+static inline bool __must_check arch_get_random_long(unsigned long *v)
 {
 	return false;
 }
 
-static inline bool arch_get_random_int(unsigned int *v)
+static inline bool __must_check arch_get_random_int(unsigned int *v)
 {
 	return false;
 }
 
-static inline bool arch_get_random_seed_long(unsigned long *v)
+static inline bool __must_check arch_get_random_seed_long(unsigned long *v)
 {
 	if (ppc_md.get_random_seed)
 		return ppc_md.get_random_seed(v);
@@ -24,7 +24,7 @@ static inline bool arch_get_random_seed_long(unsigned long *v)
 	return false;
 }
 
-static inline bool arch_get_random_seed_int(unsigned int *v)
+static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
 {
 	unsigned long val;
 	bool rc;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
