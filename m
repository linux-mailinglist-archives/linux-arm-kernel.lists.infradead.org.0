Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6310616ECE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:42:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/YFalM2N3CbIFOf8BOixLFA2fD6J3+zxxh4WsIXcx3Y=; b=OoVtaHpQd7UtHT
	WsCuhxoprtk1b398vUq9gQwAmffDdMISnBouY5Ur2iD4BRzxu1OVyZa2uRCFe+u9Ga4IH5Pgm4vK5
	jRPhPWPH28FnPVCMt5LZIzpEGu7FE0+YeJlpmXa7yydPevi6HqtXjjLCVnrejmo7o2Ezms0+AvNgc
	yoGF74A46WMg6qYIaDPTuPZkWv+TVco8xrS+eGlEleg5cph8hrS9/SyXLb2ounmulgBP3n1RnGsu8
	bKvylT/NDMSZHFFDIxXCKmBQtJLfzNBxx13Pz3frI89K7wOED55JhJLIFiAIYOpJYHInglHbzw5FX
	HhUDVXjEBwkB2HGNjCaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eDs-0004YP-PM; Tue, 25 Feb 2020 17:42:20 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eBr-0002PP-5r
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:40:17 +0000
Received: by mail-pg1-x54a.google.com with SMTP id r10so7244040pgu.22
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=/9ynHIjebmTtgZE9DUTlwVjGdkmD9QfvZQiqhOExK9Y=;
 b=o7vwSCWzTZQYP7RYWcSjGD6CpDAB5oOvCiPmaDLzo25KnXRfX+NUrDok0q2y0mGfIa
 TDZrXM9faPShPRy4a6WiU0N5UIJawHlnPCJfHebtHrH5fvwpUKCDI+tLjTcvUoZXDeaB
 HCszEPkk37N+dLtmZiSu0APRUzakK7UtyMUDF5BWhTy6i22v7izEycfB2f+6f0SG52UX
 a6DuVXYMOkhGQurfoTI6OFw6fWv0lxkEhyIlwp/KPXUNbvGuN/nLmhBhm4IMlnyF0qei
 Qo7+V5ZpS5ueHVWgq55uxj/h3LF9pK5y+dwb8XA7OUhBm3/Bp2RIxaOxSVJIBZIb1iZV
 Wu2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=/9ynHIjebmTtgZE9DUTlwVjGdkmD9QfvZQiqhOExK9Y=;
 b=INJSB7YWQplE26Z+dFR7sx9xhn44mS8sn+aQxHiCvh2vPz54G7HrRy0tctEjXq4WBs
 1DshVV1C5UxHwRRM3fyi2ahFpIpRBEg0DyPIdNqE9SYgzv8TTXysq6B2WvqurzqLURpz
 /RhSqKkoh7zEqQkwVPO4HGM0vcZ0adNkMus5iF+jpAEeX4nCQZoCDJL1pQRlbqNF+wYu
 a/JPF61mW8KdhjNPH8237Pb343y43g0OJhgDdyeWp5Yiqt/lJOXuGewh+rB0cdqOCHXR
 ipkeEr9TgvVcvOviz3l3iysM5PWP3sKBEYt3p9yKosY8H7YT83oFQYS9yW/Kp1PxiJIy
 BG/g==
X-Gm-Message-State: APjAAAXQvaouFpmV0UMnt+2kEXOQ44ktp31b+ziZ3EDmHxfyxyu41PHM
 f+ekQ6tnFtJcmVb7mZUzm7rBme+Tz5OVB8qxWlU=
X-Google-Smtp-Source: APXvYqxvXT5YFgJDX3OV+onXaZib4AkO6FSAZUIUlR7kvR8/LVLBi4op9vXOxKw+pDWwfIzeWhkA7GqRpKGKFMrVwjA=
X-Received: by 2002:a63:5a65:: with SMTP id k37mr60903965pgm.264.1582652411820; 
 Tue, 25 Feb 2020 09:40:11 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:30 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 09/12] arm64: disable SCS for hypervisor code
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_094015_358305_B1307EF4 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Disable SCS for code that runs at a different exception level by
adding __noscs to __hyp_text.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_hyp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index a3a6a2ba9a63..0f0603f55ea0 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -13,7 +13,7 @@
 #include <asm/kvm_mmu.h>
 #include <asm/sysreg.h>
 
-#define __hyp_text __section(.hyp.text) notrace
+#define __hyp_text __section(.hyp.text) notrace __noscs
 
 #define read_sysreg_elx(r,nvh,vh)					\
 	({								\
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
