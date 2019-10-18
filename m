Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCE1DCAB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0D8sYqaRVDHdrNYZA7OiqoCbimXyuShesYMzcZ5mz64=; b=WvppbJs9y0FQqS
	HQjdUIeY3rM7slxKGQDfjPcrDH7asiTeHuN8PWZ01NfY8DU7LQXhaWGJNUrX89DzK6VR8gaQargJF
	PZou3dfRDyu1l1LroViPmYaTJ0+Wg6IoU0F8nw1X2Sd3CXpjo6vK1xsGeNgxCqxlgCHkER+U5r99d
	jZCsShkT+B/X7/K+998htvLWAqhHXv6ZfMs+EAkXsJD5epEdoQ7oPIcVt9fNOLOM/uUleLW7j1Npx
	QV/JFG+voNak87MJBcP2ZtetqZ/GuiSLBhRDdy+jBgGMfzPbfbmlv7RdSzayi+HA1zoFlTLahEybH
	96sojV0OyNZim+pEe92g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUuX-0006Vy-Be; Fri, 18 Oct 2019 16:15:29 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUqd-00023j-Ob
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:11:29 +0000
Received: by mail-pf1-x44a.google.com with SMTP id x10so4958833pfr.20
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=OMV7GU+CS755gzThihulnjNw1pxqVtHrVsdKKTavPQY=;
 b=FGaZKiG+Ux25snyrOJrBiRd7RwQxjjLhUDr+StQE9m6QImfqUDq6yp6j+8Toagonr0
 9TtbMLb3ay20pI9YbGG7nJzzM0vR4AyRpchI4t/ZYgICefWGJVsG/b/aJxIHIw5w9UV3
 EIJDiPWiyVwP1F234VZ4D2+fA00WZK8lZRp8IvN7MdZJh8XNzU3kgbsv5o54oZ+iiZsI
 KghuQJd7vpAsaqImv6J86r3heyO3yrp6I8mcuRhzR5+TbYZJ39FxxZRefwS+iHZszAKS
 nursS3e3ycHoRmOFQHS1v/YDrqGB9JFjdDc8idnF+2J0IDA0s0+5SNkcUWwuinwq2OFT
 V+bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=OMV7GU+CS755gzThihulnjNw1pxqVtHrVsdKKTavPQY=;
 b=k0hQK/nx/D/ShVRRS5cnzOAY1tolJMn4YWDmiCmaQcQ56JLAY5Cw4bYrVeee7q7dsm
 NHrWo3KOiLr/Zs+/Xm6QscP6lSfngYiouEXnZ4mZHiGFjACYZ2Dd3jqqES/dqrZE/ee6
 ANQ+Mg4PDkpedbGPgE5zmrHVhjKwSF3kbRAwEkqiATKgNTeWqjI+uuuHK1BeFv1lKNzq
 LHEkeiOYX9oWsoxXg1krvceR+XEUDtrM66Kiakb88hNPzXHOrp+HXdvFCGnGSwvBYQwZ
 wgKKQNTcW47eCBUQKBPMYtgBpVh8xxZiEjTWyDKqOqAscxuHNplUny5tNoQ/5Awl1CdD
 IcLA==
X-Gm-Message-State: APjAAAX8Bzfo+iGm21Z1qqmHF4gvY5Z0+nQky1H8TA7sHwLK5XJiLuxM
 VtTxRbTcLDt+Tb3e7M+8+CgmFnnsPG2s0BGzZCY=
X-Google-Smtp-Source: APXvYqycxw3zlWpqg/6yGEhb7CgOxW1rmJc0Y43aPOFAV6KRrpZHK92ZxBUvHsBpIOsv4SiMThIv0qzjvIsHF4JRnyI=
X-Received: by 2002:a63:1904:: with SMTP id z4mr11066720pgl.413.1571415085386; 
 Fri, 18 Oct 2019 09:11:25 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:29 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 14/18] arm64: efi: restore x18 if it was corrupted
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091127_815578_E331679C 
X-CRM114-Status: UNSURE (   8.81  )
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

If we detect a corrupted x18 and SCS is enabled, restore the register
before jumping back to instrumented code.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/efi-rt-wrapper.S | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..945744f16086 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -34,5 +34,10 @@ ENTRY(__efi_rt_asm_wrapper)
 	ldp	x29, x30, [sp], #32
 	b.ne	0f
 	ret
-0:	b	efi_handle_corrupted_x18	// tail call
+0:
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* Restore x18 before returning to instrumented code. */
+	mov	x18, x2
+#endif
+	b	efi_handle_corrupted_x18	// tail call
 ENDPROC(__efi_rt_asm_wrapper)
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
