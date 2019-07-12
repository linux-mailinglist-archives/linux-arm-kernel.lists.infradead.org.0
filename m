Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E69D56664A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rbnN/NBu8aeJONIAaZ+ex0+xnT4Jeg4MmV0OlGUhJ0=; b=KrA9+f5QaLCHec
	3MqNC0fD0RmFHux87TUXoR6qLKidWWYHHTyzg2bMl1kvwLtU7HeDwXOK8xOOqwQVZ6faBcxeahGus
	nGGIijoPrNBBrZQIlczMrUl9aJ38UnBSNnhIm6nDCE3AdICTCEaHDLDjNRSsLJTaCqWM3NE36XXkG
	8ulwYz2NSYoAMd0cyCNls3F6Gdn4BopTTZ4kak9CfvsGjs94fAM5OUTijRPA+yE5EgKMn4DcQvrv9
	2tTVhE39b723tvL3hN7K+ccxzHEeMhLxP3rxesWLEk7YqCbKlzGau/tBVLyJC78hcyz57j1P6GgDY
	nrlX2ubCFHuxgTS9Cyuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlo9m-0003Co-Ak; Fri, 12 Jul 2019 05:31:42 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7Q-0000Rg-PX
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id t16so3778759pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1IdhsUs/fdllTh2EJ+ScRqWrO1uX9GsPUvP6PugnTR0=;
 b=NLbMjzAlqCBkT5p9dJVqb2Z5dGhi0jH/DelTojWG0Hk2jdOfuiefznDfWJuowL/Agl
 9aokXDeJ+NvIotQEG7M9THxjw+tb4VCdkLg0zn5oOVf7UqOFxPmQNucZL3G6T4d34qB7
 t4PnLhRDb1YvAtUJ64bQ3QYulrevKjRsE8L0fyxvWH95xDWSk9+Xh76mvSBfdlZUq6lQ
 XvmcFSoFmIX3B4BQMIZGp1/ew1VgB/sqXv79EloYkvfP3rnZvDNjRXbvP1Z+zMig52iB
 Dlq9x9DLYRFCXW8bKyADSSuKd2qCmMDKgLmgOmKouq+eU0jfATvKGuL0UJyP3z0HwRZu
 sM9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1IdhsUs/fdllTh2EJ+ScRqWrO1uX9GsPUvP6PugnTR0=;
 b=hNWHOq46B7SGXKtYYWtkhK0sAv2tVafrvkDeBKKPz0qNtuMgyPi7/186sPwqJsROUg
 ILi7fD9n44Be3MOfHbVPr1AIK/zKh2AkJh6T4KGZ+c52c2aHuJMluBDxE6ZbaINoegKE
 dJCRTBPdOLCYy0O67aKkiQ5oef0OryloDWr9/pevVJuUymAFujdyvuLTuEzlvqFFjhrk
 J4FUZzx/Xs/J5zBWkyHXfi1Rg2JhTprGd3matHtpDo/VYK17AAROvgdIw/nfGyWXbG17
 eigr8E13a9hjqHJSqGD8FdvzKQDazkyhg7OJ5RMFsfYPUliYFPEGMWx1sCkdApZxyES5
 92HA==
X-Gm-Message-State: APjAAAUqSrgmkL7ErwGA3D0yCYbAHp3ARtkJ7X4ssgobQD6p/L3KNYTt
 euHn9QsHx7bPjH9GsYd/50lhEw==
X-Google-Smtp-Source: APXvYqzjpXn8aWTQ904egESJ2V6XD2ad/VtRF0h099mRxYUm95aM1xhFQFa257EFbfYb+xlgd/9LlQ==
X-Received: by 2002:a17:90a:a116:: with SMTP id
 s22mr9286580pjp.47.1562909355740; 
 Thu, 11 Jul 2019 22:29:15 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id d23sm5914809pjv.18.2019.07.11.22.29.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:15 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 06/43] arm64: entry: Ensure branch through syscall
 table is bounded under speculation
Date: Fri, 12 Jul 2019 10:57:54 +0530
Message-Id: <a7530ecb5571c4f5e6b88547f61c77c68194cc0f.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222916_876916_2EC7219F 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

commit 6314d90e64936c584f300a52ef173603fb2461b5 upstream.

In a similar manner to array_index_mask_nospec, this patch introduces an
assembly macro (mask_nospec64) which can be used to bound a value under
speculation. This macro is then used to ensure that the indirect branch
through the syscall table is bounded under speculation, with out-of-range
addresses speculating as calls to sys_io_setup (0).

Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: use existing scno & sc_nr definitions ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/assembler.h | 11 +++++++++++
 arch/arm64/kernel/entry.S          |  1 +
 2 files changed, 12 insertions(+)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 683c2875278f..2b30363a3a89 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -102,6 +102,17 @@
 	hint	#20
 	.endm
 
+/*
+ * Sanitise a 64-bit bounded index wrt speculation, returning zero if out
+ * of bounds.
+ */
+	.macro	mask_nospec64, idx, limit, tmp
+	sub	\tmp, \idx, \limit
+	bic	\tmp, \tmp, \idx
+	and	\idx, \idx, \tmp, asr #63
+	csdb
+	.endm
+
 #define USER(l, x...)				\
 9999:	x;					\
 	.section __ex_table,"a";		\
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 4c5013b09dcb..e6aec982dea9 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -697,6 +697,7 @@ el0_svc_naked:					// compat entry point
 	b.ne	__sys_trace
 	cmp     scno, sc_nr                     // check upper syscall limit
 	b.hs	ni_sys
+	mask_nospec64 scno, sc_nr, x19	// enforce bounds for syscall number
 	ldr	x16, [stbl, scno, lsl #3]	// address in the syscall table
 	blr	x16				// call sys_* routine
 	b	ret_fast_syscall
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
