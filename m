Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2D7452A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLSscBmNJRGAuE2Om45Yx19FF7uscGX3IETCW+Os4OY=; b=N3YuM+46HhN/8/
	kXoGSG5G47e1L41oT9DoN5aqWPgDLlrF99hv3386c0hauqsZukq/AQN4763x5/iCkDqCb7ev5u1Ma
	71LDLn64MYe/9PLy9jUPBzu/JYuVs+8kcl5iQAhU7AXEcZZrchkn7x/kULpH+GAn+hFMXFg3FiirM
	3+FgTmHZfN7kg4GfeVi6DuP9gbNwj29/MwwddX7dd8MN05Au6dcvmjcCnwJsh60MYw/0iWCs/idTH
	kfDBNCB59V9A6HUbCT+gBZ9TzhtppFKo8KEDQggTwuIYld24KOn+x7KlVjSE2AFX51zJRkT79h8e5
	FKRNvdW2viXWmAmrOj9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbck0-0006ue-63; Fri, 14 Jun 2019 03:19:00 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdx-0000WE-Ar
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:46 +0000
Received: by mail-pl1-x642.google.com with SMTP id p1so382045plo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7MRMdAKqkkU6zuM8WMZXIs4D8fug3sxafZUJy2Rr9SE=;
 b=zIBaeowzCoFmP6lTOOtVqg/coHbsWzGE6IBagj6ylKyIvZwnD6kH8rzh4+Rv3ir17v
 1Iv/Z0kG2fU8wIp8nOT0hJqzoN8Hkd4pviocn6TLwNgf4OfMlC16x+V8vN8XjM+4i2aU
 lDKKqPw1NWmXYS/R5KBvQ/FLkaSYfma/KfVvfIAd/ZUfK2O1lFmzB/hNohE6YPUSH5vJ
 fMSmeop/Yiwuzr680e0cWfbIKBAYuRran7/zaMqPOok2xS7XSbcibw6dL3UX0yaskt/q
 bkLWeBgRG96yH33aA4S6a33qUazKKP4YfaEZInOrc9MPcryBfcvP6y28zmRVLTTNNzJ2
 5KeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7MRMdAKqkkU6zuM8WMZXIs4D8fug3sxafZUJy2Rr9SE=;
 b=S1rDiTYzU326/dchgC0fyerO19/IjHbfdozvLKVe+3Gyzn+6541oM0guH8qW6SZ2zl
 GyyTI7PYAYwS/lG/PCwcUEYiGG2+JSPB/XUirHGeXckPCTh8c3fQPosGSqfP1BylP4lv
 a7t2x35si4xjJJJncjORRgdHVWMQIrKnK9inMtqeiOV8a1ubBqx8b1Yy0stQo8ChFbL1
 6gQIGynH30TV4LciOg3yiJCV9EWwV06mRteiwFfuf5kOv0dCFhpjv2qvk0oe3tJBLiW/
 0myhpa/wQX4b9HRp+/QZHzM1jcp17ku8Pyjvs4odMtXuy6EK5lzyKs3E9Xbo6mFbEk5X
 IClg==
X-Gm-Message-State: APjAAAUyTnZ8tZxzpj2/yl/HMz4yWoyh9dvPHdBmb68bgGQXmKEwETn6
 VKZU5L0dcSmRPKZUtXrQmEDKexiesfU=
X-Google-Smtp-Source: APXvYqz6RhgMc8g8mnKBOwmoxjNrQ1nJMlP61xQip6ol8kykbvXyf74BhFBqpojp8hF+tY1HAFnpPw==
X-Received: by 2002:a17:902:e582:: with SMTP id
 cl2mr76144694plb.60.1560481964343; 
 Thu, 13 Jun 2019 20:12:44 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id k11sm1008499pfi.168.2019.06.13.20.12.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:43 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 19/45] arm64: Move BP hardening to
 check_and_switch_context
Date: Fri, 14 Jun 2019 08:38:02 +0530
Message-Id: <c1008ca215c8ad08528e8de8f0634e2b8ea5a0ed.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201245_479478_56509234 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
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
