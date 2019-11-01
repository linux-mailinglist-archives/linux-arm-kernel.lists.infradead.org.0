Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6949ECB28
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:13:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=879X++7zCJOUkWXNHENJfK4q6zBXSaZyIp+jxoYX7mY=; b=SA7+FlNM9lkHc6
	2+PPJsQGwZL74PaSTK4HhxUayg4IcqivRwsbQUf/8wgmsip3eKqzPYcUj/HMyGZCAW6Dvp4TctTr0
	tNq5LFCEOEjx0R3UG5DoY74naa8GJelouxB86hpLfyxGT6faoSSq5V6iCM7+PqR02fydsJZZMLufZ
	zmqlmEmffFMKqqm0efgt3AFPITNAJZjaQBkrlLGAMJSqVvu9WsnS90JsWeb4ccVlWXDw+6FgH2+vh
	wXV8HuMktPI7jynmM26JlGra/XiDxk/MDP446KBNAoqB6rBrD+Yp5VrIhbMIH11ccdYNBp//pNjwX
	9GRex8Pw5risbq0Ns81Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfAp-0000di-An; Fri, 01 Nov 2019 22:13:39 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQf9K-0007lN-VA
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:12:08 +0000
Received: by mail-pf1-x449.google.com with SMTP id a14so8440644pfr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 15:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=E806Ihq7Qr5kwAxZ8O8jq/5GK0i44oON304BuEfvZ08=;
 b=q3YTCGLY4SwiQs7Dr523GbwXcyS1rOF4ePlC+I2FlqMLdM1nbvtx89eitGKg3+MPv/
 /6kpVC7ib3nqYGqEvd/D7Aja0/Oqw9bqK4yY73IHHngPbb8yNTF80TsjwS3dip4BNdjJ
 vrTCQU+wyHKRY1+9qAAoEBJOivxjjzkaOrEGQr3vnrSW+SARMhsCk1i/tL9jdyhbVr9G
 N6J/wBNQprJN4QGbaP/iQ1MEafD71JFawBswZkK6umVAzs2YdsoYpup5A4o/8Tk1dVfR
 JqWRLp00wfY2sTSArmHg6PdT5yupXzlZUV+YXQhkWVfHN9eXitDPORweXPhbmCnVSWKB
 z5cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=E806Ihq7Qr5kwAxZ8O8jq/5GK0i44oON304BuEfvZ08=;
 b=RdfhlnpyiS08mX6DKfM4ETw12EyZFex7yisSY7nmmPoA58Uu+E/EG0SNTbtcTibxhm
 NwcRoUjGoi2IJSOLumU4tTevZBq7HFx88Q6B66yjww3N2Pc+97O2Mb2vmtrJkursokET
 vKgjgapqTgq2G1uFDRVIIUVqT953MZHKjQ8wwBJjjTifVEVW/swmsppHFb6TaFAZr400
 0gzNVlnR4M1TJRDlriYGN9T/X9uf4bqrY8P+yQyB4zEMOuPDSKdNnylzxci5O5cliGiO
 DxflTzG+/8RQZb1WzBZVLeAB+XEVDBPgNWgmHvQZsm6gp1NKe3rIGG0aGQYAqtIzOBpl
 Q2yA==
X-Gm-Message-State: APjAAAWctNoSmCfu5b7AK9K6dsaMshs/4+KgeMbhpS4vd+lmTLxd06hK
 38/4ON8KlAZrq4LocAGynuSBZnGB+LWrEqhX6vA=
X-Google-Smtp-Source: APXvYqyjCtIlE+FqIkDNQuZrIZu231KKDGdgU5VhgnFa05GlKuF5lFgoXY69KDCGAPVnM5k2sylcp3A3JeY4sKUC4Q0=
X-Received: by 2002:a63:7015:: with SMTP id l21mr14741976pgc.200.1572646325115; 
 Fri, 01 Nov 2019 15:12:05 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:37 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 04/17] arm64: kernel: avoid x18 __cpu_soft_restart
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_151207_026089_58E909F4 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

The code in __cpu_soft_restart() uses x18 as an arbitrary temp register,
which will shortly be disallowed. So use x8 instead.

Link: https://patchwork.kernel.org/patch/9836877/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
[Sami: updated commit message]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
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
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
