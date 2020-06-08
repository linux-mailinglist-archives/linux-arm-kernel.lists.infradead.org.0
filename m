Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E14C1F20C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 22:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUQRLh8jDG3rJvw5lJzewaPRNW6IGWMhK01cLMXg8P0=; b=jR4nMlvEsP0+p2
	uMfYM3toqATHLRtCNaEVLllmkWjzVaX1nqFq9HNx6qgZ4aiDap0MSz0mw7Tb6XX4YwbNyt9nNXJy4
	C3w0RjIbcI3n0IutBZThgU2L7RSoM8HBqi2lpRPhCpUHYsUEKpntZQf/c+BduUmYEJfnSQKfQbbgy
	fJC5LwP/6LU783qOmhCLJOqG7HLQHC3j9vXOZhm9oEax6+UFaNqy4KA8c0pqZvBPBK2oSN17kmRM0
	njOFaWXFDJFjCai1zxWEAHhfsxibhg3vox3gpWGSwV3kMxEq0waLkqEPCqBhvC6IEWDE19G7A6rCE
	apF1pBgIKWKk8ribxuOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiOXW-0004E3-5P; Mon, 08 Jun 2020 20:38:38 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiOXM-0004D4-TP
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 20:38:30 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id y189so23000130ybc.14
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 13:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=5otuoY2gGErOy9A+cbCl1OR8KmTp9iNB+S30IArJGxY=;
 b=KYzOYiQt3FGzO24Ji/cgJDS2qf8jKUBMSw0hou1XPe1iZ0NlVNuyLLK6BVkY7wpIEr
 4nju/eU6yQqj6iQg3Pj88h6aC9XpeUhO6aRvg/Z3EHx1d3uJqRlPI36O1665sP+Riv3V
 ORNQ/AVH79J0kEBSAxKrGpHIofF7rH4KVneMUC+7Lz8w5qRoCdxfnJ7Bs5IV5yMtTbtq
 +z/X8TVEvqXJL+EzAMEnLS03+TpJtP2O5tmH70OLnKM6p5Fv0DS2LhNfQRWuO3vIAsHd
 VrTGN6E7yLxjULQgMxXdaUowGrlPR4ev7g6d3XZ4mLcwIUCfXE4ic5pRxQymDSQFJ4Ja
 MnZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=5otuoY2gGErOy9A+cbCl1OR8KmTp9iNB+S30IArJGxY=;
 b=qOBMdYEUiQ6dEpYUBnjmbv33c4qNZl1tx0IQLyVYDm30/5I11icSgbKA0SXwriw3/a
 lw8FZ2tBdkTGyL/NRf9216IQ60KTGZ9VibAm4HCf5JKLPd6opQipYmfydSzSq5Ni4rq9
 HTLhnDTBKlYc5nyIDLK+EGXAjOLL5rfPXaas9XX65RlFzAdNKLOpPaywH/7uU/TEnBpZ
 1z4M2MhKkV5ZEQ/Oljo7ccV/6DqyYGOQJxL/w9ENks3z8HDnerGVTcMBUNq5islSkvVX
 SwXJCHvRI8sNN8Liz0sRaaXk0RIxQUN5c0shVAr8OjcVGLQJ4m3z1d8YezhW/lc+g7r3
 kSpw==
X-Gm-Message-State: AOAM532xZk65Xgq100XH4yveYjXIaWwRYB1oA7sOCdkG9aK5OSq8YJSS
 pH/rU2Mr6TnI1WUDWaX3sZjT0K9Di48Swit3eE8=
X-Google-Smtp-Source: ABdhPJwMCfh6+j1JcOF7Ui/FzLouS0/CmQh3VYSy0Ww5vOQqYGp9/ZKrVXazWyjuLYCs7jqttRbM/Z4w4upIk0lRVbk=
X-Received: by 2002:a5b:54e:: with SMTP id r14mr956210ybp.93.1591648707480;
 Mon, 08 Jun 2020 13:38:27 -0700 (PDT)
Date: Mon,  8 Jun 2020 13:38:17 -0700
In-Reply-To: <CAKwvOdnBhHnhUZ9MHgqEQ4nEyzHWUH+DPV-J0KoYyWNEnsDHbg@mail.gmail.com>
Message-Id: <20200608203818.189423-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAKwvOdnBhHnhUZ9MHgqEQ4nEyzHWUH+DPV-J0KoYyWNEnsDHbg@mail.gmail.com>
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
Subject: [PATCH v2] arm64: acpi: fix UBSAN warning
From: Nick Desaulniers <ndesaulniers@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_133828_972630_989C2ED3 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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
Cc: linux-arm-kernel@lists.infradead.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Jeremy Linton <jeremy.linton@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Ard Biesheuvel <ardb@kernel.org>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Will reported a UBSAN warning:

UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
member access within null pointer of type 'struct acpi_madt_generic_interrupt'
CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc6-00124-g96bc42ff0a82 #1
Call trace:
 dump_backtrace+0x0/0x384
 show_stack+0x28/0x38
 dump_stack+0xec/0x174
 handle_null_ptr_deref+0x134/0x174
 __ubsan_handle_type_mismatch_v1+0x84/0xa4
 acpi_parse_gic_cpu_interface+0x60/0xe8
 acpi_parse_entries_array+0x288/0x498
 acpi_table_parse_entries_array+0x178/0x1b4
 acpi_table_parse_madt+0xa4/0x110
 acpi_parse_and_init_cpus+0x38/0x100
 smp_init_cpus+0x74/0x258
 setup_arch+0x350/0x3ec
 start_kernel+0x98/0x6f4

This is from the use of the ACPI_OFFSET in
arch/arm64/include/asm/acpi.h. Replace its use with offsetof from
include/linux/stddef.h which should implement the same logic using
__builtin_offsetof, so that UBSAN wont warn.

Link: https://lore.kernel.org/lkml/20200521100952.GA5360@willie-the-truck/
Cc: stable@vger.kernel.org
Reported-by: Will Deacon <will@kernel.org>
Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* Just fix one of the two warnings, specific to arm64.
* Put warning in commit message.

 arch/arm64/include/asm/acpi.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/acpi.h b/arch/arm64/include/asm/acpi.h
index b263e239cb59..a45366c3909b 100644
--- a/arch/arm64/include/asm/acpi.h
+++ b/arch/arm64/include/asm/acpi.h
@@ -12,6 +12,7 @@
 #include <linux/efi.h>
 #include <linux/memblock.h>
 #include <linux/psci.h>
+#include <linux/stddef.h>
 
 #include <asm/cputype.h>
 #include <asm/io.h>
@@ -31,14 +32,14 @@
  * is therefore used to delimit the MADT GICC structure minimum length
  * appropriately.
  */
-#define ACPI_MADT_GICC_MIN_LENGTH   ACPI_OFFSET(  \
+#define ACPI_MADT_GICC_MIN_LENGTH   offsetof(  \
 	struct acpi_madt_generic_interrupt, efficiency_class)
 
 #define BAD_MADT_GICC_ENTRY(entry, end)					\
 	(!(entry) || (entry)->header.length < ACPI_MADT_GICC_MIN_LENGTH || \
 	(unsigned long)(entry) + (entry)->header.length > (end))
 
-#define ACPI_MADT_GICC_SPE  (ACPI_OFFSET(struct acpi_madt_generic_interrupt, \
+#define ACPI_MADT_GICC_SPE  (offsetof(struct acpi_madt_generic_interrupt, \
 	spe_interrupt) + sizeof(u16))
 
 /* Basic configuration for ACPI */
-- 
2.27.0.278.ge193c7cf3a9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
