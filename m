Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B57AE3FC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zn5jANRNr4Mdjne4PTPmgf0r4BQyaC13SaScdL2cf0Y=; b=ReXuMGTFMoS+94
	AK91O648hbLJ+6ZKgi8MMZxxxcBx2wuD7g9vzYnG0VXwTi5RC7H0SU38+yPuf5G0/ih4ktirU3wzv
	IKN2xDiaHveC8wTP/gP/yvmEmKSZbRwmhIalCnetEQSEocUssmFdtbdOrncIIqbHtZ/sy/Cz+gRzA
	8fTejDaHcpkFJCmM23QQXZbQ5QQaBV+UFLulvNFyMw12qN7MY6yyyVThzo1U6Gh4O/abffddp9e/W
	caZkApyegtVoi0611ha0YI/iM8xal4Jjt20e+oc9qQm/0mpjSE7yCMUSSFrP5dXkqHHic6pDE/54B
	QFdGYxj/p6d8892gtH1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm1W-00071P-Ih; Thu, 24 Oct 2019 22:56:06 +0000
Received: from mail-ua1-x94a.google.com ([2607:f8b0:4864:20::94a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNly1-0002sM-Ch
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:52:30 +0000
Received: by mail-ua1-x94a.google.com with SMTP id k13so119896uap.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 15:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=+uiLq+iUoKYbKnLFQDjwDIIzqGudQy8o1UFEOkmkrHU=;
 b=uLf+lw77gVEoxfyZjVffG8N9AkGSFT6SZ7rKTY6igTbvtmj5tkgs6S87yKXapR9kBD
 NfJzX9FsM1QPF/BRZh7tuTNd9Bft+wBmoGpSgAiFGgU/eFojwHMx3hY/jiQo5OXG88H+
 n+2/sETYJSjx1UwcF1JDwNNf9o+ndIsqNQGNcfRmpV1CBEoxTmXgI879l/WxjZMkcbmb
 kFXbiNvmWzULL9yr6G9yxYiRMJuYM6XDRrKUuDcJ0X91UFc9CGS/3Wg/GkwQsbD/KzdG
 KcYEc9VsXZBk/vRUd/5xFUU2jMu6PAXVjvl8vJIQVZYzQ1oFFfyD8naEYVJQbR65Robs
 mdBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=+uiLq+iUoKYbKnLFQDjwDIIzqGudQy8o1UFEOkmkrHU=;
 b=RK+1clbLnjYO23/OXNDGWjrNeaPmqzctRsBdpS2zkKidY4t2JKCfxsz0GDUALwYC6o
 Rf/nvQpsrf4DjtyPsdM/U+jyWDy9UVoM0fAPcN5yhicPNezBhUz6ny7mOG2uH0LMHdCM
 FsI4E3gxMdzqnv8ft5t5FSlpOquo76ZcFdvhQhvjxjjekCZ8y9q4oEW/FkaeO9jBj+c/
 ZBhy0NUVL6FszJjIQAQliJ/BtZRHcTWSBWAS8DYp5pzfzAfVqECidTEV5W+6XsZLwR56
 6ybg/B8hSmin8Sg2BCOUPmAZhpfACzLV4YvmYkzB8wnKOMS22FbwY3wBcWc750+jH4hV
 WMiw==
X-Gm-Message-State: APjAAAXnKlm8dwGWBkUsZQ+eIHnHScP6wvmY6rTju4bmZjgiE1AsKHmz
 VeZ4Ih7Efudf6cp1bteTAzNNBAufSiQLT2tFM/8=
X-Google-Smtp-Source: APXvYqzRSdeSSRgGBGnoZCPWuY69NwMrQK4NIj2mmmt3agCQs8uemlrog/B126rrh1wmew1IPRee+I1rJJkV4cdOR3k=
X-Received: by 2002:a9f:2271:: with SMTP id 104mr36427uad.127.1571957546730;
 Thu, 24 Oct 2019 15:52:26 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:28 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 13/17] arm64: efi: restore x18 if it was corrupted
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155229_449879_F27BBAE9 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:94a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
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
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
