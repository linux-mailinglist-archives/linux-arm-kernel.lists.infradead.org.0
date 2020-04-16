Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE97F1ACD27
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLwTQbBwYHY6gVif6+OASDgK3I5qbny4fd5OCE4IMqM=; b=IiSsidEJUQkk6c
	8dWzaPS8jWXs2rDvtOi4xaGhQzyXnNjOKqJEG92r86g4M8JwYECwE1koZDOWlZfPs+3wa47VwQWqc
	zeIsSKnAAKigt9VH2pZuxwGTK1AkvYIMadzpz6mRdYE8BcPga2PEqnPSSzcvFwgdlnUSprZSBOmE8
	oPhaQkjTQmh+lS/M41kRxvr0xDpjbVMd8ywB8IelvpmbaAQV8gUMwkJduI6vhcQOcAvCa0XG89Be4
	JLgCWRBJEK0EW9vPGPJpxW4/+8qmUroS5bdhMXX/4WM83Ov5jMf8//HJCyAjve0scTlqTmyLc3M+j
	yt8aORuKIeyTV9MGr3QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7Aw-0008GV-T6; Thu, 16 Apr 2020 16:15:38 +0000
Received: from mail-pj1-x104a.google.com ([2607:f8b0:4864:20::104a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP78c-0003oo-RY
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:13:18 +0000
Received: by mail-pj1-x104a.google.com with SMTP id w4so3340506pjt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 09:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=SV1DVkULqNa+FuGbiBRMBHT4OnEsBDpzGAv6cWsD5ng=;
 b=sLxFQroYETeBwkC7GL2sYyxH2hNaeokGKsdeLtXjhCO6cOtPj2JOlGsmapVVPWTSK1
 uZovYKEMjxeKiEqbJmm1N7h1ZuFNEWeqj4HZX6p71THvzQF8G9M+4JNKvHa1/tmuIfCm
 6EVESi0OEnWDzNouoomBEUVi/Rq0z+KDY6RjRyGUB3tsfFtJuEFP+col35MQzcyIEv98
 JSCbKVeCMC9JhoiaW1ka8ABAA/JedzZ9Vi0vS2OTLgQwsGeOmODa1mbGdE1L5+3CEz9R
 c0a2TlVnEXnb/0S7j/hvoXDbtLEn1ydd7L+LiJbescqWyWwpPatKM4QMw31dYxQHQmR6
 pJZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=SV1DVkULqNa+FuGbiBRMBHT4OnEsBDpzGAv6cWsD5ng=;
 b=g6L2aZFq/LBDaUzPQQcv4JkLOWimijB9VSNs3J5DXmoEuGbpgXH/C81j2nVljkeWym
 AQte4GTVRPi0PN8FGKazP6F1O4n5Xcv+G0o78+aa06R4xvn2orjsX7rROYHQi3cmn/rz
 lOUy9gzWJE184GVKvznYLlQ6hrLEzUPohsYxvcKmd4xp3DbYCOZ3xY7G09P9A9TWq6og
 kZWy5ZLRGkpadGHnSdlJxEw861RA6FsZ22lTHdgD2W2VgnnR5pwuOSTSabPBiBbxH5Sl
 LDlprikAxkFYLL8ifCOzXDv7+ao6TyhB5mT4AGBQRNVU18GbVf0FCRhU5fiwix3sdSCa
 IBbA==
X-Gm-Message-State: AGi0PuaQfRNk1AMHRJxcPmuJTiaf6o5Q++bYlauRhtQrmulLln3AvV9J
 KiyVLyJi1HodYvi82HFP5p9zsbNfim/tZ1FpgMM=
X-Google-Smtp-Source: APiQypJNkpQBGKyIWPV2BtmwX/E/gHMUX9jAQmns+9eOAcaQtZAXVp0Bz90VtPtI2vifzdaZP44LMcdHl+FTfzmDINE=
X-Received: by 2002:a63:ca41:: with SMTP id o1mr33386721pgi.419.1587053591236; 
 Thu, 16 Apr 2020 09:13:11 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:42 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 09/12] arm64: disable SCS for hypervisor code
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
X-CRM114-CacheID: sfid-20200416_091315_016222_FA501B2D 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Disable SCS for code that runs at a different exception level by
adding __noscs to __hyp_text.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_hyp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index fe57f60f06a8..875b106c5d98 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -13,7 +13,7 @@
 #include <asm/kvm_mmu.h>
 #include <asm/sysreg.h>
 
-#define __hyp_text __section(.hyp.text) notrace
+#define __hyp_text __section(.hyp.text) notrace __noscs
 
 #define read_sysreg_elx(r,nvh,vh)					\
 	({								\
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
