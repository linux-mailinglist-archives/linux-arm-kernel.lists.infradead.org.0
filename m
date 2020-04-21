Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 388FA1B1BBE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 04:17:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iS/ROXwfWVq1vcU5hgGGGdtgjTWw0Fp7SgVKP3NXcX8=; b=Vz0/DmIh2/DMeK
	0dlhsHtdm8a3N9q6ch3btAcF5x6+i5PX24MqHJNvkqXlpWEl2lGP3J/SJSZrEpo0lwAXfDnJou9PT
	Hhj9i2fkULo11Pr5TvvCZ5pTxD0iBjA2e42y7jQA+WIOuiIyjYBdqOGPEqiWyz+OY0KRGK/GWHhvX
	Xeia8nqOR6uVnxwuY8yMYGEWv6i0u1lCDL07Oojvd7NcpU/geJDo0WkufIiiQP6Rlr1GyoLttucjD
	upOAEAnKoXJWeOKGiCu9hu4slSCk1r3qzEgNHcpUkzBxUr+wjQc/sHg7brHV3tEMiwSZduWRly8Ap
	5SUN+Qp4GK8ZzXB2aXMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQiTL-0002hw-E1; Tue, 21 Apr 2020 02:17:15 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQiRJ-0007zU-Lt
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 02:15:11 +0000
Received: by mail-pf1-x44a.google.com with SMTP id d16so11861383pfo.15
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 19:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=chILL6A5g4aA5f1fWto46CThp2yfStYETCAmL1RMQR4=;
 b=FmbqKiChqGpkp7mVwH6RFzTsVlVqHYQQpqQ7pW0pLrRaC2Ru0yCFj82r7t/qZnbYej
 4pVpm6O1YzifzjuC6rbMYVCKAWTAJ5HErc2PHzzSO+iD6PnTi6rS7XUg9ycwQrSQQLQQ
 ND7+8s2Y1SMLvhAJamF74aon6b6OHu9mJn9EbZuDqA8BHaUr7uGNaTByHDCO9IytlKwY
 MQ9KdMjG2L8dqTRb6ANbp5hdV2IWgX2vwzab9ZK1FH/9A0JgPXvTJoi8gE9gU8Kyl7by
 jBeEkntsU3JSArQRllzZ9ebW5OTJ+2LJX8QopJZNNtGu/WfXT/dDSDj5dfzUSvVRYDBy
 X4Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=chILL6A5g4aA5f1fWto46CThp2yfStYETCAmL1RMQR4=;
 b=RK1q1IW7Rtb4SI3M9xnAOPseCYHG42Nzgcp6/33TZb9mPyO8xqxJMdOVA9RJOlXqAD
 Zip4yea9hFJeNKX8OwCPTBdlJo3scd/IM6XM5wf1WwEPj6XGkVJgjvvraXrejoqvbsIg
 vzmALxrykqQDlXlD/K0Ah4PUS47YsYxLWHl1rhNYzoWBZM5N5hA9NgxEpCXo+0d6L6/q
 VRqM03PbL4HPowKj7SUTT6MiSZhScvNZktgTEriQJKS0CgrKmg+QlCIJLbWAed/W2/zI
 7FUO/5iDb+Kx8L6hCUhLgDqimdcS7C5Tq63lnIWDBSCxrdf5hhhe/2Yf9dCYFRNXkY/f
 8wrQ==
X-Gm-Message-State: AGi0PuaGmjs6PvEiQqS5fgb+uZ56FXcZE2wLQMN/17MYNLXqf7G/QYLW
 AMAP9DyR+bCe+hMePKeilrLCTK2JsmUjfQz57GQ=
X-Google-Smtp-Source: APiQypLYcihTy4679nWhWr1jx8yXtyK0gFknH1f8iXpU4amQyXsWX903EmOoZKJwRccLf9I1nihp4p5DT1MKNo054ug=
X-Received: by 2002:a17:90a:714b:: with SMTP id
 g11mr2691672pjs.17.1587435306926; 
 Mon, 20 Apr 2020 19:15:06 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:45 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 04/12] scs: disable when function graph tracing is enabled
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
X-CRM114-CacheID: sfid-20200420_191509_897444_356E0724 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
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

The graph tracer hooks returns by modifying frame records on the
(regular) stack, but with SCS the return address is taken from the
shadow stack, and the value in the frame record has no effect. As we
don't currently have a mechanism to determine the corresponding slot
on the shadow stack (and to pass this through the ftrace
infrastructure), for now let's disable SCS when the graph tracer is
enabled.

With SCS the return address is taken from the shadow stack and the
value in the frame record has no effect. The mcount based graph tracer
hooks returns by modifying frame records on the (regular) stack, and
thus is not compatible. The patchable-function-entry graph tracer
used for DYNAMIC_FTRACE_WITH_REGS modifies the LR before it is saved
to the shadow stack, and is compatible.

Modifying the mcount based graph tracer to work with SCS would require
a mechanism to determine the corresponding slot on the shadow stack
(and to pass this through the ftrace infrastructure), and we expect
that everyone will eventually move to the patchable-function-entry
based graph tracer anyway, so for now let's disable SCS when the
mcount-based graph tracer is enabled.

SCS and patchable-function-entry are both supported from LLVM 10.x.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 8450d56e6af6..b52929f38cf7 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -543,6 +543,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
 	depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
+	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
 	help
 	  This option enables Clang's Shadow Call Stack, which uses a
 	  shadow stack to protect function return addresses from being
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
