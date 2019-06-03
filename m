Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE28E32BF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 11:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mnn5kEGoHU+JfCAdPASOpLwOJ9PvEbucz3ksNO2otBc=; b=AKffUiNwr58YWE
	HMV3O4TiDcatBwb40QnbjICideb6/XUcI5uT4JzOnByFigbFmJBTT4tJqMJMXcULK7YbFaEW0Xqin
	8z85w63Z1NqFwWKe3Vg7kxZI6TkCLO6QLz/vFxj0CIqwmaMn644W7naKUgiw5NR45+tu9EquPgPfO
	erfPMTH419o+r2fZ/YfAyp73c8zN9F+7E+bn2PcUdXfwIYTS4nYeUiigW+APZa6w3HupAT4nEw4qf
	sKi6buzhaWKsu+Z8oyIAuFfTBSJLm28TftZNYgJqpocNCh0RnynuQV/DP+YEn/wSVxCi3LNyYpPLo
	dDJrROO98JULo1kIuTyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXj2n-0001u4-LE; Mon, 03 Jun 2019 09:14:17 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXj2f-0001sq-N5
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 09:14:11 +0000
Received: by mail-lf1-x144.google.com with SMTP id y198so2513611lfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 02:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+y2pHh+GcgrSTo/c/Dh+rI5M9UbSYW68+phN/wa7KlA=;
 b=XwNM5aaSm3fVul6uRnmu+Fwt9JaXj3z2dqhDZMARNqS5naUoZNgGLSLwsvVmsEz9yL
 c0arF2jfhe472ek/T7KaHJmQe9ZWn1vIfZ1zP3sWpdcTKzQYLngpHvbE9cMqmevghtv2
 92WTx36NG/u22grAhRBghDdGYWYAN10P/F+6XrvTXTaVMDBR/IAUa7VqHxE5fhzulF7u
 TBxjumz03UwitufJJztAVu7RNIaNbl7bk2FnoJQgm9CNOu+gAMsfZDTuf2C3ANydj6hx
 8nQoerNpFuFxav5hC+2HVyIO1P5ydRDPAKnde4Ng8ABvXfh6QZ+0BZrD8Kl48BfUb6cH
 mriQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+y2pHh+GcgrSTo/c/Dh+rI5M9UbSYW68+phN/wa7KlA=;
 b=hb61zzmdJRf8PTmyI7KStDJFwdqNm470BMozqVz2SWI7t5i9sBktJihz18Y9pG42AP
 hhbidp98dyB/59Xb/Azmq/6PdcTPyYjRirU031K9dIPNHOulcxkEl+ZhNbQoKveYg5zL
 5y+DqLSyTF7KFFgTRV8IEmVEUxerX9DUQzHy0FjdZuohitmEtND7xY+tQ93x0TIa4/oz
 MayzJgLefP94kh3wlTtOC1auQ/60+ZtZ7eHu6Cl+Tx65DdmL1tgXww+6qKvBellajVGC
 zb5SbbIZrJr3NUROL8Xcbsa2NTw16a7sejX2JqmpBnNnrtVF5X/GyIM+O5cRjbITtD2A
 lrQg==
X-Gm-Message-State: APjAAAW0zYB1YQPJfpwSh8nG0OYix+8/nbC4dEBL/fdFpDc9zrEuc1xA
 PyJbSP5JoFsEjkFZMY0ENB+/tA==
X-Google-Smtp-Source: APXvYqycSNEtNTgVc9EBZuUkjuvDVTlF4uWCWZ8DhHDbwtYYrszDaNXZo89BJZ2WkACsE6TdHAl2TA==
X-Received: by 2002:ac2:5449:: with SMTP id d9mr14199136lfn.126.1559553247684; 
 Mon, 03 Jun 2019 02:14:07 -0700 (PDT)
Received: from localhost (c-1c3670d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.54.28])
 by smtp.gmail.com with ESMTPSA id o184sm3068020lfo.37.2019.06.03.02.14.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 02:14:07 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: mark.rutland@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com
Subject: [PATCH 2/3] arm64: arch_timer: mark functions as __always_inline
Date: Mon,  3 Jun 2019 11:14:02 +0200
Message-Id: <20190603091402.25115-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_021409_796579_FF7A688E 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tglx@linutronix.de, mingo@redhat.com,
 Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If CONFIG_FUNCTION_GRAPH_TRACER is enabled function
arch_counter_get_cntvct() is marked as notrace. However, function
__arch_counter_get_cntvct is marked as inline. If
CONFIG_OPTIMIZE_INLINING is set that will make the two functions
tracable which they shouldn't.

Rework so that functions __arch_counter_get_* are marked with
__always_inline so they will be inlined even if CONFIG_OPTIMIZE_INLINING
is turned on.

Fixes: 0ea415390cd3 ("clocksource/arm_arch_timer: Use arch_timer_read_counter to access stable counters")
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm64/include/asm/arch_timer.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/arch_timer.h b/arch/arm64/include/asm/arch_timer.h
index b7bca1ae09e6..50b3ab7ded4f 100644
--- a/arch/arm64/include/asm/arch_timer.h
+++ b/arch/arm64/include/asm/arch_timer.h
@@ -193,7 +193,7 @@ static inline void arch_timer_set_cntkctl(u32 cntkctl)
 	: "=r" (tmp) : "r" (_val));					\
 } while (0)
 
-static inline u64 __arch_counter_get_cntpct_stable(void)
+static __always_inline u64 __arch_counter_get_cntpct_stable(void)
 {
 	u64 cnt;
 
@@ -203,7 +203,7 @@ static inline u64 __arch_counter_get_cntpct_stable(void)
 	return cnt;
 }
 
-static inline u64 __arch_counter_get_cntpct(void)
+static __always_inline u64 __arch_counter_get_cntpct(void)
 {
 	u64 cnt;
 
@@ -213,7 +213,7 @@ static inline u64 __arch_counter_get_cntpct(void)
 	return cnt;
 }
 
-static inline u64 __arch_counter_get_cntvct_stable(void)
+static __always_inline u64 __arch_counter_get_cntvct_stable(void)
 {
 	u64 cnt;
 
@@ -223,7 +223,7 @@ static inline u64 __arch_counter_get_cntvct_stable(void)
 	return cnt;
 }
 
-static inline u64 __arch_counter_get_cntvct(void)
+static __always_inline u64 __arch_counter_get_cntvct(void)
 {
 	u64 cnt;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
