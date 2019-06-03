Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6472432C15
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 11:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aYUUiV7LoceBfRXhK+kMkrlLRyLKNzHlRhtIyNQFPIg=; b=G5sJ0rrb+4EGIe
	exysj5LubIJ4jqA7pwlFIU5V6n9lz10iRo1Ur7yEYFOmSbJXFN2CIqEUaZG5GyJG5sSl4KzPIz18F
	nmdfM0hj5r8VULvfzdBoGD4sTT2xtfFg/j2TFKlRrDyG0DO9v09Mtpn2pc277Vk7HGy6a/IAOfj9c
	vVJW72JOqo+BGlQwbV5LN2YFusnxE0R6VF0UBxTEqxgVbTr2HnVOfZb2SUnz/6rGPjezaerYFRD+Q
	suKOaFNRTDIsFOCCCyMD3UuuG6KlEwKBa0bJiC7UU2JlkRhDvt5Hfvunlj0zVlt4qGF0FK17CRIOl
	K/taFF7a2KK0JcUa4Ztg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXj3u-0003XC-1B; Mon, 03 Jun 2019 09:15:26 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXj3m-0003WT-O2
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 09:15:20 +0000
Received: by mail-lf1-x144.google.com with SMTP id a9so11577310lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 02:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PR8lLBLyYvGMiS0Uym8abST4zelhaOVi9Iwrklqg+JM=;
 b=WIMKxnbm4jO3KJFthTYVKBxdmkT1G96bERBd6FIDYNYhFfSTjUb3750sWesJG0TUYL
 bxWMY37Ut3+qwQttQ+NSVhD2nzOpnVadPB7YAZSmTvHbRNm9Vsw0pjGkbrjkhfCV9Qoi
 qtRXjAe+4qc7ZkyUel1mSbqjR/epygQ0DNkwGnKF9qRfQEEkRGIsQGP4G5AWKC36h7RL
 jRVzmDYhz5eFURzz2IQ8gJEa71grNVKYOacWuRLabzeEtxIAwaUb59PPVymqS0pEF1k3
 TT42cFX5wZMHxIb7CdLFy+R/SnaPs77uoDVYWvEPreCWjB6tx5WdBkS5ZQmuCOXCN49b
 HNJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PR8lLBLyYvGMiS0Uym8abST4zelhaOVi9Iwrklqg+JM=;
 b=UnGcMuHX1+DYwz8ShcCea4Q2L5YeOVYkDQsKTe9o+H8Kqn5tvHr+eAuiglVxiTAt8E
 OQP45R1EQQ7T4aYA6UIMY4DX5D9TTyYmFZmMH1y2/H/2Uohvg+FLfRFfQsH+5iQKizV1
 omE/ax7opv7kg3O+bvbZAfGV8/g4lk//r4wk0pK+9R3vELUvIC2VPOGndy3Z/BiR6w4Z
 yy8I2/0myJyGfRRjH2ouAKZ6tc1IA8QnZKRs3Pj6UpXNo9xGYu1J+SbeWrg2W0nMahoy
 3qw6z26F66YHPQhvLuc5YPWSdopdcQ7SzHfcZlbi9lhlH76YlZ7+gHNMcWpRju6UH5Fx
 8O5w==
X-Gm-Message-State: APjAAAUNwov7gqKUGZy4krHNVk8UoIQLgO2SbfQ0EXQdowq4G83ku3S4
 C2qQ3eCk08XC9Ke+D/8joP2mHA==
X-Google-Smtp-Source: APXvYqwctOBDRg0FjRVPjNSS+OgP9LZF1AQuiSF/Mk+/WqjBT70Z2+BjtM8kSX3oNGhLTa/6lXJf6w==
X-Received: by 2002:a19:4bc5:: with SMTP id
 y188mr13319717lfa.113.1559553317031; 
 Mon, 03 Jun 2019 02:15:17 -0700 (PDT)
Received: from localhost (c-1c3670d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.54.28])
 by smtp.gmail.com with ESMTPSA id k16sm3018089lje.30.2019.06.03.02.15.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 02:15:16 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: mark.rutland@arm.com,
	marc.zyngier@arm.com
Subject: [PATCH 3/3] arm: arch_timer: mark functions as __always_inline
Date: Mon,  3 Jun 2019 11:15:12 +0200
Message-Id: <20190603091512.25298-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_021518_785160_BEE463FF 
X-CRM114-Status: GOOD (  11.59  )
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

Originally found on arm64, but doing the same thing on arm for
consistency.

Fixes: 0ea415390cd3 ("clocksource/arm_arch_timer: Use arch_timer_read_counter to access stable counters")
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm/include/asm/arch_timer.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/include/asm/arch_timer.h b/arch/arm/include/asm/arch_timer.h
index 4b66ecd6be99..73a72ce41dc3 100644
--- a/arch/arm/include/asm/arch_timer.h
+++ b/arch/arm/include/asm/arch_timer.h
@@ -83,7 +83,7 @@ static inline u32 arch_timer_get_cntfrq(void)
 	return val;
 }
 
-static inline u64 __arch_counter_get_cntpct(void)
+static __always_inline u64 __arch_counter_get_cntpct(void)
 {
 	u64 cval;
 
@@ -92,12 +92,12 @@ static inline u64 __arch_counter_get_cntpct(void)
 	return cval;
 }
 
-static inline u64 __arch_counter_get_cntpct_stable(void)
+static __always_inline u64 __arch_counter_get_cntpct_stable(void)
 {
 	return __arch_counter_get_cntpct();
 }
 
-static inline u64 __arch_counter_get_cntvct(void)
+static __always_inline u64 __arch_counter_get_cntvct(void)
 {
 	u64 cval;
 
@@ -106,7 +106,7 @@ static inline u64 __arch_counter_get_cntvct(void)
 	return cval;
 }
 
-static inline u64 __arch_counter_get_cntvct_stable(void)
+static __always_inline u64 __arch_counter_get_cntvct_stable(void)
 {
 	return __arch_counter_get_cntvct();
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
