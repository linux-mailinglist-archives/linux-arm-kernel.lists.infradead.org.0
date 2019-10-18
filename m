Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43076DCA8D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eidiNV5JQXMGqkjWsKDBj+n7kFwkXj9f+4G5UQmtG8c=; b=MwhcinvNBh/K8U
	i4JlOm8jimlK2k6Y0P3DFTDvr7QlMfyCOx5Zw3GWPcTMm8nFg9c9NJODRK0TuNWueoUc5/lZlWXz6
	F/ax5ni4yH+EbFDwcrUX1Wi8JxNUrjdaufy2POqVd7L9M+3FfEJ6eNLoJ8Jhc6P4DecXmy9dolWgI
	CqbK3A5ZTuQmd50pU5v7nsNOreDSFIDhlLTkniWC4BQRRrJk4UeJhSHXMUPtKJsdmyn7NE/we/fsz
	z490y7hKfQ1i6iBnT4/arVmQ2CfXa6lQ84WWH0116jN8Pg+JNjGoGcZwLck3KoJBm89ZlvL+1c9eo
	fdYBGicicF3dNBFy9jmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUrt-0002tT-Aj; Fri, 18 Oct 2019 16:12:45 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUqD-0001cU-Ti
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:11:03 +0000
Received: by mail-pf1-x44a.google.com with SMTP id s139so4953202pfc.21
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=SzRVhVCQSEs4UpxvfljRvYSxQu5VFVx82TZExeQC7I8=;
 b=TZOVdcpBJiow5T4VOPKVfmYmovhUmd2ZBG9xflMRKW8S5BQ2L7yu5g6JY0/TCCHH+I
 XufZXerCCZfchS8x9jnvOoLMze/QWKGKm/0eGk215XJdEA1kME5jv8jnjb92Pb1eVWkw
 yiTgUjP8Rao1lkPZ3wsgn20YfPu5vdw09AcOGQOKuwSW35OqEXFlPzTQhP7pZvaCNMAW
 MWtaplAUSr+50SFN34KRGzFF9OlQtJcKYXSWZanQMwKs4H+DZ9A3MX4sVyK4cRYJFJ+w
 rlR21WxyyCXlD1Tc/Mn6bTnrGGsiH8nauEVx60lyfrl/C39gDgUhzHfYMSQ6uZ9ljLwO
 QH/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=SzRVhVCQSEs4UpxvfljRvYSxQu5VFVx82TZExeQC7I8=;
 b=jLIXIk2dMk0I4YsFRDyr8hGpWDToqdxrZ/LcyEmhB14Kl5n0oyR+ktgOnYVfyD19JL
 6UgMGnKuzwv3dPsXZweLXUKqqEJtlZGalBCwQjond7VNqVe3MnYkyE9WE/ney8gLt5QE
 dMa3QAQ/+hzhuk7QQBZK6OKogwJR1TjfNWVxO3Zq+JRsDgKcBE+cbbMz+vcD7XoZyF6I
 IA/aWe+h/lLtSHaDyLOjxT0wstPF+QTguz4SgV8Ak657m8aF4ID7thPaSjRTLUzKY8B5
 bzttyuhX5Ra+9CFYRtdU6USmOzI6QCIw2675BDf9Wc7ZMqdtzFuX20S8w7juxrgfRy1Z
 DpnQ==
X-Gm-Message-State: APjAAAVlaOQptXKBKWU6VVG025IfLUXohD073WjAv8lfv1ce6rcNHkYh
 l3UB39Ppu9lRMMaquQzSqlzx6F7O0in7mP/kZQM=
X-Google-Smtp-Source: APXvYqymenYk+Nj4KHMBe+/txGcAk8emmf58ZAJAVtmISgexrXgZK+srN7qpXD3xJ732mL5rywUz419mv8CrbkTon24=
X-Received: by 2002:a65:68c2:: with SMTP id k2mr10843389pgt.241.1571415058696; 
 Fri, 18 Oct 2019 09:10:58 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:19 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 04/18] arm64: kernel: avoid x18 as an arbitrary temp register
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091102_036067_C7C6684D 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

The code in __cpu_soft_restart() uses x18 as an arbitrary temp register,
which will shortly be disallowed. So use x8 instead.

Link: https://patchwork.kernel.org/patch/9836877/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/cpu-reset.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
index 6ea337d464c4..32c7bf858dd9 100644
--- a/arch/arm64/kernel/cpu-reset.S
+++ b/arch/arm64/kernel/cpu-reset.S
@@ -42,11 +42,11 @@ ENTRY(__cpu_soft_restart)
 	mov	x0, #HVC_SOFT_RESTART
 	hvc	#0				// no return
 
-1:	mov	x18, x1				// entry
+1:	mov	x8, x1				// entry
 	mov	x0, x2				// arg0
 	mov	x1, x3				// arg1
 	mov	x2, x4				// arg2
-	br	x18
+	br	x8
 ENDPROC(__cpu_soft_restart)
 
 .popsection
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
