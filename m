Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FB9133EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 21:12:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BArevg0s/c5KCfMTl+Jd8LiXST54GAF7mka8vqJtO3I=; b=sOb9oJNXfn4/3y
	jslZ1RlDFm1VVjFkoWMjpBY0euU+T7sFSgf3K/JO5vZ5HlbAu/VBNPQrebXlopecA/A1e6hAcLgV5
	QEuScpF/RPRrXGrsl86gQX+KedMSKbT163yDH00lI1QieBNwDxQgQnerwqCDcT9IBC6eYQGJ7uQ08
	4NuRRe4HQ9NeaMLd1COZFoIuAufc8GcMRyaR2weKpp0DSSCYY+MI2K52P5rRavBGVt6CktmjSGBy/
	/p2D8o7J9jNDyfRuwMaoIzA/77RoblDHOZJSL6XHPs0/B6mrHfrcr8T+TxTi57Uu7UmZ0u0msxMKj
	awOJUf68lKSx3C+WLIqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMdbz-0006hQ-Aa; Fri, 03 May 2019 19:12:47 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMdbk-0006at-Pz
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 19:12:34 +0000
Received: by mail-pf1-x44a.google.com with SMTP id a17so3630016pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 12:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=OzS8VIItIe7gOmrqJiPkmma/CofpEbEo7MDgNzxP7EU=;
 b=vXvz8tMV6K7ewdBjEgreqwG3r4srSHPabxZ+NglYP1hxf44UZwW/kSCKdYQv9AFeWv
 nxg16dVtjVyvFPzy2XSDPqL8pjdgBk/aUwM+GMNO5LLWfBhKKFDCvwV90oDe5Ul+fs5k
 WcRngQQwJtgRHdUdUk9Skv0kf9IhZ80LYgg2akYzT+8ZLxJl3hLXbfFc02ceWHkHJoiZ
 vmYjsVvz14B2DAAO6Cpy3+IZfR+Myqwk/5UWD3T1w7zYngP6WRRFr9NE3T9SnzXMFsSZ
 3hkddRRZcZj0L4fE5BDmRLiDriKu8Umv4fXufsGJEOswkIk5fI5CljAsgkJpG5zOmz6z
 /rlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=OzS8VIItIe7gOmrqJiPkmma/CofpEbEo7MDgNzxP7EU=;
 b=IhGMFwyoy8GJz1Q7YcjM7QOTggHIVBi6AWtf8A4d2ke/jraPT/t9ZoLtXNaxieDOKJ
 iIeICwiZc01auXmbITEWJBskklRdRgF4ovQYFgVNXZLSnydzpuzD3kzt+PJstisuRqbn
 1t/Sta1xXK6LD8Qy1l0Ol43DxXNpDLDDu7up5WNzwcCEGQVFyet2usjc/5xdZ6s7AVei
 LoptehckDRb8nrODCA3eucWRzHSusRV+3j3x20f/JHBLiwgSwfBFZdyw7lY6MJSvRz2r
 IW1mQLoxxL2WzEfpm1RT0W+10NzVARb2tYAO20sMRH5ykbyoh3VYYSBj7cAS5fif8HZH
 HiXw==
X-Gm-Message-State: APjAAAWFJ2XVq+qtyd+Jy4s/2xpcaduM3bcVaOfNMABDs7Lq4zPhiPH1
 YibQDvZWzTwE/DA39h899QWd49zlLpr0CoNpznY=
X-Google-Smtp-Source: APXvYqxQx7thUnTUgZM+XBCR4KVnQE9clWl9Q6r+UsURp2RX6n5rRRQc1xX2h68jKqk6eL23yArIwNASAHgXHhzbcHc=
X-Received: by 2002:a63:2ac5:: with SMTP id q188mr3683977pgq.388.1556910750760; 
 Fri, 03 May 2019 12:12:30 -0700 (PDT)
Date: Fri,  3 May 2019 12:12:23 -0700
In-Reply-To: <20190503191225.6684-1-samitolvanen@google.com>
Message-Id: <20190503191225.6684-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20190503191225.6684-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v2 1/3] arm64: fix syscall_fn_t type
From: Sami Tolvanen <samitolvanen@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_121233_024416_AF79E59D 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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

Syscall wrappers in <asm/syscall_wrapper.h> use const struct pt_regs *
as the argument type. Use const in syscall_fn_t as well to fix indirect
call type mismatches with Control-Flow Integrity checking.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
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
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
