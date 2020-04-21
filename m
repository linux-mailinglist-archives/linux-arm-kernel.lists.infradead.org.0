Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E7E1B1BC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 04:18:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xM5wQbxtIDdm+9eAuB1Im5WBpID1KTeL4qPYGfzIt5k=; b=AynnV6rfyk0Qrl
	f5fG5KJJy/QY4pZIFUYILLZ1wQON9k6OgVzySKIOSqt8p5E7Pz4LwTzZblrfnpaE6Mc7K58earsrh
	tovO0ARo34W7Hf43F9DHA50yIefu4YAjulRLIi9kKg+R4YKYawsycFxBU4kk2j+TKMXkuNIIKCk9d
	cE/59tkljcIcEq9dEU/pMjdfwl/dqEBgQUvFNMalfgPJX9d/2UzYVg8xGv5OqwCj+nzAxYPfGVv+3
	5pcBqz92cgCltAC81HXFHpGnQeSVitK9alEUHJMW71LZZCPmGTR6RYJRZPuMg5eNQkgAAHSFXFKCE
	1GXFnPbAgChAG1qiXSDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQiU0-0003IB-2k; Tue, 21 Apr 2020 02:17:56 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQiRS-0001A6-Cb
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 02:15:20 +0000
Received: by mail-pf1-x44a.google.com with SMTP id e139so10770482pfh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 19:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=MhRn5bu5/kvUh5QzOzRXssMosuq4vthGJuay/ttgTR4=;
 b=Lqh/lP7rPh/rNI0pAGGOPOxjyqNhok1UwLr2vLWD0Yf86f7hnanuLjyGwBzWQZ0KWQ
 adjhQMVagXSOv+hAiNSZhBIWfPo1li8vCHzgaTrsTgbGbcCuhwU8ClDWwy/MAbVy+yHg
 l8kefkpuvonUyJ59cjRiqXX+Uanx+h2rbnnl9u653BbCn+NR54DJuJFS0NBefuFHtWIT
 lpym/WosEzlkC/QEIHKuMb0NkSLOPkiUAyZo7D28AGRidwedpIeP5oIpw/ESTH4LCZkT
 NkLVJcNX/Q4mglETeVx9en79tfKw8n44frdP6yet/Lhi2dlHbLQdxyyqSLgcHBjLnVUO
 IE8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=MhRn5bu5/kvUh5QzOzRXssMosuq4vthGJuay/ttgTR4=;
 b=Dgeu6+ZocqXcxpSc8njxqA75qoGXahzgrA60w/o9U5h3i4hI9ZEyeop2DhErwhKrzE
 kzkVAeXP/66/OBZpPdDvpP7A/AiG2CZganFvRn3Xom6nmtrAERznohx6HkvI1jzRI8er
 K0+WMzR18TwW5tbQGK3k88XfHJR72vBYxwmsc7y7pun8RTvdoO3LER4QJxKB30N2OPWQ
 Ec1lDnQe8/PTVivUr6SA5y9RG7JcURPxEw6O18TAxu5WX1YtysDGAH3/sRG7AMeoF2Zg
 KB4cULagdqhltmrM7yZja/EBqJcvxZ8jsLMKMSrc1kDKyBrff0E6oH8sPvFFPR5J6jp2
 Py4A==
X-Gm-Message-State: AGi0PuYW4i3TlHlVkkp3jKJcTi2ubH7+B8GqJRW5hO4rDYJckUWnyc86
 2ALaEdemmN+gkGLu5KbnGPPT8iQiMMqzY0pZiRY=
X-Google-Smtp-Source: APiQypL9J2bahRQ34+pQ2Eqpk4jSOHei01Ja/PTphpnst//o5YzkDVHUYrIrIHLrDNmaV4j7WDYWllqGZ9rSI32ZS4A=
X-Received: by 2002:a17:90b:1b05:: with SMTP id
 nu5mr2791728pjb.110.1587435316700; 
 Mon, 20 Apr 2020 19:15:16 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:49 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 08/12] arm64: vdso: disable Shadow Call Stack
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
X-CRM114-CacheID: sfid-20200420_191518_477291_CFB35C10 
X-CRM114-Status: GOOD (  10.72  )
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
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
