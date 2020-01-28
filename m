Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1741914C061
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 19:53:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9XRzCyBdK6AY/jaZPFx+Ph+vI8xsPwkQepoU2hYxW1w=; b=H4SjQDXUEm04Mr
	ohIfaRruKI5cw5YwJRcyNdmLKOF8vVhvXDmlGYubgeNYWxTxUxkABURKxjf/CXfMr5maEko+Q4QTZ
	0N4OdkqFmYk6DsKc1RYAcqzMH7Qzbyv7CnstVyRuxdAufOL12/HBR4crbVFzwO0PP6yhF+RXo7YZT
	tAuDl2NczpdcMOVL+RvhUR5RXyyK80QEHWOmX/pbpAJLoersW0DUUTvpyv1Xd+jU2zBvybt2imbn3
	5gKt/0BrCOkKnNLKOAOZhsCUWzHcbSoQUEoYox5m75lBuSHilRU+eXbcb0r90+B2nuG3uI365jhgE
	fuiRXR5CiWffVgdW4Dzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwVys-0002xR-26; Tue, 28 Jan 2020 18:52:58 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwVw5-0007vU-MX
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 18:50:09 +0000
Received: by mail-qk1-x749.google.com with SMTP id 12so9004048qkf.20
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 10:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=bNCXRmM/yr4GL3yZ1bhHRJc0r5YpsDoQ2qXNiKtbIjQ=;
 b=o7KYQScaTc5r0bWGyHvOSj2qDSparI8nM7EV2GGaR8zJgb85Unw1bAkclg2/3gkVjV
 sWiP8fvXbxWaFa/3ylPd3mUT0DJXJwDNPclKGR0BQxZ4Cc2/1/tkupECkGjVL+qym1xJ
 Ae3JulKZHCqg8uCAc0O9oxR71IRgfwLYrHi5idXDY3EpdKDxL0ypLNFgS5UoGwYlvaVK
 coXWpBTQvrtoEim7i5jhgtRDRSCIEyXek1a+HFz3DKK+zmjORBlTmey8aAdNXMqQeIAI
 9YEW0BDh4vOazWGWstuyBaqYyWx5H8LIDc1PihTJnexHB7ha5NBdEF0GBHhBS0eIc4XK
 0rfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=bNCXRmM/yr4GL3yZ1bhHRJc0r5YpsDoQ2qXNiKtbIjQ=;
 b=B/7P7aCbyuOlIhm4S8X+tvGxLOLv/7CzVxMqSkMOfEvM/E8EQspZX4mhSllJ1CFM15
 9gW2UiOnDUZ3oyBPZQ1o+hUYVpkPFsvfkAe03W2z9dmclf8XgLSIxGtegXNjS0bchkWC
 ZWaZ8EunfsNCokVefJUhVTGnnqaqSQG5H3ra3R0xiUAD86Mq6V9EpoHf8N/hQ3p7rR+d
 Qt7nNT6uxsylBengl0N4+HcPCOy2bMAW77RbHyFyLGwgztWK6utIG6qa/yi890o2MrEv
 t9Eu9xlLe645WDWaKOE8Gzqt8oKW5+qqTBBz/zMPeUQL+rwoVRZUrAD1V7B+nyXjHI0s
 uQ5g==
X-Gm-Message-State: APjAAAVvDQWm45STjbi0chwpaAXKJpn4hL+Tbdn6BPEFpL8p+bi3V3/l
 wkS2Ya7ZsXpqrtRDhkidUjjhRm2X64FYdQvu2xU=
X-Google-Smtp-Source: APXvYqx+U9CfKO16wIXNBeeO96dJ60XaZ+hhyoe8kAoit2FdttoilLWi0KpO3nWQj2EBXb7JYYq1XAJT8FXWdsvdaLA=
X-Received: by 2002:aed:2783:: with SMTP id a3mr7863657qtd.284.1580237398897; 
 Tue, 28 Jan 2020 10:49:58 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:31 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 08/11] arm64: vdso: disable Shadow Call Stack
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_105005_877327_9AF487E7 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
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

Shadow stacks are only available in the kernel, so disable SCS
instrumentation for the vDSO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..a87a4f11724e 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
 
 VDSO_LDFLAGS := -Bsymbolic
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
