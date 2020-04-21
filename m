Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BFB1B1BB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 04:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7U6iO+Zd7IMA31gY7TwwRnQrAyRbjRvmuJGJ7cGFiI=; b=Tre3qBTtcegEo1
	FDt31JJVB/S8GUGrb7I0hVzZPyG84SyKwDf4/9/KzNnOB5YoUw2TG+WQjrfLzBUdbGcH1Q7T0gg20
	h+ePhm+FeCws76a6r/ZzWUDIl9TFX3ecgyzDIpkTCCKmHcCdR63b1D019gqBFa9uQrx0FMk45TfYH
	PfhxzIBB/Mjvsu3260LuIC3uX7b0dUpTh/aTGZyhdr6yR51QUACv7BehOmB2PoP+o65hrJx2pdXv9
	NcIZwcrXrw4nR9roqb6exGqpgCPhEI1CzauHuqau0GfrCnw9I5QaFw/5UcsaMHjABfubWv0EiCrCx
	TLLhEljUn1ns/ub/oldw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQiSu-00029F-JF; Tue, 21 Apr 2020 02:16:48 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQiRM-0008PH-51
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 02:15:13 +0000
Received: by mail-pf1-x44a.google.com with SMTP id a6so5145741pfg.18
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 19:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=jhbZSy8N7pmIKGLCoqfuWjSb1n91/ddT1S0YkqMO/sE=;
 b=kAQ83KjeKeymPxC8tFl9LqSOU09wryYOH3Ut5Fp4QtEqnkFBqwDOtM03kprDG/MYPB
 33Qtrj9LQFkGfgRCPCzwJjXpwrT0xmeHSdgRANOUBywF6AxQjg0dKXVmnr0qSWtz50Oa
 bl6qbQyPLNSvkLhEhv06EXy0JtnPBS5QDsma3dbrpedM0dagK+Aiza6GlknaLT2doark
 A4f3m3SHS8DuK6cZNIyUA6UW9ibFykjSJfV8R5iVG2Qz33IqVpOrx5YHGsY9lc6LoHU+
 hVBFXM0Zwuqzbb8qvTwTgmmU/ReSXVtmuKGFUe3ewBrMDv3cClvqp6ELYlJQekoGEWrC
 3irw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=jhbZSy8N7pmIKGLCoqfuWjSb1n91/ddT1S0YkqMO/sE=;
 b=jNq295sL7XkzN5+INwnrqkvmep6lC9ZVMtDn/HOwCoZYMtICrUmch58Cw9C3WizJz4
 jiZY+eGca40thg+8c9vSFTIq6E3H7BP+oqkpAncHng1tTlThIXJcv0KJdBnMyNUrWNAq
 4QvHniELLiIeG6uAc5gFYz7u+4ZqcqiVd4I2aupbUit+iw8obaxYzbqZ/9sWULQIysNG
 +aYP/xNkKv9Mo+xIBYEg/mA5Xr6cbZnK+n5jON04EK5i7S15cTrJnYl1MoF/bectlOJH
 RDakMa0aiA0VeJEAkBo9WXtjA7Z0ephvDkhWIelrqj2M7MCiNHWMJFfIkweZLT4I4O4O
 VGxQ==
X-Gm-Message-State: AGi0PuYR1fuwK8qYjzj3+lKuGHppvmp5DbwBWMeshV5209e3yMsealYy
 c2ty812sEUT1sRu6+9Icq8vARrqTUnFyFM1sPzQ=
X-Google-Smtp-Source: APiQypJeQ51GKYTLWGJ6SQJrs5z0xMQPs0pUmxT6pjND+5RZ1ua5OrG31eM4WHd76TQ1S9eC6oZk5PYVIh7OMeESRco=
X-Received: by 2002:a63:751:: with SMTP id 78mr5125628pgh.259.1587435309529;
 Mon, 20 Apr 2020 19:15:09 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:46 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 05/12] arm64: reserve x18 from general allocation with SCS
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
X-CRM114-CacheID: sfid-20200420_191512_249625_ECDB416A 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
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
