Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3D2D35A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JxgXuscmNjUx+3W4Kt8O3fBFelUfO6Yk8d6Cjaqy1UI=; b=J9HRIz0A0+kLab9F2gopqnnPqh
	Cxw3ksyeIGYKMveVzAbi6XFyUw7KzsduFXCQJ3u7Q4mvYBhv2QmK5oVhiODaEL8hCGgy5DmKbIz9k
	+OeWaR2vgwxWIFgKkofozTtEsLVtOYadaRoKRsCRkS9mnhF7bwoozNhBuK75RIHgCCnEverPBMjLS
	FRBpglI1aFxQ2fb4vDht6DvSckQvPJNTEjfrNJ4EPIXLFPHuFQ5y/xiAI9d4OwGDyuX069f5OpBjG
	RqgUiQXhZMwC/uVG00ZoVUQLe4Ef2yI7Fg0NQxC3Q/WqSRs77Pjl/ML6pKLLgvGY8C58YRRnwi/B1
	eb3HPsNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiax-0005Bb-AD; Fri, 11 Oct 2019 00:15:47 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiYJ-0001hX-CI
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:13:05 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so4967623pfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OvLPSIr20MO1GrkJ0OvwvGngd4/e51+GSaoElj9X+Gc=;
 b=Vo/YkX68H3JSVeYxOg0wgKZHM0DDpLq1uGIDRlC9At7IoYDSFTbfrL3kzgv//JSf1l
 wfMMq2ZZ1sw3ulG7OB/Al6Lb7yhUEHFwVbMy0hx6CDWOUEDVNEPAVOGo2TBJff56wZsX
 1wJpR43jEKVUBiVd5MS1y8q4VLWL+t/un7fCg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OvLPSIr20MO1GrkJ0OvwvGngd4/e51+GSaoElj9X+Gc=;
 b=FbJg5ODzWqTtBZAY8we5AFzFm9efH3s8QakzdGrOlHGnY6yp2BbfT9YUo213I34t5f
 kmxNkxiDpBwERQBpiSMJDPD0s7L7viKITTpkOYrPAIsqEoFxg8+Nt0iFORO+Ug4j30z4
 EYCpa08mVdJTHbXrR4ce6RzwR7h44ljpelBOuZHk4eAv86p07c3/dXCDdSPBfj6qJU+f
 24EmX0hkOUUIfjbZn1m7Sb9kmSeycO2WxQLGKIP3US4d8TRsDIX0D9tEpzolsfiu6KYY
 1/pkyhvanY+vHpb52EI3+5QyrfrJGjXWGbeP1uPVCaKKE9/Ug+Se7fTQamn2koXlKntB
 e0vw==
X-Gm-Message-State: APjAAAVkZSAgj0bfZ1MZm5Wk0eQ3F1FPCMZOnla5MZ9263e2viKin7P8
 4tAG8LnW/P77oLQEVGH/i9MhAQ==
X-Google-Smtp-Source: APXvYqwcXL9IUcA1NwWjkBG6ihgZ1mTQNQKZY+myfeizvcbcy9RQ9+vXBtLYoNyG3c9FkCNmz89Vqw==
X-Received: by 2002:a63:4383:: with SMTP id
 q125mr13830250pga.373.1570752781928; 
 Thu, 10 Oct 2019 17:13:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id v68sm8097683pfv.47.2019.10.10.17.12.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 17:12:56 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v2 24/29] powerpc: Move EXCEPTION_TABLE to RO_DATA segment
Date: Thu, 10 Oct 2019 17:06:04 -0700
Message-Id: <20191011000609.29728-25-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_171303_473348_BD4EB695 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, x86@kernel.org, linux-ia64@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-xtensa@linux-xtensa.org, Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linuxppc-dev@lists.ozlabs.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-parisc@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rick Edgecombe <rick.p.edgecombe@intel.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-c6x-dev@linux-c6x.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the EXCEPTION_TABLE is read-only, collapse it into RO_DATA.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/powerpc/kernel/vmlinux.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
index 4e7cec088c8b..8834220036a5 100644
--- a/arch/powerpc/kernel/vmlinux.lds.S
+++ b/arch/powerpc/kernel/vmlinux.lds.S
@@ -7,6 +7,7 @@
 
 #define BSS_FIRST_SECTIONS *(.bss.prominit)
 #define EMITS_PT_NOTE
+#define RO_EXCEPTION_TABLE_ALIGN	0
 
 #include <asm/page.h>
 #include <asm-generic/vmlinux.lds.h>
@@ -162,7 +163,6 @@ SECTIONS
 		__stop__btb_flush_fixup = .;
 	}
 #endif
-	EXCEPTION_TABLE(0)
 
 /*
  * Init sections discarded at runtime
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
