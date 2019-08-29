Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7553BA1917
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLSscBmNJRGAuE2Om45Yx19FF7uscGX3IETCW+Os4OY=; b=pSIR57HMn72Ipu
	Ut/6f4razysPVYGtRT3vZZJOqOVpLs6YWxK8MserFymRPXSASUOhMpnEu8tmIQ6TzVaVRyu/jsngt
	KU065TNbKTE3e8wrWzw7vOC/EhtxqpuneGeHs5JzqDt2uqwfcfCpxvuHaWOncGpf1IOx5+ZyJ+f7b
	qGjdFL4hDhzVaMMHX9qvbpMykV51EW4pL+FU6n8ICydvEkP+oyLn/tr0+nYHtBsCru3XzwnxCVils
	zhApqf4pb67x0RdSk8Nct0OzpXIxCoOPNxMY9s1gUffocAYOTVbe03OJN+tT9t/M0pFpjmt6Oz7fA
	w2e+lW02NeUXs/OxKKoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Ipc-0004ro-Uh; Thu, 29 Aug 2019 11:43:13 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Iig-0006pN-Ll
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:36:04 +0000
Received: by mail-pf1-x444.google.com with SMTP id q139so1843558pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7MRMdAKqkkU6zuM8WMZXIs4D8fug3sxafZUJy2Rr9SE=;
 b=vVyItguL9T0AvEViFa6gaLhPAmahCHeVKFUQUra0d6N2G4hqPollf08VuWeFOE9cBh
 Lsiwu15etnFK2vSd1r9aUQUNXxmm0bhzIYLZwOJM7YJ4e4EvoyopMk/sgq61pF/ASV0K
 pk0M6I87Fr5urQifhikKA380i6Xgyuom8EGazvueaXiErtGr4mHYKTvQFTHaxX4sDDlW
 7uvild1QJG9MTTWygJwfV97GnKpUuSMtUFOWRAS4uNRqB1j1Fh9WCQt+4ROoHyM3Pmdt
 MVTvnqSQ/CVD5sBY6HXUP6/L2I2sVz9vd6NhfpQgBGFIL4nnAfEI6C00IosmJAddGp48
 Pw/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7MRMdAKqkkU6zuM8WMZXIs4D8fug3sxafZUJy2Rr9SE=;
 b=qLw84ZgRBj7OSKBMEiyjeCH4r8iZAvP3vQBxOHEs3VxgR4oqm60kMw5fE/BzmDDGD+
 LY5L/IensFGIOdge3mUDT19QReZcUmufPdUN4Vhc8I8XZ8wgvuTLHHU4qlBQM4iyJVvf
 dQstUBk3R5XeF3pktZlS/qjCLNvgtGH1TxPs0d3hqP6nAgEBifVl8Ifz6ptx2gLwYkfB
 BqAP/bq3Pds8JMePhR3if91G+5Xx8cnM6OLWwndxlAPJcAaExis0YMVb2aTylWczIvQs
 tHhctqDVWpkLItP9G7JSsQldxcxSbDJUX/uZuWraNzJLaGdWWdSAy9p+q50I5k70JSx+
 UY1w==
X-Gm-Message-State: APjAAAUBSYZ8PZAAYQph0K2hF1plsrm/uMY38G6shjrj1JxvWaZrhk51
 nkrJ6sbPwvMEcWCOoE1tTG5yVg==
X-Google-Smtp-Source: APXvYqx09NvbWyJDyhBqvJWFlmQUkCvuPwXDQHyszuIuaqDXtBbe1WI75BVFuKEHVWUqerklEQkg8g==
X-Received: by 2002:a63:ff66:: with SMTP id s38mr8030413pgk.363.1567078561992; 
 Thu, 29 Aug 2019 04:36:01 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id a5sm1939293pjs.31.2019.08.29.04.36.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:36:01 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 26/44] arm64: Move BP hardening to
 check_and_switch_context
Date: Thu, 29 Aug 2019 17:04:11 +0530
Message-Id: <d2f9dccdd85950989be37aebdaece9aef0a6a9b5.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043602_727185_738F9A4A 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

commit a8e4c0a919ae310944ed2c9ace11cf3ccd8a609b upstream.

We call arm64_apply_bp_hardening() from post_ttbr_update_workaround,
which has the unexpected consequence of being triggered on every
exception return to userspace when ARM64_SW_TTBR0_PAN is selected,
even if no context switch actually occured.

This is a bit suboptimal, and it would be more logical to only
invalidate the branch predictor when we actually switch to
a different mm.

In order to solve this, move the call to arm64_apply_bp_hardening()
into check_and_switch_context(), where we're guaranteed to pick
a different mm context.

Acked-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/mm/context.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index be42bd3dca5c..de5afc27b4e6 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -183,6 +183,8 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 	raw_spin_unlock_irqrestore(&cpu_asid_lock, flags);
 
 switch_mm_fastpath:
+	arm64_apply_bp_hardening();
+
 	cpu_switch_mm(mm->pgd, mm);
 }
 
@@ -193,8 +195,6 @@ asmlinkage void post_ttbr_update_workaround(void)
 			"ic iallu; dsb nsh; isb",
 			ARM64_WORKAROUND_CAVIUM_27456,
 			CONFIG_CAVIUM_ERRATUM_27456));
-
-	arm64_apply_bp_hardening();
 }
 
 static int asids_init(void)
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
