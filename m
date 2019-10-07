Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F255CED3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 22:15:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dlCqKX3sp/NW0ZK0bWK3BqxE4GAY/taaxa1Dri4QNWc=; b=li2gI754Fkz2sY
	sPvK2+D+ywDOu0dBXWJ8AtBZ4E6kW8f4p3UblJ/VEE/hPEU7c31eUrzZlXWuV9kODX6RyBIl7ZSO5
	FeCACs7JBN0juUVmHXa3l7sa8zdLU+tsiYax5RdlqqjxpqfYUE1In/Y0WIm0059wnxW5XiL68l6V7
	v9XIV1gPU36Mpn2OQtn4rIyBaVXvR48z8djuZoFygvfCyVoiG+7pGJyY+V3NxJlGvQC7trsMMO4pG
	SI7WrpEANoj7mvDWDblSZjZ4VukV9UQi1jPkrlGB4CDBt2GTusZYdP1swGq1pZJ5VGSP2L1K4q7jT
	/2RBzcTZMelGznkg5b5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHZPW-0007mM-Tq; Mon, 07 Oct 2019 20:15:14 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHZPF-0007lu-QY
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 20:14:59 +0000
Received: by mail-pl1-x64a.google.com with SMTP id s24so9329605plp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 13:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=/4/9rYzAhldgvSUHiN1Cv8SA76p5OhElLe1pQA25ET4=;
 b=WHfICpqJKjs29U8jRSc9dCUIctFWsnqbi4mNKDsdExzLlBGWYxpnBgszgnm2xU+jI2
 tkEqMcaC4tNHu1DTKGty2qG7h/IepYofQSdPPekaqeo9wxgF1alXB5LOtCre3MkwzQTr
 g7xq+KtlZKB/WUz+SUnx9DkyunDzurGnS43mRvgojQrG4n8ZIJSWlhYFfy5ktJKVB/Qu
 ycZ4WdoXzPB7zheoSDVPQSyOtluiOp3dMUXC9jpyaQ7ksFB1x7CKxpAEELCgMlsmess6
 it1/utlJSVsXVETCYk3VLwdDIWHDc7VjbVSsKspvxtexio5lblLYxn1T7KBIuAzE/u7+
 pJpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=/4/9rYzAhldgvSUHiN1Cv8SA76p5OhElLe1pQA25ET4=;
 b=V3f4ssKAI8FNzKuAkPnXFOVadKPIcl1oX3wX2YdRPK1P2piDTSYdWmVlB27VcJMgeO
 58nV6rd3zHyb19tm2VZkOWT3GP1D5s57PLwtD9Si3NYH1KIsvOg/XwYUyrsKJWTuz7/m
 8bRiQkK6DVz2nK2KMIaIR7VuBZR73AY8H7J3k75DMN2vlWSYqVXXPFnhO2VwxvUluoJL
 RfEKbRZbJaagus21QTb31mVsrTehzZMSDjoEzaHVp5XbTpNZ5qOvnjVFRW8ZjFwqvKQ7
 7oD4zBhdNWxrJhmxfHaWYStAhOYak44dATeWVt2b/zm/0SU3Nn4HE/hlk5/3Y5+6qUJ3
 7mKQ==
X-Gm-Message-State: APjAAAUXmODzM9e2UoBBATnQSI8AcEvGNgmavrYFbOu9iu1RCW19Ho0D
 ijj9RVqvtS4CBtg7e5V89VDC33VXa8nYvJXfhv8=
X-Google-Smtp-Source: APXvYqy2MfIgu9RYUmgEEwP98LehLmwIuauY766L4bdYigR5PXao67A9xmpIUn1yitsa1c2mHIhNSotBKObpghXtquU=
X-Received: by 2002:a65:5b8b:: with SMTP id i11mr23380217pgr.22.1570479295782; 
 Mon, 07 Oct 2019 13:14:55 -0700 (PDT)
Date: Mon,  7 Oct 2019 13:14:52 -0700
Message-Id: <20191007201452.208067-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated assembler
From: Sami Tolvanen <samitolvanen@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_131457_883262_61EAC4B6 
X-CRM114-Status: GOOD (  11.04  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unlike gcc, clang considers each inline assembly block to be independent
and therefore, when using the integrated assembler for inline assembly,
any preambles that enable features must be repeated in each block.

Instead of changing all inline assembly blocks that use LSE, this change
adds -march=armv8-a+lse to KBUILD_CFLAGS, which works with both clang
and gcc.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Makefile          | 2 ++
 arch/arm64/include/asm/lse.h | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 84a3d502c5a5..7a7c0cb8ed60 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -36,6 +36,8 @@ lseinstr := $(call as-instr,.arch_extension lse,-DCONFIG_AS_LSE=1)
 ifeq ($(CONFIG_ARM64_LSE_ATOMICS), y)
   ifeq ($(lseinstr),)
 $(warning LSE atomics not supported by binutils)
+  else
+KBUILD_CFLAGS	+= -march=armv8-a+lse
   endif
 endif
 
diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
index 80b388278149..8603a9881529 100644
--- a/arch/arm64/include/asm/lse.h
+++ b/arch/arm64/include/asm/lse.h
@@ -14,8 +14,6 @@
 #include <asm/atomic_lse.h>
 #include <asm/cpucaps.h>
 
-__asm__(".arch_extension	lse");
-
 extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
 extern struct static_key_false arm64_const_caps_ready;
 
-- 
2.23.0.581.g78d2f28ef7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
