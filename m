Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F21CF1812
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:14:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Cei8/2dVcLwfRH8TQoOvGnwbgKj43RILBMCOtAOo4lU=; b=LukMawJr/JjegpaxeYaWnLKGt3
	zw3Q4AOqxgc71qPtFM0ElnKP0KcPReGtXT03WlMqQyaF0SwYSp5eB3lF8sGB7E13CskxNTVSFgqU0
	WvJDSCLVOvvvqS4LI/GZ9QTwsqyX/y+LreprpoHuC6UMsMMeDf5vFhtUQ6yLPKVqbhu+EdmBfvK0K
	Aym3WdaKtdRkFdOl2Lv/GrXj3CpakrycCzvXO8QaTETdXcco6upA3N9exF148OqAYxw4CFfgddT5K
	3nLQ9ciAIyxQaBon5tWDSPbK2RDS7qahBvEOWC54+o1c7ZGUxzfhlvLs/g70HmxGczbdmg79lT/Xl
	X0TA45cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSM4W-00008r-3E; Wed, 06 Nov 2019 14:14:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSM3r-00089D-4E
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:13:28 +0000
Received: by mail-wm1-x342.google.com with SMTP id f3so3493301wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gp6KNxHNYtmFYMKMCYa0gsOo8NLakQXjLI1+wdZrrFY=;
 b=Opt6blMOd91CMO9Sq9Y5A3q4PwF3GSjNzIXhSluaGOyG+rbDxGLdCQGbPVE5bXKBKZ
 aiLXzj4m6i5ZQoTXpmx5rChqonOJISLaMtdj1+byk7Lr8lPtDs28C0jlPzGHMMtEbZmm
 7dm9d8IvcXzRGMnZAKYMbPIBPY2bDTOk49lIHT4bFr5KqZ5prLSSgXUOv6jUPSLjGUYR
 6DJPE/b5BRZTkL0wI0LsgP3k3jLyGQ9uB69hYUuVFG9xxRxpoVLOxmiRAUjNlawvAFIn
 cXqLhSYYSbeV1YOl+1KwcdK62FIuDKKMLAF0JTvEXftqvOXeMxpVSFsKMNrZ9n/m2c0V
 I1nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gp6KNxHNYtmFYMKMCYa0gsOo8NLakQXjLI1+wdZrrFY=;
 b=iWs5SS0xSNtTysIR1YpzaC+NbgJwuMv4pHYZKXhiuiW1QbNxoxHLJDnOMchMWJqwuP
 4Wgid21SIIen+vqXJCSQDbKsQmN+cxSbQJR/8rkJU4UHmk9sntKeQ5/dZeoMc1N0PYn4
 9CstNGUVsbmndawFVxb2CsU0Z72B+gqsdJi0ZtmXDIhQfAC6pNWr8siSn+WLM2ldvMaB
 mTMyvpKToGqa8kUZTdU0VznT3dXLXM7pIEYISh6RVRt2l5qArnb6hNCj5ejyiGknvZmR
 JKL4leP0CPYYbp+tUVkhMN6KUReRct/+43vF7opCnBzjWD4Jn81WG0fzATghwll+MPZw
 +how==
X-Gm-Message-State: APjAAAU9kB1Q3ABQ8VRXmZkWT7FxFlXZGj8K2WCxhbqvRmqfk9C2KaOO
 +Fj46X3vBoJZhJt2tvfMi8j9nvL1qiiQKA==
X-Google-Smtp-Source: APXvYqxzkw9+rREvmeedrYS01ECAtNQ4De91+b1ooIUzZfNnnzCG5td8seHkoCoHaz61lQ9u/onNCg==
X-Received: by 2002:a7b:c549:: with SMTP id j9mr2820695wmk.88.1573049605900;
 Wed, 06 Nov 2019 06:13:25 -0800 (PST)
Received: from localhost.localdomain
 (31.red-176-87-122.dynamicip.rima-tde.net. [176.87.122.31])
 by smtp.gmail.com with ESMTPSA id b3sm2837556wma.13.2019.11.06.06.13.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:13:25 -0800 (PST)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 02/10] powerpc: Remove arch_has_random, arch_has_random_seed
Date: Wed,  6 Nov 2019 15:13:00 +0100
Message-Id: <20191106141308.30535-3-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106141308.30535-1-rth@twiddle.net>
References: <20191106141308.30535-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_061327_162943_B1F3DD9D 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

These symbols are currently part of the generic archrandom.h
interface, but are currently unused and can be removed.

Signed-off-by: Richard Henderson <rth@twiddle.net>
---
 arch/powerpc/include/asm/archrandom.h | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/powerpc/include/asm/archrandom.h b/arch/powerpc/include/asm/archrandom.h
index 9c63b596e6ce..c2ed3b4681f5 100644
--- a/arch/powerpc/include/asm/archrandom.h
+++ b/arch/powerpc/include/asm/archrandom.h
@@ -34,16 +34,6 @@ static inline int arch_get_random_seed_int(unsigned int *v)
 
 	return rc;
 }
-
-static inline int arch_has_random(void)
-{
-	return 0;
-}
-
-static inline int arch_has_random_seed(void)
-{
-	return !!ppc_md.get_random_seed;
-}
 #endif /* CONFIG_ARCH_RANDOM */
 
 #ifdef CONFIG_PPC_POWERNV
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
