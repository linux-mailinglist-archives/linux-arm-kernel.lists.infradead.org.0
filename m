Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F69F0AC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 00:59:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgg+ynFX765AsTUmjlJn9/2mlvlVDI5jTY+W9EuxF1k=; b=sZNwWSO0mq9b4I
	vjT2kkoQwj12cBGM0P4/a1s78drrJbrCyePpMS7QOLldrpXvc1IPE3sO5sxYafDKfQSFKJtTGtvX8
	p47rtiUQ/vcVEUgA/Z0hZhsDRjcL3dKN7ntCjSoTDwpjpMzJ4nP2CtTmrIeX4OgRmey5xq/hrNqPn
	Dz8Z98J0OWWfm8DZ92yIIyzhPy2079f/w+zV/jR9WilKoArATN+2CqC+wvD3Rxz17ZOI9UQ2zQqaP
	ax13TUGOirlg5WZUB0mVvKfkTiZIlDyxLvGnI6z3b/haU0cDca4IRua+h3UYtWoZpGJgfWVhUIzBb
	cvFEzTu83ZaOhUPCJFEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8jZ-0002Ds-A3; Tue, 05 Nov 2019 23:59:37 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8gp-00087H-HN
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 23:56:49 +0000
Received: by mail-pg1-x549.google.com with SMTP id v10so16325305pge.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 15:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=uZ/kQt4EYM2LvpfCusnWoxftHyD2DxgcHTICv7X7dqw=;
 b=JN9cRXW3eTB7Z2OFW88PXu3tlOY8dStgQEbY8qRUEgweBu4PUIX8TxJ8b95mM5amMG
 dY/gdqPeBwxcAj5lhK+CRHRd9Y9Vpp0cdvG07lguYzEIxlPQjlLTWMX36AhhMbrOp+bu
 Cl6hQENGtphPESeiB1wGFAywqSFr434R5npfiMW2A0Y8vIjGPZh4zUIbEexaOWFxdCOT
 CLAJQw1H0pC3jFL2n55/3yC6h22GnBsHily047age54Pgx3FfV4IqFsu4AOA5+wZCKOA
 Vh966NbyvN58mnGWJfBhXw2nRYEngLWud/TUyZ3xl1yXKU0boesH5G03NhQo6gYktAXR
 HQGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=uZ/kQt4EYM2LvpfCusnWoxftHyD2DxgcHTICv7X7dqw=;
 b=o9AbNTl0QkSlVbfe8pg/hhCwkfzuo5wlj1bCLhXtWi3ILId5yCzzbilKdPjugMqyEx
 Ug9ag830WjU5Sq0xdPraT4OAY7XVDc6ch2pDTVb9D9VxalgVHwGIpWYSBgfnVPq/JHPY
 xKB3I9o2BI4Z6CslVAGVQHig2boGMU0Hn7BCjSXb8Gv8RyWRcT1YHyYFup3o0qSaPfd4
 lt4xr0jYjEdK3Xetxx8WV4BvV6gjiRwqWeo9YXal200dka2miU4YbhQinIDL1yBatq5w
 GvsZ8QIjLBuj/yFOEm7idCXfATSAkoAelvGB9Bt8ZTX7DQIS/wmH/KXtPdYpHhP5oZmN
 XLIw==
X-Gm-Message-State: APjAAAWdtMyGqQVuqshly5BNOgoUoJ73UDPMlxj2W/9f50sckoKYnDGW
 Z+nyAlvxIapwuWXix2qc1kAK3xUT6Xb1K9b0C3U=
X-Google-Smtp-Source: APXvYqxTWXWUBEJ0UiXFjDLjnNptoAXq2B85FgeAZV4DWhGGMZ0/dSlB0BXzaBE92E4TUaHE+e4XmBjxNCDfcOvMvRU=
X-Received: by 2002:a65:5a8c:: with SMTP id c12mr39559106pgt.140.1572998205590; 
 Tue, 05 Nov 2019 15:56:45 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:05 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 11/14] arm64: efi: restore x18 if it was corrupted
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_155647_596698_BED129B8 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
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
 arch/arm64/kernel/efi-rt-wrapper.S | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..945744f16086 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -34,5 +34,10 @@ ENTRY(__efi_rt_asm_wrapper)
 	ldp	x29, x30, [sp], #32
 	b.ne	0f
 	ret
-0:	b	efi_handle_corrupted_x18	// tail call
+0:
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* Restore x18 before returning to instrumented code. */
+	mov	x18, x2
+#endif
+	b	efi_handle_corrupted_x18	// tail call
 ENDPROC(__efi_rt_asm_wrapper)
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
