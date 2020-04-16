Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C20C1ACD20
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7U6iO+Zd7IMA31gY7TwwRnQrAyRbjRvmuJGJ7cGFiI=; b=Z7AA3orLh1nggC
	1A1ih/YHDtqfisa6mi0bg+72VIR40oBPMMi3TUTVaURGHX/olLOalF5c26F/iqpRZ3QGygZGjF0vH
	sH4e2CH04bZJ0iEiPWeiZp0fg/lumehlRVjhv31hPgG1hmGlHODqiYFgkJAFYF7WQUQliEuMf/96R
	craxyGjJ4ZYCTZUAVIDUvHojpBpV87iGYsgyihScY8G2/Slwu0Tm1wCMaqyNKlnT9mZXdH2/VXsCs
	0qi84af0+6uGNh6V0un/9kiHiri8MIENUYmjshnourcXmfQowIgC1X/XHt7ZDAbvs3PYU8lBGsqPg
	EW37Ubqx2hnCgAihED4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7A8-0004w7-Iv; Thu, 16 Apr 2020 16:14:48 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP78S-0003fj-RK
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:13:06 +0000
Received: by mail-pf1-x449.google.com with SMTP id d16so3438160pfo.15
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 09:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=jhbZSy8N7pmIKGLCoqfuWjSb1n91/ddT1S0YkqMO/sE=;
 b=aGvQz7rpj1gmlNot9DGOyVfFExMSMhcz9FOTIfJbSo6J2eaS4Q9EvaTX97Nd1b7Is2
 Bi/uzVXKD8nyy0gdnni7g4rNQaOUONSHCDbXi1JxVmjuSDUSR9C3hyS6ONRIgdqe5A7o
 KRFqaiwPkP7F+S6duXdhRB2xtAeRc18dKkptU+TW+VkoS72brWS3gLP1uLJyWKMa1apq
 6GOIGu4r7BbAhSSQiEldxlhfcpZpwS7Ujq6MBf2bUhjBlcqdRF1nhMsPi7t9S8NV1SxC
 8eUuHSdrmpT1WtCHfSF0mYe/M0/QauT7xIFnKzHxZWJuc08m/q50qVVerwI3cu0X+K2t
 149A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=jhbZSy8N7pmIKGLCoqfuWjSb1n91/ddT1S0YkqMO/sE=;
 b=d2lbLwTLpiwltHGJGAGniabBuZVlU+OxsI5V7w2UZWxDsYcbEKMq0chdVPoeOimHBV
 xnlIly0b2v8a8VC3sKGUT1MfJxWVpbiENW7ZgDG4zReu7aHVQJM3OC5zUz/Bn46rjt1P
 FZPPExsR7zb7b62hZl9+qN9boBYfy5EacNWhzIsWEwPd5ZVBRq23S2I9PymXDJJI25gc
 60d5Pdb+pBgXVLWlax+YrgFoy3lZP7jskjKCfPRcnmqiy08F4m+TPliuPK4VFjf7s+q3
 BcGM4gAC52RNipV8gDcYcEYeoqOh87KnF2YZa5RogU8GwFqFm4/9hrt0vVpLOt8Wkhlz
 3rtw==
X-Gm-Message-State: AGi0Pua2bYRthcak7c1MzJKSKJ2LkGgEnt5EwbF5Pz1wqbL7gMNHC2DZ
 HzEafyKcwYNzgt56l3ew+PeHwjwmV92hU2cKwac=
X-Google-Smtp-Source: APiQypL8a8EcwgkAdr2i3smmJxOyKHY3RiUFRcgoCxLBedFlxJV/kyUEcY4a7Jl+ITX16xXqRHQjeNwR/jbT4qE4WrI=
X-Received: by 2002:a65:68c7:: with SMTP id k7mr33098346pgt.248.1587053582058; 
 Thu, 16 Apr 2020 09:13:02 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:38 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 05/12] arm64: reserve x18 from general allocation with SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, 
 Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_091304_894318_40C6DA28 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reserve the x18 register from general allocation when SCS is enabled,
because the compiler uses the register to store the current task's
shadow stack pointer. Note that all external kernel modules must also be
compiled with -ffixed-x18 if the kernel has SCS enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 85e4149cc5d5..409a6c1be8cc 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -81,6 +81,10 @@ endif
 
 KBUILD_CFLAGS += $(branch-prot-flags-y)
 
+ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
+KBUILD_CFLAGS	+= -ffixed-x18
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
