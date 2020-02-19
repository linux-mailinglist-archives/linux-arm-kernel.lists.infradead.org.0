Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1D4163836
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 01:10:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mta+urjKXaKaOHv9z8GNkMB6pw1+rO5EkXIdJGgl3Pk=; b=q0zLkAqCKtBto1
	0VOF9REtuSIuV0h4uQISofE9w8Yg/yOLVBGbu2Ad4TXWbG+ek1dZSVmBZKvb3QPMFSOwj7tZ+rSy2
	sRDvMTBK5xI3lkpFIbXMrJX67MN8omzD1I8epas1jVdk7cjvR4rCqMf7p2wWWpUjd7AGDQAkhMNf6
	qOMg2d1/euja17nwfKOUcuvQ0qSXJoameg4zLWj9m2h44x8KlgJoWk8eSialM04ENyft8X2aiGyhc
	x/qYgCESG6UhlcJzSZIO0EKUxdAbOVxcM8KmLzrdefW2PhQvgYyUf19dQzjJKAEsF7lAPVoxJ0g2c
	xyeSczyu1p5oWA2/Exgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Cwo-0002Sp-MC; Wed, 19 Feb 2020 00:10:38 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Cv6-0008Dt-Gl
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 00:08:54 +0000
Received: by mail-pg1-x54a.google.com with SMTP id j29so14897972pgj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 16:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=QniVckAJWtqLmmFgAWqtQvDUqGmhiEDDkK5Atd0uI+w=;
 b=qufzpGjEppDMWPImhTuGEdGT5fSrkUOCFRhcyjZobkamDvVW8lKE7S9n8IfeI9kMjN
 GjSsbQERqiJCrQWg5+yur9ZmpwI3842rBfYePp5EboZsGV0A9NX4KJSaHBYX9WS8TV/B
 YxOPfKJb3HR14olUqNzIghumWLSF9JfupKrwhtKGLhHcH+iy/cZLakuxTBBKr3BSQC+Q
 l/d2gtUBVVI2+sDEnrXi83zlWZ5bO/OYVixaPN92nFcUWQ3ZPH+WoaCJq/ch+3VstHjI
 DDMR+HT+E10IhOJZsyS+YJ4gi2CPv7gIBX5icVylNk3GYCOKGpIchxJrvY+jCKqp3YLe
 pYjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=QniVckAJWtqLmmFgAWqtQvDUqGmhiEDDkK5Atd0uI+w=;
 b=Np6pBwhtLuvucwEiF287eQrxkwZd1Op2VN8YBDCUeGoFP3WyJP3wAlLyk74qzQP/Rh
 wLX87T3xq6rMdyK4yI8HPwwQIII3K3BGRtb/QyhMG8sXjnwEioh3v0SACpaCZ9MdXsUT
 lEciJMvx+7hXuwBlxUb0RfrgfkRQYK59tusSNsR/VJs9P29kBalRhflvBa29uHuRBlGp
 F049OeLKXXLVY/lvJx0wo7ExCWRtXA+mAEky1DxTlJ58LTvWrSlCBB1V5hebFHqCCYIv
 REd0H0rs1YxnOrc4pxUArF586qhy0mfVgNEQtzxiipmdBC27MOyS2flzCyOKZbVMqOhH
 Atyg==
X-Gm-Message-State: APjAAAXNyvkehBR7m5N6HkDGsP5p7smdg38rr0jDVkNUAowNy+zTxvTD
 0Ibm8AGBHp2qQY66XSv0fBWF/lrFDTq/iaF7GTc=
X-Google-Smtp-Source: APXvYqwciBBhLealMEWoo9KoEMacGgV/WZH2VTZ4SCan5a+9yYr+272BEeKH1BEVWPC4FCthWzaq/J27w407jXSF4NM=
X-Received: by 2002:a63:bc02:: with SMTP id q2mr24517139pge.174.1582070930907; 
 Tue, 18 Feb 2020 16:08:50 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:12 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 07/12] arm64: efi: restore x18 if it was corrupted
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_160852_673370_3290F698 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
