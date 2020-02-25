Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C837A16ECDF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:42:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6hJpJ1wdBM+CrQsU9NgxMVbyk8CAf3SiHv6iQBsO7s=; b=Ls+4NOpNEojXkt
	GEsWV7HcvSSHMzRtuO/zMA6Ftyi7zYRo/5uodC2goxS3rC0TPQMl4yr4xwvGEzaA1THEd0SOgs8Uu
	dU1J1WCw+Ed+tVUKf9Kf/A+Rc8ZU8l5TpNwTZC3i7+Rr2y7h9nLYMWzXbxx1+2Ypkam+5f99pTPcJ
	NT285kNMkUPXhxJe77l5aq9NZE697jbnltJNP/PWZdCskqU1+9ANxBULG9C4OvOUZitztOSbpgASw
	bkj6KG1cYM/CRBALwvfXynjS+FmV2Cu1A6d1lscx0vdcwuyYw70I1HxFXe3+5uq3TBqwQJJDuXN4y
	22Fj92DThHPdze7IXUQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eDf-0004LS-JX; Tue, 25 Feb 2020 17:42:07 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eBo-0002BY-DR
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:40:14 +0000
Received: by mail-pl1-x649.google.com with SMTP id 2so7870095plb.20
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=W8ajq15Euo0CBn6HLEY8Ur3IDCmQBKzronvmXuYJ1Wc=;
 b=Xi2ZbcU5w4xAMDBbk+3G0M7WhFEvev3QQQmayIYq12lXrXU0TZY00WT8V3tl6EBeFs
 4YY+WNru1RHx9Rtv7WI7GU9OFbC0kpv1arYQcLbeOtalBIzT9bzfvmjebvYpIQYGN0iz
 ohwXof/jSEC3zwPA+NUbVqZJ7ozto76pl8Tl3GYn7Wj0oBFcPxmvhAMiLDwhWBcd/dtK
 oQCsutUGRHGUPUXm6ZqfV5QbrWXnb7sD4ecMMfiyZisuKFBUhFGQatODjW3Cdm3VhZZA
 ET4mX4w5o/xHxsjJresFyuImLMlTwnQvGNeTqx3ZIqe9K0l8H2+6zMTkYnV/LRZbxSrS
 sfyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=W8ajq15Euo0CBn6HLEY8Ur3IDCmQBKzronvmXuYJ1Wc=;
 b=eUKRVmBqFUCivTDzhGmI0b/8WSKbwTEGZGnbrw09F97yd2f+A6hSKaIQVlVS1f+Q3S
 zx6y6j2LzbwRqod2iaWbk4yUu+rqXQc3AZHY5ckBhHersG0SlzVzb+g2DRV7nCG9AL1d
 Kkri155Dp09mi3F5o/gmDC/K+hkwP6x5RpVBOQtyN8bq31dbstcKYBqPScX3wxfeD/dZ
 dLA6EzQ0Lc1RLw0UFj0B4ntbc8XN6DRtmCO5JpZtq/oRVup2GT6NcH2rLB2c0w+Hy/+V
 xsUsotYgHiycVPSShhNODPklnuIT5K15DeEvJGAjTInY66HjLNrPV7lt7HKkDtNgc4k9
 Dlvw==
X-Gm-Message-State: APjAAAWGmnKbEBJH+msX0idSYsA5VaQVTXQrYrfQlxXhaWObMhwzPDkO
 S0vifYd3Wi+OJ4aNJMc4/yO4JPkvP67AW+LUKZE=
X-Google-Smtp-Source: APXvYqwvqENHxbX/ovgpjf0ZVx0mLlUs8H8QzWYeq0EOjlcVEkkcC9/C+tlcnWHubokdElLT2kLplCW3jEbNjcX6X1w=
X-Received: by 2002:a63:3207:: with SMTP id y7mr3943460pgy.344.1582652409047; 
 Tue, 25 Feb 2020 09:40:09 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:29 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 08/12] arm64: vdso: disable Shadow Call Stack
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_094012_696630_311E6F8A 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
