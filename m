Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B04B16ECE8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:43:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L1it+uvEiOM/yT7nI5jluIudApEg303EXIRJ82F2N4c=; b=k/N6nChbG0VJR4
	GrSLGXl97+DPf/SNUWj8Y1nB+xBYOqcM5z2ks5fb/URWVs1Nx3XY5+H4DmxRfX2iUvX024aRVbqjO
	9A0Ow9kblmWrITSGgMVxKmORLMiYrA2p129p9rfO4+wd4dni7VqWwHyIy9IFkR5jCKPbcoy+XUzy8
	/zvAvn49ODZ2qWyVGB/CGhSpZlxHZzSTU3R6L4OVGhWaRmWoIFwpcY7gqk7YeeTTmx4kQeiLHyklv
	LGDtyd8PM7xKV0I+PsWqchDnjvJccpG0FVjfozIgIUqqd6lqdwJOAtr3wbarP0BU+en+f/hxwLrdz
	TTd7MspCzOAXwBs/H2Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eF1-0005dR-B4; Tue, 25 Feb 2020 17:43:31 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eBx-0002sd-7B
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:40:22 +0000
Received: by mail-pg1-x54a.google.com with SMTP id x16so9428640pgg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:40:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=S6rjWX4zh65J8qRPSZGN8zFIqvl385Xc8XQW3COWMIA=;
 b=AG/N+nAHceAaZJA2t3Ejlewnc800yTOYWW+XxDFlkHuEYsEQXM8laR8JPO6q9sZexT
 Qx9MR9PKuF1TFGK9rO4WrVGkhDFRUGBo3nTHm42lh1aY7DKUsRdqOVC006GRSybPTBpy
 CwdI4+LxD7e+4hZQ2qE/GwtlmXo1ZC8r/ZErTUuiCdp5rmFmAgH5PeFSBDiA+eNFZEE1
 7vUfoZhf7+iQVtJY9b36r4K3TymVF9QDFXBobvvCwA1YLJK0qNYbbXNNu3MS1aQw9yMX
 I0P+8rGbiMpOXi6P0ZHT3Ij2kkgGsyVJDrLVC8dfHFUYAz5mItfFosYAxy/OwBsM9sCx
 TRAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=S6rjWX4zh65J8qRPSZGN8zFIqvl385Xc8XQW3COWMIA=;
 b=Qm6LpYODszVJyhnHtYxsZpyHC7hw+VwgA2a1fZ0pyX5IwSMPlCQeeVRPq3cmg2CRvQ
 igA4zJ4QXNHhgIk++D1PXw/qqhjwzs31YQDneBOuxwF03C7qBx6ShxWnnPwsqgasuIm2
 V8I0Fcnxn9CUf1pEeeItZvcTu5Hf5nJMtnD5sR/njUiupKU0DcdOTR0Y3BY8DKWre7Tr
 5Vdjv4qAoQUMPnJg7gpjQeVpL546Rw0nn+cDxkekQkNoXg0kllCOmRul0oJhvt6sT9bn
 tYF1eMzHpg4mgv9EZc2Ysvsg4ILa4T6TD9TE9KpalOGr37e97wUbqURBCQZ9dQ9SYwZD
 4EsQ==
X-Gm-Message-State: APjAAAUKupxBlzjLiXyBMSc4zyBDTRSt69QA/SHoy+XlbuIM3hQq2qdB
 mO6o+63kWc6vzy5ZT+84sYvxv44z5EuPpxQPi/o=
X-Google-Smtp-Source: APXvYqxga1IezAaj/7lzDoz6ajYcBY13ZBQ7EtWObgAVtXX9jDsYBp8jjd+EWNf7mvFW/jyX4NCc+z3bne5DtOlbYaQ=
X-Received: by 2002:a63:e044:: with SMTP id n4mr57741015pgj.338.1582652419605; 
 Tue, 25 Feb 2020 09:40:19 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:33 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 12/12] efi/libstub: disable SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_094021_360581_575D3231 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
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

Shadow stacks are not available in the EFI stub, filter out SCS flags.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 drivers/firmware/efi/libstub/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 98a81576213d..ee5c37c401c9 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -30,6 +30,9 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   $(call cc-option,-fno-stack-protector) \
 				   -D__DISABLE_EXPORTS
 
+#  remove SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+
 GCOV_PROFILE			:= n
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
