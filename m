Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3800CE3FBF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 00:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DeK+SfwZ654lb0Pqf8aZZJ0and/qx/0QW4uZXR5UJ4s=; b=ozC29+TA4ogMeO
	48gDSSAY/AlOsm1Li/y3sNBi/+av2d3Vz6qmmXv8OECGbyU8sYPan7vgvKjQcgMfgXtq0ZVU6Pgbl
	DQqUG2cI8o6QsP5zOGEi69B/aa0x+FYOSvV1qqpQ4/uRIX3vf4A3ziy4CLUBfrLiBKv7tRJ++yu2c
	Hs13A3CEQfPucdxLKaZ6WLzTqh2JiGBkTcb99HXqzYFa9j6FianV5DuTeIaYqV+7AnfJhBmVJ4jWp
	stAWSDDX5MAvbVlGm0aaOMDs8EZz1J+Xu/S8lbSI8ct2/jhBKEGx5WDEZWLFzNAgl3JFQ2vTWXoMI
	e3gKR2h3JP5DhEHjfhRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm0e-0004ou-9q; Thu, 24 Oct 2019 22:55:12 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNlxp-0002fY-9p
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 22:52:18 +0000
Received: by mail-yb1-xb49.google.com with SMTP id t48so415402ybi.22
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 15:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=R+pagykxtiUayWbEADuJoiydRcDW6HSTgqXK05LN0/E=;
 b=I2431xJR5AtRuX5qoSiIk24z/5OCLlzSdjGi52dpOv12+bHMiaLVBU12PGCDes+r8X
 wAjuAIWuv6ZomAao/O113wncVLizdeeBSlEx1bsxh2/lzn4uD6epbHPViDUva3cOvsU0
 /UNdmDsfJIMrSw5i/0SaDjUj5Es5bVAzDEP1qir0eAi1qvv8mC+P/O4o1w4HC3L6pF50
 AQP27T022w3AaGsGKKMo5gVcBxRaoqeynh9ofqgqyGFYUY3HeancjS86aO6xkUTlSXJv
 nGykeYWoGX6nqGCK04zTzj6lvvXPcGONfsDAOADFXZa+d2m7LYp8SgIBde5lho4ylCuw
 NBDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=R+pagykxtiUayWbEADuJoiydRcDW6HSTgqXK05LN0/E=;
 b=ECqI0ebYmCTCe2rHdjOHhrMH5jR2N8affAPc1uUuMgBtyYk8D3nD7FPqHK6hAaFDLP
 KFvZUAXclk2m3PfP4Nmhlvvxlh73CfJT8GrzCwPTM7T7BcoifRfzR5e90ZoE7C0kJmU5
 2ie25xJMAEWEYsUbNH0xNcs4syPeokCpTUg/Xmi9/rOOIhOA3SVWInEs8OV2bSBJfR7K
 ai8aHjReC/HVmXcW5ldtIe1gHxkgyXmUfPpb0DUTmaoZ1gGxXEpuWnGUxr1bU1SeeJOy
 2Fo/bGWdELq8FQQkzEbCcSEZB0FPc73IQ4rAqqBnKoJOcUHrS3rwP3XHz9JaH/dZk+O1
 /4kg==
X-Gm-Message-State: APjAAAXjTefrihlME0ZDjT5TpBzL5OtzNzCN7HhYxpN56DZh3xcqYq57
 CPmGiy7clLnggR8VGwa0LWPId/NxBOXTW3OzaFA=
X-Google-Smtp-Source: APXvYqxu3PYbJO97f2mzp9DNQTcnJCAUNKZZIOqlBzTc4OuUnzwTI3m0AgfuJaiQwAi1b2GOeoccGn5nuZqvAM1i7Q0=
X-Received: by 2002:a25:cc87:: with SMTP id l129mr704884ybf.48.1571957534881; 
 Thu, 24 Oct 2019 15:52:14 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:25 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 10/17] arm64: disable kretprobes with SCS
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155217_388432_E3BFE41E 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
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

With CONFIG_KRETPROBES, function return addresses are modified to
redirect control flow to kretprobe_trampoline. This is incompatible
with SCS.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 8cda176dad9a..42867174920f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -165,7 +165,7 @@ config ARM64
 	select HAVE_STACKPROTECTOR
 	select HAVE_SYSCALL_TRACEPOINTS
 	select HAVE_KPROBES
-	select HAVE_KRETPROBES
+	select HAVE_KRETPROBES if !SHADOW_CALL_STACK
 	select HAVE_GENERIC_VDSO
 	select IOMMU_DMA if IOMMU_SUPPORT
 	select IRQ_DOMAIN
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
