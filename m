Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653E1F1834
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:15:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n8o7gyYGvE//TyqRt561y8It70EgM97w2eaXtFst5HY=; b=huvDoTHVhuO/+VoYebesYKCbfS
	nTUSaWaC36d7xOFQe9gViL0YkFRYPJ0x0thmpC1oltXrjKH8NfoMAc8j4CZGg+nib2HpwCGXyNf/8
	tCAOMgcv2684zDqAxu8HW9g6izJE/Lid7rW0kvZju8ZEYGNKlfjkRDgEtvDJXz7+NvU+VhYbvxZHa
	O58KSSGPYaKGPd7OHZbfd14FInusH8hzfuROYu2KFEkLuEF3NAE7Gz6Ky9aB/4o13+OCxr0VFACMg
	f2wvUq8lVmugRFBQQRjhIYgNAIvcAS8iXfn+72lOIDN6lqsx9n1HjTZmrIwEpwHzsCbZkK6kcFP+6
	Enc2Focw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSM5j-0001OJ-G6; Wed, 06 Nov 2019 14:15:23 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSM3y-0008GC-FB
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:13:35 +0000
Received: by mail-wr1-x441.google.com with SMTP id p4so25954751wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:13:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LOCSV59QoWVHACgzHE/U/CUT/RhU8DoyNGp2OnfJ+HA=;
 b=Lt8NSkicjrMViO5Eg4iicjQ9Um4Q/kPhTekzALb+HzNHfhDBmznekCXpWfFCqxbPf1
 XOZbS8K2jooY/Eh/31ehUIBaypEbhpyPqh9lub2S0lbmj/O81IwFa7dqMAQj6ppnMr97
 h/sNucOFsQ1bw9fFy47CCesF+0lx7lCCx4pM7OMgkxiGq6zqQ0YuondQvtGoWarNmqPF
 O03RynY9JHqQ9r3dfWX6s/Iy4zuK/kFgiBT3QXKGHNPYenHtppO+8gHzQKodjZWngOGF
 /2dp4+1OO0PAUlrW0CXW7rSAK8WFPvwHkNyb3WEsqOlkKLv3LtcOVNpqbcfmzzDC32/P
 I53w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LOCSV59QoWVHACgzHE/U/CUT/RhU8DoyNGp2OnfJ+HA=;
 b=F/A/xyJPlXrH2pfCV+nE3G4/lRyXA5v4hw83x40R6RgrEEMonOPZmrNMHlNgXDOuh2
 j+6WIdEvhf7aX8oE07JZwPzseYpRo21XHfu9I9udh9kvfCff+2WqNQ2F6yKXzbARpDls
 Vn3YHc6u3Af5NJLAqPeheInzfgftwsxBIbjCYcussRcrv0WBJMevtIjSBn4Q3TIk3qN0
 FMQ8AMuKHIM44+p5UclfyFnz4Z5m/87tRKrSPtUs7YqJRAkvx7oy9E0hFX0afLReLc6j
 kiY9cwri5uXzMZ4jQSBc33v3sYnRF9NEr4u53XeNI53A5oUJLc8n3ExI9egqGmY3AhdG
 DqZg==
X-Gm-Message-State: APjAAAXo1ixWhGhigRXSW59Fr7u00XnzOjdU/rmfv2IGY4nBmuEWApY/
 YUtsFNDCJhN5ULMXcD33VdiXsQ==
X-Google-Smtp-Source: APXvYqzK5FGfZx+mRuVsrOtGAG1CMADIYVflqnomqokFyeKkGb54YgnosWkS0ihW4ENT9j5fGGhC4g==
X-Received: by 2002:a5d:4885:: with SMTP id g5mr3106213wrq.287.1573049612495; 
 Wed, 06 Nov 2019 06:13:32 -0800 (PST)
Received: from localhost.localdomain
 (31.red-176-87-122.dynamicip.rima-tde.net. [176.87.122.31])
 by smtp.gmail.com with ESMTPSA id b3sm2837556wma.13.2019.11.06.06.13.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:13:32 -0800 (PST)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 06/10] linux/random.h: Mark CONFIG_ARCH_RANDOM functions
 __must_check
Date: Wed,  6 Nov 2019 15:13:04 +0100
Message-Id: <20191106141308.30535-7-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106141308.30535-1-rth@twiddle.net>
References: <20191106141308.30535-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_061334_514547_EDD767C6 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 herbert@gondor.apana.org.au, x86@kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We must not use the pointer output without validating the
success of the random read.

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Richard Henderson <rth@twiddle.net>
---
 include/linux/random.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/random.h b/include/linux/random.h
index ea0e2f5f1ec5..d319f9a1e429 100644
--- a/include/linux/random.h
+++ b/include/linux/random.h
@@ -167,19 +167,19 @@ static inline void prandom_seed_state(struct rnd_state *state, u64 seed)
 #ifdef CONFIG_ARCH_RANDOM
 # include <asm/archrandom.h>
 #else
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
 	return false;
 }
-static inline bool arch_get_random_seed_int(unsigned int *v)
+static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
 {
 	return false;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
