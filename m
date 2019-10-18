Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB3BDCAAC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:14:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sgec1mvFUL6cZ3iszoxGQ7quBUe8MZkiTDzO7qok+bA=; b=WfeOHHB5aSDl2o
	wsXJfzYmBZerBKrZBGxrRZgzx2OxdSk29Bspxxt+Sk+ShCAUImWuY9BZz6zODmzGejYR7qahoXXA/
	6G5KgrfWRzMH+jsDGsZKqHi0hJnjZONhdLz2Mq7ZpjHhJ89GHXO9v4xLhXyz9veR2CEEDDFRdcR1J
	G1SpNnY5kiMxLqV7hcZa3o8gH8qYxXdzuSbXs1P3MQAZhDBtFPpQSFGONbq0W1i1/imEVlIzsm/Pz
	iwO2qDvidyqU2C1kDwedoxZg0OloLF0+FpdAT9bTsQ17dm5iFzKYbtKL1ZAwDRO05SaEqMSTxKw8y
	jkk1mSbx1wvLC0CSPEpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUtu-00055p-99; Fri, 18 Oct 2019 16:14:50 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUqa-000224-Qx
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:11:26 +0000
Received: by mail-pg1-x54a.google.com with SMTP id u20so667798pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=J6SOPI1rQkBRz/oAhlc59Qnl/pEg0yYrtpuJkIBOBkk=;
 b=XB6QWz3NWtjFWDb+Z+2Cr8pmFgRAQYSnL3Uid2Hg1L3X4a6VceEhm2xwPy1aK+VoSw
 9aDveAT40bEva7mRzlDierznfNSbLqDMAgSgjhFynz+GencRC+yEXI9GlTtBT22sGU3p
 BgssCzMTgiVVKQ7dMBIH2LGWSYP103Svydpv/Qk8+Xt+dKrQ9nOnszXcbv17KY+4wwg4
 NXeKJ9olZaMc5VRteVjdV9T7bI7kUuufX9b3S6ryE8d0aJM7RC3oqJ3jQ0cSx2x8TLsX
 ddVquFcsQoFiGmYXXscZ5m21z4LgANVA4sAoVnGTE5uNuWZVS07mkE/xs/dMfJWy0ygM
 tC4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=J6SOPI1rQkBRz/oAhlc59Qnl/pEg0yYrtpuJkIBOBkk=;
 b=TRKgTMtsZAv/Q0tpN4xUDHOCo+6Y+jd7SGyRz3UO1tF9i5Ajukd9rPYNOCPwSZvXyc
 eWPEMPwg1St9KqA7lASzkEaiFbATbHenmwpoAY33gYPidv7C2YTAXRwJdCT5jqolWD/5
 wmz3eN1nSK33VsqLaS+slPYdgfZhPHSV+9d7oIo5rEHvDv32Uz5qFb9Z4HSmxCad+Kup
 EeUn20HA6aBLDG30if9+9UdIFR/mI1aXmrLV8uRccVz4f53pPfM4Odta8xyfJm2WKO6h
 kvmpPNVkT79cxHI0Vos58B4FTrkF6FCcqvD1KsLK/mahPyjBrRMPdnCh+IaUvGJAxHxS
 XFRg==
X-Gm-Message-State: APjAAAWIKYgHjC51sv214rtRziJEhRKjlOvEuDE69XJnytcRD7VbPjq/
 dyiK5BeJaaflrs1pnmljbdorcATtA+RhDsW++Ho=
X-Google-Smtp-Source: APXvYqx8PtU7/rtmLemGGFK39JXzIOz2FvaCxezwKfcFnavxjhOconPajgJzRwBjZVVbgrCp+Uo7fSkc9snzmg9De7Q=
X-Received: by 2002:a63:1e59:: with SMTP id p25mr10856086pgm.361.1571415082807; 
 Fri, 18 Oct 2019 09:11:22 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:28 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 13/18] arm64: preserve x18 when CPU is suspended
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091125_024578_23B1C6AB 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
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

Don't lose the current task's shadow stack when the CPU is suspended.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/mm/proc.S | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index fdabf40a83c8..9a8bd4bc8549 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -73,6 +73,9 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	stp	x18, xzr, [x0, #96]
+#endif
 	ret
 ENDPROC(cpu_do_suspend)
 
@@ -89,6 +92,9 @@ ENTRY(cpu_do_resume)
 	ldp	x9, x10, [x0, #48]
 	ldp	x11, x12, [x0, #64]
 	ldp	x13, x14, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	ldp	x18, x19, [x0, #96]
+#endif
 	msr	tpidr_el0, x2
 	msr	tpidrro_el0, x3
 	msr	contextidr_el1, x4
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
