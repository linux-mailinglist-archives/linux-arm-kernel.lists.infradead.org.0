Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DC7EB55A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:50:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2yFhVlUkgldiw8soiEHEy/hKXIgkUUb8Hr99/MoXPEQ=; b=AGVwlZkMB8IGn3
	Axz7A1st5RZEMiaRq7Y5Ntdqx930OOAvFdFPZSyWLOmChftKXe0p0etp3oxnzD01TjAUH7cI/m5PI
	7PYeZLvFMSeD6dizwWQ3y9vSgXg44a0xevewIfylX3mpWPVO9yyeckb66UZHh4VcQNHoHoH5e/rak
	Z0RCCPymyDArKehakLKFuc+nmyrI95ED2+F9OhuOfWecgoIZLa/WKEKSB5RtNWRICCTbFbGs6XgIW
	WCdJ/5ABYHn2kePnqFW4S+IWU3PWgsmXwaE+fhKgMxbZ5Q8wXUAmK+UN/aS0VjVgMCdZgbhyWPJ84
	s8icfQebrrqnVTpxl8Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDev-00021G-G4; Thu, 31 Oct 2019 16:50:53 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDbJ-00073R-LW
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:47:11 +0000
Received: by mail-pg1-x549.google.com with SMTP id k23so4799083pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=K9E/B478ig/3FT/HPhGFdlo0v28kyi4gF0t5BJVte+4=;
 b=Q6nZNOFXJobNQh66SBURqXR9jjgGc7xPtfVgiH00Q94Wq/lt68cuARge++0iJSOHbl
 oW4NMEq+9cHqz9gbyOSyiBZcNrTjy/SOh+b8CYr8g09qvaCHNujmM1eqjZChkaUIta8N
 R1Nytm89Z4g9Csz0lbSdVY2lZ5qMNHUcg9EX/BaicjSL2hYM0k+G3ChifSzc8IJFDYk1
 GpIbxO2R5s2CgPxCiu0JT+4D9XPEJ59tckUnFp1YBhgg19qHemtrJSnWnwdM64fHfqzH
 V51MYQa1MpvdRri6T2bUaJeLk+9cOeQ3PhUqIY7fT381QfU0I53VsE/DJ2wREqjXj4eZ
 2Qsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=K9E/B478ig/3FT/HPhGFdlo0v28kyi4gF0t5BJVte+4=;
 b=PmjFZITK/SVbgwHDkMUhcoGc/dBmzIvRuwCCB3WmMek6R8tbvZPZlKxb7Ud6DdHAne
 7TdKawmR+JZkWbUQ9YnikSfMa/7Q22NiNoPQpI9EOT/p2JFrrrjf32/yo/7F5+wNrzk5
 hSrJmbd3/5c4Xw82/VlXe9WBlt2/gS9+lQCCu7UIDUkvQx/4QHMz7A39D4NXkiprFDSf
 HS0L/u31p5yv+rFec5jjJK6/6Kse9Vzbq9B1Nyaj3U/y/vaGt6r2BSgKvB9iqjRd6Loc
 chGhvmdU7TXTTzvFHBIRj4Wt5DTlMO/4w9Q8GjF0IFrV4S5M2LXfCI9dv6hrFoZpyFFI
 ClSA==
X-Gm-Message-State: APjAAAWArbwYHekGuDme6rtBeVLV1iZvoWAxzwzjJvCkcfEXeJQ/KsK6
 rAbE0j50eSBtcMtgvsimqiucOUpMUnN9YEZhyEc=
X-Google-Smtp-Source: APXvYqzC1qzspsODaXGFhM8lzAz2Kkvitd6Mcb2OnCrnHZg+dDRsPF4zisB/iRaRWzHFab+ubKlzQJYNZnG9GZBONHw=
X-Received: by 2002:a63:e145:: with SMTP id h5mr7826628pgk.447.1572540427770; 
 Thu, 31 Oct 2019 09:47:07 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:29 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 09/17] arm64: kprobes: fix kprobes without CONFIG_KRETPROBES
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094709_746475_4A67350E 
X-CRM114-Status: UNSURE (   9.23  )
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
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This allows CONFIG_KRETPROBES to be disabled without disabling
kprobes entirely.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/probes/kprobes.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index c4452827419b..98230ae979ca 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -551,6 +551,7 @@ void __kprobes __used *trampoline_probe_handler(struct pt_regs *regs)
 	return (void *)orig_ret_address;
 }
 
+#ifdef CONFIG_KRETPROBES
 void __kprobes arch_prepare_kretprobe(struct kretprobe_instance *ri,
 				      struct pt_regs *regs)
 {
@@ -564,6 +565,7 @@ int __kprobes arch_trampoline_kprobe(struct kprobe *p)
 {
 	return 0;
 }
+#endif
 
 int __init arch_init_kprobes(void)
 {
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
