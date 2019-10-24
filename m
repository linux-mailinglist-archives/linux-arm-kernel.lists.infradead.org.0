Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD91E3FC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:55:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRucDTZGQdLVPSeQMm94UJhAJKDxlOBWPuvhZh9mjt0=; b=IeD8SlpVzJySdj
	ISenDvNxIk4naH4WoqVwQLTkeHuART/y8VkYKPDZc+sh5LLcDQOu0bo7I6Q/17kxE1a8nH8BOLy6+
	wzSrtbLPlvnJ6KGNVHC3biiiyCwYOnmXvxMc0IpO3EmV4/Iq+x21kDeruai9JhHdQWQM+MSxp9KB3
	Gf8SJQP3f6ZJyAp/+l+mjws/f19RidYIg7aJKRLW15ZaXVbk5gH1kKVuT4RAFo7icjBiiFkRBkUUR
	pCFElsaZKyY5SEYJerZ1RV1+RrcdjYe2K0cH0Ol9MpisvK1QE2syqrhURnjybpKk64BEwUDMRHvvt
	NmHLX1wXv52eQz1WAisQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm1I-0006mV-C3; Thu, 24 Oct 2019 22:55:52 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNlxx-0002oe-Ft
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:52:26 +0000
Received: by mail-pf1-x44a.google.com with SMTP id f21so344367pfa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 15:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=3L2fKWe0mnTKbOXtDJWS5MdWfgbISjm7SM0mf8jhMMs=;
 b=H2b3RZCLiylwud/YwS8XTUX1Nfxf49CmiNoouPiLQWiwkmkw6s5J3L6a6uOMooc4I/
 if+ccaYBMM2Jc9mBIKeBZr0auWMA7zC6OkjcSJ1FJGr5CKQ2AKFeLXHSWQCh1T+Wk3pm
 nyov8olG1fm/RHMhdTkccA9BSvy00AbYUCyfFQMmdOh2Xuacq9FgBu+HT9CuJQpEIC8Y
 PNTFQVciC8sYwLstWG7sJf0mJ+TuwRuGM9jfM6cjlT4zPYuVFCG5+jqVPAX/8eswE8zf
 bt35nEX73zZkPoG04qT4nAnZvMZgNDYWfIB2eks3sB+AlQloPZxuEBCzajWqBzSccSw9
 NBmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=3L2fKWe0mnTKbOXtDJWS5MdWfgbISjm7SM0mf8jhMMs=;
 b=TFjwtEJQqHYqW7KbS3BCBfGvEi661Wuif/meV1hoa0jtN8D3ph669rLs0l0oY4LE4X
 MJcKuFIf6gUxlA1IZC/9MJr1YBXwBV7VDKo3yh5L889jR11kqO4IBSdUJjhYLW3/1yJV
 +N15RlYVq2t+Mo5zV+By9L1mJcre9L9xsg97HhKZYwBK8ucn3pzKlh00gZZa+toVOLhz
 47ENdtOW1KnK9VyDlxVwcTkGhY+S2ouf+SsH/TpDg0W3eXM/3QBa4ysmsez2mdBbS6e3
 STV0NFWSl3l/d1JQuIpwJEXM8Uf4ydNQ6B7ITKmtLGN4+HCgrK0Kr2X/n6y/wMXAiCrY
 2wvA==
X-Gm-Message-State: APjAAAU+ofoL5yV2IFDqaPtVYeBRsebzR44jp+ceg481PqSJnnQfzRJM
 j1/WA/8RAMi8GSKbN1YJz6sQBtJtRmGsZhFcBto=
X-Google-Smtp-Source: APXvYqy9g1XQvCTpQ3Jxss3Ar1eHiV+3ywS0nmj9a/zcS8ytsRAvfPgmUVmxVtOnVPORgMnA0aWwHbORKOrobXSREds=
X-Received: by 2002:a63:af13:: with SMTP id w19mr469567pge.189.1571957543335; 
 Thu, 24 Oct 2019 15:52:23 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:27 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 12/17] arm64: preserve x18 when CPU is suspended
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155225_551184_EACD85A3 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
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

Don't lose the current task's shadow stack when the CPU is suspended.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/include/asm/suspend.h | 2 +-
 arch/arm64/mm/proc.S             | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
index 8939c87c4dce..0cde2f473971 100644
--- a/arch/arm64/include/asm/suspend.h
+++ b/arch/arm64/include/asm/suspend.h
@@ -2,7 +2,7 @@
 #ifndef __ASM_SUSPEND_H
 #define __ASM_SUSPEND_H
 
-#define NR_CTX_REGS 12
+#define NR_CTX_REGS 13
 #define NR_CALLEE_SAVED_REGS 12
 
 /*
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index fdabf40a83c8..0e7c353c9dfd 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -49,6 +49,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 ENTRY(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -73,6 +75,9 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	str	x18, [x0, #96]
+#endif
 	ret
 ENDPROC(cpu_do_suspend)
 
@@ -89,6 +94,10 @@ ENTRY(cpu_do_resume)
 	ldp	x9, x10, [x0, #48]
 	ldp	x11, x12, [x0, #64]
 	ldp	x13, x14, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	ldr	x18, [x0, #96]
+	str	xzr, [x0, #96]
+#endif
 	msr	tpidr_el0, x2
 	msr	tpidrro_el0, x3
 	msr	contextidr_el1, x4
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
