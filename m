Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB691B1BC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 04:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgM+3X2hMKvnoO0pdi/feqg1ZXPJFugZfRSJvx0t5Fs=; b=giSdI/O3wqWoaz
	x0HfwoCgKSUsRRzol9XuOO0qFcJOVRTAh4oRWSiycFyKAZJdFgKKNQVfMbBeUY7gd7uz11ASX0jF4
	i3G6YIVfJuMJH0H0VWESbLp76/C51UMNgSMEJ1IZzta//n8Vva4XE/oekqLR4agzo5XWvShTlHJgM
	n+P05sweBdXmVuz8S0qbqFWDnSmydQvpc56hSCdr7TMdNtYlzct+Yff15roMUPTx69uS/0y+4Zo9M
	4JZn8WUIuT8mxJ1p1Uof+OwEhkgMvBcuhKv+F+tPNZZVWQTYwDo9M2H9qUqYpLdJUGR1E56OfzhE1
	j3+wiC9radsUoNODhYNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQiV5-0004z6-J2; Tue, 21 Apr 2020 02:19:03 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQiRc-0001JP-NG
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 02:15:30 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id u1so13936703ybm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 19:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=0RQ1N542RT3QYdW6h+S0B1gn+F6MhyfTNdXGmDt/FSM=;
 b=rprfLeuLS2/09QHh/+y7xWTflZnqrv4ouAc/OGi0JspjqJm6eS46yKUFVvDRBA7xrD
 IsViCxyeg1EAE5/s87qdzXUUiSf8TnxPVsuAIEAzrr3sqXBZqrbtjCRgovWji//XWbZQ
 xcpiVJbVBTm7m/L4++NSnlJY0nFfQmhsqhI7X6papIZyD9mnE6qKALG0X6wbzmG68IwR
 NV/C9sJ2akeM/VxVHXv1UPXM8tN6ST0/kppmOPac277uAdAe7X5IMbeLQ3XxJTYzxblF
 bzhvQzjWFL0p41IeJx5ZGURPl6ZqYdcPqRjHl+2oWSLxp524C0oH+hXSgGEVR7rzQoiC
 gbPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=0RQ1N542RT3QYdW6h+S0B1gn+F6MhyfTNdXGmDt/FSM=;
 b=D9yzv1h9aN9crZfn95kLvUudnKhZgbLN75E4WB1z57JgiV3vrg+V/pf9kbhRbwp3tR
 BOXbAe+43ec2uv0hEbemyuhxgZ+Y3ondOHPvq37WbQGwxpywtbS2iYkSnuivI6Ek8Foa
 bFEKWxanydYvjL+xkyjGwOh6OHUHqlEC9fEFF8BAFeq/wRPm3bLe1dCXVnYfbiOLUhlF
 QDVzp9tnxV55HEh53IJBFPtzbmzPiXhSkD2N/7bOvhMtVyRfWH3oCr+b1v/xRzFni95o
 4eZnMhTs5eyOoOZRwrDb7pZUP5tHYAarLyQSqqhV30HPkCXCyEeojUjldUjMeH6AXuQ0
 Jl9Q==
X-Gm-Message-State: AGi0PuZ6lQRSu22QZqWcmkjc63a8fsSHchmSfX5lNUq6R/eSWH7kSoj0
 mjiUH7IF0f0guUWxamkQlqtbqw04sR2Tr8R5SBc=
X-Google-Smtp-Source: APiQypKVaa6EVfAXEUsgkxuszfVQpEqhSdTwtpRewqbIvj3iqtNn3hSJPBlIieXNvYTQbT7aDUwDMoQW4Qa/HRJl/w4=
X-Received: by 2002:a5b:112:: with SMTP id 18mr24192885ybx.103.1587435326655; 
 Mon, 20 Apr 2020 19:15:26 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:53 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 12/12] efi/libstub: disable SCS
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
X-CRM114-CacheID: sfid-20200420_191528_784758_8098DA13 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
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
 Ard Biesheuvel <ardb@kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Shadow stacks are not available in the EFI stub, filter out SCS flags.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 094eabdecfe6..b52ae8c29560 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -32,6 +32,9 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   $(call cc-option,-fno-stack-protector) \
 				   -D__DISABLE_EXPORTS
 
+# remove SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+
 GCOV_PROFILE			:= n
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
