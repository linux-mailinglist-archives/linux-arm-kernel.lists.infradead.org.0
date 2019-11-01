Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0301AECB43
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:16:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EDLkDIRY8EbcoQ0omMi5wbuWxlquPR1aWUydVyB+3bo=; b=WwuBK1s84GPEdD
	7WIAktzZLFwEV2aHm/q3YK62rhgyO5dsAp1YohXUUbIAMSVvL4GFSewX9v/YmOcb5/Jz9ZvXnGInd
	V00XjZ3TaZ8Zp3Mh32f91P8baHdhRJ55b2aLcYhVrvdM8hGPK/1AavN0lvq69Po/Htb/SFRUrhwZB
	9g2fMcRkrkC39ms9X4KhJ+fOJXCCY8//jCie/rqryibOTPhBikIE3/RzUMmeemHuJ70quaQ/4eqcI
	+nUyMGfDuBYdjKmqMFx08p/zH39vgA83UktSmIFzH2tuxHqkzQY/GJyJaPFCOzbKabu5dTVPdBV2n
	6lzlJznfa6SO1QxswEww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfDb-0004fI-83; Fri, 01 Nov 2019 22:16:31 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQf9o-0008Go-Eh
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:12:37 +0000
Received: by mail-pg1-x549.google.com with SMTP id o3so5702776pgb.16
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 15:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=oB4lIvjzdBiHgRAUphuiQVPgI+jp2K5bMoUCGUiH4hk=;
 b=mLcd5Ko+fJmhjxDMoBpGZ3EPC3b/VP/PBLdcmlypMJNdCOc5u9jhjSLWUNRMYr69hx
 U2P5JSWVYdV6u8EzfA94UAbX9w5Q1ZrloIyJVyjdf/ObF5XN+RiQraEntwZF84tiJw4A
 SKbzKEtQORywvZdxPhMYx0LHvfikuCCPY9XvjfKtjRiin1Jn0QFeomQACCaJo3jt8lCW
 KyuDz5lfuSMpAGWUw7ut45j+6bJefZga8POnR6VI0FVyWw/cL8vyvxBQD9C59E1UjFOA
 7acbvIVDECPMMh62wKUfHOE3f3OZYuymQJbmahdFgydr8nJ0p/3u8CSBUyJzVVefqNG+
 Z8oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=oB4lIvjzdBiHgRAUphuiQVPgI+jp2K5bMoUCGUiH4hk=;
 b=BS9UzqKVSSzpXRwCW6d7WJOwik4OBPQRqp7lc6VdSquRCi7TTHMMDoHc9MZ7PhXKVR
 c0jSOc7vSv1cvEyVfc+ms0QEQaQH5Dg5TWmxMS65LFN90rMbEW1KUCM/AjJg4AN3YXZk
 AuhyxHPpEBcFkVynKoCd4ncXbActoGPGXol5R320QXfCMp1cHHLfUA1mU1YSaeLmKrxW
 VVums/Y5lfDTtvNwXCHr98xNn5dQ375IyAHdsoYYOVSI5PeyiVR2wJBot1xtQNc5kA/4
 LiW2HbwXkSW+SPqFQCKgMlV2KpXrNz/3hYFn/1YBemMAS+/1im25Q2XpJ8uPBKLdSn5B
 ukow==
X-Gm-Message-State: APjAAAXWs5mZeEBPkksVx58pd4AZw1HRi+RCXRBAcu170nq2aP4XDYpF
 vjMzVg9bn5/Mk4DlOooRymXXfjkKd5jibXOYtlQ=
X-Google-Smtp-Source: APXvYqxeW4tUSlj5Rjy/RV2utncaJwaQyF3tWO3lBVE2VevumOyR70VNIZ9Nj/gJhm+HF4+zxBXbctrnYgLnOQF1Wjw=
X-Received: by 2002:a63:d20c:: with SMTP id a12mr14724175pgg.402.1572646354642; 
 Fri, 01 Nov 2019 15:12:34 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:48 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 15/17] arm64: vdso: disable Shadow Call Stack
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_151236_514708_07EB3DEF 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
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

Shadow stacks are only available in the kernel, so disable SCS
instrumentation for the vDSO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..a87a4f11724e 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
 
 VDSO_LDFLAGS := -Bsymbolic
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
