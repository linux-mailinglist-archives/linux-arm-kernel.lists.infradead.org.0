Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23874ECB41
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:16:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgg+ynFX765AsTUmjlJn9/2mlvlVDI5jTY+W9EuxF1k=; b=ci84wJ5904ZVpZ
	yLTtaj9HGVCLUThuZElQwEeLk/jb6J1XvyQ3qCKASOhvKzDNQWBLzjmAWxCL+gBy5Ofl0AEDVu/xP
	md14iPYnBrtSNgyXoZ/hp5n//xVFxbXAIDixdkxPFQ3W7Hpn6M944Xg79v52WE7qkqkyp3OCbTJU+
	oXHhx/F1K882Vx5+N6IPQogONbDryY2lxzSOUyv6gEo8Po73Ikpob3hWGt4GTb1sZeC+muLynOBqN
	NMLyjCioyP9xZuSKKyxotLzmFVl99GSeHNuHiXtk6kymbCuDiozXb3C6SHCh9OEEky9T1Fg/sINi1
	9v1wfmchTCjG0/qH51BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfDN-0004OD-LP; Fri, 01 Nov 2019 22:16:17 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQf9n-0008E0-1M
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:12:36 +0000
Received: by mail-pg1-x54a.google.com with SMTP id w13so7993675pge.15
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 15:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=uZ/kQt4EYM2LvpfCusnWoxftHyD2DxgcHTICv7X7dqw=;
 b=odv3zPa4RgQ8s6dsoDxvbsmHF3EENGYKEFkki0g9WgsTtiUy1PWOo4QagxAFwNjlM5
 UaXo+6ESXS0tfN9t/uaTyImKPgoUdkbU5/6mXIU+WDuhuaMZVZlToQjZBZjUeJ+XCKaN
 AZaYtQv4cn3jcrlvgSVPiMAL2aX2o/kWtvg0ZhsbFx5XNHfG27Zn+lw1m2rgEzTuN0Qx
 AhXuI7DUwTtXfZmNooQs1nB+s/Ns/DX1LvGMoiAbd56F3AJ+mJtqGL8w4imrJ9czieHh
 o3BNgiNlRATQnbvYsOjBOz35StnAU9Usdu1hP8mnieHo1tIou+WOWs5WVmR96RMvFpMw
 BkXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=uZ/kQt4EYM2LvpfCusnWoxftHyD2DxgcHTICv7X7dqw=;
 b=oIXae33PstjqHSqFeZ/VpvIisQ9zmP6RG7KnAxQjcEIFAuH10ZNfgBcYYjIOBXHM7C
 2yar5lEZnlRemW2x/lEqFOrTCSVHKbp8cHl092gS2kGYZBotAXijabcOb88xkGQ5Qfed
 QOLsNhSChlCq3emQ1g/BHLeHHtBwWiCCap1/VmVW2I/cyD0soU/QpELWXPsWrhEv619D
 veBHK2QJ8THNMWuepiSw7G+MDsR6C+ul85taZYA/6NmlhgQyT2fhv7wxjsPK590HB+cE
 EkkrZ03orVedW9CdI/atlN4PnVhHnO2pOz8fCIld+7NEC0TkZAAwxOUdm2yuhYN/e2dL
 aw8g==
X-Gm-Message-State: APjAAAU9k4rjOQ1QJmtPnVHai4zRrdZKAVixxFpz1upxpjxnPNwRhO8G
 m4xGP70hEb/QmVU7hYSFD/91JhsLP7yjZXwd19E=
X-Google-Smtp-Source: APXvYqxnvjccMKGZa+EMFNvyVvl4JQq0YHBc8XNC8xBIuIHK+TPnyLwR96cD6M+G58PTtTiYueuKAoyE/cNOXhTJ/L8=
X-Received: by 2002:a63:3203:: with SMTP id y3mr15810585pgy.437.1572646351983; 
 Fri, 01 Nov 2019 15:12:31 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:47 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 14/17] arm64: efi: restore x18 if it was corrupted
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_151235_131149_8BCB2142 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
