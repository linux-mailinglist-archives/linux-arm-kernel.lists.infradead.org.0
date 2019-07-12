Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F5F66630
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVE5f/Q5Nj3SOHmGothpeltT7CJaCfVTPP9qGOmGPUM=; b=RqaRuVuWcLgCSN
	mcFS/jZnXg03aco0BKW4alFKW5jkHo3a8tOhEXB5Lvd4PFzqDjw3usQmiSjFDxmUjwt4P7fbhaZRq
	EZTFKCU4Y/YJy6jzuBM722N9TPVivfkO/V6+OgnuMUrE4BYE5b4j3040Fn37JO+MRN2ZGV6PGM4s4
	VzUEtMbc/qhCeN+aJKfCtuy6GSinqJiaGeauOmAcIwcr919yS0NcUa0VKkiDc/6jy5AH8OmlEDOzt
	eUJWBZ7iSBkUngrpoRQiRRYab2i2gkVcJIJNaMBsQwCxUJbA4XvJIvxUlsuKVBmH5tz3ZRkxPbsMp
	FPSubHiic7hLGvizxJTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlo7n-0000R7-5f; Fri, 12 Jul 2019 05:29:39 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7B-0000FF-U6
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:03 +0000
Received: by mail-pl1-x642.google.com with SMTP id w24so4213488plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t+8ZINgorfc9/vHqnYTLmiCH63MmZJ4ah1lcUclNBnY=;
 b=vfEescdrZk7PAf9yh6XRXZTOpIl94QL0p7zhy0G6HKN/L7stQNe0GsU83l1vABWalR
 40VfcXPgBqpZUStl85FVtb6u/dee46kXlWli0J8BZJMc/renFQMKfN3432e0Oms2ll51
 pytAaRdD5CFCthBLyq98D+cP1UBigqqFmAdgmKh1ceFPIVWWHQqCx1KlzrTb2n7DsfU3
 NyK/2R2NVZXGHW7UREDpV2hTAOEJudmW8ho0hO1AB0/3ZNHTvMsiatNstJWM63A2mrWN
 RabQ7GQclnS5EVa/l/thl+giSH96sRyalPlp+7465G1t7yNFinTicVk75JqPNPn9cIaj
 pYyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t+8ZINgorfc9/vHqnYTLmiCH63MmZJ4ah1lcUclNBnY=;
 b=QosqqoNrHp6zZ6aittvM6r6CumqiEPZgtydHlhHbFKJfOBbjDEF8iUQJ4rufSQiIIo
 EUIHfNT6DsTrHVsGXkA5izioDTsZZ5vvkShNDmU6/6senn3+Balxp0HwpN2KSi7TIfUJ
 GvtmvTHufVHU+50QvUuUlcFW8V6SLIoZWqGBH9+dFImWg/3KKRIIbJr9HyY9NPTluam+
 z+KjFkSBjUqF9LLMjJwMPrYhs9eCSGcNutfWq8kf1oEFJQTrzzZ5F8UCr/vTlMXFGqqb
 mFmvigfX0NFr17eQ21uVHMbP2mlAIEcsXP3iteMemksILh9DeqWRyuh3WRdukSq+gSqo
 Aq3Q==
X-Gm-Message-State: APjAAAXb1+/kXc2SC4JKC31a8rgLGSOXZzI6Mfb7o6OXussnwn9Oi4ns
 NxPeipMjzH7/NLge53SCfzq/dw==
X-Google-Smtp-Source: APXvYqyzj4WENL7VncImhrhciTIHq1bzE5dqQ/AjbTemgvpK8K9quil1ia29VHn2YGn/rCxJo3TOJQ==
X-Received: by 2002:a17:902:2869:: with SMTP id
 e96mr8804681plb.203.1562909341172; 
 Thu, 11 Jul 2019 22:29:01 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id l31sm13056963pgm.63.2019.07.11.22.29.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:00 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 01/43] arm64: barrier: Add CSDB macros to control
 data-value prediction
Date: Fri, 12 Jul 2019 10:57:49 +0530
Message-Id: <fe952d04e88a653363f4ce73a8a7aedd2609c877.1562908074.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222901_969809_896A4876 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit 669474e772b952b14f4de4845a1558fd4c0414a4 upstream.

For CPUs capable of data value prediction, CSDB waits for any outstanding
predictions to architecturally resolve before allowing speculative execution
to continue. Provide macros to expose it to the arch code.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/assembler.h | 7 +++++++
 arch/arm64/include/asm/barrier.h   | 2 ++
 2 files changed, 9 insertions(+)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index f68abb17aa4b..683c2875278f 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -95,6 +95,13 @@
 	dmb	\opt
 	.endm
 
+/*
+ * Value prediction barrier
+ */
+	.macro	csdb
+	hint	#20
+	.endm
+
 #define USER(l, x...)				\
 9999:	x;					\
 	.section __ex_table,"a";		\
diff --git a/arch/arm64/include/asm/barrier.h b/arch/arm64/include/asm/barrier.h
index f2d2c0bbe21b..574486634c62 100644
--- a/arch/arm64/include/asm/barrier.h
+++ b/arch/arm64/include/asm/barrier.h
@@ -28,6 +28,8 @@
 #define dmb(opt)	asm volatile("dmb " #opt : : : "memory")
 #define dsb(opt)	asm volatile("dsb " #opt : : : "memory")
 
+#define csdb()		asm volatile("hint #20" : : : "memory")
+
 #define mb()		dsb(sy)
 #define rmb()		dsb(ld)
 #define wmb()		dsb(st)
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
