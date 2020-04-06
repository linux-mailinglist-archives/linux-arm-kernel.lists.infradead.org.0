Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCCC19FAB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 18:45:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8thKdyFKKPV24unmfr8k+JIMcfbsf51DQJQsVf98FTU=; b=fcuZAG4FeWcIYW
	3rcp8CXgBJFwRXTTEtpyeJGRxojO2/X1nBAwcpMvHiUSTM+dzfPCwKMWxCfFZfK7kEmlu1xyXW4xu
	yLTMKHv3LB4/rHNzxFCYwJF9sLoLkHd18fGH3gZN+boE2OZf3+nxB1Ur3pPSJmu8FOWXsg2vEeRNO
	cLbXxu6TcGMsb4PAyGQ9O8Te3M/j4cE6CcUlXVJ4WHv8WkRqhaC0PJABALVIgS/ch84KK3a2BsvGa
	3+JkwNKxw78q9AsLT0/2eHvZM08tU3EUtWjWr70dKaa8I7cVFyMO3Tx1KG0NBRMlAWj+AYJMGNdSy
	Nj2ENTaiDD/r9+SAaLqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUsI-0007Ap-Iz; Mon, 06 Apr 2020 16:45:26 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUpC-0004WJ-8N
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 16:42:15 +0000
Received: by mail-qk1-x749.google.com with SMTP id h186so326945qkc.22
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 09:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Y7rlrv2nhrkBeB3yxrt1isCdPASfC8dC7N7qsaqIYpI=;
 b=uzysDj83wFfvyx5+xHx53APFuGywhQGNYTYnY3+lbcNA+3qpT2RyVCtTCzOVWuYtrd
 IJ7VKcld7TMSS+B4Duop178kHp3dnyyCbFCaQG30nNlIZu2qp3pd8gPvWCQ/vh5UCVNI
 qYZP5lzEpIK9s82LrNfMVTyGg0YHy+wtBcdXCYONK5VtuSr/B+ie2tXtTLyaJ9IPy1+g
 3D+xo+ACBtd8mKECNNqIvX1PJ+oInNfLa3VP4gJ7IaAStMJAKw0/1v2sPcOcrSw5vqh7
 xI4vpzaPpkYp+bSxRgABVKY3EorsZQeCB4tyb7kBdLZS86i8LGqxeDzzj01uFZHbP3SR
 Lm4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Y7rlrv2nhrkBeB3yxrt1isCdPASfC8dC7N7qsaqIYpI=;
 b=WsMjQzvVI0JDiNFQEh9I4nb79xKkLeLK4vlcmtGmH/9QhV03NoKvz1fkiUb+SKCcYL
 g30u0yNvqSYIsF68L/SJf6VogbqSAlebQ0v3vcPo0eE7hrEaYMNM2I7NiZezplQikCtH
 bDBP75Sk9OMTrDIZSvBaFPlDipAME6Xs4rAD29JLnxzhv5oZB4rTcVvWIy6F4giRPPGf
 obZ2iU5O3dG7g3J2V6Pc80fliDLxSamr5o3QAM2guF6Rg+68Hiqgjl0gh/2OCnUeAnGG
 NP2HLg711Eg869J2MKuexTeQYnFKRC+/sz5PTzK0oEnlWIDSxc3BLBHyZ/Qt0/+sN2Ue
 L7YQ==
X-Gm-Message-State: AGi0Pua1aoHZqFHK1tX7x7hYEyAxUj8pa7HjXuQnNG+a0BZRZjRygm4c
 clHUJoVUjH/SOWBMKmyNfZDYhwsp88qKHEsHTBU=
X-Google-Smtp-Source: APiQypIq6K+/6sNFF07UPysJVLbTskXzuAKdx/I5NBmymQNj01YODUpkepZADD3StGdWVd8jEygPyA4Kk1CGRFm+W3w=
X-Received: by 2002:a37:4d88:: with SMTP id
 a130mr21585753qkb.443.1586191332817; 
 Mon, 06 Apr 2020 09:42:12 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:21 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 12/12] efi/libstub: disable SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_094214_308804_A139C972 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Shadow stacks are not available in the EFI stub, filter out SCS flags.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 drivers/firmware/efi/libstub/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 094eabdecfe6..fa0bb64f93d6 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -32,6 +32,9 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   $(call cc-option,-fno-stack-protector) \
 				   -D__DISABLE_EXPORTS
 
+#  remove SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+
 GCOV_PROFILE			:= n
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
