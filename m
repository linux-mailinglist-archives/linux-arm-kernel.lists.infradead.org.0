Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75CD163845
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 01:12:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xC/HdbrENT6WSscq9HQe+jCqllrt3iV6fqnvEnadgfQ=; b=tWXFryZElqd5vl
	pi+yNGmxPzHvlkVnNAUrZsAAaXcP+gKE4mV62PqAHRHNKdQT2nKBzcVfhrHrRFO82QmF5G1Y8Y8u7
	32a16FFjIcm7nhu5ka01dcdh0P1ghaJSer+/n6yg2qSlztDUnAhjn3VEG7G0jvQf6DPEdufdOzc8T
	/Fc+qKUma/PAptctXnetBpjySJwzblUed+r0N3ApWUhKQsY7Qmg8YzJtnT5e4LNbfefMaOaUgR8Te
	FDoiHmlqR03qOW29kHdBKql+A9K+0/kQReC3AtEvz5lhKOGa854l+hB4m30IQM3XqOnyNcY6HP45c
	DCiJKe3wmKTX7xRGPc3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4CyD-0003oG-RN; Wed, 19 Feb 2020 00:12:05 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4CvJ-0008PX-Nr
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 00:09:07 +0000
Received: by mail-pg1-x54a.google.com with SMTP id t17so14898864pgb.20
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 16:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ou3AmoAB4pAV4E8hHdrZJU8tYRoLaJy68OnSkjNriPk=;
 b=ExdFaXJLQUrLqD1cXdvV6V+f2pvG4gneydCqd14okgp/Waqa0Qii99gHccZPxv5u7T
 ful3UrQEJD0mlccXRaOv9ncjUpURLfgt1M2GftTdPAksHrqi4oP/mH8JmpSYvfwHIm7J
 e3+kj63xZtRB4dCYxQwR6HNmc35LUxGimjg5k2n2O8xxH439zv2/XtncK8lwRfMu5R+O
 u4llohrY6SlfXI9mRKQ2oYKubkIkauF/gn83zq1xPCFdbiaSThaYvjtA6Lb7Zay9qZ6q
 H8vw2D8eYgjNx+t+KvfMrj5S0vZf+h5Qmzl6mlBhwILCDL8Jf2+qBwxQma4EGN9GtIZX
 bJrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ou3AmoAB4pAV4E8hHdrZJU8tYRoLaJy68OnSkjNriPk=;
 b=mD2rV50lhTfrf9YsoqmAO0cyFvJu9P1Xt7LDVuAt6QM6Jc6ZMNKoFMdQaCpumGoU8f
 VA25DoyDjzogu6jbrVsCeJ3iKG3VmWkze/zs7CSiCb8ejpcQkyGftjxblBVwQ4Tu+mBA
 /mAcgbarGZ80vDd+7v2kBGgwhtasBKLb8rAn4II0vBxgZlNGhAmQWZOomZoTAgcZuStK
 SHDvKRtfSSLyAUxjdA+Ku/aJFfRFLSr7tLjOqMXIM0/k2pTPhheIIHwuV6KjpfnHrT9C
 8MN3mRfF/F37muOV/gBr7Sq+JBYjAeYfCbjIIk10BBCjS/voKYwkwbWx5H7musA6w89W
 g4nA==
X-Gm-Message-State: APjAAAVSnzcDUvQ7Bc3qRRalC7UZVWph7MlXsFgYIfUfWZRkSttkGkUF
 Bo4uZvEJUXUImoyQ67kVnLk26IYf5ZHdJ8O9Ce4=
X-Google-Smtp-Source: APXvYqwONz8h4AimAH0TTKyO3Bm5Hq6D70pRhoeCO2SJP39ItHHxl//O2KOBNiMiAvvC4x9LMa3MQfSB9GUboiWhKfY=
X-Received: by 2002:a63:30c2:: with SMTP id
 w185mr26462644pgw.307.1582070943849; 
 Tue, 18 Feb 2020 16:09:03 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:17 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 12/12] efi/libstub: disable SCS
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_160905_780552_C0FA3256 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Disable SCS for the EFI stub and allow x18 to be used.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 drivers/firmware/efi/libstub/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 98a81576213d..dff9fa5a3f1c 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -30,6 +30,9 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   $(call cc-option,-fno-stack-protector) \
 				   -D__DISABLE_EXPORTS
 
+#  remove SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+
 GCOV_PROFILE			:= n
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
