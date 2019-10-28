Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C561E7AE7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 22:06:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4zKyfPObKS3c9z6t/DNpvPm3DH4wWlTsIJ7MYf+2aTA=; b=hwMKIARIWY9blDRjTjTSNyf55M
	Do40cukJIlum4H8bMn28wOHbXzejWgmYyMBOLsYZ7OVV/pX4skAtLhFuSrY3BpVGjvSLCsZZGWmjB
	B/RcpXsRAOPnZXhWeR3rv38UolPcnYfhxHvSbKohMQP56my8zrCSPxh+TBuNKQu3tbmXP91oi+pAY
	TjHOexR836a5BQRIi/HtL6sMq69C1a1u723YcKfywx4CZGYnoq50fmSFvoZF8ytlqazzcDqw8fw70
	Ro5nNbbOyYTvpcXr6nCacYYVBKv7j56eKAzVQwKOCPHLkbFgiUWe1V/auFr/oK/9XapgfzTnmP1kF
	ASm/uAJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPCDx-0007mN-DV; Mon, 28 Oct 2019 21:06:49 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCDF-0007Sv-5P
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 21:06:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id n7so416572wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 14:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5fdqGpsTwRZzstj7gG8G4eynLpsoyPuwBiWzvUXzIcI=;
 b=d90aNC76Z65wi1qyl4LR/h4h7b/L01Zgboc3RhCWk336Xyh2t5COYQWc8Spj8aNKpV
 3IyU7rkdlbyrL3VcFzY+XJ0RDwDeU3uSGnBYVF/YtkpR+1e7LGzNrEKbXy3HKezmhyX6
 H/npgaJyq1LNevmp89zjnlO59XFdrIs9YoC6m6KyDfA03KrQqN3cTGb8VGgTN1rtIVab
 89vt+61pZYpoN26FQgwmaYsJ3Mn8VipHO5aQbJrzadfNwXSFdjqeoBiOLQ7vhnusaXk5
 5KaaUq9OKtTFWQnMNKFg+qAhaTnMZndhT+qW5eG6A9AZl8DolLQ4sFKvJnv/K0i3Mkt4
 rQUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5fdqGpsTwRZzstj7gG8G4eynLpsoyPuwBiWzvUXzIcI=;
 b=Aq2XD3nxSlv3a6Yq2/U5ga2SLDW5Vz2qPKgwSCMYrwDaoKeM13XjdDND3Vyuyk+bEm
 kgjVLVUfqH1uz2udrNWk/OvGb0KvR9v9IAL7AGOmDwVVAO8IxoATZgUg0nq3qvIuFu4v
 8J8j8bDyDW5hXzpT9oEP8x7JqMzKi9baoem7CoqkZ0vave1RizJ4ReygbHyxv00S3/kh
 nbYe+NyeXTQGIC2Gwj8EJTVcHOm8UuhqIBix8hDasYwsFjo0ioO6Yow+64/QUfPspDL1
 jFLAo7hXZ4NnuCD/441alPGudIB/3ROCcVP0dbqUUz2n2iNJrG9dt50oS4IotDRs03Uj
 xZuA==
X-Gm-Message-State: APjAAAUKa4rB1tSrFM9VJCO7/uQuoBhatmbh0fBy7cpbu0VTDClY93+t
 mEtSvY6/Y37gQWMs3Cg+CGgzrQ==
X-Google-Smtp-Source: APXvYqzrmbIZmiYJeRI8foiZBFn/3gbaj86T1/tVP1Bb5VrPLCuZQ0g/WmL7p4dJ4/LUsgNkETKzXA==
X-Received: by 2002:a05:600c:2908:: with SMTP id
 i8mr1147516wmd.142.1572296763797; 
 Mon, 28 Oct 2019 14:06:03 -0700 (PDT)
Received: from localhost.localdomain (230.106.138.88.rev.sfr.net.
 [88.138.106.230])
 by smtp.gmail.com with ESMTPSA id b196sm927822wmd.24.2019.10.28.14.06.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 14:06:03 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-arch@vger.kernel.org
Subject: [PATCH 1/6] random: Mark CONFIG_ARCH_RANDOM functions __must_check
Date: Mon, 28 Oct 2019 22:05:54 +0100
Message-Id: <20191028210559.8289-2-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028210559.8289-1-rth@twiddle.net>
References: <20191028210559.8289-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_140605_200193_E3725802 
X-CRM114-Status: GOOD (  11.22  )
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
Cc: linux-s390@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
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
Cc: Kees Cook <keescook@chromium.org>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: linux-arch@vger.kernel.org
---
 include/linux/random.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/random.h b/include/linux/random.h
index f189c927fdea..84947b489649 100644
--- a/include/linux/random.h
+++ b/include/linux/random.h
@@ -167,11 +167,11 @@ static inline void prandom_seed_state(struct rnd_state *state, u64 seed)
 #ifdef CONFIG_ARCH_RANDOM
 # include <asm/archrandom.h>
 #else
-static inline bool arch_get_random_long(unsigned long *v)
+static inline bool __must_check arch_get_random_long(unsigned long *v)
 {
 	return 0;
 }
-static inline bool arch_get_random_int(unsigned int *v)
+static inline bool __must_check arch_get_random_int(unsigned int *v)
 {
 	return 0;
 }
@@ -179,11 +179,11 @@ static inline bool arch_has_random(void)
 {
 	return 0;
 }
-static inline bool arch_get_random_seed_long(unsigned long *v)
+static inline bool __must_check arch_get_random_seed_long(unsigned long *v)
 {
 	return 0;
 }
-static inline bool arch_get_random_seed_int(unsigned int *v)
+static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
 {
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
