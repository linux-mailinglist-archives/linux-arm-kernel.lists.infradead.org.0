Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CCE14C05D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 19:52:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Os7yYRE15OzR+FINFPKua1Akl8A8yeeAmc3WXP8ZrY=; b=d/VXiQF2M4KfGa
	/6b+/+k5brXFZ9Yqhl21h5edK7Ho4GviyuJ/pxKyrNIucwWa/2htL+B6tkTzOVmyKGrSzUqjAEdmP
	SxzX+D3dE6KscWc6ODqNy1gd689OFMmJmEyMEFxSFrONdfCo/KbvdJl7jVh9cbaQGJ1zMZpelEAMs
	Cu6jTIPiuN5XPSYrFpDlWHofaj7tnTHbD9Xx48WLsqivNZ1oMI3uWF+VawRR/t72ZDH0jPs302fFL
	zFB2XOVBIiDsFe82F22VBpc5WAxq+zVNPbg4CIpP4hfUcWbq6AlOuQyHFIQYfIsdNRkZZge9zENZ6
	YatFM7+bYdl5RhypC/sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwVyC-0002Mx-JL; Tue, 28 Jan 2020 18:52:16 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwVvy-0007sr-Ff
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 18:49:59 +0000
Received: by mail-qk1-x74a.google.com with SMTP id i135so9004354qke.14
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 10:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=SyMS6kTKxjGvSfy1yskMuy1o1NPxNd1pRRReN/eh/Yw=;
 b=iDoWJGqwVEP2tHMWm4+bS9TCXvecvsiZmIGPR2wyOSJfmTsLMvUaQm2ursorFU3Ra7
 NuHDNghwRgHXAAk9m9KAPMbK4uTyIcT9xr9wE2QiZ1dUFfX57GqHyiEoehb3XJLjS98N
 YFNOY7pkup2SOO21fY5am9qSl3hqr7M+8fKeSXR1JT8QJuNrKvAgik306CX6uTTelKVO
 jSwC4WXDfkQ4RkIwPUjXYeg4cRSfyvTDlYYopLdqGGEns5H+6Co2aSHsmd2TRUBwb4ST
 Jn0rsT+JOm35IDm2DnWe8BFGBEW8Lny+TWpjqr/yQiw7tMRlFt978M/BMe3aSyd1G4ZY
 ck+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=SyMS6kTKxjGvSfy1yskMuy1o1NPxNd1pRRReN/eh/Yw=;
 b=c2Xa+1Y+zTpKjGgwO8V8LQ3T77roe9AQyDbdd2vQLt0URT176kXFx66Cd3jll+U2/K
 bw1fz8qB7rRciIEvqpANEPb1v07H+QZAJ5Z0665ercmsS7ixZv1oL12y06/rAw4voI4x
 7FpppYdLxHMzQydXywv31+HM/qXkjf8NKYhuhagn/9srfBglAGViaDOBm/VCZYn/22tj
 GupWSB6Lxr6xY3UwwOI5vHrd24JORGDq5dEJ9+E951wrmD9QM8Q/ALIceDdAg7sXaE/j
 QBLK8Iy69dogydAopYU7rOFrT5xR4wvWH4pQasQ9X5iUCzHMiTWyzAw/gAiJVWO1Lxwq
 p0hw==
X-Gm-Message-State: APjAAAVMqrH3J8TYLtj2g4da2V7xUnzv9MeN6mgN6/u3gCZXI2FdZThx
 ptonH2tCW1hzZVSfMDnRCIzwC8dh5lqEAfm6YiY=
X-Google-Smtp-Source: APXvYqwBDfyzeAgl4Hbq75PkVeA00YwL16x26LdN4T6C4RXjAAHG16RhCosHW83/V2HMDMrDJF1ZlFrzqFIRTexeGxM=
X-Received: by 2002:a0c:eacb:: with SMTP id y11mr24452398qvp.68.1580237396348; 
 Tue, 28 Jan 2020 10:49:56 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:30 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 07/11] arm64: efi: restore x18 if it was corrupted
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_104958_546077_754EB5DF 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

If we detect a corrupted x18, restore the register before jumping back
to potentially SCS instrumented code. This is safe, because the wrapper
is called with preemption disabled and a separate shadow stack is used
for interrupt handling.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
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
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
