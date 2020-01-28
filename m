Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA5614C057
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 19:51:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RHWiO2hMvHhwzVSG0KpYoox3tHY/v1HzdAoe74m3Feg=; b=h/FxWsssftpYJV
	fELy2BBVzkeyFSWt03WPXVGbrg5TYE56DviLOWTG0xel9cC9cMgI+koUBbE6iKig10oa1XCQXvhTh
	UlC5a8HR4tPqnnZl2PsZiUhwna83lhx/x3E3X8oQqmr+Hh6ItEsjmzS+Xdzw4hnM4uv8HC48eyqe9
	IMziP1cv2ONywPrEE+Yydu5vzED0S4dCqG/1cnZtBkjywSKdGxznK0Bv22JXASp2VwbTVsjNAjbdX
	8mEB+vdVwplk/yGJqkPr3eEzGEBVsQN3JD8V6se36RxjpV5WuFSTmFtNJMha+PtX2cO0vkINASYe8
	iaPhozuvsr70QhaT/XeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwVxR-0001Zn-Tt; Tue, 28 Jan 2020 18:51:29 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwVvs-0007lf-7J
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 18:49:53 +0000
Received: by mail-pl1-x649.google.com with SMTP id z2so5521760plo.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 10:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=nYqHbjkvd1RNJgGQNDuWHkkD/vAdL1upqEsqEeQXJo8=;
 b=nTzlXAOcntXez7Jr3uvwxUmF6fuRm7siV0FVPtZIRsRiYJNBl6ZlwOV/mANhygz8To
 /ghGtzrTrMWvLahlzphY1v1JAapei6wwGYOCMCsqLWm2q8qFXVo61GhXIQfSeL7poUdj
 YYtEuNx1U4DjGRuHl/023HxQce14qTvBIBiqQpzqP15KOMH1kLM8Rv9wZbjZiTB64kSU
 +h0WW/yXKyidH4SedV+F9MUHuIweqEFG+xAYizHw0F6KXAAyVsHvjYJShP+RHUsiQT6G
 iczyaLXreCbKBqnyCymvBhk48aLizT49PYr2naT9eJbsk7orwZhWsfUOL8SKkJbT1nX8
 YpSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=nYqHbjkvd1RNJgGQNDuWHkkD/vAdL1upqEsqEeQXJo8=;
 b=NmYkrA+AwiPrNnP4oJOYCZyBhzkhxKtF/1DC/idjz4+fOPJeM17IPlMonerXia3J4k
 OiLz7atGP9r/7X++j4izY5vLvmU6wSPUSnBsLAUzZLUkwzIScGt9bRaminZLxgQpgMxz
 2BvtkVagXQ+pwcU5CqG3ABS08xLzqFZXmim/M9sjfxboiMRPSdhOXbhHFqEeTjZ/GJ8E
 JxJdT+gje56KVv61Gnk7MUAFf2fNfRSD/ai1LLZjrh9LPXWvJ50qbta7fI5PtnHZFjmt
 pUYL23UUz/HpqaZZSLKEgct2H3I2MwROLlvMdh2717F0kHspUmr3SEz8qES84W6M+Ofv
 Dn6A==
X-Gm-Message-State: APjAAAX5Kuou0gVsGn8fq2oAMWJBbYj2EYH1NxDKyHtY7qkaOYRjHXQB
 q97xrWmnc5WEFEpL1PyVbxWyEvfkzwb5ylo7ilA=
X-Google-Smtp-Source: APXvYqw0QABwd210+mxiAnE7f0mYp0N4i4a4gt86B/Etz7yIed3ZXzeJ4npaWmB9oIyI9gykbj9rUMgDNcXPfOSGbAk=
X-Received: by 2002:a63:5924:: with SMTP id n36mr26520518pgb.43.1580237388946; 
 Tue, 28 Jan 2020 10:49:48 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:27 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 04/11] scs: disable when function graph tracing is enabled
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_104952_396469_A8E0EAEF 
X-CRM114-Status: GOOD (  11.45  )
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

The graph tracer hooks returns by modifying frame records on the
(regular) stack, but with SCS the return address is taken from the
shadow stack, and the value in the frame record has no effect. As we
don't currently have a mechanism to determine the corresponding slot
on the shadow stack (and to pass this through the ftrace
infrastructure), for now let's disable SCS when the graph tracer is
enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 1b16aa9a3fe5..0d746373c52e 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -530,6 +530,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
+	depends on !FUNCTION_GRAPH_TRACER
 	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
 	help
 	  This option enables Clang's Shadow Call Stack, which uses a
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
