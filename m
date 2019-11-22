Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3DB1077B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 19:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NqWBRw9Jk5HW+ybZUwMSRbg18e65+6srIalcoZ/XnB8=; b=PAlclY82NGP/Jx
	3kYKiT5wXodU1xCzShXhr2aBNsLGyxEWlPjyRKpXlRS3/3rKb1WUdJUSUeDuSOBVmTCdq4jT3MtJ9
	KRDfyWF45rfr+aeB9ZFjoeUk6aVLtMTq8OiovLvvIrcbsNanb68PP1K/zAMkOii8wca6lGBghImPq
	PonnftMXTudxAijk+vnAi8SQ6gluZbSn+Z1jInTdsz6haPlnyOstOIueqKLmlWpYCyU8b4+O3+SCn
	N5VSCJ/oq+tWArV773Oo929c0usq0uW5DmvxKd5FA8AkUSGb9PsnlMp4Zlg3Q6woPQVSlPmtN701B
	MVV0JjRucTgmhWnC9pWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYE5i-0004lq-AW; Fri, 22 Nov 2019 18:55:38 +0000
Received: from mail-vs1-xe49.google.com ([2607:f8b0:4864:20::e49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYE5Y-0004kv-4v
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 18:55:30 +0000
Received: by mail-vs1-xe49.google.com with SMTP id d18so1433113vsj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 10:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=SHVXHEGGxuqIpcBFwRHv/uk1e/S46AumK4IMAmbp/ok=;
 b=cpZcy7CysRjVvEDBLriAw2P8/TU3cURqwBXnEv93B2t8l2xennSUdwg+CVfdB/gtFG
 fz8XtCFW0omCKPALWsT8iEKNvDcc2WzAa1h4wn8dmhXwwLbzyh7qRBwxDvwZ1MG4MXar
 TBLfcYUcznuWLGge0/XpeHXBj5Xmuy5Vdzy674qVErgGxUoHo+NNnvgQoTK4FikfXZjq
 B83jZXaoG++9UGZQl4PRYdgJfAV61M9O77iZe7MRy0pREg0kFwJE0FoMNy8AejyOOAWG
 Lpd6WqHkYN/K4PEOq2ZpUJ7Sn7oFXgWVqndd0MLXYT1vs7Sh159nYv9wwxbCIi8fjmTL
 ZrPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=SHVXHEGGxuqIpcBFwRHv/uk1e/S46AumK4IMAmbp/ok=;
 b=kTkZSlLniJwWLVvM3hLXAG8kKCOwQoK59Ju9ni3zCBYy2KI42Xn/eUNAgwv71JgCuZ
 tnoOSVC3RzPPqLOJSl3o7AOxY0Drkrz4N18eL9vL34rZ0FEVF9m9ci01r3SPaelfi0mT
 y/NKYoUXvTPeqzSktG/72JZNIy/eKuXjKX+nYk9R7f6ZdN0Q4irD0qR0X0Ldif1IUlY/
 gvYHeSx8f/m42vFQoGad+Pvm6hqM41dUlt+jSvISSmCT8eRnTwp5Vv9kP12/vuBqjpo+
 DOLcvPkiE87wASIJoet9MRe/QNLNHwVfAlxCA5ciNjw3YFUE8OCF6DlmhEzw3OU7wucQ
 O9OQ==
X-Gm-Message-State: APjAAAXVV+kntJolfGtL7pE5iJxsG6wY2GUO0Csiiz8B1caFvFGM1elJ
 BDDPFRYnVc/l1WLrKyzc+w/MRcGeK9Nf0+07BnI=
X-Google-Smtp-Source: APXvYqx4/R+aTfQ5J2UOyQ8A6PVE1oEdqepMp2ZpOkKUSoKn8ky/RxzbEAbFNxLLKrHVeZxdmSe4geTa/pyPcfKpv8E=
X-Received: by 2002:a1f:e0c2:: with SMTP id x185mr10557825vkg.6.1574448926211; 
 Fri, 22 Nov 2019 10:55:26 -0800 (PST)
Date: Fri, 22 Nov 2019 10:55:21 -0800
Message-Id: <20191122185522.20582-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH] arm: explicitly place .fixup in .text
From: Nick Desaulniers <ndesaulniers@google.com>
To: linux@armlinux.org.uk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_105528_720082_93958532 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kees Cook <keescook@chromium.org>, nico@fluxnic.net,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, clang-built-linux@googlegroups.com,
 manojgupta@google.com, natechancellor@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kees Cook <keescook@chromium.org>

There's an implicit dependency on the section ordering of the orphaned
section .fixup that can break arm_copy_from_user if the linker places
the .fixup section before the .text section. Since .fixup is not
explicitly placed in the existing ARM linker scripts, the linker is free
to order it anywhere with respect to the rest of the sections.

Multiple users from different distros (Raspbian, CrOS) reported kernel
panics executing seccomp() syscall with Linux kernels linked with LLD.

Documentation/x86/exception-tables.rst alludes to the ordering
dependency. The relevant quote:

```
NOTE:
Due to the way that the exception table is built and needs to be ordered,
only use exceptions for code in the .text section.  Any other section
will cause the exception table to not be sorted correctly, and the
exceptions will fail.

Things changed when 64-bit support was added to x86 Linux. Rather than
double the size of the exception table by expanding the two entries
from 32-bits to 64 bits, a clever trick was used to store addresses
as relative offsets from the table itself. The assembly code changed
from::

    .long 1b,3b
  to:
          .long (from) - .
          .long (to) - .

and the C-code that uses these values converts back to absolute addresses
like this::

        ex_insn_addr(const struct exception_table_entry *x)
        {
                return (unsigned long)&x->insn + x->insn;
        }
```

Since the addresses stored in the __ex_table are RELATIVE offsets and
not ABSOLUTE addresses, ordering the fixup anywhere that's not
immediately preceding .text causes the relative offset of the faulting
instruction to be wrong, causing the wrong (or no) address of the fixup
handler to looked up in __ex_table.

x86 and arm64 place the .fixup section near the end of the .text
section; follow their pattern.

Cc: stable@vger.kernel.org
Link: https://github.com/ClangBuiltLinux/linux/issues/282
Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c36
Reported-by: Manoj Gupta <manojgupta@google.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
Worded-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Manoj Gupta <manojgupta@google.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm/kernel/vmlinux.lds.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/kernel/vmlinux.lds.h b/arch/arm/kernel/vmlinux.lds.h
index 8247bc15addc..e130f7668cf0 100644
--- a/arch/arm/kernel/vmlinux.lds.h
+++ b/arch/arm/kernel/vmlinux.lds.h
@@ -74,6 +74,7 @@
 		LOCK_TEXT						\
 		HYPERVISOR_TEXT						\
 		KPROBES_TEXT						\
+		*(.fixup)						\
 		*(.gnu.warning)						\
 		*(.glue_7)						\
 		*(.glue_7t)						\
-- 
2.24.0.432.g9d3f5f5b63-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
