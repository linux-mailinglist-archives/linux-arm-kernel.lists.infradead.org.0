Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB7AE3FB6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEi1imM1P+X18Z0r2w2ujExW9pINMGd+WwNNzDZvFGY=; b=mxfX2dxPdFkJDq
	w6sWqJXObmJP/DRsQtq2zvW6HzV4UImhtSjCqpliXdDxYPEzejeDl6QypgKNjZ195ExZZIft4jjlg
	cSTWwXZFb4RuALsGJwcLLBuAVMD7ZWLCjoMGD/f32rCrWeSIh7T7CcbZMk4jqhztGjyRYAQGVv92p
	AoVaRGKcjheKjmHhgA8FWt1GLJJ3SY7hsrlAqXrmi7gMyaRHtHmf6TGgZM9n7BJsukDbfj0HHthix
	ClvoAsnFUAdSaklYydA2NSyrcqJx1o/UsYUeh8V7ld7IuabXzKQjS+qMK4oeWQwfJb6xzOxUu9A1h
	/T7l539yrA1YYbgNa9Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNlyi-0003JR-MX; Thu, 24 Oct 2019 22:53:12 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNlxQ-0002K5-KK
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:51:54 +0000
Received: by mail-qt1-x849.google.com with SMTP id q54so127891qtk.15
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 15:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=8uBb3Aen2dVYsBIXAkNtXm49lkX7BN4KRJO1G4p19Vk=;
 b=W8RCJ99rqMNSxca++LAfzgn9Hg5nsdw/jcT/ymNLnIomChmMSfpKy/5K4o/1k/cope
 pvdfHAJKVdtQEPr2YqdFjda4aW3t79WTLfMMzcOvvEvdTD0U6EqtgfbfxYWZVO9sjiY+
 zEnGfPJbe8LS/N7vf7ALrv6LHSVfoFuWhv+dbTHpfvLSDUZ/YLX4oFvgdgo0OnugGkrj
 JKW1QHjgeqgxAUA740iXA+/IxD/7imuI7v3wbag+0mF+zuCp6Z2P20cdm1A7O2WfTUdI
 +qfMO3ffD91g9GAotg+kdf7w1pgyq08sMv2uL337HBaayPhI0S+ZBH9XK9yfohm5gvtd
 xHPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=8uBb3Aen2dVYsBIXAkNtXm49lkX7BN4KRJO1G4p19Vk=;
 b=FK6NabO6ZO1IKoxo9UndBjBgqVL0ad2zuFRL3LkOTWTM/9UmrGlCR9zzpu0SS5At76
 JYXudZW9VcMyv71mwS9Mas7OphyS8JLunBaNTMmnr3IB8iL5vjkhftOUdOCXSoiOYZ7L
 Z/5C2FfvhtU3zk4xPMXXNHonm/8ioBDmIob+8ajCI7WH4QP3lVUcO9Bukns2NHgx8tJG
 Xx7sHsJFJh3TOci8uUxnQS7iiNEKVj6sxsdr61vzEDGNnWIxXSXz9QXpSQyr1Iusc/8e
 GgOOvYruAVIv555NoyaL7oP+rrW3RnI1m4ZA8QJHk1ZrDX22MWf0jmnCDptLuZQj5Jf9
 Sv5w==
X-Gm-Message-State: APjAAAX8VMrFplrn/T+ew1q8gbJiwwo3bcT2huWa5xobVG8NFNEpuNhi
 /qkIIwsxUBdvvkyoHSggC3teT8w41Ywz6Acys14=
X-Google-Smtp-Source: APXvYqyAW+odimb8mqBZPHs6TqxZmYsSpEILNj2+T210mEYVsUKBCmHHKxuatkppUxskg81WnKWCamKvy9hzbbiUomY=
X-Received: by 2002:ae9:dec2:: with SMTP id s185mr127821qkf.283.1571957510607; 
 Thu, 24 Oct 2019 15:51:50 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:19 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 04/17] arm64: kernel: avoid x18 as an arbitrary temp
 register
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155152_768916_E4A0C841 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

The code in __cpu_soft_restart() uses x18 as an arbitrary temp register,
which will shortly be disallowed. So use x8 instead.

Link: https://patchwork.kernel.org/patch/9836877/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/cpu-reset.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
index 6ea337d464c4..32c7bf858dd9 100644
--- a/arch/arm64/kernel/cpu-reset.S
+++ b/arch/arm64/kernel/cpu-reset.S
@@ -42,11 +42,11 @@ ENTRY(__cpu_soft_restart)
 	mov	x0, #HVC_SOFT_RESTART
 	hvc	#0				// no return
 
-1:	mov	x18, x1				// entry
+1:	mov	x8, x1				// entry
 	mov	x0, x2				// arg0
 	mov	x1, x3				// arg1
 	mov	x2, x4				// arg2
-	br	x18
+	br	x8
 ENDPROC(__cpu_soft_restart)
 
 .popsection
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
