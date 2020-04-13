Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 570ED1A61C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 05:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LA1i9FuujK6EWks6+pHG83QRxNWBq23WVr+o/cD0SlQ=; b=nHTqymC7d0MBLT
	tb1dhpMxE+7et/uWQ4KG5f1isAYWohwGSYI/cgAasj+6rynMsoN4eHyyFvAgJrFwodYc9eCB+RV9u
	KoqPIcBtiwtjMDWnrIxmO2jUPOjGGkq+rte0qWZPLLqdDExtzWXt3mDQOnFz298zX4awPNRAUakyi
	vT+cTj2qI9zU+qokcrd6jkRQM9j8PECxdWG+8JAPRPmY0CGnaB604JS/o3jAXiPVJaK/FBhfAkw/K
	n4GVbqaVTdaryCp3g8ix0caCZWCzr3j7Dok3fC4EUm3elAl2VvfffHT3r7b557OpfISeTpXopiKig
	AARqbnIBWxespHIMDbqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNpvY-0003VP-Oy; Mon, 13 Apr 2020 03:38:28 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNpvS-0003UO-17
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 03:38:23 +0000
Received: by mail-pl1-x649.google.com with SMTP id k10so5966631plx.17
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 20:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=QORZam2dJ5jBZKiVodgUF3UBGqcYPusEkvKEQouWzf0=;
 b=YtFBuwoMRABxnu7YQkBMvkcDlGBNKbBanbMYSFpY7TQd24/qiJB1hAHOcVeQgAYgq2
 VWMk8g8OBJl8eg04xKayAFnFhJwVMi8atooqHPSJTidvRaXtlIYjobw9j/YrCjiP9kv/
 mIFuej4k+hj2pomkTrcAD6k7y+SZTMrWOV7XlZdStuTjvaBgiXE2gXkqDFs9U7YQn7tQ
 mESBFUH3HbsahC/wiz27l185cCRqoSzB+rJpOfnaJQOOsI0k5qg9m96ECvoHEGeDT8eW
 OgDIJDgWwcHG0YPOS2Qa6rKLW7AAN7XU4rrRncXrD0wKe0bKb3a1/ykrSGZWOCNam1J/
 Z0wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=QORZam2dJ5jBZKiVodgUF3UBGqcYPusEkvKEQouWzf0=;
 b=HNQxu848DN/+33i31syoiiuyAPP/LCG02vGFigKy6EZYpq8Rq8XIlFvE9Vkfkxt/sX
 2PBGWIvklhy8TY/ejelStTOb2q2u3krhODsDxv250GvNzb+TFMJ8pbWxf4HnV/nPQLgb
 If8GlWPSGR0rZjmnlinmiy7FTkajpQZL23FmpwfbfU+QA3v8kpbsa/rCjfz2DnrLb8DE
 yQm8S0zK0S96fkwlQKDYnl9ujeEBoircMP4gZ5yyfJQ8MR4OlSC7HnzTz8dxdw+oMEwf
 5pgJ5NP2b2RZIau3VUkyiIMHBDQ9pNNRAOVPmt45VKh/3BIhknbmf9hmXHt2oR7FPTHw
 T6ag==
X-Gm-Message-State: AGi0PuaM8llcliewk+SLrxmIktuKkDAZVPOqkLR2lquIyP0yEfl/OVRr
 L+b7LcEZCyQpEwfllAsov4mHRK6EddCiBRj56DDQPm73vQNp+C24rOtYRCfnAz9V7GUywL2H2oE
 Mh5RsmLGSRjLYNHCj6TkHnznv7qT/L8x/mPyeOmC/bFxamROfDX/3csEGyIlcytGBf4CBYtb3Hb
 IJjzou+7Y=
X-Google-Smtp-Source: APiQypKeuifjgteDaCs6+s6xezS8EBZr8x4/+p3bT6L6DUgg35T0PVJh8ppYM7VeNyE+wu2mmfKscn8R8KQK
X-Received: by 2002:a17:90b:3752:: with SMTP id
 ne18mr20616356pjb.143.1586749099419; 
 Sun, 12 Apr 2020 20:38:19 -0700 (PDT)
Date: Sun, 12 Apr 2020 20:38:11 -0700
Message-Id: <20200413033811.75074-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
Subject: [PATCH] arm64: Delete the space separator in __emit_inst
From: Fangrui Song <maskray@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_203822_096379_3A11B4F8 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Fangrui Song <maskray@google.com>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Many instances of __emit_inst(x) expand to a directive. In a few places
it is used as a macro argument, e.g.

  arch/arm64/include/asm/sysreg.h
  #define __emit_inst(x)                       .inst (x)

  arch/arm64/include/asm/sysreg.h
  #define SET_PSTATE_PAN(x)            __emit_inst(0xd500401f | PSTATE_PAN | ((!!x) << PSTATE_Imm_shift))

  arch/arm64/kvm/hyp/entry.S
  ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)

Clang integrated assembler parses `.inst (x)` as two arguments passing
to a macro. We delete the space separator so that `.inst(x)` will be
parsed as one argument.

Note, GNU as parsing `.inst (x)` as one argument is unintentional (for
example the x86 backend will parse the construct as two arguments).
See https://sourceware.org/bugzilla/show_bug.cgi?id=25750#c10

Link: https://github.com/ClangBuiltLinux/linux/issues/939
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Fangrui Song <maskray@google.com>
---
 arch/arm64/include/asm/sysreg.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index ebc622432831..af21e2ec5e3e 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -49,7 +49,9 @@
 #ifndef CONFIG_BROKEN_GAS_INST
 
 #ifdef __ASSEMBLY__
-#define __emit_inst(x)			.inst (x)
+// The space separator is omitted so that __emit_inst(x) can be parsed as
+// either a directive or a macro argument.
+#define __emit_inst(x)			.inst(x)
 #else
 #define __emit_inst(x)			".inst " __stringify((x)) "\n\t"
 #endif
-- 
2.26.0.110.g2183baf09c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
