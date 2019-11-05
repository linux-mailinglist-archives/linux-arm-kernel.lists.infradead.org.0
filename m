Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33741F0AB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 00:57:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=879X++7zCJOUkWXNHENJfK4q6zBXSaZyIp+jxoYX7mY=; b=IvOgnSCPT0KgnL
	zm5BZN6KbaLNHJAKb63cVn4+Bvu5Et0Y/d0vV0b0ED77a2lF/Q4csfbjZ84cgq5ftGh9XjvTdQhyk
	zF6X3wZCYNX4z0q/SxccxPCOOkOoQd3ot94rwAJQ6oFD27nJm942jcOjF2+OP54ZSYTnJnUd04r7G
	u+reMcB+M3EhcNn/6rciaTjur0HKqKWF+KSsw8nWehFYXR0RQRL7942GoKAlSiPcr20Ktu/v/ZgYJ
	r7AkyJ80qmT/qfPyTwdFceDD8wEjsvRqUEMJvbI8Uw4/EPo/KFjL/rmI7ZQ8ycbm1DKsE9LMxQmwt
	eRASPe2qSnbD5elH2XYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8hT-0000E9-Dm; Tue, 05 Nov 2019 23:57:27 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8gW-0007mt-QZ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 23:56:30 +0000
Received: by mail-qt1-x84a.google.com with SMTP id x50so24339833qth.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 15:56:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=E806Ihq7Qr5kwAxZ8O8jq/5GK0i44oON304BuEfvZ08=;
 b=QDgKQccAQsH+R5h45PS8H6bNgjwH8RGSJOkAG/AGuoy5YWBicw4QukLKRyaCj/ZX4C
 S4zge4BSm47qikuijSk/1DeLDJdEzJKyjjpMkCVFyBe8iRT+BVtRIzaIEOM4Sg8kMqqp
 19PNx89unPNFUWHLbXlCN0veqqqj3T/UMrnqvSODWT2d26uSn9YoutJHq9olqlmfvgF9
 quHA5kvZggYfAPkKhiPNj+ueCkFnNP+twN85T1uWZaZ2Qu7624dIYDxVRZ2i6SnFYV+M
 zMwC8p5EGVUt8lQAk9+5QoxNLcfzBFJJ4Q7ld+hIBbOPsyda1IzIoSUjKf8hfnCm4zFw
 faOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=E806Ihq7Qr5kwAxZ8O8jq/5GK0i44oON304BuEfvZ08=;
 b=I7SNfuQn1HM4Y6rZgn1PASmcm71w6IjviX15beXtjaEvCtwGqJQcl/CDal407nLpge
 O5kHKQk31FhEPZh0NiKA9fT+U0fSgdHEYDBZLqvfJP4XuOAqE2apQkOwJFDvZbhjbnFL
 JtGlsRVjEvrc6xa7scw93NU36H3jb7yB1ylYjL0htblLCJLHuMz5DPuWbDR40hZtJQvg
 6hDPkUw6fdfW+/RIdFHvqRYlyvLb+vYI2JFe7fTZzfCMz0SXo6eCvOGE0zquvM0HZAAI
 fg+gJzqRPRcdnDnJg7vXoLxrnMDxlTmv69g8XNtGPL1VvvWGKd+iXIgbmGoEcJ3g1oxy
 Qo1A==
X-Gm-Message-State: APjAAAUVW/U1baiSXp85KAdtfHjmYQX2gZue/WNy+MafTK6/ZF3CWHE3
 ElR7jof3Ai5/NSjc+0+Hs1X5VuoM5Or34mXlkiU=
X-Google-Smtp-Source: APXvYqwY9fgInvZ1xEGl2M4KIBWFyexAkAf44oIrqVL/dQVZsayL7xfxT7jFK1V9S1zdWFVq0Hf8BYVOaqf916ictzw=
X-Received: by 2002:aed:22c8:: with SMTP id q8mr21652726qtc.0.1572998186120;
 Tue, 05 Nov 2019 15:56:26 -0800 (PST)
Date: Tue,  5 Nov 2019 15:55:58 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 04/14] arm64: kernel: avoid x18 in __cpu_soft_restart
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_155628_921215_3A46DA78 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

The code in __cpu_soft_restart() uses x18 as an arbitrary temp register,
which will shortly be disallowed. So use x8 instead.

Link: https://patchwork.kernel.org/patch/9836877/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
[Sami: updated commit message]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
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
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
