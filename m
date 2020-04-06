Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B74319FA81
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 18:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EPYl89CZ+aLs1DpFKA2IWNz+iGZ12VthyrJIf/CBO5Q=; b=usV7v6xOZelOnI
	5Vdr51Y9UoXRp6jQajtXc3BS4gwPXS2gtu6M8ih50+7gpdjw9JD4lvXcsXK63+AnYT9CLN9oOl4I3
	mKPQxRZ1YNbBxKogoJHdCVOIAVApPBmolyidwS0tdAH0Qom2XQ6HtcxAdUmWjFMdYUmVXfk/veZ1P
	BOQfXyjh9ydG2csS/teoUbs7AQQmIUU2uq9vur7IKn0QCphg4lzLFXyT4EOtRvhgfUki6235702m0
	iGGBr4AEHkiS4g9rSS5AXdf2aThycvSnbrPVnFPFiA3RicE6KsV3oixho7kO3zgBsiBkCVzeEMCR/
	RHIpUlofgLyjfDin0SUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUqF-0005Fc-QW; Mon, 06 Apr 2020 16:43:19 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUol-000459-Iv
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 16:41:49 +0000
Received: by mail-pf1-x44a.google.com with SMTP id v18so50808pfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 09:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=9B6Bbg3gx9O6jKpvJ6qFzEYX2A3WHmV1/UUBgqymv0A=;
 b=HrWDz0fZO75NK2vCDmhD/+I1qivG9oQ4qAVeDGVwVMfnHG2UMPDsy9o7I7DFuuos8b
 1wMXq0iZh8/+0SOrfAKklcnAPfzQcpOOxTjvsBz0Vi0obIwCilmN41649T4n71L4/o4U
 LAdhGzV5hQoCG+zdFTTKQJpy0xQJRahkRKsMczLj6t4/jv9w74++Q58CRZVqcxunEXmb
 e/F51UD4+HJXaVRvm6gJ4a3RWNd/HZviv2qgqNNwJ3gi/p4aI5O/iHpykcrqnt5Z3sZ4
 klV/kXyI+4SCreOsjka0bJe/27FDR4qvujrtwmGtRqMmKebKPVVef3jTwgHg8nxIVBQP
 CMtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=9B6Bbg3gx9O6jKpvJ6qFzEYX2A3WHmV1/UUBgqymv0A=;
 b=YRp5SD7YmkkVzbJFS6sjFM1825nmDATkPvuHoFFlEl3zP2RyFT0etgKKmfrfrjMjFF
 oiVdEF+f2YTywdQtjpWtW5X0ENcqkGjKS/dzAzNDvZzDyoYtAioMw9eUxTyj4m5ebL3c
 fX0nOE1+kw938yXv3/C+ky4mK1QOubmuugbtHOuVGiAlCuPSVjC0zY0Ex8l78ID6hlOX
 8Gi29VL1k11mhv1QegEv29MI5Xy1Mq/g5r/Y4PmBIMeGkc8jiMUlngdPpsitQz0l3Sai
 4C3PGJIGYHwSFctAnWQ35+DlFZXgK97EzTrQTF4+3X2ZM1JPJJDUzY/alJJYc2sB8r3s
 9Vqw==
X-Gm-Message-State: AGi0Pub4dfayCbfwBnkyUa9p6nUZG26Sfm7pZb4PkcQq1gpu50+0TFuf
 rkOIlPXsW6H08RrwvuuRWcVCRZGmDeu4mZo2Ctk=
X-Google-Smtp-Source: APiQypIh9gY+yUNhuam6c+bzLbAj5vxnuqxB7ZWcGUFaI6ujh55+UwXryWUkEBM6Rr0lP42Us55g5qxLwuz/E8Mta2o=
X-Received: by 2002:a63:1662:: with SMTP id 34mr22378296pgw.117.1586191304990; 
 Mon, 06 Apr 2020 09:41:44 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:14 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 05/12] arm64: reserve x18 from general allocation with SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_094147_725038_409F5830 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
index f15f92ba53e6..34277c60cdf9 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -76,6 +76,10 @@ branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
 KBUILD_CFLAGS += $(branch-prot-flags-y)
 endif
 
+ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
+KBUILD_CFLAGS	+= -ffixed-x18
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
