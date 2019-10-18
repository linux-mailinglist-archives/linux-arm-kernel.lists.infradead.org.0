Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E92DCAB7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4SwKqouFNjDbFRG3ABAZkRoRANO8aDephTqE3Szufo=; b=C5I/aXw/VAfTFQ
	3aC0A/MHjKhnJ5uRYbBYItaErw6VIbFj+UZurS4n7voqGZin9O4bofQiWlQ3jCa/AlMl/x/wRlDIB
	cxa0KwSVgClv8WWXg4640rdt7fiqkWroNzM9hCAfRlXE8IjbmlnM3T3u11Eal2Ya6wxEFh3TnH7j1
	aHdPx2z3LIvTKro3WFVUNq7k2UcjfgHUqD99cfct1OxlN+LSE/xV6s/Efu4zndd0vWqjVN67tYjbM
	lullrNqmv8/qRVELoNtNG82U2VWL+Eg0jIAhf5JU8XezJf3rt3vj6iPoukHH05P+POWUWpxkC3DJx
	nkz7PxYDmnPb/a5OyfcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUvC-0007Qn-68; Fri, 18 Oct 2019 16:16:10 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUqj-000288-Mj
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:11:35 +0000
Received: by mail-pg1-x549.google.com with SMTP id e15so4576918pgh.19
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=21PQYFGMSyR0vWwlJoWUR0F8CwzgoNMVM1L0Pe6MFrQ=;
 b=XTGR5ysVCvFcDPfDZ2uRa4LSCFJbZwlyniF9TrCYGMBPbkIf0K085EjiQt4ffVYZbT
 yaiGK3y6faisAh6U9/CxmFlLU76VW2yJBLJXrJA65l2MTuNELcBcEAKKoaa0/ytobYt1
 fHBOBarOVqcb9kanEUVa8Ddgrfl9iIQEWkgSVtgsKdKE18WzVjzt/JiQzP1DlMT6n4jU
 kAXZNvTi8r9G3/D4MyaIAco80dTDl8K/TpV2nIA1UUazOM41jXMV5YIAb/W//1YPMnKI
 Y+DGVHPZ9eY1T49HNVfdlWN6taf0ZPGpl8IGYtJKJPC8pDOBJ6EMgatwO8Hvvq48VXqN
 DmCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=21PQYFGMSyR0vWwlJoWUR0F8CwzgoNMVM1L0Pe6MFrQ=;
 b=I2l7qGOzY+SHRzYZzpU/G0FF5SA8EMW6iGSmi8L62Zdk5Vxycsrp46XDSWgmjjQ2Ek
 k/hB4en2z+HuTUilL1Mh7RK6vwPhLlgkXXsEUdhBnKmQEMjrV6/eyTBUoLzF+rt70WP6
 E5Z96HXSyOyepowPK6DRJzu5uLsSy2SxhCchhkb1JthuJbF3oG2kcrjh3EnfNApRiQyM
 iS4YIDfaSWcady/VG2TTgETNk7FFP0/vstgwyVjP4ZmX49OJa+2gOgLhYOSHSfc1/Waj
 LkXFWKg8e7l0WyiIHfsiZAm0oJXPAgYZXDOuf0KR49fhAexj5cJjkXCUV/4GscPU30R0
 HfYg==
X-Gm-Message-State: APjAAAXP44BGWEMIqSw2QELqTNxH1FzTHL/F+7AyCiv5m6QWZBYV/Lfb
 KsU3/XzZcThnScnHaRDGvW1kcoN8Ow8+NU1RvAY=
X-Google-Smtp-Source: APXvYqz2h3FK6fOLNjeif4Cg24fCITnU5ZQBquMxea8azTfQWEvOTaNE9xdQyiziN7s60FAxuGyTh4t3prrtUVRlSk8=
X-Received: by 2002:a63:1250:: with SMTP id 16mr10784356pgs.331.1571415090313; 
 Fri, 18 Oct 2019 09:11:30 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:31 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 16/18] arm64: kprobes: fix kprobes without CONFIG_KRETPROBES
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091133_793490_D5E8550F 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
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

This allows CONFIG_KRETPROBES to be disabled without disabling
kprobes entirely.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/probes/kprobes.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index c4452827419b..98230ae979ca 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -551,6 +551,7 @@ void __kprobes __used *trampoline_probe_handler(struct pt_regs *regs)
 	return (void *)orig_ret_address;
 }
 
+#ifdef CONFIG_KRETPROBES
 void __kprobes arch_prepare_kretprobe(struct kretprobe_instance *ri,
 				      struct pt_regs *regs)
 {
@@ -564,6 +565,7 @@ int __kprobes arch_trampoline_kprobe(struct kprobe *p)
 {
 	return 0;
 }
+#endif
 
 int __init arch_init_kprobes(void)
 {
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
