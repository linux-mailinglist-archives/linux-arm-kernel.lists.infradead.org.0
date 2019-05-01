Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1699C10DB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsyOvUtCc6zd9mI5Zoay9HVgDr/Gtz1AE2fzlppWtEA=; b=gawGVZ3trjwvQf
	N03ZFrnuVAtGeGxNp0K5lISinYrnMP2ASgrN0YP7LEevCWuzZ8AJtAJuACHZtwr5K3/KKW2pUVmkH
	2h0XqyhnPfxieI9vFM5JTAkJMiF8vadyFoxuV6/Sj9kgO7YQbyQDq7uGbHazg7CaTdxCcLfnLDAKi
	FIJVjCJNlM5FpU/G93c8Z6NNbSELuUPp8x9bkSpLc2yQAzeDRkRJpFkHXpRO5Av8rzu2PR33fyP2w
	GBc3olL9VjpbF/JzIPel3OixE+Exjg6/JYrMuYxD3Ga3GYRX7LH8lsygRRIfn8DSa8tapImTUEsOi
	HUPJCz2E4KZwZQbfnRmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvTu-0003MB-7C; Wed, 01 May 2019 20:05:30 +0000
Received: from mail-ot1-x349.google.com ([2607:f8b0:4864:20::349])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvTX-0002pl-Gu
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 20:05:08 +0000
Received: by mail-ot1-x349.google.com with SMTP id w33so58927otb.23
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 13:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=pgwmPCltNlT2qJblASiCpctnwqNtjlaYefBmlV3joCA=;
 b=AMFmjeknKhEaJ/eh9jtp+QJfhvY+QPJUVoke8a327Koi6aQNO6J+ln7j6aJIvHIwYE
 8IaY5sY50qyQX7VW6CSR6VKL2/C/yiEv1tEMiYnkWXzxI3tTx7dzZRy24C3bkXZrOaZH
 v/6HKXlBiUnlx5g7RvwIWd47qfARkNLLJnu58vsP28Lf1xLzun0VrCJFZRKTjcBj0CQZ
 kxCjc+1RHyqrjlKu5XlAbLWMaP23VslEyGRa0EylGu9Rj7xob49sFengp78TMf1739MD
 inCxLoW1GbMipIAKe2nmPiN2XN2Kz2sB3z1MEjJhaomm/uvvldW+EC4afPJwobojLOTN
 IgOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=pgwmPCltNlT2qJblASiCpctnwqNtjlaYefBmlV3joCA=;
 b=slnG7q81oYtawyS2+F2B+2mTUOQkOKS08fD8kBDcw46c8EVRqFi+r9ttcflz621f0n
 8zU97KjWpmfWzC4d4Rhs6xM1LbPpIUR/SS0iBrhDaUfrOmGE1NosxLrZ0Ky3aYJOywLn
 sYbrGSnkYAqfHhCCs55Wx/Tiw4n6DckEltGG1FQ4ABiewONYjJCshmKr9GcwdK2AWkbc
 vjPSFJDyIUpEz0Yy8vq/O71o08QxfZZQYEL5/SN+rXE3lCNnz2o4ePyagTlTJ9TZ3MOY
 KjcwcvH/U+7FMvn0R9zZkJSeWCUFGKX3Od5XYeLnO7WFikFvU6tmnO7RgP6LkIYW+Zb5
 CpOg==
X-Gm-Message-State: APjAAAUGt/pEq3cA6Ka/fxS/kPqaWYpulS2z5aJjFNm08FEOLQZucEfS
 7LHzjtjFTEbSIaZWW5rkxuvlt9p3XLxUZU/lXnA=
X-Google-Smtp-Source: APXvYqy0WApsbwDI8BfA3Z5wQECjBctYDbr5V6gFmoYub0j5ti+nozhzvzn4wnXwl6X5IMNDwLQwrHjL3uHCJNYqsPM=
X-Received: by 2002:a9d:6153:: with SMTP id c19mr6049632otk.110.1556741105717; 
 Wed, 01 May 2019 13:05:05 -0700 (PDT)
Date: Wed,  1 May 2019 13:04:50 -0700
In-Reply-To: <20190501200451.255615-1-samitolvanen@google.com>
Message-Id: <20190501200451.255615-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20190501200451.255615-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH 1/2] arm64: fix syscall_fn_t type
From: Sami Tolvanen <samitolvanen@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_130507_591259_F6683493 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:349 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sami Tolvanen <samitolvanen@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use const struct pt_regs * instead of struct pt_regs * as
the argument type to fix indirect call type mismatches with
Control-Flow Integrity checking.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/include/asm/syscall.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/syscall.h b/arch/arm64/include/asm/syscall.h
index a179df3674a1a..6206ab9bfcfc5 100644
--- a/arch/arm64/include/asm/syscall.h
+++ b/arch/arm64/include/asm/syscall.h
@@ -20,7 +20,7 @@
 #include <linux/compat.h>
 #include <linux/err.h>
 
-typedef long (*syscall_fn_t)(struct pt_regs *regs);
+typedef long (*syscall_fn_t)(const struct pt_regs *regs);
 
 extern const syscall_fn_t sys_call_table[];
 
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
