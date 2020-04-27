Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2CA1BA9B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1j/H3USD3kzFBZEnVDNYRG1++mnSN6203g4Zmrk8Xio=; b=ZXlHEJuw/r+eq6
	KkcVcNqHRI+H5Zyjg1hlVqH5kraWmhNSthSeQj1ofXCAma2JfMrYV1rG+xythK6C/K2tzag9khVt8
	2jHk15LzdWBGM61y1+EKHFBvF5G0eXElMr6kivGB48K8+z9uuhmUDM5skcjYhmx142w4aoWbEWTlS
	OBLu5H3qBInTu4zd5TrLUd4snqum2pvQ4GcPv639nQINNJQPBmqFqzBmHM3CAE5XFUvoohJlfPlQq
	3WDz5UN9B0a7/302A6mqOkhzgqWR0f124IFI48LAWT+lRyApCMl4t5CZWcpezR4NPbex2oHK1ia9I
	pJM1KCS8/7DqZhMNjxbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6Da-0003zN-LN; Mon, 27 Apr 2020 16:02:50 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6Be-0002PE-5g
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:00:51 +0000
Received: by mail-qk1-x749.google.com with SMTP id u22so275208qkk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=5K2KfWGbdPDvciUxJWKmXs8jymeyhVJTI52mBn5Jn2U=;
 b=Z0D9RdpHbbOHHtNvqHRo52aZbZAj07cdZRmpWEeU3iQTueml5HmYOfEBcmC2kKVIKm
 gi/I42ma62LvSvGNYMm2NpEhpa6fsNrdLgOepXOs2lXtqi4B13V7mob+8FE88DmkGTAj
 cIfoOAEzDwtio1vu3/bEbEwVj3iXpD61m74J35yn1WLDpR++aGJg9GG9gk87kfObQfaq
 2Fr6/vhs+4bP5L3TBzKyaTEUUQB4mwZj8HZ3pjL3rr671/M4/cAQ1XkhNhG0tTSV5H0Y
 Lghd93Heuw59N+AcYzl5+VmFD+sORBxuAIoCgApPPsaEMCghNZl1+DyNOu8XOZdSuzS/
 tqpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=5K2KfWGbdPDvciUxJWKmXs8jymeyhVJTI52mBn5Jn2U=;
 b=pQ84ziRlapHWkg3TeATfzD6PADzPxKwY27zM3yRmTiRzFZer2cDA6Lru2UwGPZtFFL
 ctZLAd26zuZWj9i1vLkIGGxKOFi+4z9WtZzVshax7UZi0CLBBn28onukYiKaLHSw6YSJ
 Vk/XarhkKJFFE0741W+1Pppyu8rN20BaxFd2iPySj7l6PAMFNSrVE6KwBmcxjtFldUoy
 DHSifgKZ/6wc8tkUVtLprQAVJCtGsv3sUGvfxqGaJnS6NH1vrYPJMKQ3tnzB8h525GK2
 9H9puk3dTqqKHVymsbNS4t8MY1OgGKf4RauQy/4miM8dFRaftxj/x+wi8A+YQ5oY8xQP
 uMOw==
X-Gm-Message-State: AGi0PuYiQvQjidAEnT1VsX3+gTsd1gKm++mxpE8gHIAAofI18DKmrTsC
 j2mhvDpnKAaDScJPw2wyk6QXu0Eh4T+jD9y6Zn0=
X-Google-Smtp-Source: APiQypKZHPN6pHK1vtX6gJq9lobiR8zzmYnoXCSFDICaarTBdgedlZVYx+cSajiHci65J+75kJpbiA+ZLbes2n1w/OI=
X-Received: by 2002:a0c:bec4:: with SMTP id f4mr23363061qvj.26.1588003248063; 
 Mon, 27 Apr 2020 09:00:48 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:13 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 07/12] arm64: efi: restore x18 if it was corrupted
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, 
 Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_090050_239400_60B9932B 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If we detect a corrupted x18, restore the register before jumping back
to potentially SCS instrumented code. This is safe, because the wrapper
is called with preemption disabled and a separate shadow stack is used
for interrupt handling.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/efi-rt-wrapper.S | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..6ca6c0dc11a1 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -34,5 +34,14 @@ ENTRY(__efi_rt_asm_wrapper)
 	ldp	x29, x30, [sp], #32
 	b.ne	0f
 	ret
-0:	b	efi_handle_corrupted_x18	// tail call
+0:
+	/*
+	 * With CONFIG_SHADOW_CALL_STACK, the kernel uses x18 to store a
+	 * shadow stack pointer, which we need to restore before returning to
+	 * potentially instrumented code. This is safe because the wrapper is
+	 * called with preemption disabled and a separate shadow stack is used
+	 * for interrupts.
+	 */
+	mov	x18, x2
+	b	efi_handle_corrupted_x18	// tail call
 ENDPROC(__efi_rt_asm_wrapper)
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
