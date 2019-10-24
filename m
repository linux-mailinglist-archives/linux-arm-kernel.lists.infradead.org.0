Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA3BE3FC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2yFhVlUkgldiw8soiEHEy/hKXIgkUUb8Hr99/MoXPEQ=; b=NRLiQSQNNvAo53
	/0lq1r0mW3Ru8vwFvmcqY2ES283f8A9yCG1pA/TqltR7aTZd5L+kvIeV0oH3UGdWpSeJCWp8OuO/7
	ySDCV8SyV4511RN7gjw9mMRiZITS9sZ7bEYoUoKXvHgigiJJcsxWkBQpnCkfGcr86VWu7Kp/xv32o
	U3iPQOqQjpLyRzau2U+UibWFme5/bwMu1i8ON7NW6tsFVyOkRzILF1QT2Y3YlRzu+Ki/Y2/tpnEMH
	uK5lM93NIWGqdeAtcJ+M4mYepLkavvOtD+Jwd7fv7ng+7tD0KA5xhZCVc3VVFbGwplSGtzvJCLbdS
	4gQUNBLX7XC72UE7eNaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm20-0007Uu-Vw; Thu, 24 Oct 2019 22:56:37 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNly5-0002w5-Ma
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:52:35 +0000
Received: by mail-pl1-x64a.google.com with SMTP id n18so175454plp.16
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 15:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=K9E/B478ig/3FT/HPhGFdlo0v28kyi4gF0t5BJVte+4=;
 b=Sf2++rx6Q2f/i1fpiY1IH5BzPv/ntmDtPfAYAcJd6USBAJAOz9sAjWsxe+ZQUTmcnx
 TMNKhZ9IeyI6W5I8YOZc8fXZ3u7T3/BLv8RDrQNIon+Exd84mb+I8CDhoR0YeS078Znp
 iX0O0MXuFJ/BEJRR6bcFehBfigS7d/r0z9CxwLPRboIP4QhEcU+ca/u/4Xa4bj0S26uy
 ghCd/C77mcUctZEMYZqeRUwOe0hyC5c8SFUlYqcW/iOIJ4/mnlU1ytp206qaDtb1qyhG
 6rlkjs5YcBzM11A8IPnUQbN5y1qAQgVU/1FJ7AsSP5RvjVSpldSCmL3izOFewNOkwTDQ
 bLSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=K9E/B478ig/3FT/HPhGFdlo0v28kyi4gF0t5BJVte+4=;
 b=TlCjvio2eMmMdzNO8kr1LC1Q0yoK8lhQSQZLhXLfkewfBt4qg1jnrWTtCdT0nonvTd
 LSZjy6Sng8YOH+M92K+9SStesqgUmnSt1mvijHxAELdjUDVslUr/IenQCoK+cA5W1BqT
 upvbtRCXlfAOmua/CmDEhgqtiffenhJCayS4a4XRTd0EHf2AiDa3p3LcdhX9a9bxnLOA
 GpUdkYaxXQh9I0tP/BNR/cjRZoZV9DMR+fuzttApWtT/mW3alanYtpsiUJ7+TKuxhDBF
 Y5s0O4laficv8D5KNpsFJrpppZd+5dBgX8xq7wDpPOia1+Yqi2UiQHs3Hf2UyZb30hl4
 SURA==
X-Gm-Message-State: APjAAAXGhOEYfPctGiTHOCJDJKECW1nQmBX5KaZIy8ndoQRr0OiA1j9u
 NK+/hWDho5AYk5RKmrxl9Y4bOWqx3pjO2dkS3Vc=
X-Google-Smtp-Source: APXvYqwUVXHwobZjxnBDuN5eJ28nFXqkiy4fKRpIDKsINI+3xWarkHRyuPSmd2/SRLrM/YyI5fpTK4tzGG+Eou/B428=
X-Received: by 2002:a63:1f4e:: with SMTP id q14mr536510pgm.144.1571957551921; 
 Thu, 24 Oct 2019 15:52:31 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:30 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 15/17] arm64: kprobes: fix kprobes without CONFIG_KRETPROBES
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155233_769842_C5262E98 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
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
