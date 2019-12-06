Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E8D115941
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 23:17:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zo1UZkjVlNrrElhcRf/mUeyojspUB6NRjHXZPAwGEF8=; b=k4kym2/cOsx7nO
	/Z1ajQ2brw89bB16u5JRI1eBXOyyFzz8knnvgzGloVuR4JQ+Nk7lLwdbtB+EvF5zQqwkeaMSyEUwd
	269lYzcqQlFKTHk8GMd4UJg5juDgvizryX8P0zgK6Q1UxoQQFZZ+GvH7l7nDmRvWxuPXtzLw47mnu
	sw3Bz7tVavIVUJasiXJVFmj7UT/BJWKby44Pu+ypK161F8NufWd5k18cNDn1V4AMm7l60UrkdwCeJ
	e/NnGCeaLwaqe1UL6Lq/g03ptSjxN5MV4JftAny7ILzwJePedVg790+GIvKHnEl+8aswMaeR3Q4WH
	SzUJoSLPekgQ3zRlKzyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idLuG-0001mi-8q; Fri, 06 Dec 2019 22:17:00 +0000
Received: from mail-qv1-xf4a.google.com ([2607:f8b0:4864:20::f4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idLrm-0006nK-JM
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 22:14:31 +0000
Received: by mail-qv1-xf4a.google.com with SMTP id q17so724891qvo.23
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 14:14:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=FhYYEjTDkPuKHbZnKePlOaf9pf8CUWO3nD3sOS+po+M=;
 b=c1Wx0pmgZzJDLcr5nKIxS6pdb72MNBZXygUHxUgHfIREUjivSfJmFNkd4nH821+c7c
 XdMpdHUqSUmAmYnv/wYcSmRCYqJtUh+jdTQ3/0TYFxbvGCg3KubysunPGfqG0BjN6R5p
 FZYsTRty1KKiwCF3GFPmHDSfqSVDKBB9Dl9Svv8Esh85iZQ6Gp8IldBOuKDVG0NAYrct
 KCNN1c4Jt5Qnd9QE5BIqwUiELeUVYdQWv32ArtiqQbBLSzZpaS8483/PTd49tfr3IpbZ
 ZlBwyqxJM8pdiJ2dTz9waDv/2F+kWZdAUGGPKaihus1bQ20pRuQajRsHhJifC3dGS/Vz
 k2Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=FhYYEjTDkPuKHbZnKePlOaf9pf8CUWO3nD3sOS+po+M=;
 b=Jkzi8arFKRlTYyUyv1P3mCTnXzsZNWTFaNjMBnaWyZNTA87BLM6rbVae2B0T6eb5Ri
 h70+yUNBfcTHvwP+bnL3AM3mIeFcowgk56a/320eAlWxtdz2DspLcgdMt98FBCOgPouF
 OlpsFZO0QqmZofwS0t9A5+T677i0aL3jFKGO5o5huqCwnW/NryC7uwOL2npBu3hIChEX
 RoHWBwBx5zV5PJmYPyaqQJBruTI+vkZWPlE3EQCb38B45VMJ0pYvGljB4n3OFNN0dK87
 w/+8YSP74feSSw1JH/4VpAnR40nJqUSVddlhibx2V06X3/URH3xnmdMZ1RRp40eHJgXc
 jbww==
X-Gm-Message-State: APjAAAXKnHmsRwrzDpXZ4YocYpuT7uQZgCz0YXjnD+O3FNRqmAt3Pifv
 GeM90RBRP5YkufE86GOMDcnMFHKJMck5nEup9AY=
X-Google-Smtp-Source: APXvYqwZLBeooXOHcOO29WvEdpgbxookvNvj944sJ15kbZCCqA2Ea8mnulB5DEVBZW8wLWpSg85W/yQRRXH7nkmyS6o=
X-Received: by 2002:ac8:2201:: with SMTP id o1mr15071384qto.247.1575670464028; 
 Fri, 06 Dec 2019 14:14:24 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:47 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 11/15] arm64: efi: restore x18 if it was corrupted
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_141426_673779_AEDC41F2 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If we detect a corrupted x18 and SCS is enabled, restore the register
before jumping back to instrumented code. This is safe, because the
wrapper is called with preemption disabled and a separate shadow stack
is used for interrupt handling.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/efi-rt-wrapper.S | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..62f0260f5c17 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -34,5 +34,14 @@ ENTRY(__efi_rt_asm_wrapper)
 	ldp	x29, x30, [sp], #32
 	b.ne	0f
 	ret
-0:	b	efi_handle_corrupted_x18	// tail call
+0:
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/*
+	 * Restore x18 before returning to instrumented code. This is
+	 * safe because the wrapper is called with preemption disabled and
+	 * a separate shadow stack is used for interrupts.
+	 */
+	mov	x18, x2
+#endif
+	b	efi_handle_corrupted_x18	// tail call
 ENDPROC(__efi_rt_asm_wrapper)
-- 
2.24.0.393.g34dc348eaf-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
