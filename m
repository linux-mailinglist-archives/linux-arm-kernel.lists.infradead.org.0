Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A681BA9BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zs6Oer4+waRLXITMHovuohSrHn+w9IctgLF/ng4cYVk=; b=pXu/wTLsIdUlui
	b/o/wHf3QiatVLJuJJLBHM9rO+NYYm7+YUcDE6daW9jcU8RohQC4+csWVdtXNj87UYX3gO8ZkdhvC
	oRJpvtuCRHc60o09X6afhyJ1LJD+4FV7NBpuB/PQR4jpMclrdoVOEPYRT3js4mp6ZdrXv0uh8QhBH
	zcuouTkow110nagDNvpMf4tFqjT2tnGTRjXUbYycYuHKQ4XMxZQkmo7ug/+9FNWY0sf5BDmh65tQI
	ajE7ppda0ECuRQbPHm7mPSE3p8CYR+3QC9vBc6RKAsDSKrOODVLKFnXFYj03z/uln/n9Yv0Zmd0Ta
	+3g31/RaP6YHajb2G5Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6Eo-0005IT-ML; Mon, 27 Apr 2020 16:04:06 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6Bq-0002YE-Rz
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:01:09 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id j14so20901335ybt.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=aF2klQa9rRamHf/M4CeCxFGtvwc1mZVJXnokoniINw4=;
 b=ijnQ0fnOBOZz8ohYGbprOcWD6bXoahdyQ/EdPHNcahHH1UNi6yI4DR5R2vlPmVt+MA
 4ppIwntZ2J5xzVAeqXwe8sImyb647bo4hHg8kf1yP8EUjew4IgKXlLT+cyN+LZsy9Bq6
 UC/DmCNG2YyUikRIYaXEhti+n0bf2Uk+eSvlUyy0VkRfNHrV9zVYezDs+dHfFwKCE9hw
 sMB0tZWkO4naa4enGnEraDahmtXjGEJ9z7j4fYeSXhaXwN3tRENHyK+EQjCXHOgGEjXH
 LRUwN4NXMSq2HIBjq6AGd84jx2T6eVKALaDwXc+kFG7UvOg+1/Elzk8FlgUN6WR5CVNf
 +rUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=aF2klQa9rRamHf/M4CeCxFGtvwc1mZVJXnokoniINw4=;
 b=CI5gW5jIylB5vH+uVaavpuJZeyUG92Bi4PHls3EyPh4iYBxcXOyKYBR1s7TQFxoGsE
 YYzKt8rFFDewIfV7gIpXjxCQP6WptSgDGy8Lic9JQsuJcxH7Qom83OQCSmR3zEoa2Dwp
 ZIkTKCRFbG0keUNLKrINxQeSjUdvgYRNpTuB9Oq0f6zyjM59ySCrpLH1Fj9a548zz7BS
 WO7xGItmBuhTwTkdInkV0YaS+QdL3tTdqK/gZyzk+Qpa65UqXDyVNXtrdz32AWmcdU6Y
 r2ev1ptkeerGEO6sbNDd0KaaDHgBYhVLdB/1ZinceWi0iq4u+KUs/a84Xy+wXoqt3+K2
 LTvA==
X-Gm-Message-State: AGi0PuZypjIQjbHLcynfIy/pSD31SFXXeHiRAEvYEyVi9V+b0SLkkNbH
 dzbym4VY7KCcJDASV7KX80GAQ0KmrwqdUj2JwQI=
X-Google-Smtp-Source: APiQypKOsjWQ+jO+l4BxG62MWOPRhB/PQQHwz7wCFC1Vfqvf4Ou89RrbjPCh/lsRauohpj0Cl1hSrISC+Brb9ZNFufc=
X-Received: by 2002:a25:23d4:: with SMTP id j203mr35345989ybj.97.1588003260531; 
 Mon, 27 Apr 2020 09:01:00 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:18 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 12/12] efi/libstub: disable SCS
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
X-CRM114-CacheID: sfid-20200427_090102_928048_71F705E5 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
