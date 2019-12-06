Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4A4115945
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 23:17:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iP79DBrf2fLDdLUKht1j1q5BdcgBITAAKsBPFkMGJAA=; b=PC5ATrDG4HYC+d
	k4Fte0kp0YGp3L6Ma7ovIQouYCQe15JUlYlP2kwG2gnhutbPrMzm40Nf+FaANcFhSV1l+grr2I//L
	QV7qYmAsmwVBcIaDnl0NEECI8x7eMzwF71CPMIjJirYd3F+HQzUTs4ZQps3U15CZCUmQqFLp4V+A8
	GfFKrfv320Lb0mlJkcuIuik2Q/bFooDq5JOJDxFrJjzbKjv1CuVJ6g4dX8iMDB3Khqja2CLadmcX+
	uXNqIUbkgQfJwR5Ywd0SR5sFpEFt7wfWsf600WyTNPvR3a6THupFRUuLYS2qO+XGkdgT2Sr3Dln8j
	4w/IMDNpcCg+xhHZJJdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idLut-0002Rk-Cv; Fri, 06 Dec 2019 22:17:39 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idLrr-0006rH-LO
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 22:14:33 +0000
Received: by mail-pl1-x64a.google.com with SMTP id b8so4258933plz.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 14:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=8FJHqLK+9qp1SI0ZtY8nP7Vb0Kv4oQj2LgBWqplCpRM=;
 b=FrhxzfWXmzsxE4agp2rhmb4i9ATROH/GqZDqVq2Imv+d8/yhy1TAupBbdgdQuSdfT5
 6nQ5+3t9PECXIMWiDkrxMAiTDpvy1ngzEasXmXrAdNopBfmN/Bna9sPRCkNQn5V572bx
 eywVNSAedzToawJGzxolT5bl0ETab6Tw7CSJ2i0Uja/LPJMZj7f7aPe8T4bfjdxlPjQS
 3rIjn9HdeJXWzsniPYQzRfVJY1BL/sjidsk9JqsZiiFE1dkWT9OuAz7rz3hw05LyvVwP
 aif6TsG/Uxd0YqyKA9qyIH/plzSKaLaWabPJbVwtZIh3ODY4G/YpLNqbHQXB/I8WrOae
 /1eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=8FJHqLK+9qp1SI0ZtY8nP7Vb0Kv4oQj2LgBWqplCpRM=;
 b=HSq7weRxM9jWfXfyg5aMSeWdp5r1susxbTcy3zwStosMzzW8l4WQuDj5yMn1w+2pq8
 lpjF8SXjkpIBmTARhu56rZ/1yOW8UGM3y5eoUd6TXnBb08V7O2QDId4oEgWnQTNxw5Ji
 TICyA3c0qVoeVJEPPkzFc2DBHWvDNhrAPelaUTWUgegCxJxcajKOIKADpCWQJMuh/Dl6
 iPt8HMu7FIqy78eKqDvUxoFdTgtKm0sYiqjm8rZS8kzXZnq2YXFI6/QwsyDeaX8httQ7
 lo7oqcFflB7/O+deCfj7LvOCmJXHqsjrgwizYFCSKhus7RQ834KH21n3IJaIXZoVfFsC
 tgKA==
X-Gm-Message-State: APjAAAVquDAIlufelZc6Rv4IwM7fbVskI7/q2rOapzdc95oLU+P0nY/Z
 Ar7h/1MLt7E6/n+f41OaEhq6nIauw2wsS6Kwb2g=
X-Google-Smtp-Source: APXvYqzqfWQ39jRufjAhL7TZCDF47F43HjTHP8BNawKKpBRXjo9R8WHVKYYkig1q6KIkZysnArdkgny3hm72jaBZ4w0=
X-Received: by 2002:a65:6245:: with SMTP id q5mr6050849pgv.347.1575670468844; 
 Fri, 06 Dec 2019 14:14:28 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:49 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 13/15] arm64: disable SCS for hypervisor code
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_141431_755025_39E5D4A4 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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

Filter out CC_FLAGS_SCS for code that runs at a different exception
level.

Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/kvm/hyp/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index ea710f674cb6..17ea3da325e9 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
 KASAN_SANITIZE	:= n
 UBSAN_SANITIZE	:= n
 KCOV_INSTRUMENT	:= n
+
+# remove the SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
-- 
2.24.0.393.g34dc348eaf-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
