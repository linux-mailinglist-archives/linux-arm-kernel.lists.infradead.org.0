Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97777ECB39
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:15:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZzhBmRoflFpvwu7TjTVCDX6bmawLdOmKZDLoHM/lbw=; b=VJsUzCC6tyDM8L
	0K3netStWclySjAg3gUhIcQxiqRxyqFnRJOlZzsT0fNrpA8phX/g68pkJFoUW5NYLww8O8uMQKOcZ
	Zh5PDk/UQwP/HnngtR0X+rtOYa0Cp3bEOyLqIv2mxJ3WGFUZu0dxF/t0bOTw/mUjzj84BX4c0ut9L
	OzH4ttlP+8mcApBmsJgtqH1xoiuJSDOJP3rKj2u0atJu3hK+QNFn2nxmL/nyQGUOnb3xi0pAR6YKw
	RyD37IpRS0JR4qOPxzCyOhbiWdrixSrZqlriCCakGzpYVb9ALKNQzPO1Pgdy7Og4BQwRdJT4yfDM5
	PYafC8mdY9agodoQkKww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfCN-000292-ST; Fri, 01 Nov 2019 22:15:15 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQf9b-00083Q-AH
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:12:24 +0000
Received: by mail-pl1-x649.google.com with SMTP id g7so7167844plo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 15:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=TmDnfQN5KSEC3g/578TQjZ7QNjxfyUPcu+BQjF9Yuvo=;
 b=WX+ZlyX9au7TTis+HDd7Dbd6apXsSxGT4BjPuLcLwhq8XdU1hWXuu+jMmXXpmqn/ly
 JnciDuOZ2YKOinrTMYHNYjglGY6CBM9JRa6UwI5ny+82cASaJNLEYq03XkrGGMRD/45C
 080BYykDqPbpaWcEFlq6ukx4uUgLPbDYn8rQoXBjaKsPYUg8U6UVKNYt0gsSY+aCZh6t
 sDQ/hg4YUpFcnNlIJocP1LkLyLwN/E6CPVe3fwUCeFBsqzz656n40juIl8qkmBDC5VxV
 leO2fOlOj+kIu6XcB0vIjnzmxkmxh31gkv9F3DRvB4cNzr9altIj/aQ4Xeb30TvjIhYS
 CEeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=TmDnfQN5KSEC3g/578TQjZ7QNjxfyUPcu+BQjF9Yuvo=;
 b=X5DbT8DFs4zsIXYUoOQjur1saxUbzUMqHCAzGbn+jwkAZ1UIzcmXWC2TiRJSnCbqeM
 NB3NFTop2z0CtU4valyLjfoplLqm8dFmtUFocpoUOf5Mrce0pr0qjmc7aeaXwJxZdumG
 UxDx0VT1sHk5mwZvkNyO565UctAasFbo1ZzDt3TFviZV/Llk61cTu7IHYdFFhP2JDblg
 sbUgbSGtooixHDR4mkrDbv6yUBGNn64V0iDONk3Cgy//ZsDtFbuAYIriHQseycdScV6/
 rB7uMuLAd+GH6R2qbKonXOvBFlFXcvYxG/RWttfsNg/cbmR/8v6l7lJTv0IhkAA5Z5ZQ
 m6OA==
X-Gm-Message-State: APjAAAXm3g0BEipZGigP1Jfq+eu+lTzxD7+yMcw1+1USy4JJhPym+qXW
 sLjpeXHxVs5e5QU+L/aIK4wgJD8aJ8WgeJSkSqo=
X-Google-Smtp-Source: APXvYqzVngOFcUfwiWQ8eDwuiV8sr1oY1W9Y7iX+20vU9uQZSIlJayld9jxLG7yCiTZmX5C4MT0to41bsvZhb6iCe1E=
X-Received: by 2002:a63:364d:: with SMTP id d74mr15884929pga.408.1572646341266; 
 Fri, 01 Nov 2019 15:12:21 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:43 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 10/17] arm64: disable kretprobes with SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_151223_511056_EC66A86B 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

With CONFIG_KRETPROBES, function return addresses are modified to
redirect control flow to kretprobe_trampoline. This is incompatible
with SCS.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3f047afb982c..e7b57a8a5531 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -165,7 +165,7 @@ config ARM64
 	select HAVE_STACKPROTECTOR
 	select HAVE_SYSCALL_TRACEPOINTS
 	select HAVE_KPROBES
-	select HAVE_KRETPROBES
+	select HAVE_KRETPROBES if !SHADOW_CALL_STACK
 	select HAVE_GENERIC_VDSO
 	select IOMMU_DMA if IOMMU_SUPPORT
 	select IRQ_DOMAIN
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
