Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2342D1BA9A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4fSn5zUNC2x2vBk4nFWFjiSRS2d9daRdG27I44Pvu0=; b=MvP/lP4KlVb6VG
	PqzbFLqD9SmSqAXG598dUq0Fm5uJXCw2stR60v+5jEWVttKTNo9av4FWhScbyxnQeS3/rkd41oc22
	A1b42T7PQmcpNVdrAQS9jTsFxz/aVOd1PjKaCud/KQ8J+uiEvKEu67aK3f/AV1lduIqrUD2xkvlTJ
	QM6oWHH7O3hj4iigo8cRUdzzS8FYf0gU24RGl4hPUoxINh9vMY8sSRuQVB8hhi+JNKmWX0wTbAi4K
	8j4yb65nMYEXkIzOT6R+zV+ZzVE/yg3/5Ajpc6xwYr0aZ3DffXHwBF6dprvjkQ0dbgdqLlM//K3Wl
	pcc22MYA5zWIGfAJKF2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6D9-0003S6-Qo; Mon, 27 Apr 2020 16:02:23 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6BY-0002IT-JK
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:00:45 +0000
Received: by mail-qk1-x74a.google.com with SMTP id d15so19991414qkg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=vWKjMu4YpZkMxmoaABUBOKf1igZnxFZ9c3Ig1J3O4Og=;
 b=kiSv8CiUDdv0MhnhG7OLvK4HRjHRHD2p5Xk8z4MNjfWWTLx6u3zwpYo+VXYo00s9lQ
 2SiB14ebJv+tpR/lJ6lBiS6NtwBJkpElgf6+/UxLuf4ODhwnkipaZqAOpGAlWYJpWfCS
 z/5ymvrE+OkDEIiguUTShhBQhJ6y715cKJGNQcwyaJsde7L0h/IXtozn5mtgfyeHg/Ym
 H43sTz24QuaAjK8JJGNtzpBldyBrDbq8uPivT4CI9K7/qC+hhiObIxt3J7MJfK5BmrKL
 +bLkpaJXkzjZcdx/s4M6wTt3HBXcwxs7ZUVUd46Y+nf5P0oIYdPegXdb9NdLI9tk1xzd
 GS1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=vWKjMu4YpZkMxmoaABUBOKf1igZnxFZ9c3Ig1J3O4Og=;
 b=ZYGSokUpGGiagjl2YrUCDMNLKdzUi45iKYBfC+81crYukEJ90cLw1CBn51ehLZAgxy
 rJaWXZkgJvPDby0sCVQn/4WeCOWxK9d6esa+6w5wKqFRMnfn+NVgv9PLtjnK8Ye+vGDO
 lKmfh87LI6Ppi98dLAUrMn77OJ0HM4kP6+4VqBd4MCDmQI2UDQcyUck+N2smxW7Ocv+e
 1y8T9mo1duZ6TAQhevIRSj9f7cGux/TqC5CIkyOYfol8gBO84Iw6sXEpVKdypYRcfhn3
 EUtkghEBkOqxCycrbN7/OQzWK6QCeK0QO/ZRajUAs866UqT3eJ9Emia+HStpdLvJ/Gv+
 kBhQ==
X-Gm-Message-State: AGi0PuYlsDWQjUyJ/uZUrpYXp56GiPvGfBTSAsgtzwav4VkRrPnuj4uW
 XzBB8OtWDOfTeF00U7k3y8nHWDRGI0750+jOSMU=
X-Google-Smtp-Source: APiQypJpHxnUVa+HJ+OCdJz02DOHfWXmMr67lw1U6ExG9PpcAMVbKyAwbyBII6uQ9n51wuhyBZXu9qOSoWBoJcrJ8Lg=
X-Received: by 2002:a05:6214:150e:: with SMTP id
 e14mr23211009qvy.65.1588003241754; 
 Mon, 27 Apr 2020 09:00:41 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:11 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 05/12] arm64: reserve x18 from general allocation with SCS
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
X-CRM114-CacheID: sfid-20200427_090044_655372_591AEC3C 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
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
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
