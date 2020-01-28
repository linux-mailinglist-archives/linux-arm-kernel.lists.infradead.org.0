Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE00314C05F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 19:52:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sP1Aweyqwy5dZNaP3F42yoJCMrnxce0bYV1FPPe0Q2w=; b=qNR/IhWWb8D8nE
	5LMR3Mmdsbiz8sOiI8LzGIbz4yFeW6MtkxCzlPowq9fQ/DucIO08zzUC+EIxR66irc7j75IXKkPh/
	CWISky9jLCxdj8kfrJ64XQrIM75zQ4j7uB7k+acMOAgHQDGid0t14RUFmioojK7rQi50TGTJwXue6
	6foCxpYwBeQy+KaNWsIqgTooxk/cffh2SbZ2RAWST7m3eTQRngSckXtx1E8QyKhQ1byw36D3dRqpi
	mqO2nlykQThU40eNLpILv86rrQ9ZzrqbLhXrxfA2Um7Zv0uRjGilB0vNmaFsHXlzRioYsrXbwwWR/
	0UyI0nOs2swvykNP/1Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwVyY-0002ir-Km; Tue, 28 Jan 2020 18:52:38 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwVw5-0007yO-Ih
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 18:50:08 +0000
Received: by mail-pl1-x649.google.com with SMTP id p19so939363plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 10:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=g0WhvzNfeF8IPmBIIuRbqPpME0iXsXClcoR+8QuQDeM=;
 b=XUGEKZAhBvSu9urDokgThLy629jPYLYOSmnR3mhcWiS20LG7HIFJnnyG7U9FeOKODN
 dRcN/ygKYsH8zvUKqKrrEoAeiJh6xj9bUwUihjFNwrC/HNMCo631ZmTMa3qkV5FANr8P
 6Bjc+r6yLtlgBlUAHhWWjX/TBrDG4QySpa2+C3PTWI7oznRugEbMlEysjsNyTLYh3Ly7
 v4QRry1d0cr919cFyJZHFpX/pPX+XmluNzInaHF+jkT6HB6vLrQ8GXNwv3HX2Ci3+Tcp
 DP6fw9+xZnGwQ4GQ+XUf08VGNsAQ/+zNH2o7Wt5M0nyNImoOhkc1Qa5/vpdDpvtQ4s0K
 vK7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=g0WhvzNfeF8IPmBIIuRbqPpME0iXsXClcoR+8QuQDeM=;
 b=pGY9w81klR7SPn2oXoObJAXzS1tD3StjSxVm1xieKlD8mDdVndrzqWpr8C8qp4dfvf
 sQZQcBTUkt1xkket0T4c9C9OQZ+5C4XZISvbGhe5/HlNq0Z9NXopebP2T4EUIGZEB38O
 eE9SFgS6B8mTmyEO5Gx/oVIto9us57ag9ZSP3ARMbGf+Wq0RH+eYnsAs+yNo3fmHQM5O
 VXmJKnFamDz1ni0hABNd/W759vmmO0VBt4R6NJbCsQzHrHdHq5dpf5FVyPMBOYah7Ds3
 We7WhUjmIIMtnrAAF54TyBCaRG9QYb2mdnJUYeXedCN/zOXjUhEUbPU128t1TGnKq/2i
 YoeQ==
X-Gm-Message-State: APjAAAVXi89nAmDNQnRNRMCyr0St3YzgN3oisGOgW8yhmclhbGHLDdmZ
 RhIpdpbvRwvrM/sz+qId7MaUSfTLwqILIW6un28=
X-Google-Smtp-Source: APXvYqwm7y9ypcJdyxgJATkCgSChfFuwRpCL+hYKepF5YmIgtTs92oWD8GlXJgm6y8lRU+5VPoS8wWchRxTA1u6Ws80=
X-Received: by 2002:a63:d90c:: with SMTP id r12mr19771294pgg.106.1580237401355; 
 Tue, 28 Jan 2020 10:50:01 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:32 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_105005_688847_1E4C3460 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Masahiro Yamada <yamada.masahiro@socionext.com>, Marc Zyngier <maz@kernel.org>,
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

Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
different exception level.

Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/kvm/hyp/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index ea710f674cb6..5843adef9ef6 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
 KASAN_SANITIZE	:= n
 UBSAN_SANITIZE	:= n
 KCOV_INSTRUMENT	:= n
+
+# remove the SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
