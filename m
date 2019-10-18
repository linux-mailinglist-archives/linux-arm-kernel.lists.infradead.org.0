Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5457DCAA8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grBW8UtL6BiZc60ZIJYwcBieh79CawU91ml5JCxglZU=; b=qEnitIimmKzvCr
	dmadqipaqeaiastwlAn7zrSOEzo4b8+APHzCFCm6PzOLd0ynAq+GLto/ossSBziLraPlUwuoGsITk
	m+DdLGszyCxPKW3obbFpVifjvtbz/noVrtl5y2yk5wO2vZq3LvNvTs4x+0yVd4y4QPebnHAsrWUmH
	Pf241Txk70fDiLwdukkkC+kHHqjF/RPRzJzCeMEgrdT4pPoGGPGTLyqbaWGJclyJQGR4daR9/kSyE
	UnYw8s6qBMnVtdkgNylmKq8AAOM69+gw3dWM/yAVEmyQWWpClwfd1+osDMEzx1XIIgJHK5rsUwQ2y
	5hKMloz7HgBHwjHhCG5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUth-0004pc-8J; Fri, 18 Oct 2019 16:14:37 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUqW-0001wW-UG
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:11:22 +0000
Received: by mail-pl1-x64a.google.com with SMTP id 99so4016035plc.18
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=fICIDxFYsM9a9Ff5jMCA2HNdKL4X15DyG8HPfHVUdX4=;
 b=NSG0XzUqxk2+63gPHHlONBw5Q4nS2y744Eo1rGIDmimGan5ZvchrFconEmIXiVv79S
 0SiQYCOcKQncsgO+OjD18O6E+2SSMSAk43T8F4SPII5CwYW5Z2DpjcXEvu90lABe0T7d
 54pDxZVczkH9+W6UKw5BGz/1SAtjmaCTeJP9IigFW7/8iSrzVXwx+vaItOIgEL2NFpn8
 PCwsy3taMFVH2Is9tZDbWuOIcT/YBmZIupi5pgO/dSJwAnrHQ+9LRhx/mZ3aQl1rS+Hn
 PYSAfr/54k98LWSAkxuS0/kkDyQ70rjvHFcfVRO0CwmtYXN/ED4JgjMIrSHGnZhfeFY/
 nwUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=fICIDxFYsM9a9Ff5jMCA2HNdKL4X15DyG8HPfHVUdX4=;
 b=XDZtpcvZG0cw13kGQLJWW69Rf+ZcpWfmqt9fTkdRQcz9uGFKKIT2CskkAjmnCf+Km2
 iMaWVh+SsbxSDyupgnBBTmoxmun/qqD8MM/45Eh0JkxOtgU8qpMpq8lor1IA5o5pz2q7
 Dc63pM+E0edbVHUPprcEMgtT6mM/jwkH7ARQI/xDr3leaYXvCHKyq1+3vlf4chfkdS+U
 dVf2wg89j3Y6QkRQEHfs/EgiL2Hy3dndSoryCacSRnVwtJvfQDjgv/zpa7wrXb5KYTmG
 60OmA6HEZ2Y7qa3N+JOSU2DjGtHLjo+C146Sb93lH+Ij2L2GTWuN/Hd2mBboz3MkdkI4
 j95w==
X-Gm-Message-State: APjAAAVDziuiR13ARnFEdDyn97urS5EAxXqCskX0ZK7hg7X/AFAGJqX3
 5tSzLsAkJbql8LXy6fb8oWSO7lLCx+S2tEGhivQ=
X-Google-Smtp-Source: APXvYqy2IPmHgVzSQFLWH/l27Qtv31FYTpjwXUbB8shECHuqpnU1nIwwQdz+u4oVI6rxTnp6d2Le2ZcdmFuior/slJo=
X-Received: by 2002:a65:6092:: with SMTP id t18mr11012516pgu.418.1571415077997; 
 Fri, 18 Oct 2019 09:11:17 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:26 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 11/18] kprobes: disable kretprobes with SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091121_004556_1A7179A3 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
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

With CONFIG_KRETPROBES, function return addresses are modified to
redirect control flow to kretprobe_trampoline. This is incompatible with
return address protection.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index a222adda8130..4646e3b34925 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -171,7 +171,7 @@ config ARCH_USE_BUILTIN_BSWAP
 
 config KRETPROBES
 	def_bool y
-	depends on KPROBES && HAVE_KRETPROBES
+	depends on KPROBES && HAVE_KRETPROBES && ROP_PROTECTION_NONE
 
 config USER_RETURN_NOTIFIER
 	bool
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
