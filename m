Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4D01ACD69
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgM+3X2hMKvnoO0pdi/feqg1ZXPJFugZfRSJvx0t5Fs=; b=LiJlZVaTgVgj0m
	OyfW53uNmTdsmqhOPaNO/FvJ7ypuLN0SKuM0wwQfk2XDlpSJ9PoZV89nQg3Va1n73cUGzi7S/i+rN
	12FJFMzIAdAsSEFxpBU/aLgwFvSg9Pg5GbLwS7I/CXIF1+iXkcYiyyc4NvQbuWjmqfKQ5dAsXkwoN
	zz5d9mYj8RUAqWs7o9gASzbl58DqytbMrlKNL4a0SUMufr0k/oGtpeG3MvsRy/sbJJCvBHcBBhn2R
	+53xZMsGyjLUZ31/CEygVFaVtGf1vK+Go2mKbVGL786qmF4anjAWM4gGxFQ88hOyi/4bwwxIp+8BA
	7jhLSH3mDqvM9PJBl91w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7CN-0001LU-L6; Thu, 16 Apr 2020 16:17:07 +0000
Received: from mail-ua1-x94a.google.com ([2607:f8b0:4864:20::94a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP78j-0003td-Tp
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:13:23 +0000
Received: by mail-ua1-x94a.google.com with SMTP id o17so3736668uaj.16
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 09:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=0RQ1N542RT3QYdW6h+S0B1gn+F6MhyfTNdXGmDt/FSM=;
 b=fKyFfLXOz5sVcsMLYKlGfkS9d2/UCV8LgsPAZpozE0APa/tBvBvuH72SAkskPwpulK
 Q9xEycscm+hu03BJdYzx1SmxGohZ5WLC2Kp00QJoD/1v3vT77G97X59ssrg+rhyJkLt0
 FIZhmLR8ROQHOMNhMyY0XOXWlBU9bwJvWf1mFMpV7bvXEXcTn+KsgXL1xWQ9YaJxsI3p
 r5wBMm8vbJljvjWEKVD3VUjKdk7HSzBXS47lLsTkO0XDaM+rtLDkPFyAx4fJbEib9dsz
 fBUPYaCtMV7+NrFyKOzLqdDoXj0u8w2J3DBLtUaWWXI1UwSZCihejvWj1Y1tkFy1U7G+
 /Qng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=0RQ1N542RT3QYdW6h+S0B1gn+F6MhyfTNdXGmDt/FSM=;
 b=cLHq5TFtbgRurhZ7QsmgY72q+EVNF8NdtJwMFP2TMP5QhSVkNyG6mS7QJQfmzX4e9A
 AjpnIW/1uz72khjzdXSjJZz7ghU39ivqQKxcXVCQwDUmFXGAbrU4DBWxn6/iFIaJ3pH5
 VMRUn04lLiIsEueDdFiGpUiUtV/etaQqcaz8lcBfCjNQ/bbtkF29mdBm3fFQKkmw4wUn
 bBj4qu0+8BGVWpqB4UyggX9XjbyCYc6eMliOSuREh3+dP3j4QiOpLmbip9HqCDFNSVpF
 RROARIFj2jN3hrbSVRrdBTAbX/5i+3+ve8qzks5MNNnP5EvVY9bikrn/u/vJcdSCVMcC
 fHRQ==
X-Gm-Message-State: AGi0PuZhJAB4OKrGZd7Pqr6/2ddm+2NhiAEZYrEw62eFRLDtrFj318v3
 nFhBHgFHWZ/URLLSixbvUPpXWNqojUSdmCSkCwA=
X-Google-Smtp-Source: APiQypLcEVWlOSbUU7JM1b+dPKZalYkgI8XZ2RJRR7DguNAHXrP4Q+xtVussY8m1ZWA3xxy8DZYEgVb57sv3jHyS0G0=
X-Received: by 2002:a1f:a703:: with SMTP id q3mr5645257vke.4.1587053598668;
 Thu, 16 Apr 2020 09:13:18 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:45 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 12/12] efi/libstub: disable SCS
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
X-CRM114-CacheID: sfid-20200416_091321_982707_22BA32ED 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:94a listed in]
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
